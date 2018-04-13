;;pow.asm
assume cs:pow

pow segment

	mov ax,2
	add ax,ax
	add ax,ax

	;;下面两条是程序返回指令
	mov ax,4c00H
	int 21H

pow ends

end