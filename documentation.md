Registers : 16 bit register 0 - 15
Instructions : 32 bits * 250 = 1 KB

---

<!-- (31)00000000(24) (23)0000(20) (19)0000(16) (15)0000(12) (11)0000(8) (7)0000(4) (3)0000(0) -->

# INSTRUCTION FORMAT

## Load Immediate 
> ### opcode: 
>- 8 bits [31-24] => ***00001111***  
> ### desitnation register: 
>- 4 bits [23-20]  
> ### data: 
>- 16 bits signed [15:0]  
>- max: 32767
>- min: -32767
  
