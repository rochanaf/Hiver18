.globl matrix_transpose_asm

matrix_transpose_asm:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        
        /* Write your solution here */
        mov $0, %esi /* esi=r ou c */
        mov $0,%edi
        mov 16(%ebp), %ecx /* ecx=matorder */

loop1:
        cmp %ecx, %esi /* r-matorder*/
        jae end

loop2:
        cmp %ecx, %edi /* c-matorder*/
        jae retourloop1


        mov 12(%ebp), %eax /* eax= &outmatdata */
        mov 8(%ebp), %edx /* edx= &inmatdata */

        mov %edi, %ebx
        imul %ecx, %ebx
        add %esi, %ebx /* edi= r+c*matorder */
        mov (%edx,%ebx), %edx /*edx = inmatdata[r+c*matorder] */
	    mov %esi, %ebx
        imul %ecx, %ebx
        add %edi, %ebx /* edi= c+r*matorder */
        mov %edx, (%eax,%ebx) /*eax = outmatdata[c+r*matorder] */



        inc %edi
jmp loop2

retourloop1:
            inc %esi
            mov $0,%edi
            jmp loop1
end:

        leave          /* restore ebp and esp */
        ret            /* return to the caller */

