	.file	"test.c"
	.text
	.globl	_swap
	.def	_swap;	.scl	2;	.type	32;	.endef
_swap:
LFB6:
	.cfi_startproc          #.xxx����д�����������ģ�����
	pushl	%ebp            #�������swapǰ��ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp      #�����ú���ǰ��ջ����Ϊebp
	.cfi_def_cfa_register 5
	subl	$16, %esp       #���亯��ջ����16�ֽڶ���
	movl	8(%ebp), %eax   #��*(ebp+8)�ŵ�eax���&x��Ҳ��a
	movl	(%eax), %eax    #ȡ*eax��eax������x
	movl	%eax, -4(%ebp)  #��x�ŵ�tmp��
	movl	12(%ebp), %eax  #��b�ŵ�eax�����
	movl	(%eax), %edx    #ȡ*b���ŵ�edx�eaxҪ��a��
	movl	8(%ebp), %eax   #��aȡ�������ŵ�eax��
	movl	%edx, (%eax)    #��*b��ֵ��*a
	movl	12(%ebp), %eax  #�ٰ�b�ŵ�eax
	movl	-4(%ebp), %edx  #��tmp�ŵ�edx
	movl	%edx, (%eax)    #��tmp��ֵ��*b
	movl	-4(%ebp), %eax  #��tmp��ֵ��eax����Ϊ����ֵ
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret                     #�൱ mov %ebp, %esp; pop %ebp
	.cfi_endproc            #esp�ص�ԭջ����ebp�ص�swapǰ
LFE6:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "ret: %d\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB7:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movl	$16, 24(%esp)
	movl	$32, 20(%esp)
	leal	20(%esp), %eax
	movl	%eax, 4(%esp)
	leal	24(%esp), %eax
	movl	%eax, (%esp)
	call	_swap
	movl	%eax, 28(%esp)
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
	.ident	"GCC: (GNU) 4.8.1"
	.def	_printf;	.scl	2;	.type	32;	.endef
