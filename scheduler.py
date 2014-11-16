import struct
import Queue

f = open("/dev/snd/midiC1D0","rb")
g = open("/dev/xillybus_write_32", "wb")

monophonic = True
freeBanks = Queue.Queue(32)
queuedNotes = Queue.Queue(80)
d = dict()
fs = 48000000

#fill the FIFO queue to prepare note banks
for i in range(32):
    freeBanks.put(i, False)

try:
    byte = f.read(3)
    while byte != "":

        event = byte[0].encode('hex')
        note = int(byte[1].encode('hex'), 16)
        velocity = int(byte[2].encode('hex'),16)

        #here lies monophonic scheduling
        if(monophonic):
            if event == '90':
                if not queuedNotes.empty():
                    #queue the note
                    queuedNotes.put(note)
                else:
                    if not freeBanks.empty():
                        print "Note On",
                        print note
                        freq = 440 * (2 ** ((note - 69) / 12.0))
                        bank = freeBanks.get()
                        d[note] = bank
                        g.write(struct.pack("ii", bank, fs / freq))
                        g.flush()
                    else:
                        queuedNotes.put(note)
            elif event == '80':
                print "Note Off",
                print note
                bank = d[note]
                freeBanks.push(bank)
                if queuedNotes.empty():
                    g.write(struct.pack("ii", bank, 0))
                    g.flush()
                else:
                    bank = freeBanks.get()
                    newNote = queuedNotes.get()
                    d[newNote] = bank
                    freq = 440 * (2 ** ((newNote - 69) / 12.0))
                    g.write(struct.pack("ii", bank, fs / freq))
                    g.flush()

            elif event == 'b0':
                print "Control Event",
                print "Slider", note,
                print "to position", velocity

        #Here lies polyphonic scheduling
        else:
            #polyphonic scheduling
            if event == '90':
                if not freeBanks.empty():
                    bank = freeBanks.get()
                    d[note] = bank
                    freq = 440 * (2 ** ((note - 69) / 12.0))
                    g.write(struct.pack("ii", bank, fs / freq))
                    g.flush()
            elif event == '80':
                bank = d[note]
                freeBanks.push(bank)
                g.write(struct.pack("ii", bank, 0))
            elif event =='b0':
                print "Control Event",
                print "Slider", note,
                print "to position", velocity


        byte = f.read(3)


finally:
    f.close()
