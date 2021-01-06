.BANK $07 SLOT 1
.ORG 0
.incbin "data/07_4000.data"
call  rlabel_00_037E 
ld hl,$c1c3		
set 5,(hl)		
ld a,($c224)		
cp $04			
.DB $20 $11 ; < ['$20', '$11'] > < 0x4035 > < 74035 07 4035 | 2011: jr nz, $11 >
.incbin "data/07_4037.data"
ld b,$05		
ld hl,$49df		
rst $28			
ld a,($c224)		
ld b,a			
ld hl,$4090		
ldi a,(hl)		
cp $ff			
ret z			
cp b			
.DB $20 $f9 ; < ['$20', '$f9'] > < 0x405a > < 7405a 07 405A | 20F9: jr nz, $F9 >
ld a,($c316)		
call  rlabel_00_0815 
ld a,($c224)		
cp $08			
.DB $20 $0b ; < ['$20', '$0b'] > < 0x4067 > < 74067 07 4067 | 200B: jr nz, $0B >
.incbin "data/07_4069.data"
ld b,$01		
call  rlabel_00_0832 
and a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x407a > < 7407a 07 407A | 2807: jr z, $07 >
.incbin "data/07_407C.data"
ld b,$06		
ld hl,$4fc6		
rst $28			
ld b,$07		
ld hl,$4160		
rst $28			
ret			
.incbin "data/07_4090.data"
rlabel_07_409E:
.DB $fa $29 $c2 ; < ['$fa', '$29', '$c2'] > < 0x409e > < 7409e 07 409E | FA29C2: ld a, [$C229] >
.DB $21 $c6 $40 ; < ['$21', '$c6', '$40'] > < 0x40a1 > < 740a1 07 40A1 | 21C640: ld hl, $40C6 >
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x40a6 > < 740a6 07 40A6 | 3001: jr nc, $01 >
.incbin "data/07_40A8.data"
ld a,(hl)		
and a			
ret z			
ld a,($c224)		
cp $07			
ret z			
ld hl,$c22f		
ld a,($c351)		
ldi (hl),a		
ld a,($c352)		
ldi (hl),a		
ld a,($c219)		
ldi (hl),a		
ld a,($c21d)		
ldi (hl),a		
ret			
.incbin "data/07_40C6.data"
ld a,($c229)		
ld b,a			
cp $01			
.DB $28 $05 ; < ['$28', '$05'] > < 0x40dc > < 740dc 07 40DC | 2805: jr z, $05 >
xor a			
ld ($c238),a		
ld a,b			
call  rlabel_07_409E 
set 0,(hl)		
ld a,b			
cp $09			
.DB $28 $07 ; < ['$28', '$07'] > < 0x40eb > < 740eb 07 40EB | 2807: jr z, $07 >
xor a			
ld ($c239),a		
ld ($c23b),a		
ld a,b			
ld b,$00		
cp $0d			
.DB $20 $08 ; < ['$20', '$08'] > < 0x40f9 > < 740f9 07 40F9 | 2008: jr nz, $08 >
.incbin "data/07_40FB.data"
ld a,b			
ld b,$0f		
call  rlabel_00_083E 
ld b,$06		
call  rlabel_00_0832 
ld b,a			
ld a,($c220)		
and a			
.DB $28 $14 ; < ['$28', '$14'] > < 0x4113 > < 74113 07 4113 | 2814: jr z, $14 >
ld a,($c229)		
cp $01			
.DB $28 $0d ; < ['$28', '$0d'] > < 0x411a > < 7411a 07 411A | 280D: jr z, $0D >
cp $07			
.DB $28 $09 ; < ['$28', '$09'] > < 0x411e > < 7411e 07 411E | 2809: jr z, $09 >
cp $0b			
.DB $28 $05 ; < ['$28', '$05'] > < 0x4122 > < 74122 07 4122 | 2805: jr z, $05 >
ld a,b			
or $10			
.DB $18 $03 ; < ['$18', '$03'] > < 0x4127 > < 74127 07 4127 | 1803: jr $03 >
ld a,b			
and $ef			
ld (hl),a		
ret			
.incbin "data/07_412E.data"
ld a,($c224)		
cp $06			
.DB $20 $15 ; < ['$20', '$15'] > < 0x4165 > < 74165 07 4165 | 2015: jr nz, $15 >
.incbin "data/07_4167.data"
ld a,($c229)		
cp $0d			
ld a,$00		
.DB $28 $03 ; < ['$28', '$03'] > < 0x4183 > < 74183 07 4183 | 2803: jr z, $03 >
ld ($c220),a		
ld ($c235),a		
ld ($c236),a		
call  rlabel_07_4D21 
ld a,$02		
ld e,$00		
call  rlabel_07_4C76 
jp $40d6		
call  rlabel_07_4D21 
call  rlabel_07_4FD7 
call  rlabel_07_5F62 
call  rlabel_07_4976 
call  rlabel_07_4B40 
ld a,($cbd5)		
and $04			
.DB $28 $15 ; < ['$28', '$15'] > < 0x41af > < 741af 07 41AF | 2815: jr z, $15 >
.incbin "data/07_41B1.data"
ld a,($ff00+$a4)	
call  rlabel_07_4DC8 
ld ($c221),a		
cp $08			
jp z,$40d6		
jp $41d6		
ld a,($c221)		
ld e,a			
ld hl,$4210		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x41df > < 741df 07 41DF | 3001: jr nc, $01 >
.incbin "data/07_41E1.data"
ld a,(hl)		
ld b,$05		
call  rlabel_00_083E 
ld hl,$4267		
ld a,($ff00+$a4)	
bit 1,a			
.DB $28 $0a ; < ['$28', '$0a'] > < 0x41ef > < 741ef 07 41EF | 280A: jr z, $0A >
ld a,($c226)		
cp $01			
.DB $20 $03 ; < ['$20', '$03'] > < 0x41f6 > < 741f6 07 41F6 | 2003: jr nz, $03 >
.incbin "data/07_41F8.data"
ld a,e			
call  rlabel_07_4D09 
xor a			
ld ($c21c),a		
ld ($c218),a		
ld a,$03		
ld e,$01		
call  rlabel_07_4C76 
jp $40d6		
.incbin "data/07_4210.data"
call  rlabel_07_4FD7 
ld b,$02		
ld hl,$5491		
rst $28			
call  rlabel_07_5F62 
call  rlabel_07_4976 
call  rlabel_07_4B40 
ld a,($c229)		
cp $0d			
.DB $28 $04 ; < ['$28', '$04'] > < 0x4230 > < 74230 07 4230 | 2804: jr z, $04 >
xor a			
ld ($c220),a		
ld hl,$4267		
ld a,($c226)		
cp $01			
.DB $20 $09 ; < ['$20', '$09'] > < 0x423e > < 7423e 07 423E | 2009: jr nz, $09 >
.incbin "data/07_4240.data"
ld a,($c221)		
call  rlabel_07_4D09 
ld a,($c221)		
ld b,a			
ld a,($ff00+$a4)	
call  rlabel_07_4DC8 
ld ($c221),a		
cp $08			
jp z,$4160		
cp b			
jp nz,$41d6		
jp $40d6		
.incbin "data/07_4267.data"
ld a,$20		
ld ($c223),a		
ld a,($c222)		
ld hl,$42ce		
call  rlabel_00_0462 
ld a,(hl)		
call  rlabel_00_3071 
call  rlabel_07_4D21 
ld a,$04		
ld e,$02		
call  rlabel_07_4C76 
jp $40d6		
.incbin "data/07_42CE.data"
call  rlabel_07_4D21 
call  rlabel_07_4FD7 
call  rlabel_07_5F62 
call  rlabel_07_4B40 
call  rlabel_07_608C 
jp z,$4160		
ld b,a			
and $03			
jp nz,$4333		
ld a,b			
srl a			
srl a			
ld ($ff00+$91),a	
ld b,$05		
call  rlabel_00_0832 
ld hl,$4336		
add a			
add a			
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4306 > < 74306 07 4306 | 3001: jr nc, $01 >
.incbin "data/07_4308.data"
ld a,($ff00+$91)	
srl a			
call  rlabel_07_4DBB 
ld a,($c235)		
add h			
ld ($c235),a		
ld a,($c236)		
add l			
ld ($c236),a		
ld a,($ff00+$91)	
ld c,a			
cp $06			
.DB $20 $0e ; < ['$20', '$0e'] > < 0x4323 > < 74323 07 4323 | 200E: jr nz, $0E >
ld hl,$4e24		
call  rlabel_07_4DE6 
ld c,$00		
ld b,$02		
ld hl,$5072		
rst $28			
jp $40d6		
.incbin "data/07_4336.data"
ld a,$05		
ld e,$03		
call  rlabel_07_4C76 
jp $40d6		
call  rlabel_07_4FD7 
call  rlabel_07_5F62 
call  rlabel_07_4983 
call  rlabel_07_4B40 
ld a,($ff00+$a4)	
call  rlabel_07_4DC8 
ld ($c221),a		
ld d,a			
ld hl,$438e		
call  rlabel_07_4D09 
ld b,$06		
call  rlabel_00_0832 
bit 3,d			
.DB $28 $04 ; < ['$28', '$04'] > < 0x4382 > < 74382 07 4382 | 2804: jr z, $04 >
.incbin "data/07_4384.data"
or $20			
ld (hl),a		
jp $40d6		
.incbin "data/07_438E.data"
.DB $fa $0d $c2 ; < ['$fa', '$0d', '$c2'] > < 0x4572 > < 74572 07 4572 | FA0DC2: ld a, [$C20D] >
.DB $17 ; < ['$17'] > < 0x4575 > < 74575 07 4575 | 17: rl a >
.DB $30 $06 ; < ['$30', '$06'] > < 0x4576 > < 74576 07 4576 | 3006: jr nc, $06 >
.incbin "data/07_4578.data"
xor a			
ld ($ff00+$a5),a	
ld ($ff00+$a4),a	
ld ($c21c),a		
ld ($c218),a		
ld hl,$c21a		
ldi (hl),a		
ld (hl),a		
ld b,$06		
call  rlabel_00_0832 
or $10			
ld (hl),a		
call  rlabel_07_6063 
res 0,e			
ld a,($c220)		
ld b,a			
inc e			
inc e			
ld a,$8c		
cp e			
.DB $30 $14 ; < ['$30', '$14'] > < 0x45a4 > < 745a4 07 45A4 | 3014: jr nc, $14 >
ld e,$88		
dec b			
dec b			
ld a,b			
ld ($c220),a		
xor a			
ld hl,$c21a		
ldi (hl),a		
ld (hl),a		
ld a,(hl)		
and $ef			
ld (hl),a		
.DB $18 $1d ; < ['$18', '$1d'] > < 0x45b8 > < 745b8 07 45B8 | 181D: jr $1D >
inc b			
inc b			
call  rlabel_07_4D2D 
swap a			
and $0f			
cp $07			
.DB $28 $d8 ; < ['$28', '$d8'] > < 0x45c5 > < 745c5 07 45C5 | 28D8: jr z, $D8 >
cp $0b			
.DB $28 $d4 ; < ['$28', '$d4'] > < 0x45c9 > < 745c9 07 45C9 | 28D4: jr z, $D4 >
cp $0e			
.DB $30 $d0 ; < ['$30', '$d0'] > < 0x45cd > < 745cd 07 45CD | 30D0: jr nc, $D0 >
ld hl,$c21b		
sra (hl)		
dec hl			
rr (hl)			
ld a,b			
add $04			
ld ($c220),a		
ld a,e			
add $04			
ld ($c219),a		
ld a,($c224)		
cp $0c			
jp z,$461b		
ld hl,$c21f		
sra (hl)		
dec hl			
rr (hl)			
ld a,$02		
ld b,$05		
call  rlabel_00_083E 
add a			
ld ($c221),a		
ld b,$fc		
ld a,($c219)		
cp $0c			
.DB $20 $02 ; < ['$20', '$02'] > < 0x4605 > < 74605 07 4605 | 2002: jr nz, $02 >
.incbin "data/07_4607.data"
ld a,b			
ld ($c228),a		
ld a,$39		
call  rlabel_00_3071 
ld a,$08		
ld e,$06		
call  rlabel_07_4C76 
.DB $18 $07 ; < ['$18', '$07'] > < 0x4619 > < 74619 07 4619 | 1807: jr $07 >
ld a,$08		
ld ($c224),a		
.DB $18 $00 ; < ['$18', '$00'] > < 0x4620 > < 74620 07 4620 | 1800: jr , $00 >
call  rlabel_07_6075 
jp $40d6		
ld hl,$4ccc		
call  rlabel_07_4CA8 
call  rlabel_07_4B46 
ld a,($c219)		
cp $0f			
.DB $30 $08 ; < ['$30', '$08'] > < 0x4636 > < 74636 07 4636 | 3008: jr nc, $08 >
ld a,$0c		
ld ($c224),a		
jp $4572		
xor a			
ld ($ff00+$a4),a	
ld a,($c228)		
ld b,a			
sra a			
sra a			
sra a			
cpl			
inc a			
ld c,a			
ld a,($c220)		
bit 7,b			
.DB $28 $07 ; < ['$28', '$07'] > < 0x4655 > < 74655 07 4655 | 2807: jr z, $07 >
sub c			
.DB $38 $15 ; < ['$38', '$15'] > < 0x4658 > < 74658 07 4658 | 3815: jr c, $15 >
.DB $28 $13 ; < ['$28', '$13'] > < 0x465a > < 7465a 07 465A | 2813: jr z, $13 >
.DB $18 $01 ; < ['$18', '$01'] > < 0x465c > < 7465c 07 465C | 1801: jr $01 >
.incbin "data/07_465E.data"
ld ($c220),a		
dec b			
ld a,$d7		
cp b			
.DB $28 $04 ; < ['$28', '$04'] > < 0x4666 > < 74666 07 4666 | 2804: jr z, $04 >
ld a,b			
ld ($c228),a		
jp $40d6		
xor a			
ld ($c220),a		
ld a,($c219)		
cp $8c			
.DB $20 $0e ; < ['$20', '$0e'] > < 0x4678 > < 74678 07 4678 | 200E: jr nz, $0E >
ld a,($c229)		
cp $0b			
.DB $20 $07 ; < ['$20', '$07'] > < 0x467f > < 7467f 07 467F | 2007: jr nz, $07 >
ld a,$01		
ld ($c21b),a		
.DB $18 $e4 ; < ['$18', '$e4'] > < 0x4686 > < 74686 07 4686 | 18E4: jr $E4 >
ld a,($c229)		
cp $01			
jp z,$46e7		
cp $02			
jp z,$43b2		
cp $0e			
jp nc,$4752		
call  rlabel_07_46A5 
ld a,$91		
call  rlabel_00_3071 
jp $47f9		
rlabel_07_46A5:
ld hl,$46d0		
call  rlabel_07_46BD 
.DB $30 $2b ; < ['$30', '$2b'] > < 0x46ab > < 746ab 07 46AB | 302B: jr nc, $2B >
call  rlabel_07_46BD 
.DB $30 $26 ; < ['$30', '$26'] > < 0x46b0 > < 746b0 07 46B0 | 3026: jr nc, $26 >
call  rlabel_07_46BD 
.DB $30 $21 ; < ['$30', '$21'] > < 0x46b5 > < 746b5 07 46B5 | 3021: jr nc, $21 >
call  rlabel_07_46BD 
.DB $30 $1c ; < ['$30', '$1c'] > < 0x46ba > < 746ba 07 46BA | 301C: jr nc, $1C >
ret			
rlabel_07_46BD:
call  rlabel_07_6063 
ldi a,(hl)		
add e			
ld e,a			
ldi a,(hl)		
add d			
ld d,a			
call  rlabel_07_4D99 
ret nc			
call  rlabel_07_4D53 
cp $0d			
ret			
.incbin "data/07_46D0.data"
ld a,$05		
ld ($c223),a		
call  rlabel_07_4D21 
ld a,$0a		
ld e,$08		
call  rlabel_07_4C76 
jp $40d6		
call  rlabel_07_4D21 
call  rlabel_07_4FD7 
call  rlabel_07_5F62 
call  rlabel_07_4B40 
call  rlabel_07_608C 
jp nz,$40d6		
ld a,$02		
ld e,$00		
call  rlabel_07_4C76 
call  rlabel_07_5F69 
jp $40d6		
ld a,$0f		
ld ($c228),a		
xor a			
ld ($c21c),a		
ld ($c218),a		
ld a,$05		
ld ($c223),a		
ld a,$0b		
ld e,$08		
call  rlabel_07_4C76 
jp $40d6		
call  rlabel_07_4D21 
call  rlabel_07_4FD7 
call  rlabel_07_5F62 
call  rlabel_07_4B40 
call  rlabel_07_608C 
jp nz,$40d6		
jp $485a		
ld hl,$4267		
ld a,($c221)		
call  rlabel_07_4D09 
ld a,$39		
call  rlabel_00_3071 
ld a,$0c		
ld e,$09		
call  rlabel_07_4C76 
jp $40d6		
call  rlabel_07_4FD7 
ld b,$02		
ld hl,$5491		
rst $28			
ld hl,$4ccc		
call  rlabel_07_4CA8 
ld a,($ff00+$a4)	
call  rlabel_07_4DC8 
cp $08			
.DB $28 $07 ; < ['$28', '$07'] > < 0x4888 > < 74888 07 4888 | 2807: jr z, $07 >
ld c,a			
ld b,$02		
ld hl,$4b2b		
rst $28			
ld a,($c228)		
ld b,a			
sra a			
sra a			
sra a			
ld hl,$c220		
add (hl)		
ld (hl),a		
.DB $28 $56 ; < ['$28', '$56'] > < 0x48a0 > < 748a0 07 48A0 | 2856: jr z, $56 >
bit 7,a			
.DB $20 $4e ; < ['$20', '$4e'] > < 0x48a4 > < 748a4 07 48A4 | 204E: jr nz, $4E >
ld a,($c229)		
cp $0d			
.DB $20 $07 ; < ['$20', '$07'] > < 0x48ab > < 748ab 07 48AB | 2007: jr nz, $07 >
.incbin "data/07_48AD.data"
dec b			
ld a,b			
ld ($c228),a		
call  rlabel_07_4B46 
ld a,($c234)		
bit 3,a			
.DB $28 $2e ; < ['$28', '$2e'] > < 0x48c1 > < 748c1 07 48C1 | 282E: jr z, $2E >
.incbin "data/07_48C3.data"
jp $40d6		
.incbin "data/07_48F4.data"
call  rlabel_07_4B46 
ld a,($c229)		
ld a,($c229)		
cp $01			
jp z,$46e7		
cp $02			
jp z,$43b2		
cp $09			
.DB $28 $08 ; < ['$28', '$08'] > < 0x490d > < 7490d 07 490D | 2808: jr z, $08 >
ld a,$91		
call  rlabel_00_3071 
jp $47f9		
.incbin "data/07_4917.data"
rlabel_07_4976:
ld a,($ff00+$a5)	
bit 1,a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x497a > < 7497a 07 497A | 2807: jr z, $07 >
ld a,($ff00+$a4)	
bit 2,a			
jp z,$4a95		
rlabel_07_4983:
ld a,($ff00+$a5)	
ld b,a			
bit 0,a			
.DB $28 $20 ; < ['$28', '$20'] > < 0x4988 > < 74988 07 4988 | 2820: jr z, $20 >
ld a,($ff00+$a4)	
bit 2,a			
.DB $20 $1a ; < ['$20', '$1a'] > < 0x498e > < 7498e 07 498E | 201A: jr nz, $1A >
ld a,($c224)		
cp $06			
.DB $28 $12 ; < ['$28', '$12'] > < 0x4995 > < 74995 07 4995 | 2812: jr z, $12 >
call  rlabel_07_4AED 
pop af			
ld a,($c224)		
cp $05			
.DB $28 $07 ; < ['$28', '$07'] > < 0x49a0 > < 749a0 07 49A0 | 2807: jr z, $07 >
cp $07			
.DB $28 $03 ; < ['$28', '$03'] > < 0x49a4 > < 749a4 07 49A4 | 2803: jr z, $03 >
jp $42af		
.incbin "data/07_49A9.data"
ld e,$04		
ld a,($ff00+$a5)	
and e			
.DB $28 $06 ; < ['$28', '$06'] > < 0x49af > < 749af 07 49AF | 2806: jr z, $06 >
.incbin "data/07_49B1.data"
ld a,($cbd5)		
and e			
.DB $28 $39 ; < ['$28', '$39'] > < 0x49bb > < 749bb 07 49BB | 2839: jr z, $39 >
.incbin "data/07_49BD.data"
ld a,($ff00+$a5)	
bit 3,a			
.DB $28 $1e ; < ['$28', '$1e'] > < 0x49fa > < 749fa 07 49FA | 281E: jr z, $1E >
ld de,$03f7		
ld b,$0e		
ld hl,$4315		
rst $28			
dec c			
.DB $20 $12 ; < ['$20', '$12'] > < 0x4a06 > < 74a06 07 4A06 | 2012: jr nz, $12 >
ld b,$02		
call  rlabel_00_0214 
ld b,$02		
ld hl,$4a3a		
rst $28			
call  rlabel_00_037E 
pop hl			
jp $40d6		
ret			
.incbin "data/07_4A1B.data"
ld a,($c225)		
ld hl,$cfd5		
add h			
ld h,a			
ld a,(hl)		
ld ($c222),a		
ld c,a			
ld a,$d0		
call  rlabel_00_0462 
ld a,(hl)		
ld ($c226),a		
ret			
ld b,$02		
ld hl,$53f2		
jp $080d		
.incbin "data/07_4A9D.data"
ld de,$060a		
ld a,($db82)		
ld c,a			
ld b,$07		
ld hl,$4b06		
rst $28			
ld de,$c340		
ld b,$01		
call  rlabel_00_090C 
.incbin "data/07_4ACA.data"
rlabel_07_4AED:
ld hl,$4e54		
call  rlabel_07_4DE6 
call  rlabel_07_4D99 
ret nc			
ld b,$06		
ld hl,$7d3f		
rst $28			
ret			
ld de,$0609		
.DB $18 $03 ; < ['$18', '$03'] > < 0x4b01 > < 74b01 07 4B01 | 1803: jr $03 >
rlabel_07_4B03:
call  rlabel_00_097C 
ld a,($c224)		
cp $04			
.DB $20 $05 ; < ['$20', '$05'] > < 0x4b0b > < 74b0b 07 4B0B | 2005: jr nz, $05 >
ld hl,$c1c3		
res 5,(hl)		
ld a,($c220)		
ld b,a			
ld a,($c219)		
sub b			
.DB $38 $06 ; < ['$38', '$06'] > < 0x4b1a > < 74b1a 07 4B1A | 3806: jr c, $06 >
cp $49			
ld a,$00		
.DB $30 $02 ; < ['$30', '$02'] > < 0x4b20 > < 74b20 07 4B20 | 3002: jr nc, $02 >
ld a,$0d		
ld ($cdae),a		
ld a,($c203)		
push af			
ld hl,$c33a		
res 3,(hl)		
ld b,$0e		
ld hl,$40ef		
rst $28			
pop af			
call  rlabel_00_0815 
ld hl,$c1c3		
set 5,(hl)		
ret			
rlabel_07_4B40:
ld hl,$4cc8		
call  rlabel_07_4CA8 
rlabel_07_4B46:
call  rlabel_07_6063 
push de			
ld a,($c203)		
ld c,a			
call  rlabel_07_7A3D 
inc b			
.DB $28 $10 ; < ['$28', '$10'] > < 0x4b52 > < 74b52 07 4B52 | 2810: jr z, $10 >
.incbin "data/07_4B54.data"
ld a,b			
ld ($ff00+$90),a	
ld a,($c218)		
ld l,a			
ld h,e			
ld a,($c21a)		
ld c,a			
ld a,($c21b)		
ld b,a			
add hl,bc		
ld a,l			
ld ($c218),a		
ld e,h			
ld a,($c21c)		
ld l,a			
ld a,($c21d)		
ld h,d			
ld a,($c21e)		
ld c,a			
ld a,($c21f)		
ld b,a			
add hl,bc		
ld a,l			
ld ($c21c),a		
ld d,h			
pop hl			
call  rlabel_07_4FAD 
dec b			
jp nz,$4ba0		
ld b,$06		
ld c,$02		
push bc			
jp $4c4b		
call  rlabel_07_4F02 
push bc			
push hl			
call  rlabel_07_611B 
pop hl			
.DB $30 $05 ; < ['$30', '$05'] > < 0x4ba9 > < 74ba9 07 4BA9 | 3005: jr nc, $05 >
.incbin "data/07_4BAB.data"
ld c,$00		
ld a,($ff00+$90)	
and a			
jp nz,$4c4b		
push hl			
ld c,$00		
call  rlabel_07_7A3D 
pop hl			
inc b			
jp z,$4c4b		
ld d,h			
ld e,l			
ld a,($c314)		
and $03			
.DB $20 $7f ; < ['$20', '$7f'] > < 0x4bca > < 74bca 07 4BCA | 207F: jr nz, $7F >
ld a,($c224)		
cp $09			
.DB $28 $78 ; < ['$28', '$78'] > < 0x4bd1 > < 74bd1 07 4BD1 | 2878: jr z, $78 >
cp $1f			
.DB $28 $74 ; < ['$28', '$74'] > < 0x4bd5 > < 74bd5 07 4BD5 | 2874: jr z, $74 >
cp $0e			
.DB $28 $70 ; < ['$28', '$70'] > < 0x4bd9 > < 74bd9 07 4BD9 | 2870: jr z, $70 >
cp $10			
.DB $28 $6c ; < ['$28', '$6c'] > < 0x4bdd > < 74bdd 07 4BDD | 286C: jr z, $6C >
cp $0c			
.DB $28 $68 ; < ['$28', '$68'] > < 0x4be1 > < 74be1 07 4BE1 | 2868: jr z, $68 >
cp $18			
.DB $28 $64 ; < ['$28', '$64'] > < 0x4be5 > < 74be5 07 4BE5 | 2864: jr z, $64 >
cp $1a			
.DB $28 $60 ; < ['$28', '$60'] > < 0x4be9 > < 74be9 07 4BE9 | 2860: jr z, $60 >
dec b			
ld a,b			
call  rlabel_00_084C 
ld b,$15		
call  rlabel_00_0876 
and a			
.DB $28 $53 ; < ['$28', '$53'] > < 0x4bf6 > < 74bf6 07 4BF6 | 2853: jr z, $53 >
ld a,($c224)		
cp $19			
.DB $28 $6f ; < ['$28', '$6f'] > < 0x4bfd > < 74bfd 07 4BFD | 286F: jr z, $6F >
ld a,($c220)		
and a			
.DB $20 $46 ; < ['$20', '$46'] > < 0x4c03 > < 74c03 07 4C03 | 2046: jr nz, $46 >
ld b,$12		
call  rlabel_00_0876 
and a			
.DB $20 $3e ; < ['$20', '$3e'] > < 0x4c0b > < 74c0b 07 4C0B | 203E: jr nz, $3E >
xor a			
ld b,$0e		
call  rlabel_00_0882 
ld b,$14		
call  rlabel_00_0876 
ld c,a			
call  rlabel_07_6094 
ld a,($c23c)		
push af			
ld c,$00		
ld b,$02		
ld hl,$47d2		
rst $28			
pop af			
call  rlabel_00_084C 
call  rlabel_00_0812 
push de			
ld b,$02		
ld hl,$7ebc		
rst $28			
ld b,$15		
call  rlabel_00_0876 
pop de			
ld e,a			
ld b,$02		
ld hl,$488e		
rst $28			
ld de,$c340		
ld b,$01		
call  rlabel_00_090C 
ld hl,$c1fd		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,e			
ld ($c219),a		
ld a,($c235)		
add e			
di			
ldi (hl),a		
ld a,($c220)		
ldi (hl),a		
ld a,d			
ld ($c21d),a		
ld a,($c236)		
add d			
ld (hl),a		
ei			
call  rlabel_07_6078 
pop bc			
ret			
.incbin "data/07_4C6E.data"
rlabel_07_4C76:
ld ($c224),a		
ld b,$05		
call  rlabel_00_0832 
ld d,a			
ld a,($c222)		
ld c,a			
inc hl			
ld a,(hl)		
or $20			
ldi (hl),a		
inc hl			
xor a			
ld (hl),a		
di			
ld b,$06		
ld hl,$447d		
rst $28			
ei			
ret			
.incbin "data/07_4C94.data"
rlabel_07_4CA8:
ld a,($c229)		
cp $0d			
.DB $20 $09 ; < ['$20', '$09'] > < 0x4cad > < 74cad 07 4CAD | 2009: jr nz, $09 >
.incbin "data/07_4CAF.data"
rlabel_07_4CB8:
ld a,$c3		
ld ($c215),a		
ld a,l			
ld ($c216),a		
ld a,h			
ld ($c217),a		
ret			
.incbin "data/07_4CC6.data"
cp $0d			
ccf			
ret			
cp $07			
.DB $28 $02 ; < ['$28', '$02'] > < 0x4cce > < 74cce 07 4CCE | 2802: jr z, $02 >
cp $0e			
ccf			
ret			
.incbin "data/07_4CD4.data"
and a			
ret z			
cp $08			
ret z			
scf			
ret			
.incbin "data/07_4CE4.data"
rlabel_07_4D09:
add a			
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4d0d > < 74d0d 07 4D0D | 3001: jr nc, $01 >
.incbin "data/07_4D0F.data"
ldi a,(hl)		
ld ($c21a),a		
ldi a,(hl)		
ld ($c21b),a		
ldi a,(hl)		
ld ($c21e),a		
ld a,(hl)		
ld ($c21f),a		
ret			
rlabel_07_4D21:
xor a			
ld hl,$c21a		
ldi (hl),a		
ld (hl),a		
ld hl,$c21e		
ldi (hl),a		
ld (hl),a		
ret			
rlabel_07_4D2D:
push de			
push bc			
srl d			
srl d			
srl d			
ld a,$f8		
and e			
ld e,a			
ld bc,$d9c5		
add c			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4d3d > < 74d3d 07 4D3D | 3001: jr nc, $01 >
inc b			
add e			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4d41 > < 74d41 07 4D41 | 3001: jr nc, $01 >
inc b			
srl e			
add e			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4d47 > < 74d47 07 4D47 | 3001: jr nc, $01 >
inc b			
add d			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4d4b > < 74d4b 07 4D4B | 3001: jr nc, $01 >
inc b			
ld c,a			
ld a,(bc)		
pop bc			
pop de			
ret			
rlabel_07_4D53:
srl d			
srl d			
srl d			
ld a,$f8		
and e			
ld e,a			
ld bc,$d9c5		
add c			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4d61 > < 74d61 07 4D61 | 3001: jr nc, $01 >
inc b			
add e			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4d65 > < 74d65 07 4D65 | 3001: jr nc, $01 >
inc b			
srl e			
add e			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4d6b > < 74d6b 07 4D6B | 3001: jr nc, $01 >
inc b			
add d			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4d6f > < 74d6f 07 4D6F | 3001: jr nc, $01 >
inc b			
ld c,a			
ld a,(bc)		
ld e,a			
ret			
srl d			
srl d			
srl d			
ld a,$f8		
and e			
ld e,a			
ld bc,$d6f5		
add c			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4d84 > < 74d84 07 4D84 | 3001: jr nc, $01 >
inc b			
add e			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4d88 > < 74d88 07 4D88 | 3001: jr nc, $01 >
inc b			
srl e			
add e			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4d8e > < 74d8e 07 4D8E | 3001: jr nc, $01 >
inc b			
add d			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4d92 > < 74d92 07 4D92 | 3001: jr nc, $01 >
inc b			
ld c,a			
ld a,(bc)		
ld c,a			
ret			
rlabel_07_4D99:
ld a,e			
cp $90			
ret nc			
ld a,d			
cp $a0			
ret			
.incbin "data/07_4DA1.data"
rlabel_07_4DBB:
add a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4dbc > < 74dbc 07 4DBC | 3001: jr nc, $01 >
.incbin "data/07_4DBE.data"
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4dc1 > < 74dc1 07 4DC1 | 3001: jr nc, $01 >
.incbin "data/07_4DC3.data"
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ret			
rlabel_07_4DC8:
swap a			
and $0f			
ld hl,$4dd6		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4dd1 > < 74dd1 07 4DD1 | 3001: jr nc, $01 >
.incbin "data/07_4DD3.data"
ld a,(hl)		
ret			
.incbin "data/07_4DD6.data"
rlabel_07_4DE6:
.DB $e5 ; < ['$e5'] > < 0x4de6 > < 74de6 07 4DE6 | E5: push hl >
ld a,($c224)		
cp $07			
.DB $20 $18 ; < ['$20', '$18'] > < 0x4dec > < 74dec 07 4DEC | 2018: jr nz, $18 >
.incbin "data/07_4DEE.data"
ld b,$05		
call  rlabel_00_0832 
pop hl			
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4e0f > < 74e0f 07 4E0F | 3001: jr nc, $01 >
.incbin "data/07_4E11.data"
ldi a,(hl)		
ld d,(hl)		
ld e,a			
ld b,$00		
call  rlabel_00_0832 
add e			
ld e,a			
ld b,$02		
call  rlabel_00_0832 
add d			
ld d,a			
ret			
.incbin "data/07_4E24.data"
rlabel_07_4E6C:
.DB $87 ; < ['$87'] > < 0x4e6c > < 74e6c 07 4E6C | 87: add a >
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4e6f > < 74e6f 07 4E6F | 3001: jr nc, $01 >
.incbin "data/07_4E71.data"
ld a,e			
add (hl)		
ld e,a			
inc hl			
ld a,d			
add (hl)		
ld d,a			
ret			
.incbin "data/07_4E7A.data"
ld bc,$d6f5		
.DB $18 $03 ; < ['$18', '$03'] > < 0x4eb5 > < 74eb5 07 4EB5 | 1803: jr $03 >
ld bc,$d9c5		
ld a,e			
swap a			
ld l,a			
and $0f			
ld h,a			
ld a,l			
and $f0			
ld l,a			
ld a,e			
add a			
add a			
add l			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4ec9 > < 74ec9 07 4EC9 | 3001: jr nc, $01 >
inc h			
add d			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4ecd > < 74ecd 07 4ECD | 3001: jr nc, $01 >
.incbin "data/07_4ECF.data"
ld l,a			
add hl,bc		
ld a,(hl)		
ret			
ld a,($c975)		
call  rlabel_00_0985 
.DB $28 $1d ; < ['$28', '$1d'] > < 0x4eda > < 74eda 07 4EDA | 281D: jr z, $1D >
ld a,($c971)		
add a			
add a			
add a			
ld e,a			
ld a,($c973)		
add a			
add a			
add e			
ld e,a			
ld a,($c972)		
add a			
add a			
add a			
ld d,a			
ld a,($c974)		
add a			
add a			
add d			
ld d,a			
ret			
.incbin "data/07_4EF9.data"
rlabel_07_4F02:
xor a			
ld ($ff00+$8a),a	
ld b,$00		
ld a,l			
cp e			
.DB $28 $51 ; < ['$28', '$51'] > < 0x4f09 > < 74f09 07 4F09 | 2851: jr z, $51 >
inc b			
push de			
.DB $38 $06 ; < ['$38', '$06'] > < 0x4f0d > < 74f0d 07 4F0D | 3806: jr c, $06 >
ld a,$fc		
add e			
ld e,a			
.DB $18 $04 ; < ['$18', '$04'] > < 0x4f13 > < 74f13 07 4F13 | 1804: jr $04 >
ld a,$03		
add e			
ld e,a			
ld d,h			
ld c,$00		
ld a,$fc		
add d			
ld d,a			
call  rlabel_07_4D2D 
swap a			
and $0f			
call $c215		
.DB $30 $02 ; < ['$30', '$02'] > < 0x4f2a > < 74f2a 07 4F2A | 3002: jr nc, $02 >
set 1,c			
ld a,$07		
add d			
ld d,a			
call  rlabel_07_4D2D 
swap a			
and $0f			
call $c215		
.DB $30 $02 ; < ['$30', '$02'] > < 0x4f3c > < 74f3c 07 4F3C | 3002: jr nc, $02 >
set 0,c			
pop de			
ld a,c			
and a			
.DB $28 $17 ; < ['$28', '$17'] > < 0x4f43 > < 74f43 07 4F43 | 2817: jr z, $17 >
ld e,l			
ld a,h			
cp d			
.DB $28 $04 ; < ['$28', '$04'] > < 0x4f48 > < 74f48 07 4F48 | 2804: jr z, $04 >
set 1,b			
.DB $18 $11 ; < ['$18', '$11'] > < 0x4f4c > < 74f4c 07 4F4C | 1811: jr $11 >
ld a,c			
cp $02			
.DB $38 $05 ; < ['$38', '$05'] > < 0x4f51 > < 74f51 07 4F51 | 3805: jr c, $05 >
.DB $28 $05 ; < ['$28', '$05'] > < 0x4f53 > < 74f53 07 4F53 | 2805: jr z, $05 >
set 1,b			
ret			
dec d			
ret			
inc d			
ret			
ld a,h			
cp d			
ret z			
push de			
.DB $38 $06 ; < ['$38', '$06'] > < 0x4f60 > < 74f60 07 4F60 | 3806: jr c, $06 >
ld a,$fc		
add d			
ld d,a			
.DB $18 $04 ; < ['$18', '$04'] > < 0x4f66 > < 74f66 07 4F66 | 1804: jr $04 >
ld a,$03		
add d			
ld d,a			
ld c,$00		
ld a,$fc		
add e			
ld e,a			
call  rlabel_07_4D2D 
swap a			
and $0f			
call $c215		
.DB $30 $02 ; < ['$30', '$02'] > < 0x4f7c > < 74f7c 07 4F7C | 3002: jr nc, $02 >
set 1,c			
ld a,$07		
add e			
ld e,a			
call  rlabel_07_4D2D 
swap a			
and $0f			
call $c215		
.DB $30 $02 ; < ['$30', '$02'] > < 0x4f8e > < 74f8e 07 4F8E | 3002: jr nc, $02 >
set 0,c			
pop de			
ld a,c			
and a			
ret z			
ld d,h			
bit 0,b			
.DB $28 $03 ; < ['$28', '$03'] > < 0x4f99 > < 74f99 07 4F99 | 2803: jr z, $03 >
set 2,b			
ret			
ld a,c			
cp $02			
.DB $38 $05 ; < ['$38', '$05'] > < 0x4fa1 > < 74fa1 07 4FA1 | 3805: jr c, $05 >
.DB $28 $05 ; < ['$28', '$05'] > < 0x4fa3 > < 74fa3 07 4FA3 | 2805: jr z, $05 >
set 2,b			
ret			
dec e			
ret			
inc e			
ret			
.incbin "data/07_4FAC.data"
rlabel_07_4FAD:
ld b,$00		
ld c,$01		
ld a,e			
cp $0c			
.DB $38 $11 ; < ['$38', '$11'] > < 0x4fb4 > < 74fb4 07 4FB4 | 3811: jr c, $11 >
inc c			
cp $8d			
.DB $30 $0c ; < ['$30', '$0c'] > < 0x4fb9 > < 74fb9 07 4FB9 | 300C: jr nc, $0C >
inc c			
ld a,d			
cp $04			
.DB $38 $06 ; < ['$38', '$06'] > < 0x4fbf > < 74fbf 07 4FBF | 3806: jr c, $06 >
inc c			
cp $9d			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4fc4 > < 74fc4 07 4FC4 | 3001: jr nc, $01 >
ret			
ld ($ff00+$b3),a	
ld a,$91		
ld ($ff00+$b0),a	
ld a,$53		
ld ($ff00+$b1),a	
ld a,$02		
call  rlabel_00_0244 
ret			
rlabel_07_4FD7:
ld hl,$4fe4		
ld a,($c229)		
call  rlabel_07_4DBB 
ld a,($c224)		
jp hl			
.incbin "data/07_4FE4.data"
cp $05			
.DB $28 $05 ; < ['$28', '$05'] > < 0x5006 > < 75006 07 5006 | 2805: jr z, $05 >
cp $06			
.DB $28 $01 ; < ['$28', '$01'] > < 0x500a > < 7500a 07 500A | 2801: jr z, $01 >
ret			
pop hl			
jp $4160		
.incbin "data/07_5011.data"
cp $05			
ret z			
pop hl			
cp $0c			
jp z,$4572		
jp $4356		
.incbin "data/07_50A1.data"
cp $15			
ret z			
ld a,($c220)		
and a			
.DB $20 $04 ; < ['$20', '$04'] > < 0x50ff > < 750ff 07 50FF | 2004: jr nz, $04 >
pop hl			
jp $4572		
.incbin "data/07_5105.data"
ret			
.incbin "data/07_5113.data"
rlabel_07_5F09:
ld bc,$c567		
.DB $18 $0d ; < ['$18', '$0d'] > < 0x5f0c > < 75f0c 07 5F0C | 180D: jr $0D >
.incbin "data/07_5F0E.data"
ld l,a			
ld h,$00		
add hl,hl		
add hl,hl		
add hl,hl		
add hl,bc		
ld a,(hl)		
ret			
.incbin "data/07_5F24.data"
rlabel_07_5F62:
ld a,($c229)		
cp $01			
.DB $28 $5d ; < ['$28', '$5d'] > < 0x5f67 > < 75f67 07 5F67 | 285D: jr z, $5D >
rlabel_07_5F69:
ld a,($c234)		
bit 3,a			
.DB $28 $56 ; < ['$28', '$56'] > < 0x5f6e > < 75f6e 07 5F6E | 2856: jr z, $56 >
call  rlabel_07_6063 
srl e			
srl e			
srl e			
srl d			
srl d			
srl d			
ld a,($c237)		
cp $0c			
.DB $28 $2b ; < ['$28', '$2b'] > < 0x5f84 > < 75f84 07 5F84 | 282B: jr z, $2B >
ld l,a			
ld h,$00		
add hl,hl		
ld c,l			
ld b,h			
add hl,hl		
add hl,bc		
ld bc,$db39		
add hl,bc		
ldi a,(hl)		
and $1f			
ld c,a			
ld a,d			
cp c			
.DB $38 $17 ; < ['$38', '$17'] > < 0x5f98 > < 75f98 07 5F98 | 3817: jr c, $17 >
ldi a,(hl)		
and $1f			
ld c,a			
ld a,e			
cp c			
.DB $38 $0f ; < ['$38', '$0f'] > < 0x5fa0 > < 75fa0 07 5FA0 | 380F: jr c, $0F >
ldi a,(hl)		
and $1f			
ld c,a			
ld a,d			
cp c			
.DB $30 $07 ; < ['$30', '$07'] > < 0x5fa8 > < 75fa8 07 5FA8 | 3007: jr nc, $07 >
ldi a,(hl)		
and $1f			
ld c,a			
ld a,e			
cp c			
ret c			
ld a,($c229)		
cp $09			
.DB $28 $0e ; < ['$28', '$0e'] > < 0x5fb6 > < 75fb6 07 5FB6 | 280E: jr z, $0E >
ld b,$0e		
ld hl,$686f		
rst $28			
ld a,b			
cp $0d			
.DB $30 $03 ; < ['$30', '$03'] > < 0x5fc1 > < 75fc1 07 5FC1 | 3003: jr nc, $03 >
jp $5fcf		
ld a,$0c		
ld ($c237),a		
ret			
ld a,c			
ld l,e			
ld h,d			
ld ($c237),a		
ld c,a			
inc hl			
ldd a,(hl)		
bit 7,a			
.DB $20 $0f ; < ['$20', '$0f'] > < 0x5fd7 > < 75fd7 07 5FD7 | 200F: jr nz, $0F >
ld a,c			
add $05			
ld c,a			
call  rlabel_07_4B03 
ld de,$c340		
ld b,$01		
call  rlabel_00_090C 
ld c,a			
swap a			
and $03			
ld ($c31c),a		
ld a,c			
and $0f			
ld ($c319),a		
ldd a,(hl)		
ld ($c318),a		
ldd a,(hl)		
and $e0			
ld b,a			
ldd a,(hl)		
and $e0			
rrca			
rrca			
rrca			
or b			
add $04			
ld ($c31a),a		
ldd a,(hl)		
and $e0			
ld b,a			
ld a,(hl)		
and $e0			
rrca			
rrca			
rrca			
or b			
add $04			
ld ($c31b),a		
ld a,$04		
ld ($c317),a		
xor a			
ld ($c31d),a		
ld de,$c340		
ld b,$01		
call  rlabel_00_090C 
.incbin "data/07_602B.data"
rlabel_07_6063:
ld a,($c219)		
ld e,a			
ld a,($c21d)		
ld d,a			
ret			
rlabel_07_606C:
ld a,($c219)		
ld l,a			
ld a,($c21d)		
ld h,a			
ret			
rlabel_07_6075:
call  rlabel_07_6063 
rlabel_07_6078:
ld a,($c234)		
ld ($c22a),a		
call  rlabel_07_4D2D 
ld ($c234),a		
swap a			
and $0f			
ld ($c229),a		
ret			
rlabel_07_608C:
ld a,($c223)		
dec a			
ld ($c223),a		
ret			
rlabel_07_6094:
ld a,c			
call  rlabel_07_5F09 
ld b,a			
set 7,a			
ld (hl),a		
ret			
.incbin "data/07_609D.data"
rlabel_07_60C0:
ld a,c			
call  rlabel_00_084C 
call  rlabel_00_0812 
xor a			
ld b,$14		
call  rlabel_00_0882 
call  rlabel_00_098D 
.DB $28 $0c ; < ['$28', '$0c'] > < 0x60d0 > < 760d0 07 60D0 | 280C: jr z, $0C >
ld a,$ff		
ld b,$0a		
call  rlabel_00_0882 
ld b,$16		
call  rlabel_00_0882 
ld a,$ff		
ld b,$0f		
call  rlabel_00_0882 
ret			
ld c,$03		
call  rlabel_07_60C0 
ld b,$06		
call  rlabel_00_0832 
and $3f			
ld (hl),a		
ld a,$b4		
ld b,$00		
call  rlabel_00_083E 
ld b,$02		
call  rlabel_00_083E 
xor a			
ld b,$01		
call  rlabel_00_083E 
dec c			
.DB $20 $e0 ; < ['$20', '$e0'] > < 0x6106 > < 76106 07 6106 | 20E0: jr nz, $E0 >
ld a,($c316)		
call  rlabel_00_0815 
call  rlabel_07_7CF0 
ld de,$03fa		
ld b,$0e		
ld hl,$42f8		
rst $28			
ret			
rlabel_07_611B:
ld a,($c33a)		
and $01			
ret z			
.incbin "data/07_6121.data"
call  rlabel_07_793D 
call  rlabel_07_7655 
jp c,$609d		
ret			
.incbin "data/07_6146.data"
ret			
ld a,c			
call  rlabel_00_084C 
call  rlabel_00_0812 
ld hl,$4cdd		
call  rlabel_07_4CB8 
ld b,$15		
call  rlabel_00_0876 
and a			
jp z,$7678		
ld b,$12		
call  rlabel_00_0876 
and a			
.DB $28 $1a ; < ['$28', '$1a'] > < 0x6197 > < 76197 07 6197 | 281A: jr z, $1A >
.incbin "data/07_6199.data"
ld hl,$7b26		
push hl			
ld b,$0d		
call  rlabel_00_0876 
call  rlabel_00_3005 
.incbin "data/07_61BF.data"
jp $76ad		
.incbin "data/07_6263.data"
jp $771e		
.incbin "data/07_62C4.data"
rlabel_07_7655:
ld b,$1e		
call  rlabel_00_0876 
ldd a,(hl)		
ld b,a			
ldd a,(hl)		
ld c,a			
ldd a,(hl)		
ld l,(hl)		
ld h,a			
jp $093e		
.incbin "data/07_7664.data"
call  rlabel_07_7D20 
and a			
ret nz			
ld b,$0d		
call  rlabel_00_0876 
ld b,a			
inc hl			
inc hl			
ld c,(hl)		
ld a,b			
call  rlabel_00_3005 
.incbin "data/07_768A.data"
ld e,$00		
call  rlabel_07_7AFF 
jp $617a		
call  rlabel_07_76AD 
jp $617a		
.incbin "data/07_769E.data"
rlabel_07_76AD:
ld hl,$4cdd		
call  rlabel_07_4CB8 
ld b,$0b		
call  rlabel_00_0876 
and a			
.DB $28 $2b ; < ['$28', '$2b'] > < 0x76b9 > < 776b9 07 76B9 | 282B: jr z, $2B >
dec a			
ld (hl),a		
ld b,$0f		
call  rlabel_00_0876 
call  rlabel_07_79BC 
ld b,$09		
call  rlabel_00_0876 
cp $10			
.DB $28 $42 ; < ['$28', '$42'] > < 0x76cc > < 776cc 07 76CC | 2842: jr z, $42 >
ld c,a			
call  rlabel_07_79C8 
call  rlabel_07_79AB 
call  rlabel_07_7885 
and a			
.DB $20 $04 ; < ['$20', '$04'] > < 0x76d9 > < 776d9 07 76D9 | 2004: jr nz, $04 >
call  rlabel_07_7AFD 
ret			
xor a			
ld b,$0b		
call  rlabel_00_0882 
ret			
call  rlabel_00_304A 
ld b,a			
and $e0			
.DB $28 $13 ; < ['$28', '$13'] > < 0x76ec > < 776ec 07 76EC | 2813: jr z, $13 >
ld a,b			
ld b,$0b		
call  rlabel_00_0882 
call  rlabel_00_304A 
swap a			
and $0f			
ld b,$09		
call  rlabel_00_0882 
ret			
swap b			
ld a,b			
ld b,$0b		
call  rlabel_00_0882 
ld a,$10		
ld b,$09		
call  rlabel_00_0882 
call  rlabel_07_7AF9 
ret			
.incbin "data/07_7714.data"
ld a,$20		
ld ($ff00+$8a),a	
ld ($ff00+$8b),a	
ld hl,$4cdd		
call  rlabel_07_4CB8 
ld b,$0b		
call  rlabel_00_0876 
and a			
.DB $28 $2a ; < ['$28', '$2a'] > < 0x7730 > < 77730 07 7730 | 282A: jr z, $2A >
dec a			
ld (hl),a		
ld b,$0f		
call  rlabel_00_0876 
call  rlabel_07_79BC 
ld b,$09		
call  rlabel_00_0876 
cp $10			
ret z			
ld c,a			
call  rlabel_07_79C8 
call  rlabel_07_79AB 
call  rlabel_07_7885 
and a			
.DB $20 $04 ; < ['$20', '$04'] > < 0x774f > < 7774f 07 774F | 2004: jr nz, $04 >
call  rlabel_07_7AFD 
ret			
.incbin "data/07_7755.data"
ld b,$09		
call  rlabel_00_0876 
cp $10			
.DB $28 $15 ; < ['$28', '$15'] > < 0x7763 > < 77763 07 7763 | 2815: jr z, $15 >
ld a,($ff00+$8a)	
ld c,a			
ld a,$20		
call  rlabel_00_3027 
add c			
ld b,$0b		
call  rlabel_00_0882 
call  rlabel_07_7AF9 
ld a,$10		
.DB $18 $13 ; < ['$18', '$13'] > < 0x7778 > < 77778 07 7778 | 1813: jr $13 >
ld a,($ff00+$8b)	
ld c,a			
ld a,$20		
call  rlabel_00_3027 
add c			
ld b,$0b		
call  rlabel_00_0882 
call  rlabel_00_304A 
and $0f			
ld b,$09		
call  rlabel_00_0882 
ret			
.incbin "data/07_7793.data"
rlabel_07_7885:
ld a,($c23d)		
ld l,a			
ld a,($c23e)		
ld h,a			
push hl			
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld b,a			
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
ld l,c			
ld h,b			
add hl,de		
ld a,h			
ld ($ff00+$8a),a	
ld a,l			
pop hl			
ld (hl),a		
ld a,($c23d)		
ld l,a			
ld a,($c23e)		
ld h,a			
ld a,$04		
call  rlabel_00_0462 
push hl			
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld b,a			
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
ld l,c			
ld h,b			
add hl,de		
ld a,h			
ld ($ff00+$8b),a	
ld a,l			
pop hl			
ld (hl),a		
ld a,($ff00+$8a)	
ld e,a			
ld a,($ff00+$8b)	
ld d,a			
ld hl,$0404		
ld bc,$9b8b		
call  rlabel_00_093E 
.DB $38 $15 ; < ['$38', '$15'] > < 0x78cd > < 778cd 07 78CD | 3815: jr c, $15 >
ld b,$01		
call  rlabel_00_0876 
ld c,a			
ld b,$05		
call  rlabel_00_0876 
ld h,a			
ld l,c			
call  rlabel_07_4F02 
ld a,b			
and $06			
.DB $20 $48 ; < ['$20', '$48'] > < 0x78e2 > < 778e2 07 78E2 | 2048: jr nz, $48 >
nop			
call  rlabel_07_611B 
.DB $38 $42 ; < ['$38', '$42'] > < 0x78e8 > < 778e8 07 78E8 | 3842: jr c, $42 >
ld a,($c23c)		
ld c,a			
ld b,a			
inc a			
call nz,$7a05		
inc b			
.DB $20 $36 ; < ['$20', '$36'] > < 0x78f4 > < 778f4 07 78F4 | 2036: jr nz, $36 >
ld b,$1e		
call  rlabel_00_086B 
ldd a,(hl)		
ld b,a			
ldd a,(hl)		
ld c,a			
ldd a,(hl)		
ld l,(hl)		
ld h,a			
call  rlabel_00_093E 
.DB $38 $25 ; < ['$38', '$25'] > < 0x7905 > < 77905 07 7905 | 3825: jr c, $25 >
ld a,e			
ld b,$01		
call  rlabel_00_0882 
ld a,d			
ld b,$05		
call  rlabel_00_0882 
ld b,$08		
call  rlabel_00_0876 
ld c,a			
ld hl,$c1fd		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,e			
di			
ldi (hl),a		
ld a,c			
ldi (hl),a		
ld a,d			
ld (hl),a		
ei			
xor a			
ret			
.incbin "data/07_7929.data"
ld a,$02		
ret			
.incbin "data/07_792F.data"
rlabel_07_793D:
ld b,$01		
call  rlabel_00_0876 
ld e,a			
ld b,$05		
call  rlabel_00_0876 
ld d,a			
ret			
ld c,$00		
ld a,h			
cp d			
.DB $20 $08 ; < ['$20', '$08'] > < 0x794e > < 7794e 07 794E | 2008: jr nz, $08 >
ld a,e			
cp l			
.DB $38 $3b ; < ['$38', '$3b'] > < 0x7952 > < 77952 07 7952 | 383B: jr c, $3B >
ld c,$0f		
.DB $18 $37 ; < ['$18', '$37'] > < 0x7956 > < 77956 07 7956 | 1837: jr $37 >
ld a,l			
cp e			
.DB $20 $09 ; < ['$20', '$09'] > < 0x795a > < 7795a 07 795A | 2009: jr nz, $09 >
ld c,$08		
ld a,d			
cp h			
.DB $38 $2d ; < ['$38', '$2d'] > < 0x7960 > < 77960 07 7960 | 382D: jr c, $2D >
dec c			
.DB $18 $2a ; < ['$18', '$2a'] > < 0x7963 > < 77963 07 7963 | 182A: jr $2A >
ld c,$02		
push hl			
ld a,e			
sub l			
.DB $30 $02 ; < ['$30', '$02'] > < 0x796a > < 7796a 07 796A | 3002: jr nc, $02 >
cpl			
inc a			
ld l,a			
ld a,d			
sub h			
.DB $30 $02 ; < ['$30', '$02'] > < 0x7971 > < 77971 07 7971 | 3002: jr nc, $02 >
cpl			
inc a			
ld h,a			
cp l			
.DB $28 $06 ; < ['$28', '$06'] > < 0x7977 > < 77977 07 7977 | 2806: jr z, $06 >
.DB $38 $03 ; < ['$38', '$03'] > < 0x7979 > < 77979 07 7979 | 3803: jr c, $03 >
inc c			
.DB $18 $01 ; < ['$18', '$01'] > < 0x797c > < 7797c 07 797C | 1801: jr $01 >
dec c			
pop hl			
ld a,e			
cp l			
.DB $38 $03 ; < ['$38', '$03'] > < 0x7982 > < 77982 07 7982 | 3803: jr c, $03 >
inc c			
inc c			
inc c			
ld a,h			
cp d			
.DB $38 $04 ; < ['$38', '$04'] > < 0x7989 > < 77989 07 7989 | 3804: jr c, $04 >
ld a,c			
xor $0f			
ld c,a			
ld hl,$799b		
ld a,c			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x7995 > < 77995 07 7995 | 3001: jr nc, $01 >
.incbin "data/07_7997.data"
ld a,(hl)		
ld c,a			
ret			
.incbin "data/07_799B.data"
rlabel_07_79AB:
.DB $79 ; < ['$79'] > < 0x79ab > < 779ab 07 79AB | 79: ld a, c >
.DB $21 $d8 $79 ; < ['$21', '$d8', '$79'] > < 0x79ac > < 779ac 07 79AC | 21D879: ld hl, $79D8 >
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x79b1 > < 779b1 07 79B1 | 3001: jr nc, $01 >
.incbin "data/07_79B3.data"
ld c,(hl)		
ld b,$06		
ld hl,$43a8		
rst $28			
ret			
rlabel_07_79BC:
push bc			
push af			
ld c,a			
ld b,$02		
ld hl,$4c92		
rst $28			
pop af			
pop bc			
ret			
rlabel_07_79C8:
ld b,$02		
ld hl,$4ca0		
rst $28			
ret			
.incbin "data/07_79CF.data"
ld b,$00		
ld a,b			
cp c			
.DB $28 $2a ; < ['$28', '$2a'] > < 0x7a09 > < 77a09 07 7A09 | 282A: jr z, $2A >
ld hl,$0863		
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x7a11 > < 77a11 07 7A11 | 3001: jr nc, $01 >
.incbin "data/07_7A13.data"
ldi a,(hl)		
ld h,(hl)		
ld l,a			
push hl			
inc hl			
ldi a,(hl)		
inc hl			
inc hl			
inc hl			
ld h,(hl)		
ld l,a			
push bc			
ld bc,$0a08		
call  rlabel_00_094A 
pop bc			
pop hl			
.DB $30 $0b ; < ['$30', '$0b'] > < 0x7a28 > < 77a28 07 7A28 | 300B: jr nc, $0B >
inc b			
dec b			
ret z			
ld a,$14		
call  rlabel_00_0462 
ld a,(hl)		
and a			
ret nz			
inc b			
bit 2,b			
.DB $28 $cd ; < ['$28', '$cd'] > < 0x7a38 > < 77a38 07 7A38 | 28CD: jr z, $CD >
ld b,$ff		
ret			
rlabel_07_7A3D:
ld b,$00		
ld hl,$c1bd		
ld a,b			
cp c			
.DB $28 $0a ; < ['$28', '$0a'] > < 0x7a44 > < 77a44 07 7A44 | 280A: jr z, $0A >
ld a,(hl)		
sub e			
.DB $30 $02 ; < ['$30', '$02'] > < 0x7a48 > < 77a48 07 7A48 | 3002: jr nc, $02 >
cpl			
inc a			
cp $08			
.DB $38 $0f ; < ['$38', '$0f'] > < 0x7a4e > < 77a4e 07 7A4E | 380F: jr c, $0F >
ld a,$10		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x7a54 > < 77a54 07 7A54 | 3001: jr nc, $01 >
.incbin "data/07_7A56.data"
inc b			
bit 2,b			
.DB $28 $e6 ; < ['$28', '$e6'] > < 0x7a5a > < 77a5a 07 7A5A | 28E6: jr z, $E6 >
ld b,$ff		
ret			
inc hl			
ldi a,(hl)		
cp $10			
.DB $30 $0a ; < ['$30', '$0a'] > < 0x7a63 > < 77a63 07 7A63 | 300A: jr nc, $0A >
ld a,(hl)		
sub d			
.DB $30 $02 ; < ['$30', '$02'] > < 0x7a67 > < 77a67 07 7A67 | 3002: jr nc, $02 >
cpl			
inc a			
cp $0a			
.DB $38 $0f ; < ['$38', '$0f'] > < 0x7a6d > < 77a6d 07 7A6D | 380F: jr c, $0F >
ld a,$0e		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x7a73 > < 77a73 07 7A73 | 3001: jr nc, $01 >
.incbin "data/07_7A75.data"
inc b			
bit 2,b			
.DB $28 $c7 ; < ['$28', '$c7'] > < 0x7a79 > < 77a79 07 7A79 | 28C7: jr z, $C7 >
ld b,$ff		
ret			
inc hl			
inc hl			
inc hl			
inc hl			
ld a,(hl)		
and $40			
ret nz			
.incbin "data/07_7A86.data"
ld b,$00		
ld hl,$c1bd		
ld a,b			
cp c			
.DB $28 $0a ; < ['$28', '$0a'] > < 0x7a9b > < 77a9b 07 7A9B | 280A: jr z, $0A >
ld a,(hl)		
sub e			
.DB $30 $02 ; < ['$30', '$02'] > < 0x7a9f > < 77a9f 07 7A9F | 3002: jr nc, $02 >
cpl			
inc a			
cp $0c			
.DB $38 $0f ; < ['$38', '$0f'] > < 0x7aa5 > < 77aa5 07 7AA5 | 380F: jr c, $0F >
ld a,$10		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x7aab > < 77aab 07 7AAB | 3001: jr nc, $01 >
.incbin "data/07_7AAD.data"
inc b			
bit 2,b			
.DB $28 $e6 ; < ['$28', '$e6'] > < 0x7ab1 > < 77ab1 07 7AB1 | 28E6: jr z, $E6 >
ld b,$ff		
ret			
inc hl			
ldi a,(hl)		
cp $10			
.DB $30 $0a ; < ['$30', '$0a'] > < 0x7aba > < 77aba 07 7ABA | 300A: jr nc, $0A >
ld a,(hl)		
sub d			
.DB $30 $02 ; < ['$30', '$02'] > < 0x7abe > < 77abe 07 7ABE | 3002: jr nc, $02 >
cpl			
inc a			
cp $0e			
.DB $38 $0f ; < ['$38', '$0f'] > < 0x7ac4 > < 77ac4 07 7AC4 | 380F: jr c, $0F >
ld a,$0e		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x7aca > < 77aca 07 7ACA | 3001: jr nc, $01 >
.incbin "data/07_7ACC.data"
inc b			
bit 2,b			
.DB $28 $c7 ; < ['$28', '$c7'] > < 0x7ad0 > < 77ad0 07 7AD0 | 28C7: jr z, $C7 >
ld b,$ff		
ret			
.incbin "data/07_7AD5.data"
rlabel_07_7AF9:
ld e,$00		
.DB $18 $02 ; < ['$18', '$02'] > < 0x7afb > < 77afb 07 7AFB | 1802: jr $02 >
rlabel_07_7AFD:
ld e,$01		
rlabel_07_7AFF:
ld b,$0e		
call  rlabel_00_0876 
cp e			
ret z			
ld (hl),e		
ld b,$0a		
call  rlabel_00_0876 
ld c,a			
ld b,$05		
call  rlabel_00_0832 
ld d,a			
ld b,$06		
ld hl,$447d		
rst $28			
ret			
.incbin "data/07_7B1A.data"
xor a			
ld ($ff00+$94),a	
call  rlabel_07_793D 
ld b,$05		
call  rlabel_00_0832 
ld hl,$7bbf		
call  rlabel_07_4E6C 
call  rlabel_07_606C 
ld bc,$0a0a		
call  rlabel_00_094A 
ret nc			
ld a,($c314)		
and $03			
ret nz			
ld b,$15		
call  rlabel_00_0876 
ld ($ff00+$93),a	
and a			
ret z			
ld a,($c224)		
cp $1f			
ret z			
cp $09			
ret z			
cp $0e			
ret z			
cp $10			
ret z			
cp $0c			
ret z			
cp $18			
ret z			
cp $1a			
ret z			
cp $19			
.DB $28 $4c ; < ['$28', '$4c'] > < 0x7b6a > < 77b6a 07 7B6A | 284C: jr z, $4C >
ld a,($c220)		
and a			
ret nz			
xor a			
ld b,$0e		
call  rlabel_00_0882 
ld b,$14		
call  rlabel_00_0876 
ld c,a			
call  rlabel_07_6094 
ld a,($c23c)		
push af			
ld a,($ff00+$94)	
cp $01			
.DB $28 $08 ; < ['$28', '$08'] > < 0x7b88 > < 77b88 07 7B88 | 2808: jr z, $08 >
ld b,$02		
ld hl,$4813		
rst $28			
.DB $18 $06 ; < ['$18', '$06'] > < 0x7b90 > < 77b90 07 7B90 | 1806: jr $06 >
.incbin "data/07_7B92.data"
pop af			
call  rlabel_00_084C 
call  rlabel_00_0812 
ld a,($ff00+$93)	
ld e,a			
push de			
ld b,$02		
ld hl,$7ebc		
rst $28			
pop de			
ld b,$02		
ld hl,$488e		
rst $28			
ld de,$c340		
ld b,$01		
call  rlabel_00_090C 
.incbin "data/07_7BB8.data"
ld hl,$cdb7		
ldi a,(hl)		
push af			
ldi a,(hl)		
ld d,a			
inc a			
.DB $20 $02 ; < ['$20', '$02'] > < 0x7ca5 > < 77ca5 07 7CA5 | 2002: jr nz, $02 >
.incbin "data/07_7CA7.data"
ldi a,(hl)		
ld e,a			
inc a			
.DB $20 $02 ; < ['$20', '$02'] > < 0x7cac > < 77cac 07 7CAC | 2002: jr nz, $02 >
.incbin "data/07_7CAE.data"
ldi a,(hl)		
ld b,a			
inc a			
.DB $20 $02 ; < ['$20', '$02'] > < 0x7cb3 > < 77cb3 07 7CB3 | 2002: jr nz, $02 >
.incbin "data/07_7CB5.data"
ld a,(hl)		
ld c,a			
inc a			
.DB $20 $02 ; < ['$20', '$02'] > < 0x7cba > < 77cba 07 7CBA | 2002: jr nz, $02 >
.incbin "data/07_7CBC.data"
pop af			
call  rlabel_00_084C 
.DB $18 $1c ; < ['$18', '$1c'] > < 0x7cc2 > < 77cc2 07 7CC2 | 181C: jr $1C >
ld a,$03		
push af			
call  rlabel_00_084C 
call  rlabel_07_7CDA 
pop af			
dec a			
.DB $20 $f5 ; < ['$20', '$f5'] > < 0x7ccf > < 77ccf 07 7CCF | 20F5: jr nz, $F5 >
ret			
.incbin "data/07_7CD2.data"
rlabel_07_7CDA:
ld de,$0c14		
ld bc,$9484		
push bc			
ld b,$1b		
call  rlabel_00_086B 
pop bc			
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld a,c			
ldi (hl),a		
ld a,b			
ld (hl),a		
ret			
rlabel_07_7CF0:
ld hl,$c29c		
ld c,$60		
call  rlabel_00_04E2 
ret			
rlabel_07_7CF9:
ld a,($c23c)		
ld hl,$7d01		
call  rlabel_00_04A7 
ret			
.incbin "data/07_7D03.data"
rlabel_07_7D20:
call  rlabel_07_7CF9 
ldi a,(hl)		
or (hl)			
jp z,$7df4		
.incbin "data/07_7D28.data"
xor a			
ret			
.incbin "data/07_7DF6.data"
