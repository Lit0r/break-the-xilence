import struct
import Queue
import fcntl
import os

f = open("/dev/snd/midiC1D0","rb")
g = open("/dev/xillybus_write_32", "wb")
freed = open("/dev/snd/midiC0D0", "rb")

flags = fcntl.fcntl(freed, fcntl.F_GETFL)
flags = flags | os.O_NONBLOCK
fcntl.fcntl(freed, fcntl.F_SETFL, flags)

monophonic = True
freeBanks = Queue.Queue(32)
queuedNotes = []
playing = 0
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
                if not queuedNotes == []:
                    #queue the note
                    queuedNotes.insert(0, note)
                else:
                    print "Note On",
                    print note
                    playing = note
                    freq = 440 * (2 ** ((note - 69) / 12.0))
                    g.write(struct.pack("i", fs / freq))
                    g.flush()
            elif event == '80':
                print "Note Off",
                print note
                if queuedNotes == []:
                    playing = 0
                    g.write(struct.pack("i", 0))
                    g.flush()
                else:
                    if playing == note:
                        newNote = queuedNotes.pop(0)
                        freq = 440 * (2 ** ((newNote - 69) / 12.0))
                        g.write(struct.pack("i", fs / freq))
                        g.flush()    
                    else:
                        queuedNotes.remove(note)
                    

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
                    g.write(struct.pack("i", fs / freq))
                    g.flush()
            elif event == '80':
                bank = d[note]
                freeBanks.push(bank)
                g.write(struct.pack("i", 0))
            elif event =='b0':
                print "Control Event",
                print "Slider", note,
                print "to position", velocity


        try:
            stuff = freed.read(3)
            #freeBanks.put(freed.read(1))
            print "Note", int(stuff[1].encode('hex'), 16)
        except IOError:
            pass
        byte = f.read(3)



finally:
    f.close()
