;;t1.asm

assume cs:codesg

codesg segment

	mov ax,2000H
	mov ss,ax
	mov sp,0
	add sp,10
	pop ax
	pop bx
	push ax
	push bx
	pop ax
	pop bx

	;;下面两条是程序返回指令
	mov ax,4c00H
	int 21H

codesg ends

end