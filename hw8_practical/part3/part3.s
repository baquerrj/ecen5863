/* Program that finds the largest number in a list of integers */
         .text
         .global  _start
_start:
         LDR   R4, =RESULT    // R4 points to result location
         LDR   R2, [R4, #4]   // R2 holds the number of elements in the list
         ADD   R3, R4, #8     // R3 points to the first number
         BL    LARGE

END:     B     END

LARGE:
	     SUBS  R2, R2, #1
         BEQ   DONE
         ADD   R3, R3, #4
         LDR   R1, [R3]
         CMP   R0, R1
         BGE   LARGE
         MOV   R0, R1
         B     LARGE

DONE:
         STR   R0, [R4]
         BX    LR

RESULT:  .word 0
N:       .word 7
NUMBERS: .word 4,5,3,6  // the data
         .word 1,8,2

         .end
