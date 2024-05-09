; start in 16 bit real mode (only 16bit registers are used)
; we need magic number 0xAA55 to tell BIOS its bootloader
; start executing from 0x7c00
; only 512 bytes can be used
bits 16
org 0x7c00
boot:
    mov si, msg
	mov ah, 0x0e
.loop
	lodsb
	cmp al, 0
	je .noop
    mov ah, 0x0e
    int 0x10
    jmp .loop
	
.noop
    jmp $
	

msg db "hello world", 0

times 510 - ($-$$) db 0
dw 0xAA55

