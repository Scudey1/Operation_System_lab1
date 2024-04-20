	.file	"opersys.cpp"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "%d \0"
	.text
	.p2align 4
	.def	_Z6printfPKcz.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z6printfPKcz.constprop.0
_Z6printfPKcz.constprop.0: //вывод
.LFB48:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	$1, %ecx
	leaq	72(%rsp), %rbx
	movq	%rdx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	%rbx, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rbx, %r8
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z9fibonaccii
	.def	_Z9fibonaccii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9fibonaccii
_Z9fibonaccii: //функция фиббоначи
.LFB46:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$152, %rsp
	.seh_stackalloc	152
	.seh_endprologue
	movl	%ecx, %eax
	cmpl	$1, %ecx
	jle	.L40
	leal	-3(%rax), %esi
	subl	$2, %eax
	leal	-1(%rcx), %ecx
	movl	$0, 68(%rsp)
	movl	%eax, 116(%rsp)
	andl	$-2, %eax
	movl	%esi, 84(%rsp)
	subl	%eax, %esi
	movl	%ecx, 36(%rsp)
	movl	%esi, 108(%rsp)
.L6:
	movl	36(%rsp), %esi
	movl	%esi, %eax
	cmpl	$1, %esi
	je	.L10
	leal	-1(%rsi), %ecx
	subl	$3, %esi
	movl	$0, 72(%rsp)
	movl	%ecx, 88(%rsp)
	movl	%esi, 56(%rsp)
.L9:
	cmpl	$1, 88(%rsp)
	je	.L41
	leal	-2(%rax), %esi
	movl	$0, 76(%rsp)
	movl	%esi, 100(%rsp)
	movl	%esi, 40(%rsp)
	leal	-4(%rax), %esi
	movl	56(%rsp), %eax
	movl	%esi, 92(%rsp)
	andl	$-2, %eax
	subl	%eax, %esi
	movl	%esi, 112(%rsp)
.L12:
	movl	40(%rsp), %eax
	movl	%eax, %edi
	cmpl	$1, %eax
	je	.L16
	leal	-1(%rax), %ecx
	subl	$3, %eax
	movl	$0, 80(%rsp)
	movl	%ecx, 96(%rsp)
	movl	%eax, 60(%rsp)
.L15:
	cmpl	$1, 96(%rsp)
	je	.L42
	leal	-2(%rdi), %eax
	leal	-4(%rdi), %r9d
	xorl	%r11d, %r11d
	movl	%eax, %r8d
	movl	%eax, 104(%rsp)
	movl	60(%rsp), %eax
	movl	%r9d, %esi
	movl	%r9d, %r10d
	movl	%r8d, %edi
	andl	$-2, %eax
	subl	%eax, %esi
	movl	%esi, 52(%rsp)
.L18:
	movl	%edi, %ebx
	cmpl	$1, %edi
	je	.L22
	leal	-1(%rdi), %eax
	movl	%r10d, 44(%rsp)
	leal	-3(%rdi), %ebp
	xorl	%r9d, %r9d
	movl	%eax, 32(%rsp)
.L21:
	cmpl	$1, 32(%rsp)
	je	.L43
	movl	%ebp, %eax
	leal	-6(%rbx), %edx
	movl	%r11d, 48(%rsp)
	leal	-4(%rbx), %r14d
	andl	$-2, %eax
	movl	%ebp, %r10d
	xorl	%r8d, %r8d
	subl	%eax, %edx
	movl	%edx, 64(%rsp)
	movl	%r14d, %edx
.L24:
	leal	2(%rdx), %eax
	cmpl	$-1, %edx
	je	.L28
	movl	%ebp, %r11d
	leal	-1(%rdx), %r13d
	movl	%edi, %ebp
	movl	%r10d, %r12d
	xorl	%r15d, %r15d
	movl	%ebx, %edi
.L27:
	cmpl	$1, %r12d
	je	.L44
	leal	-2(%rax), %r14d
	leal	-4(%rax), %esi
	movl	%r13d, %eax
	xorl	%ebx, %ebx
	andl	$-2, %eax
	movl	%r14d, %ecx
	subl	%eax, %esi
.L29:
	movl	%r10d, 140(%rsp)
	movl	%edx, 136(%rsp)
	movl	%r11d, 132(%rsp)
	movl	%r8d, 128(%rsp)
	movl	%r9d, 124(%rsp)
	movl	%ecx, 120(%rsp)
	call	_Z9fibonaccii
	movl	120(%rsp), %ecx
	movl	124(%rsp), %r9d
	addl	%eax, %ebx
	movl	128(%rsp), %r8d
	movl	132(%rsp), %r11d
	subl	$2, %ecx
	movl	136(%rsp), %edx
	movl	140(%rsp), %r10d
	cmpl	%ecx, %esi
	jne	.L29
	movl	%r13d, %ecx
	andl	$1, %ecx
	addl	%ebx, %ecx
