.globl matrix_equals_asm

matrix_equals_asm:
        push %ebp      /* Save old base pointer */
        mov %esp, %ebp /* Set ebp to current esp */

        /* Write your solution here */
        mov $0, %esi /* esi=r ou c */
        mov $0, %edi
        mov 16(%ebp), %ecx /* ecx=matorder */

loop1:
        cmp %ecx, %esi /* r-matorder*/
        jae end

loop2:
        cmp %ecx, %edi /* c-matorder*/
        jae retourloop1


condition:
        mov 8(%ebp), %ebx /* ebx= *inmatdata1 */
        mov 12(%ebp), %edx /* edx= *inmatdata2 */
        mov %esi, %eax
        imul %ecx, %eax
        add %edi, %eax /* eax= c+r*matorder */
        mov (%ebx,%eax), %ebx /*ebx = inmatdata1[c+r*matorder] */
        mov (%edx,%eax), %edx /*edx = inmatdata2[c+r*matorder] */
        cmp %ebx, %edx
        je else
        mov $0, %eax
        jmp end



else:
        mov $1, %eax
        inc %edi
        jmp loop2

retourloop1:
            inc %esi
            mov $0, %edi
            jmp loop1

end:
        leave          /* Restore ebp and esp */
        ret            /* Return to the caller */
