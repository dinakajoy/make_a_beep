section .text
    global _start

_start:
    mov eax, 110
    mov ebx, 3
    int 0x80

    ; Enable the speaker
    in al, 0x61
    or al, 3
    out 0x61, al

    ; Set the frequency
    mov al, 0xB6
    out 0x43, al

    ;Set the desired frequency
    mov ax, 1193180 / 440
    out 0x42, al
    mov al, ah
    out 0x42, al
    
    ; Wait for a short period
    mov cx, 0xFFFF
delay: 
    loop delay

    ; Disable the speaker after the beep
    in al, 0x61
    and al, 0xFC
    out 0x61, al

    ;Exit the program
    mov eax, 1
    xor ebx, ebx
    int 0x80
