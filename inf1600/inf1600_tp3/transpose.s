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
<<<<<<< HEAD
        jmp loop2
=======
>>>>>>> ad5e7d13c940540425136ddcb7affb24fe3b34f0

loop2:
        cmp %ecx, %edi /* c-matorder*/
        jae retourloop1

<<<<<<< HEAD
        mov 8(%ebp), %edx /* eax= *inmatdata */
        mov 12(%ebp), %eax /* edx= *outmatdata */
=======

        mov 12(%ebp), %eax /* eax= &outmatdata */
        mov 8(%ebp), %edx /* edx= &inmatdata */
>>>>>>> ad5e7d13c940540425136ddcb7affb24fe3b34f0

        mov %edi, %ebx
        imul %ecx, %ebx
        add %esi, %ebx /* edi= r+c*matorder */
        mov (%edx,%ebx), %edx /*edx = inmatdata[r+c*matorder] */
<<<<<<< HEAD
        mov %esi, %ebx
        imul %ecx, %ebx
        add %edi, %ebx /* edi= c+r*matorder */
        lea (%eax,%ebx), %eax /*eax = outmatdata[c+r*matorder] */
        mov %edx,(%eax)


        inc %edi
jmp loop2
retourloop1:
            inc  %esi
=======



        mov %esi, %ebx
        imul %ecx, %ebx
        add %edi, %ebx /* edi= c+r*matorder */
        lea (%eax,%ebx), %eax /*eax = &outmatdata[c+r*matorder] */
        mov %edx, (%eax) /*outmatdata[c+r*matorder]= edx*/


        inc %edi
        jmp loop2

retourloop1:
            inc %esi
>>>>>>> ad5e7d13c940540425136ddcb7affb24fe3b34f0
            mov $0,%edi
            jmp loop1
end:

<<<<<<< HEAD
=======

>>>>>>> ad5e7d13c940540425136ddcb7affb24fe3b34f0
        leave          /* restore ebp and esp */
        ret            /* return to the caller */

