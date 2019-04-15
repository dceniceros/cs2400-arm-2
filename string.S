		;		ARM Programming Assignment #2: Writing C-strings
		;
		;		Write a program that assembles the values in chars*
		;       into a C-style string. A C-style string is an array
		;       of byte-size characters, terminated by a NULL (0x0).
		;       Write the C-string to the FILL memory at 'string'.
		;       Note: It's up to you to declare the correct number
		;       of bytes to hold the result.

main
		adr		r8, chars0
		adr		r9, string
		mov		r4, #3
		mov		r6, #95
		mov		r7, #0
		b		loop
loop
		ldr		r5, [r8, r7]
		strb	r5, [r9, r4]
		sub		r4, r4, #1
		add		r7, r7, #4
		sub		r6, r6, #1
		cmp		r6, #0
		beq		endpro
		cmp		r4, #0
		bne		loop
		b		char
char
		add		r9, r9, #4
		mov		r4, #3
		b		loop
endpro
		end

chars0	DCD		'T', 'h', 'e', ' ', '2', '0', '1', '8', ' ', 'T', 'u'
chars1	DCD		'r', 'i', 'n', 'g', ' ', 'A', 'w', 'a', 'r', 'd', ' '
chars2	DCD		'w', 'a', 's', ' ', 'a', 'w', 'a', 'r', 'd', 'e', 'd'
chars3	DCD		' ', 't', 'o', ' ', 'B', 'e', 'n', 'g', 'i', 'o'
chars4	DCD		' ', 'H', 'i', 'n', 't', 'o', 'n', ' ', 'a', 'n'
chars5	DCD		'd', ' ', 'L', 'e', 'C', 'u', 'n', 'n', ' ', 'f', 'o'
chars6	DCD		'r', ' ', 't', 'h', 'e', 'i', 'r', ' ', 'w', 'o', 'r'
chars7	DCD		'k', ' ', 'o', 'n', ' ', 'n', 'e', 'u', 'r', 'a', 'l'
chars8	DCD		'n', 'e', 't', 'w', 'o', 'r', 'k', 's', '.'

string	FILL	96
