import struct
import Queue
import fcntl
import os

#final = (int(fs/freq) & 0x3fffff) | (bank << 22)

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
fs = 4800000


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
            if(event == '90'):
                queuedNotes.insert(0, note)
                playing = note
                freq = 440 * (2 ** ((note - 69) / 12.0))
                bank = 1
                g.write(struct.pack("i", (int(fs / freq) & 0x3fffff) | (bank << 22)))
                g.flush()

            elif(event == '80'):    
                if(queuedNotes.count() > 0):
                    queuedNotes.remove(note)
                if(queuedNotes == []):
                    bank = 1
                    g.write(struct.pack("i", 0 | (bank << 22)))
                    g.flush()
                elif(playing == note):
                    newNote = queuedNotes.pop(0) 
                    playing = newNote  
                    freq = 440 * (2 ** ((note - 69) / 12.0)) 
                    bank = 1
                    g.write(struct.pack("i", (int(fs / freq) & 0x3fffff) | (bank << 22)))
                    g.flush()


        #Here lies polyphonic scheduling
        else:
            #polyphonic scheduling
            if event == '90':
                if not freeBanks.empty():
                    bank = freeBanks.get()
                    d[note] = bank
                    freq = 440 * (2 ** ((note - 69) / 12.0))
                    g.write(struct.pack("i", (int(fs / freq) & 0x3fffff) | (bank << 22)))
                    g.flush()
            elif event == '80':
                bank = d[note]
                freeBanks.push(bank)
                g.write(struct.pack("i", (int(fs / freq) & 0x3fffff) | (bank << 22)))
                g.flush()


        try:
            free = freed.read(1)
            freeBanks.put(free)
        except IOError:
            pass
        byte = f.read(3)



finally:
    f.close()
    g.close()
    freed.close()
