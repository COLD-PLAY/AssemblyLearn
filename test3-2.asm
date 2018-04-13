;test3-2.asm
assume ds:data,cs:code

data segment
	mess1 db 'Input x:', '$'
	mess2 db 0ah,0dh, 'Output y:$'	;0ah 和0dh是换行和回车

	y db ?
data ends

code segment
	start:
		mov ax,data
		mov ds,ax
		mov dx,offset mess1
		mov ah,9	;显示提示信息
		int 21h		;中断
		mov ah,1
		int 21h
		add al,1
		mov y,al	;保存到y单元
		mov dx,offset mess2
		mov ah,9	;显示提示信息
		int 21h
		mov ah,2
		mov dl,y
		int 21h
		mov ah,4ch
		int 21h
code ends

end start

;test.asm    calculate 2^2
assume cs:code

code segment
	mov ax,2
	add ax,ax

	mov ax,4c00h
	int 21h
code ends

end

;test.asm    calculate 2^3
assume cs:code

code segment
	mov ax,2
	add ax,ax
	add ax,ax

	mov ax,4c00h
	int 21h
code ends

end

;test.asm    calculate 2^11
assume cs:code

code segment
	mov ax,2
	mov cx,11

s:	add ax,ax
	loop s	

	mov ax,4c00h
	int 21h
code ends

end

;test.asm    calculate 123*256
assume cs:code

code segment
	mov ax,0
	
	mov cx,123
s:	add ax,256
	loop s

	mov ax,4c00h
	int 21h
code ends

end

;test.asm    calculate [ffff:0006H]*3
assume cs:code

code segment
	mov ax,0ffffh	;汇编源程序中，数据不能以字母开头，需加0在ffffh前
	mov ds,ax
	
	mov al,[6]
	mov ah,0

	mov cx,3	;设置循环次数

	mov dx,0	;累加寄存器清零

s:	add dx,ax
	loop s

	mov ax,4c00h
	int 21h
code ends

end