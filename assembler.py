import json

dict = {}
with open('dictionary.json') as json_file:
    dict = json.load(json_file)

def to_bin(val):
    b = bin(val).split('b')[1][-15:]
    p = '0' if val >= 0 else '1'
    return p + format(b, '>015')

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
                mac+="0000"
                mac+=to_bin(int(inst[2],16))
            case "add":
                mac+=dict[inst[1]]
                mac+=dict[inst[2]]
                mac+=dict[inst[3]]
                mac+="000000000000"
            case "sub":
                mac+=dict[inst[1]]
                mac+=dict[inst[2]]
                mac+=dict[inst[3]]
                mac+="000000000000"
            case "mul":
                mac+=dict[inst[1]]
                mac+=dict[inst[2]]
                mac+=dict[inst[3]]
                mac+="000000000000"
            case "shr":
                mac+=dict[inst[1]]
                mac+=dict[inst[2]]
                mac+=to_bin(int(inst[3],16))
            case "shl":
                mac+=dict[inst[1]]
                mac+=dict[inst[2]]
                mac+=to_bin(int(inst[3],16))
            case "mov":
                mac+=dict[inst[1]]
                mac+=dict[inst[2]]
                mac+="0000000000000000"                                                                                
        if(i!=249): mac+=("\n")
        com.write(mac)
    else:
        mac=("00000000000000000000000000000000")
        if(i!=249): mac+=("\n")
        com.write(mac)



asm.close()
com.close()