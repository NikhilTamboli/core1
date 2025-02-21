import json

dict = {}
with open('dictionary.json') as json_file:
    dict = json.load(json_file)

def to_bin(val):
    b = bin(val).split('b')[1][-19:]
    p = '0' if val >= 0 else '1'
    return p + format(b, '>019')

asm = open("assembly_code.asm", 'r')
com = open("machine_code.data", "w")

for i in range(250):
    inst = asm.readline().replace("\n","")
    if(inst!=""):
        mac = ""
        inst = inst.split(" ")
        mac+=dict[inst[0]]
        match inst[0]:
            case "ldi":
                mac+=dict[inst[1]]
                mac+=to_bin(int(inst[2]))
            case "add":
                mac+=dict[inst[1]]
                mac+=dict[inst[2]]
                mac+=dict[inst[3]]
                mac+="000000000000"
        mac+=("\n")
        com.write(mac)
    else:
        com.write("00000000000000000000000000000000\n")

asm.close()
com.close()