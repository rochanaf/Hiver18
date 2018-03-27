.global matrix_diagonal_asm

matrix_diagonal_asm:
        push %ebp      			/* Save old base pointer */
        mov %esp, %ebp 			/* Set ebp to current esp */

		/* Write your solution here */
        mov $0, %edi
        mov $0, %esi
        mov 16(%ebp), %ecx
loop1:
        cmp %ecx, %edi
        jae end
        jmp loop2

loop2:
        cmp %ecx, %esi
        jae retourloop1
        jmp condition

condition:
            cmp %edi, %esi
            jne else

            mov %edi, %ebx
            imul %ecx, %ebx
            add %esi, %ebx

            mov 8(%ebp), %eax
            mov (%eax,%ebx),%eax
            mov 12(%ebp), %edx
            lea (%edx,%ebx),%edx
            mov %eax, (%edx)
            add $1, %esi
            jmp loop2

else:
mov %edi, %ebx
imul %ecx, %ebx
add %esi, %ebx
            mov 12(%ebp), %edx
            lea (%edx,%ebx),%edx
            mov $0, (%edx)
add $1, %esi
jmp loop2

retourloop1:
            add $1, %edi
            mov $0, %esi
            jmp loop1
end:

        leave          			/* Restore ebp and esp */
        ret            			/* Return to the caller */

