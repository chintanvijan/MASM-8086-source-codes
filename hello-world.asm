section .data                           ;.data starts here
	msg db 10d,"Hello World!"	;String gets initialized
	l equ $-msg			;Length Of String
section .text				;.text starts here
	global _start			;Moving to _start
_start:					;_start label
	mov eax,4			;Sys_Write Function
	mov ebx,1			;Std_Out File Descriptor
	mov ecx,msg			;Offset of msg
	mov edx,l			;Length Of msg
	int 80h				;Call the Kernel

	mov eax,1			;Sys_Exit Function
	mov ebx,0			;Sucessful Termination
	int 80h				;Call The Kernel
end:
