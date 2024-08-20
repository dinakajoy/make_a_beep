# Beep program in Assembly Language

## Beep program
This program aims to access hardware specifically the speaker of your system to send out a beep sound

## STeps to run the program
To compile - eg: `nasm -f elf32 beep.asm -o beep.o` (Ensure you have nasm installed - `sudo apt-get install nasm` for Ubuntu OS)    
    - This generates the .o (beep.o) file    
To Execute the program - eg: `ld -m elf_i386 -s -o beep beep.o` (ld is a default linker that comes with Ubuntu OS)    
    - This generates an executable file with the name of your project - beep      
    - To run - `sudo ./beep`    
