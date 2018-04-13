;;start.asm
assume cs:codesg

codesg segment
	
	mov ax,0123H
	mov bx,0456H
	add ax,bx
	add ax,ax

	;;下面两条是程序返回指令
	mov ax,4c00H
	int 21H

codesg ends

end
