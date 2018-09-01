data segment
 a db 03h
 b db 05h
 m dw ?
data ends
code segment 
 assume ds:data,cs:code
 _start:
  mov ax,ds
  mov ds,ax
  mov ds,ax
  mov al,a
  mov bl,b
  add al,bl
  mov m,ax
  int 3
  code ends
  end _start
