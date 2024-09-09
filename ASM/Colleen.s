section .text
global main
extern printf

section .data
	str: db "section .text%3$cglobal main%3$cextern printf%3$c%3$csection .data%3$c%2$cstr: db %4$c%1$s%4$c, 0%3$c%3$csection .text%3$c%3$c; Hello World !%3$c%3$c_dr_quine:%3$c%2$ccall%2$cprintf%3$c%2$cret%3$c%3$cmain:%3$c%2$c; tab = 9, new_line = 10, double_quote = 34%3$c%2$cmov%2$c%2$crdi, str%3$c%2$cmov%2$c%2$crsi, str%3$c%2$cmov%2$c%2$crdx, 9%3$c%2$cmov%2$c%2$crcx, 10%3$c%2$cmov%2$c%2$cr8, 34%3$c%2$ccall%2$c_dr_quine%3$c%2$cret%3$c", 0

section .text

; Hello World !

_dr_quine:
	call	printf
	ret

main:
	; tab = 9, new_line = 10, double_quote = 34
	mov		rdi, str
	mov		rsi, str
	mov		rdx, 9
	mov		rcx, 10
	mov		r8, 34
	call	_dr_quine
	ret
