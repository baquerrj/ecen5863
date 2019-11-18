/* Program that converts a binary number to decimal */
				.text					// executable code follows
				.global	_start
_start:		
				LDR		R4, =N			
				ADD		R5, R4, #4		// R5 points to the decimal digits storage location
				LDR		R4, [R4]		// R4 holds N
				MOV		R0, R4			// initial parameter for DIVIDE goes in R0
				
				// first divide by 1000 to extract thoussand's digit
				// and put result in MEM[R5+3]
				MOV		R1, #1000		// set divisor to 1000
				BL		DIVIDE
				// thousand's digit is now in R1, and remainder is in R0
				STRB	R1, [R5, #3]
				
				// perform operation on remainder, i.e. divide by 100 for hundred's digit
				MOV		R1, #100		// set divisor to 100
				BL		DIVIDE			// Divide remainder from previous operation
				// hundred's digit is in R1, and remainder is in R0
				STRB	R1, [R5, #2]

				// perform operation on remainder, i.e. divide by 10 for tens's digit
				MOV		R1, #10		// set divisor to 10
				BL		DIVIDE			// Divide remainder from previous operation
				// hundred's digit is in R1, and ten's digit (remainder) is in R0
				STRB	R1, [R5, #1]
				STRB	R0, [R5]
END:			B		END

/* Subroutine to perform the integer division R0 / R1. 
 * Returns: quotient in R1, and remainder in R0
 */
DIVIDE:			MOV		R2, #0
CONT:			CMP		R0, R1
				BLT		DIV_END
				SUB		R0, R1
				ADD		R2, #1
				B		CONT
DIV_END:		MOV		R1, R2		// return quotient in R1 (remainder is in R0)
				BX		LR

N:				.word	9876		// the decimal number to be converted
Digits:			.space	4 			// storage space for the decimal digits

				.end    