.L30:
	movl	%r14d, %eax
	addl	%ecx, %r15d
	subl	$2, %r12d
	subl	$2, %r13d
	cmpl	$1, %r14d
	jg	.L27
	movl	%edx, %eax
	movl	%edi, %ebx
	movl	%ebp, %edi
	movl	%r11d, %ebp
	andl	$1, %eax
	addl	%r15d, %eax
.L28:
	addl	%eax, %r8d
	subl	$2, %r10d
	subl	$2, %edx
	cmpl	%edx, 64(%rsp)
	jne	.L24
	movl	%ebp, %eax
	movl	48(%rsp), %r11d
	andl	$1, %eax
	addl	%r8d, %eax
.L25:
	subl	$2, %ebx
	subl	$2, 32(%rsp)
	addl	%eax, %r9d
	subl	$2, %ebp
	cmpl	$1, %ebx
	jg	.L21
	movl	44(%rsp), %r10d
	movl	%r10d, %ebx
	andl	$1, %ebx
	addl	%r9d, %ebx
.L22:
	addl	%ebx, %r11d
	subl	$2, %edi
	subl	$2, %r10d
	cmpl	%edi, 52(%rsp)
	jne	.L18
	movl	60(%rsp), %eax
	andl	$1, %eax
	addl	%r11d, %eax
.L19:
	movl	104(%rsp), %edi
	addl	%eax, 80(%rsp)
	subl	$2, 96(%rsp)
	subl	$2, 60(%rsp)
	cmpl	$1, %edi
	jg	.L15
	movl	92(%rsp), %edi
	andl	$1, %edi
	addl	80(%rsp), %edi
.L16:
	subl	$2, 40(%rsp)
	movl	40(%rsp), %eax
	addl	%edi, 76(%rsp)
	subl	$2, 92(%rsp)
	cmpl	%eax, 112(%rsp)
	jne	.L12
	movl	56(%rsp), %edx
	andl	$1, %edx
	addl	76(%rsp), %edx
.L13:
	movl	100(%rsp), %eax
	addl	%edx, 72(%rsp)
	subl	$2, 88(%rsp)
	subl	$2, 56(%rsp)
	cmpl	$1, %eax
	jg	.L9
	movl	84(%rsp), %eax
	andl	$1, %eax
	addl	72(%rsp), %eax
.L10:
	addl	%eax, 68(%rsp)
	subl	$2, 36(%rsp)
	movl	36(%rsp), %eax
	subl	$2, 84(%rsp)
	cmpl	%eax, 108(%rsp)
	jne	.L6
	movl	116(%rsp), %eax
	andl	$1, %eax
	addl	68(%rsp), %eax
.L40:
	addq	$152, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L43:
	movl	$1, %eax
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L44:
	movl	$1, %ecx
	leal	-2(%rax), %r14d
	jmp	.L30
.L42:
	leal	-2(%rdi), %edx
	movl	$1, %eax
	movl	%edx, 104(%rsp)
	jmp	.L19
.L41:
	subl	$2, %eax
	movl	$1, %edx
	movl	%eax, 100(%rsp)
	jmp	.L13
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main: //основная функция
.LFB47:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	$-1, %r12d
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	leaq	.LC0(%rip), %r14
	call	__main
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L46:
	addl	%edi, %edx
	movq	%r14, %rcx
	leal	1(%r15), %r13d
	call	_Z6printfPKcz.constprop.0
	cmpl	$9, %r15d
	je	.L61
	cmpl	$1, %r13d
	je	.L62
	movl	%r12d, %ebp
	xorl	%edi, %edi
	notl	%ebp
	andl	$-2, %ebp
	addl	%r15d, %ebp
.L51:
	movl	%r15d, %ebx
	xorl	%esi, %esi
	cmpl	$1, %r15d
	je	.L63
.L49:
	leal	-1(%rbx), %ecx
	subl	$2, %ebx
	call	_Z9fibonaccii
	addl	%eax, %esi
	cmpl	$1, %ebx
	jg	.L49
	movl	%r15d, %ebx
	leal	-2(%r15), %eax
	andl	$1, %ebx
	addl	%esi, %ebx
.L52:
	addl	%ebx, %edi
	movl	%eax, %r15d
	cmpl	%ebp, %eax
	jne	.L51
	movl	%r12d, %edx
	andl	$1, %edx
.L53:
	addl	$1, %r12d
	movl	%r13d, %r15d
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L63:
	movl	$-1, %eax
	jmp	.L52
.L62:
	movl	$1, %edx
	xorl	%edi, %edi
	jmp	.L53
.L61:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 11.2.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
