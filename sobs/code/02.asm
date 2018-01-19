.BANK $02 SLOT 1
.ORG 0
.incbin "data/02_4000.data"
ld hl,$c1a9		
ldd a,(hl)		
cp (hl)			
jp nz,$4025		
ld a,($c315)		
call  rlabel_00_3005 
.incbin "data/02_400F.data"
ld a,($ff00+$a4)	
ld ($cbd5),a		
jp $027c		
ld b,a			
xor a			
ld ($cbd5),a		
ld ($cbd7),a		
ld a,($c1a8)		
ld ($c1a9),a		
ld a,b			
cp $00			
jp z,$406a		
jp $40de		
rlabel_02_403C:
ld a,$c9		
ld ($c1aa),a		
ld hl,$c1a0		
ld de,$0287		
call  rlabel_00_0231 
ld hl,$c1a3		
ld de,$0729		
call  rlabel_00_0231 
ld a,$54		
ld ($ff00+$9a),a	
ld a,$40		
ld ($ff00+$41),a	
xor a			
ld ($ff00+$0f),a	
ld a,$03		
ld ($ff00+$9c),a	
ld ($ff00+$ff),a	
ld hl,$c314		
res 6,(hl)		
ret			
ld de,$c340		
call  rlabel_00_08F6 
and a			
jp nz,$401d		
di			
ld hl,$c1a3		
ld de,$0729		
call  rlabel_00_0231 
ld b,$06		
ld hl,$41b7		
rst $28			
ld b,$06		
ld hl,$4ebd		
rst $28			
call  rlabel_02_403C 
ei			
xor a			
ld ($c316),a		
ld a,$ff		
ld ($c96d),a		
ld de,$0400		
ld b,$0e		
ld hl,$4315		
rst $28			
ld a,c			
and a			
ld a,$05		
ld hl,$0282		
.DB $20 $08 ; < ['$20', '$08'] > < 0x40a7 > < 240a7 02 40A7 | 2008: jr nz, $08 >
ld hl,$c351		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,$01		
push af			
ld a,($c221)		
ld d,a			
ld a,($c219)		
ld c,a			
ld a,($c21d)		
ld b,a			
pop af			
ld ($c317),a		
ld a,l			
ld ($c318),a		
ld a,h			
ld ($c319),a		
ld a,c			
ld ($c31a),a		
ld a,b			
ld ($c31b),a		
ld a,d			
ld ($c31c),a		
ld a,$02		
ld ($c315),a		
jp $401d		
rlabel_02_40DE:
call  rlabel_02_403C 
ld a,$ff		
ld ($c96d),a		
xor a			
ld ($c235),a		
ld ($c236),a		
call  rlabel_00_097C 
ld hl,$c317		
ld a,$01		
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld a,($c219)		
ldi (hl),a		
ld a,($c21d)		
ldi (hl),a		
ld a,($c221)		
ld (hl),a		
ld a,$02		
ld ($c315),a		
ret			
ld a,($c317)		
and a			
jp nz,$44a8		
ld a,($c30f)		
and a			
jp nz,$4201		
ld a,($c97d)		
and a			
.DB $28 $08 ; < ['$28', '$08'] > < 0x411e > < 2411e 02 411E | 2808: jr z, $08 >
ld b,$05		
ld hl,$491c		
rst $28			
.DB $18 $29 ; < ['$18', '$29'] > < 0x4126 > < 24126 02 4126 | 1829: jr $29 >
ld a,($c224)		
cp $07			
.DB $28 $11 ; < ['$28', '$11'] > < 0x412d > < 2412d 02 412D | 2811: jr z, $11 >
ld a,($c219)		
cp $84			
.DB $38 $0f ; < ['$38', '$0f'] > < 0x4134 > < 24134 02 4134 | 380F: jr c, $0F >
ld a,($c33f)		
ld b,a			
ld a,($c21d)		
cp b			
.DB $38 $05 ; < ['$38', '$05'] > < 0x413e > < 2413e 02 413E | 3805: jr c, $05 >
call  rlabel_00_037E 
.DB $18 $0c ; < ['$18', '$0c'] > < 0x4143 > < 24143 02 4143 | 180C: jr $0C >
ld a,($ff00+$9b)	
bit 5,a			
.DB $20 $06 ; < ['$20', '$06'] > < 0x4149 > < 24149 02 4149 | 2006: jr nz, $06 >
ld b,$02		
ld hl,$6ecd		
rst $28			
ld a,($c33a)		
bit 0,a			
call nz,$5f02		
ld a,($ff00+$a6)	
and $1f			
cp $06			
.DB $30 $0f ; < ['$30', '$0f'] > < 0x415f > < 2415f 02 415F | 300F: jr nc, $0F >
add a			
add a			
ld hl,$c31e		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4168 > < 24168 02 4168 | 3001: jr nc, $01 >
.incbin "data/02_416A.data"
ld a,(hl)		
and a			
call nz,$6e71		
ld a,($c253)		
and a			
ld c,$01		
ld b,$07		
ld hl,$617b		
call nz,$0028		
ld a,($c272)		
and a			
ld c,$02		
ld b,$07		
ld hl,$617b		
call nz,$0028		
ld a,($c291)		
and a			
ld c,$03		
ld b,$07		
ld hl,$617b		
call nz,$0028		
xor a			
call  rlabel_00_0815 
ld a,($c224)		
add a			
ld hl,$41bd		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x41a7 > < 241a7 02 41A7 | 3001: jr nc, $01 >
.incbin "data/02_41A9.data"
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld b,$07		
call  rlabel_00_0028 
ld a,($c336)		
ld c,a			
and a			
call nz,$7a6d		
jp $401d		
.incbin "data/02_41BD.data"
ld b,$06		
ld hl,$4ebd		
rst $28			
call  rlabel_00_037E 
ld a,($c318)		
ld e,a			
ld a,($c319)		
ld d,a			
ld b,$05		
ld hl,$405f		
rst $28			
ld a,($c316)		
call  rlabel_00_0815 
ld bc,$0000		
ld hl,$0000		
ld a,($c219)		
ld e,a			
ld a,($c21d)		
ld d,a			
ld a,($c981)		
cp $01			
.DB $20 $05 ; < ['$20', '$05'] > < 0x42f6 > < 242f6 02 42F6 | 2005: jr nz, $05 >
ld e,$0d		
ld bc,$038e		
cp $02			
.DB $20 $05 ; < ['$20', '$05'] > < 0x42ff > < 242ff 02 42FF | 2005: jr nz, $05 >
ld e,$8c		
ld bc,$fc72		
cp $03			
.DB $20 $05 ; < ['$20', '$05'] > < 0x4308 > < 24308 02 4308 | 2005: jr nz, $05 >
.incbin "data/02_430A.data"
cp $04			
.DB $20 $05 ; < ['$20', '$05'] > < 0x4311 > < 24311 02 4311 | 2005: jr nz, $05 >
ld d,$9c		
ld hl,$fc34		
ld a,c			
ld ($c22b),a		
ld a,b			
ld ($c22c),a		
ld a,l			
ld ($c22d),a		
ld a,h			
ld ($c22e),a		
ld a,e			
ld ($c219),a		
ld b,$00		
call  rlabel_00_083E 
ld a,d			
ld ($c21d),a		
inc hl			
inc hl			
ld (hl),a		
ld a,$03		
push af			
call  rlabel_00_084C 
call  rlabel_00_0812 
ld b,$14		
call  rlabel_00_0876 
and a			
.DB $28 $2f ; < ['$28', '$2f'] > < 0x4347 > < 24347 02 4347 | 282F: jr z, $2F >
ld a,($c981)		
ld hl,$4384		
add a			
call  rlabel_00_0462 
ldi a,(hl)		
ld e,a			
ld d,(hl)		
ld b,$06		
call  rlabel_00_0832 
and $3f			
ld (hl),a		
ld b,$01		
call  rlabel_00_0876 
add e			
ld e,a			
ld b,$05		
call  rlabel_00_0876 
add d			
ld d,a			
ld a,e			
ld b,$00		
call  rlabel_00_083E 
ld a,d			
ld b,$02		
call  rlabel_00_083E 
pop af			
dec a			
.DB $20 $be ; < ['$20', '$be'] > < 0x437a > < 2437a 02 437A | 20BE: jr nz, $BE >
ld a,$04		
ld ($c315),a		
jp $401d		
.incbin "data/02_4384.data"
ld a,($c97f)		
and a			
jp z,$445d		
ld a,$00		
call  rlabel_00_0815 
ld a,($c218)		
ld l,a			
ld a,($c219)		
ld h,a			
ld a,($c22b)		
ld c,a			
ld a,($c22c)		
ld b,a			
add hl,bc		
ld a,l			
ld ($c218),a		
ld a,h			
ld ($c219),a		
ld b,$00		
call  rlabel_00_083E 
ld a,($c21c)		
ld l,a			
ld a,($c21d)		
ld h,a			
ld a,($c22d)		
ld c,a			
ld a,($c22e)		
ld b,a			
add hl,bc		
ld a,l			
ld ($c21c),a		
ld a,h			
ld ($c21d),a		
ld b,$02		
call  rlabel_00_083E 
ld a,($c220)		
dec hl			
ld (hl),a		
ld a,$03		
push af			
call  rlabel_00_084C 
call  rlabel_00_0812 
ld b,$14		
call  rlabel_00_0876 
and a			
.DB $20 $0e ; < ['$20', '$0e'] > < 0x43ea > < 243ea 02 43EA | 200E: jr nz, $0E >
ld a,$b4		
ld b,$00		
call  rlabel_00_083E 
ld b,$02		
call  rlabel_00_083E 
.DB $18 $4c ; < ['$18', '$4c'] > < 0x43f8 > < 243f8 02 43F8 | 184C: jr $4C >
ld b,$0a		
call  rlabel_00_0876 
inc a			
.DB $28 $25 ; < ['$28', '$25'] > < 0x4400 > < 24400 02 4400 | 2825: jr z, $25 >
ld b,$00		
call  rlabel_00_0832 
ld e,a			
ld b,$02		
call  rlabel_00_0832 
ld d,a			
dec hl			
ld a,(hl)		
and a			
.DB $20 $14 ; < ['$20', '$14'] > < 0x4411 > < 24411 02 4411 | 2014: jr nz, $14 >
ld a,e			
cp $a0			
.DB $30 $07 ; < ['$30', '$07'] > < 0x4416 > < 24416 02 4416 | 3007: jr nc, $07 >
ld a,d			
cp $a8			
.DB $30 $02 ; < ['$30', '$02'] > < 0x441b > < 2441b 02 441B | 3002: jr nc, $02 >
.DB $18 $08 ; < ['$18', '$08'] > < 0x441d > < 2441d 02 441D | 1808: jr $08 >
ld b,$06		
call  rlabel_00_0832 
or $60			
ld (hl),a		
ld a,($c981)		
ld hl,$4453		
add a			
call  rlabel_00_0462 
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,e			
add l			
ld e,a			
ld a,d			
add h			
ld d,a			
ld a,e			
ld b,$00		
call  rlabel_00_083E 
ld a,d			
ld b,$02		
call  rlabel_00_083E 
pop af			
dec a			
.DB $20 $93 ; < ['$20', '$93'] > < 0x4448 > < 24448 02 4448 | 2093: jr nz, $93 >
ld b,$05		
ld hl,$4561		
rst $28			
jp $401d		
.incbin "data/02_4453.data"
ld a,($c224)		
cp $17			
.DB $20 $08 ; < ['$20', '$08'] > < 0x4462 > < 24462 02 4462 | 2008: jr nz, $08 >
.incbin "data/02_4464.data"
ld a,$02		
ld ($c315),a		
ld a,$03		
ld ($c317),a		
ld a,$01		
ld ($c318),a		
ld b,$07		
ld hl,$6075		
rst $28			
ld b,$07		
ld hl,$409e		
rst $28			
xor a			
ld ($ff00+$a5),a	
ld a,$08		
ld ($c221),a		
jp $401d		
.incbin "data/02_4492.data"
ld b,$02		
ld hl,$558d		
rst $28			
jp $445d		
rlabel_02_44A3:
ld a,($c317)		
and a			
ret z			
ld b,a			
xor a			
ld ($c317),a		
ld a,b			
call  rlabel_00_3005 
.incbin "data/02_44B1.data"
ld b,$02		
ld hl,$5723		
rst $28			
ld a,($db84)		
ld a,a			
call  rlabel_00_305E 
jp $401d		
.incbin "data/02_44CE.data"
ld a,($c318)		
ld c,a			
ld b,$07		
ld hl,$4b03		
rst $28			
jp $401d		
call  rlabel_02_4A3A 
ld hl,$c318		
ldi a,(hl)		
inc a			
.DB $20 $1e ; < ['$20', '$1e'] > < 0x44e6 > < 244e6 02 44E6 | 201E: jr nz, $1E >
ldi a,(hl)		
cp $07			
.DB $20 $19 ; < ['$20', '$19'] > < 0x44eb > < 244eb 02 44EB | 2019: jr nz, $19 >
ldi a,(hl)		
inc a			
.DB $20 $15 ; < ['$20', '$15'] > < 0x44ef > < 244ef 02 44EF | 2015: jr nz, $15 >
.incbin "data/02_44F1.data"
ld b,$02		
ld hl,$5723		
rst $28			
ld a,($db84)		
ld a,a			
call  rlabel_00_305E 
call  rlabel_00_098D 
.DB $28 $0a ; < ['$28', '$0a'] > < 0x4516 > < 24516 02 4516 | 280A: jr z, $0A >
ld a,$03		
ld ($c317),a		
ld a,$01		
ld ($c318),a		
call  rlabel_02_6199 
jp $401d		
call  rlabel_02_4A3A 
ld b,$05		
ld hl,$49df		
rst $28			
ld hl,$c314		
set 3,(hl)		
ld a,($c203)		
ld c,a			
ld a,($c23c)		
ld b,a			
push bc			
call  rlabel_00_097C 
ld b,$05		
ld hl,$405f		
rst $28			
ld b,$05		
ld hl,$446d		
rst $28			
pop bc			
ld a,b			
call  rlabel_00_084C 
ld a,c			
call  rlabel_00_0815 
ld hl,$c314		
res 3,(hl)		
ret			
ld hl,$c314		
res 4,(hl)		
bit 3,(hl)		
.DB $20 $06 ; < ['$20', '$06'] > < 0x4564 > < 24564 02 4564 | 2006: jr nz, $06 >
ld b,$07		
ld hl,$60e6		
rst $28			
call  rlabel_00_098D 
.DB $28 $06 ; < ['$28', '$06'] > < 0x456f > < 2456f 02 456F | 2806: jr z, $06 >
ld b,$07		
ld hl,$7cc4		
rst $28			
ld b,$06		
ld hl,$44e6		
rst $28			
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ld c,$00		
call  rlabel_00_097C 
ld b,$0e		
ld hl,$40ef		
rst $28			
ld hl,$c1a3		
ld de,$0729		
call  rlabel_00_0231 
ld hl,$c314		
bit 4,(hl)		
.DB $20 $08 ; < ['$20', '$08'] > < 0x459f > < 2459f 02 459F | 2008: jr nz, $08 >
ld hl,$c336		
xor a			
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ret			
.incbin "data/02_45AA.data"
call  rlabel_02_45F3 
call  rlabel_02_58D1 
ld c,$ff		
.DB $28 $07 ; < ['$28', '$07'] > < 0x45c9 > < 245c9 02 45C9 | 2807: jr z, $07 >
inc c			
ld a,(hl)		
bit 7,a			
ret nz			
inc c			
ret			
.incbin "data/02_45D2.data"
rlabel_02_45D3:
call  rlabel_02_58D1 
.DB $28 $18 ; < ['$28', '$18'] > < 0x45d6 > < 245d6 02 45D6 | 2818: jr z, $18 >
ld b,(hl)		
bit 0,c			
.DB $28 $08 ; < ['$28', '$08'] > < 0x45db > < 245db 02 45DB | 2808: jr z, $08 >
bit 7,b			
.DB $28 $0c ; < ['$28', '$0c'] > < 0x45df > < 245df 02 45DF | 280C: jr z, $0C >
res 7,b			
ld (hl),b		
ret			
bit 7,b			
.DB $20 $04 ; < ['$20', '$04'] > < 0x45e7 > < 245e7 02 45E7 | 2004: jr nz, $04 >
set 7,b			
ld (hl),b		
ret			
set 7,c			
ret			
.incbin "data/02_45F0.data"
rlabel_02_45F3:
ld a,e			
inc a			
ret nz			
ld a,d			
cpl			
and $07			
ret nz			
ld a,($c351)		
ld e,a			
ld a,d			
and $f8			
ld d,a			
ld a,($c352)		
or d			
ld d,a			
ret			
rlabel_02_4609:
call  rlabel_02_45F3 
ld a,c			
ld ($ff00+$8a),a	
call  rlabel_02_45D3 
and a			
jp z,$46db		
bit 7,c			
ld c,a			
ret nz			
ld a,(de)		
ld b,a			
ld a,($c351)		
cp b			
ret nz			
inc de			
ld a,(de)		
dec de			
and $07			
ld b,a			
ld a,($c352)		
cp b			
ret nz			
ld a,($ff00+$8a)	
bit 0,a			
ld a,(hl)		
.DB $28 $5f ; < ['$28', '$5f'] > < 0x4631 > < 24631 02 4631 | 285F: jr z, $5F >
call  rlabel_00_0985 
.DB $28 $10 ; < ['$28', '$10'] > < 0x4636 > < 24636 02 4636 | 2810: jr z, $10 >
ld a,($ff00+$8a)	
bit 1,a			
.DB $20 $01 ; < ['$20', '$01'] > < 0x463c > < 2463c 02 463C | 2001: jr nz, $01 >
ret			
.incbin "data/02_463F.data"
ld a,($c203)		
ld ($ff00+$8a),a	
ld a,(hl)		
and $30			
swap a			
call  rlabel_00_084C 
call  rlabel_00_0812 
ld b,$06		
call  rlabel_00_0832 
and $3f			
ld (hl),a		
ld a,c			
ld b,$14		
call  rlabel_00_0882 
ld b,$01		
call  rlabel_00_0876 
di			
ld b,$00		
call  rlabel_00_083E 
ld b,$05		
call  rlabel_00_0876 
ld b,$02		
call  rlabel_00_083E 
ei			
ld a,($cad7)		
and a			
.DB $20 $5c ; < ['$20', '$5c'] > < 0x4680 > < 24680 02 4680 | 205C: jr nz, $5C >
ld a,($c97f)		
and a			
.DB $20 $56 ; < ['$20', '$56'] > < 0x4686 > < 24686 02 4686 | 2056: jr nz, $56 >
ld b,$06		
call  rlabel_00_0832 
or $60			
ld (hl),a		
.DB $18 $4c ; < ['$18', '$4c'] > < 0x4690 > < 24690 02 4690 | 184C: jr $4C >
call  rlabel_00_0985 
.DB $28 $18 ; < ['$28', '$18'] > < 0x4695 > < 24695 02 4695 | 2818: jr z, $18 >
ld a,($ff00+$8a)	
bit 1,a			
.DB $20 $09 ; < ['$20', '$09'] > < 0x469b > < 2469b 02 469B | 2009: jr nz, $09 >
push de			
ld b,$05		
ld hl,$422f		
rst $28			
pop de			
ret			
push de			
ld b,$05		
ld hl,$4456		
rst $28			
pop de			
ret			
ld a,($c203)		
ld ($ff00+$8a),a	
ld a,(hl)		
and $30			
swap a			
call  rlabel_00_084C 
call  rlabel_00_0812 
xor a			
ld b,$14		
call  rlabel_00_0882 
ld b,$06		
call  rlabel_00_0832 
and $3f			
ld (hl),a		
ld a,$c8		
ld b,$00		
call  rlabel_00_083E 
ld b,$02		
call  rlabel_00_083E 
.DB $18 $03 ; < ['$18', '$03'] > < 0x46d9 > < 246d9 02 46D9 | 1803: jr $03 >
.incbin "data/02_46DB.data"
ld a,($ff00+$8a)	
call  rlabel_00_0815 
ret			
call  rlabel_02_45F3 
call  rlabel_02_4609 
ld a,c			
and a			
ret z			
ld ($ff00+$98),a	
ld l,e			
ld h,d			
inc de			
inc de			
ld a,(de)		
ld ($ff00+$90),a	
call  rlabel_00_0985 
ret nz			
push hl			
ld a,(de)		
inc de			
and $30			
swap a			
call  rlabel_00_084C 
call  rlabel_00_0812 
push de			
ld b,$14		
call  rlabel_00_0876 
and a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x470e > < 2470e 02 470E | 2807: jr z, $07 >
ld b,a			
ld a,($ff00+$98)	
cp b			
call z,$723e		
pop de			
inc de			
ld a,($cdb8)		
cp $ff			
.DB $28 $05 ; < ['$28', '$05'] > < 0x471e > < 2471e 02 471E | 2805: jr z, $05 >
ld b,$16		
call  rlabel_00_0882 
ld a,($cdb9)		
cp $ff			
.DB $28 $08 ; < ['$28', '$08'] > < 0x472a > < 2472a 02 472A | 2808: jr z, $08 >
rrca			
rrca			
ld b,a			
ld a,(de)		
and $3f			
or b			
ld (de),a		
inc de			
ld a,($cdba)		
cp $ff			
.DB $28 $01 ; < ['$28', '$01'] > < 0x473a > < 2473a 02 473A | 2801: jr z, $01 >
ld (de),a		
inc de			
ld a,($cdbb)		
cp $ff			
.DB $28 $01 ; < ['$28', '$01'] > < 0x4743 > < 24743 02 4743 | 2801: jr z, $01 >
ld (de),a		
inc de			
ld a,($cdb7)		
cp $ff			
.DB $28 $2c ; < ['$28', '$2c'] > < 0x474c > < 2474c 02 474C | 282C: jr z, $2C >
ld c,a			
ld a,($ff00+$90)	
and $4f			
cp $04			
.DB $28 $08 ; < ['$28', '$08'] > < 0x4755 > < 24755 02 4755 | 2808: jr z, $08 >
ld a,c			
ld b,$0a		
call  rlabel_00_0882 
.DB $18 $1b ; < ['$18', '$1b'] > < 0x475d > < 2475d 02 475D | 181B: jr $1B >
ld a,c			
ld (de),a		
ld b,$15		
call  rlabel_00_0882 
push bc			
ld b,$02		
ld hl,$5979		
rst $28			
ld a,c			
ld b,$0a		
call  rlabel_00_0882 
pop bc			
ld b,$02		
ld hl,$590a		
rst $28			
pop de			
ld a,(de)		
ld b,a			
ld a,($c351)		
cp b			
ret nz			
inc de			
ld a,(de)		
and $07			
ld b,a			
ld a,($c352)		
cp b			
ret nz			
inc de			
inc de			
inc de			
ld a,(de)		
inc de			
push af			
ld a,(de)		
inc de			
ld b,$05		
call  rlabel_00_0882 
di			
ld b,$02		
call  rlabel_00_083E 
ld a,(de)		
inc de			
ld b,$00		
call  rlabel_00_083E 
ei			
ld b,$01		
call  rlabel_00_0882 
ld b,$0a		
call  rlabel_00_0876 
ld c,a			
pop af			
ld b,a			
and $c0			
rlca			
rlca			
ld d,a			
ld e,$00		
ld b,$06		
ld hl,$447d		
rst $28			
ld b,$16		
call  rlabel_00_0876 
ld l,a			
ld de,$4809		
ld a,($c23c)		
ld h,a			
call  rlabel_00_089B 
ret			
ld a,($c316)		
call  rlabel_00_0815 
ld b,$05		
call  rlabel_00_0832 
ld e,a			
call  rlabel_00_0812 
ld b,$05		
call  rlabel_00_0832 
ld d,a			
add $02			
cp e			
.DB $28 $24 ; < ['$28', '$24'] > < 0x47ea > < 247ea 02 47EA | 2824: jr z, $24 >
ld a,($c224)		
cp $04			
.DB $28 $04 ; < ['$28', '$04'] > < 0x47f1 > < 247f1 02 47F1 | 2804: jr z, $04 >
ld a,c			
and a			
.DB $28 $19 ; < ['$28', '$19'] > < 0x47f5 > < 247f5 02 47F5 | 2819: jr z, $19 >
.incbin "data/02_47F7.data"
ld d,$03		
ret			
ld a,($c316)		
call  rlabel_00_0815 
ld b,$05		
call  rlabel_00_0832 
ld e,a			
call  rlabel_00_0812 
ld b,$05		
call  rlabel_00_0832 
ld d,a			
cp e			
.DB $20 $29 ; < ['$20', '$29'] > < 0x4829 > < 24829 02 4829 | 2029: jr nz, $29 >
.incbin "data/02_482B.data"
ld d,$03		
ret			
.incbin "data/02_4857.data"
ld a,e			
inc a			
.DB $20 $04 ; < ['$20', '$04'] > < 0x4890 > < 24890 02 4890 | 2004: jr nz, $04 >
.incbin "data/02_4892.data"
push de			
call  rlabel_02_4A3A 
call  rlabel_00_027C 
ld b,$05		
ld hl,$49df		
rst $28			
call  rlabel_00_037E 
pop de			
ld a,d			
ld ($cfd2),a		
ld c,e			
ld b,$02		
ld hl,$597e		
rst $28			
push bc			
ld b,$05		
ld hl,$6508		
rst $28			
pop bc			
ld a,c			
ld ($cfd0),a		
ld a,($db38)		
and $7f			
ld ($cfd1),a		
ld a,($c316)		
call  rlabel_00_0815 
ld b,$05		
call  rlabel_00_0832 
ld ($c221),a		
call  rlabel_00_027C 
ld b,$06		
ld hl,$44e6		
rst $28			
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ld hl,$c1a3		
ld de,$0287		
call  rlabel_00_0231 
ld a,$ff		
ld ($ff00+$9a),a	
ld b,$01		
ld hl,$47ea		
rst $28			
call  rlabel_00_306E 
call  rlabel_00_027C 
ld a,($cfd2)		
ld b,a			
and $03			
ld ($cfd2),a		
srl b			
srl b			
.DB $20 $02 ; < ['$20', '$02'] > < 0x490c > < 2490c 02 490C | 2002: jr nz, $02 >
ld b,$13		
ld a,b			
call  rlabel_00_305E 
ld b,$09		
ld hl,$605e		
rst $28			
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ld hl,$c1a3		
ld de,$0287		
call  rlabel_00_0231 
ei			
call  rlabel_00_027C 
ld b,$0a		
ld hl,$757f		
rst $28			
di			
ld b,$01		
ld hl,$47fa		
rst $28			
ld b,$01		
ld hl,$487c		
rst $28			
xor a			
ld ($cfd3),a		
di			
ld b,$05		
ld hl,$4829		
rst $28			
ld b,$02		
ld hl,$403c		
rst $28			
xor a			
ld ($ff00+$0f),a	
ei			
ld a,($cfd2)		
cp $05			
jp nz,$496e		
.incbin "data/02_4960.data"
ei			
call  rlabel_00_027C 
ld b,$06		
ld hl,$41fc		
rst $28			
ld hl,$c224		
ld a,(hl)		
cp $04			
.DB $20 $03 ; < ['$20', '$03'] > < 0x497e > < 2497e 02 497E | 2003: jr nz, $03 >
.incbin "data/02_4980.data"
xor a			
ld ($c31d),a		
ld a,($cfd2)		
cp $05			
.DB $20 $16 ; < ['$20', '$16'] > < 0x498c > < 2498c 02 498C | 2016: jr nz, $16 >
.incbin "data/02_498E.data"
call  rlabel_02_40DE 
call  rlabel_02_44A3 
ld c,$01		
ld b,$07		
ld hl,$4afe		
rst $28			
ld a,($cfd2)		
ld c,a			
push bc			
ld de,$03fb		
ld b,$0e		
ld hl,$4300		
rst $28			
ld de,$03f2		
ld b,$0e		
ld hl,$4300		
rst $28			
call  rlabel_02_7E26 
pop bc			
ret			
.incbin "data/02_49CE.data"
ld b,$07		
ld hl,$4028		
rst $28			
ret			
ld e,$00		
ld hl,$cfd5		
ld a,(hl)		
cp c			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x4a0b > < 24a0b 02 4A0B | 280B: jr z, $0B >
inc h			
inc e			
ld a,e			
cp $03			
.DB $20 $f5 ; < ['$20', '$f5'] > < 0x4a12 > < 24a12 02 4A12 | 20F5: jr nz, $F5 >
ld c,$00		
ld e,c			
ret			
ld c,$00		
ld a,($c225)		
cp e			
.DB $20 $01 ; < ['$20', '$01'] > < 0x4a1e > < 24a1e 02 4A1E | 2001: jr nz, $01 >
inc c			
inc e			
ret			
.incbin "data/02_4A23.data"
rlabel_02_4A3A:
ld a,($c316)		
call  rlabel_00_0815 
ld a,($c224)		
cp $07			
.DB $20 $0f ; < ['$20', '$0f'] > < 0x4a45 > < 24a45 02 4A45 | 200F: jr nz, $0F >
.incbin "data/02_4A47.data"
ld b,$05		
call  rlabel_00_0832 
ld ($c221),a		
call  rlabel_02_729E 
ret			
rlabel_02_4A62:
call  rlabel_02_40DE 
call  rlabel_02_44A3 
ret			
.incbin "data/02_4A69.data"
ld a,c			
add a			
add a			
ld b,a			
ld a,($c221)		
cp $08			
.DB $28 $08 ; < ['$28', '$08'] > < 0x4b34 > < 24b34 02 4B34 | 2808: jr z, $08 >
swap a			
add a			
ld hl,$4b72		
.DB $18 $04 ; < ['$18', '$04'] > < 0x4b3c > < 24b3c 02 4B3C | 1804: jr $04 >
.incbin "data/02_4B3E.data"
add b			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4b45 > < 24b45 02 4B45 | 3001: jr nc, $01 >
inc h			
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld b,a			
ldi a,(hl)		
ld e,a			
ld d,(hl)		
ld a,($c21a)		
ld l,a			
ld a,($c21b)		
ld h,a			
add hl,bc		
ld a,l			
ld ($c21a),a		
ld a,h			
ld ($c21b),a		
ld a,($c21e)		
ld l,a			
ld a,($c21f)		
ld h,a			
add hl,de		
ld a,l			
ld ($c21e),a		
ld a,h			
ld ($c21f),a		
ret			
.incbin "data/02_4B72.data"
ld a,c			
ld hl,$4d2f		
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4c99 > < 24c99 02 4C99 | 3001: jr nc, $01 >
.incbin "data/02_4C9B.data"
ldi a,(hl)		
ld e,a			
ld d,(hl)		
ret			
ld a,c			
and $0f			
add a			
add a			
add e			
ld e,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4ca7 > < 24ca7 02 4CA7 | 3001: jr nc, $01 >
.incbin "data/02_4CA9.data"
ld b,$02		
call  rlabel_00_086B 
ld a,(de)		
ldi (hl),a		
inc de			
ld a,(de)		
ld (hl),a		
inc de			
ld b,$06		
call  rlabel_00_086B 
ld a,(de)		
ldi (hl),a		
inc de			
ld a,(de)		
ld (hl),a		
ret			
.incbin "data/02_4CC0.data"
ld a,($c203)		
push af			
xor a			
call  rlabel_00_0815 
ld a,($c220)		
and a			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x4ec9 > < 24ec9 02 4EC9 | 280B: jr z, $0B >
.incbin "data/02_4ECB.data"
pop af			
jp $0815		
.incbin "data/02_4EDA.data"
rlabel_02_4EFA:
ld b,e			
ld a,b			
swap a			
srl a			
or $82			
ld hl,$ff6a		
call  rlabel_00_0518 
ld h,$00		
ld l,c			
add hl,hl		
add hl,hl		
add hl,hl		
ld de,$c98a		
add hl,de		
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld b,a			
sla c			
rl b			
bit 5,c			
.DB $28 $06 ; < ['$28', '$06'] > < 0x4f1c > < 24f1c 02 4F1C | 2806: jr z, $06 >
res 5,c			
ld a,c			
or $1f			
ld c,a			
bit 2,b			
.DB $28 $0a ; < ['$28', '$0a'] > < 0x4f26 > < 24f26 02 4F26 | 280A: jr z, $0A >
res 2,b			
ld a,b			
or $03			
ld b,a			
ld a,c			
or $e0			
ld c,a			
bit 7,b			
.DB $28 $06 ; < ['$28', '$06'] > < 0x4f34 > < 24f34 02 4F34 | 2806: jr z, $06 >
.incbin "data/02_4F36.data"
push hl			
ld hl,$ff6b		
ld a,c			
ld c,b			
call  rlabel_00_0518 
ld b,c			
call  rlabel_00_0519 
pop hl			
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld b,a			
sla c			
rl b			
bit 5,c			
.DB $28 $06 ; < ['$28', '$06'] > < 0x4f54 > < 24f54 02 4F54 | 2806: jr z, $06 >
.incbin "data/02_4F56.data"
bit 2,b			
.DB $28 $0a ; < ['$28', '$0a'] > < 0x4f5e > < 24f5e 02 4F5E | 280A: jr z, $0A >
.incbin "data/02_4F60.data"
bit 7,b			
.DB $28 $06 ; < ['$28', '$06'] > < 0x4f6c > < 24f6c 02 4F6C | 2806: jr z, $06 >
.incbin "data/02_4F6E.data"
push hl			
ld hl,$ff6b		
ld a,c			
ld c,b			
call  rlabel_00_0518 
ld b,c			
call  rlabel_00_0519 
pop hl			
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld b,a			
ld hl,$ff6b		
ld a,c			
ld c,b			
call  rlabel_00_0518 
ld b,c			
call  rlabel_00_0519 
ret			
.incbin "data/02_4F93.data"
rlabel_02_501A:
ld a,e			
cp $90			
ret nc			
ld a,d			
cp $a0			
ret			
rlabel_02_5022:
ld a,($c33a)		
and $01			
ret z			
.incbin "data/02_5028.data"
rlabel_02_5036:
add a			
ld b,a			
add a			
add b			
ld de,$5048		
add e			
ld e,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x503f > < 2503f 02 503F | 3001: jr nc, $01 >
.incbin "data/02_5041.data"
ld a,c			
ld b,$06		
jp $05dc		
.incbin "data/02_5048.data"
xor a			
ld ($c979),a		
ld a,c			
ld ($ff00+$96),a	
call  rlabel_02_501A 
jp nc,$5136		
ld a,c			
cp $03			
.DB $28 $30 ; < ['$28', '$30'] > < 0x5082 > < 25082 02 5082 | 2830: jr z, $30 >
call  rlabel_02_5022 
.DB $30 $2b ; < ['$30', '$2b'] > < 0x5087 > < 25087 02 5087 | 302B: jr nc, $2B >
.incbin "data/02_5089.data"
ld a,($ff00+$96)	
cp $03			
.DB $28 $67 ; < ['$28', '$67'] > < 0x50b8 > < 250b8 02 50B8 | 2867: jr z, $67 >
ld c,$00		
ld b,$07		
ld hl,$7a94		
rst $28			
ld a,b			
inc b			
.DB $28 $5b ; < ['$28', '$5b'] > < 0x50c4 > < 250c4 02 50C4 | 285B: jr z, $5B >
.incbin "data/02_50C6.data"
push de			
push hl			
ld b,$07		
ld hl,$4d53		
rst $28			
ld a,e			
pop hl			
pop de			
ld ($ff00+$94),a	
swap a			
and $0f			
cp $0e			
.DB $30 $03 ; < ['$30', '$03'] > < 0x5134 > < 25134 02 5134 | 3003: jr nc, $03 >
ld c,$00		
ret			
rra			
ld a,($db81)		
.DB $30 $02 ; < ['$30', '$02'] > < 0x513d > < 2513d 02 513D | 3002: jr nc, $02 >
swap a			
and $0f			
.DB $28 $f1 ; < ['$28', '$f1'] > < 0x5143 > < 25143 02 5143 | 28F1: jr z, $F1 >
ld ($ff00+$95),a	
push de			
ld b,$07		
ld hl,$4d76		
rst $28			
ld a,c			
ld e,c			
and a			
jp z,$51f2		
ld c,a			
ld b,$05		
ld hl,$43c3		
rst $28			
ld a,($ff00+$96)	
cp $04			
.DB $28 $1c ; < ['$28', '$1c'] > < 0x515f > < 2515f 02 515F | 281C: jr z, $1C >
cp $03			
.DB $28 $18 ; < ['$28', '$18'] > < 0x5163 > < 25163 02 5163 | 2818: jr z, $18 >
cp $02			
.DB $20 $1d ; < ['$20', '$1d'] > < 0x5167 > < 25167 02 5167 | 201D: jr nz, $1D >
.incbin "data/02_5169.data"
ld a,($c975)		
and $4f			
cp $0c			
.DB $20 $0d ; < ['$20', '$0d'] > < 0x518d > < 2518d 02 518D | 200D: jr nz, $0D >
.incbin "data/02_518F.data"
ld a,($c975)		
and $41			
cp $41			
.DB $20 $43 ; < ['$20', '$43'] > < 0x51a3 > < 251a3 02 51A3 | 2043: jr nz, $43 >
.DB $18 $09 ; < ['$18', '$09'] > < 0x51a5 > < 251a5 02 51A5 | 1809: jr $09 >
.incbin "data/02_51A7.data"
ld c,e			
ld b,$05		
ld hl,$4456		
rst $28			
pop de			
ld b,$07		
ld hl,$4ed4		
rst $28			
push de			
ld a,($ff00+$96)	
cp $02			
jp z,$5297		
ld a,($c97c)		
cp $01			
.DB $20 $0d ; < ['$20', '$0d'] > < 0x51cb > < 251cb 02 51CB | 200D: jr nz, $0D >
ld l,$1f		
ld h,$05		
ld de,$4809		
call  rlabel_00_089B 
jp $52af		
ld a,($c977)		
and $07			
ld c,a			
ld e,$05		
call  rlabel_02_4EFA 
jp $52af		
.incbin "data/02_51E8.data"
ld b,$06		
ld hl,$4fc6		
rst $28			
ld a,($ff00+$96)	
cp $02			
.DB $28 $56 ; < ['$28', '$56'] > < 0x51fc > < 251fc 02 51FC | 2856: jr z, $56 >
ld a,($ff00+$95)	
cp $01			
.DB $20 $50 ; < ['$20', '$50'] > < 0x5202 > < 25202 02 5202 | 2050: jr nz, $50 >
ld a,($c224)		
cp $17			
.DB $28 $03 ; < ['$28', '$03'] > < 0x5209 > < 25209 02 5209 | 2803: jr z, $03 >
xor a			
.DB $18 $04 ; < ['$18', '$04'] > < 0x520c > < 2520c 02 520C | 1804: jr $04 >
.incbin "data/02_520E.data"
ld c,$aa		
call  rlabel_02_5036 
ld c,$20		
pop de			
ld b,$06		
ld hl,$4f02		
rst $28			
ld a,($c979)		
and a			
.DB $28 $2b ; < ['$28', '$2b'] > < 0x5224 > < 25224 02 5224 | 282B: jr z, $2B >
.incbin "data/02_5226.data"
ld c,$01		
ret			
ld a,($ff00+$96)	
cp $02			
.DB $20 $0a ; < ['$20', '$0a'] > < 0x5258 > < 25258 02 5258 | 200A: jr nz, $0A >
.incbin "data/02_525A.data"
ld hl,$52d5		
ld a,($ff00+$95)	
call  rlabel_00_0462 
ld a,(hl)		
and a			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x526e > < 2526e 02 526E | 280B: jr z, $0B >
ld l,a			
ld h,$05		
ld de,$4809		
call  rlabel_00_089B 
.DB $18 $0a ; < ['$18', '$0a'] > < 0x5279 > < 25279 02 5279 | 180A: jr $0A >
.incbin "data/02_527B.data"
ld a,($ff00+$95)	
add $1f			
ld c,a			
pop de			
ld a,e			
sub $04			
ld e,a			
ld b,$06		
ld hl,$4f02		
rst $28			
.DB $18 $89 ; < ['$18', '$89'] > < 0x5295 > < 25295 02 5295 | 1889: jr $89 >
.incbin "data/02_5297.data"
ld b,$06		
ld hl,$4fc6		
rst $28			
pop de			
ld a,($c97c)		
add $18			
ld c,a			
ld b,$06		
ld hl,$4f02		
rst $28			
ld a,($c979)		
and a			
.DB $28 $0a ; < ['$28', '$0a'] > < 0x52c6 > < 252c6 02 52C6 | 280A: jr z, $0A >
add $04			
ld ($c318),a		
ld a,$03		
ld ($c317),a		
ld c,$02		
ret			
.incbin "data/02_52D5.data"
inc b			
ld e,l			
ld d,h			
ld a,($c224)		
cp $09			
ret z			
cp $04			
ret z			
push de			
push hl			
ld d,c			
push bc			
ld b,$05		
ld hl,$44c7		
rst $28			
ld a,c			
pop bc			
ld c,a			
ld a,e			
ld ($c318),a		
ld a,d			
ld ($c319),a		
pop hl			
pop de			
ld a,c			
and a			
ret z			
push af			
xor a			
ld ($c21c),a		
ld ($c218),a		
ld a,$01		
ld ($c223),a		
ld hl,$c233		
res 0,(hl)		
ld a,$0c		
ld ($c237),a		
ld b,$02		
ld hl,$4a3a		
rst $28			
pop af			
dec a			
.DB $20 $0d ; < ['$20', '$0d'] > < 0x53d6 > < 253d6 02 53D6 | 200D: jr nz, $0D >
ld b,$02		
ld hl,$60f7		
rst $28			
call  rlabel_02_7E26 
ld a,$03		
.DB $18 $02 ; < ['$18', '$02'] > < 0x53e3 > < 253e3 02 53E3 | 1802: jr $02 >
ld a,$06		
ld ($c315),a		
ld de,$c340		
ld b,$01		
call  rlabel_00_090C 
pop af			
ld hl,$540a		
ld a,($c226)		
cp $1c			
.DB $38 $01 ; < ['$38', '$01'] > < 0x53fb > < 253fb 02 53FB | 3801: jr c, $01 >
.incbin "data/02_53FD.data"
add a			
call  rlabel_00_0462 
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld b,$07		
jp $080d		
.incbin "data/02_540A.data"
ld a,($c229)		
ld c,$04		
cp $03			
.DB $28 $13 ; < ['$28', '$13'] > < 0x5498 > < 25498 02 5498 | 2813: jr z, $13 >
ld c,$08		
cp $04			
.DB $28 $0d ; < ['$28', '$0d'] > < 0x549e > < 2549e 02 549E | 280D: jr z, $0D >
ld c,$01		
cp $05			
.DB $28 $07 ; < ['$28', '$07'] > < 0x54a4 > < 254a4 02 54A4 | 2807: jr z, $07 >
ld c,$02		
cp $06			
.DB $28 $01 ; < ['$28', '$01'] > < 0x54aa > < 254aa 02 54AA | 2801: jr z, $01 >
ret			
.incbin "data/02_54AD.data"
.DB $cd $7e $03 ; < ['$cd', '$7e', '$03'] > < 0x558d > < 2558d 02 558D | CD7E03: call $37E >
ld c,$08		
ld de,$0000		
ld b,$00		
ld hl,$1311		
rst $28			
ld a,($c316)		
call  rlabel_00_0815 
ld a,($c219)		
ld e,a			
ld a,($c21d)		
ld d,a			
ld a,($c981)		
cp $01			
.DB $20 $02 ; < ['$20', '$02'] > < 0x55ae > < 255ae 02 55AE | 2002: jr nz, $02 >
ld e,$8c		
cp $02			
.DB $20 $02 ; < ['$20', '$02'] > < 0x55b4 > < 255b4 02 55B4 | 2002: jr nz, $02 >
ld e,$0c		
cp $03			
.DB $20 $02 ; < ['$20', '$02'] > < 0x55ba > < 255ba 02 55BA | 2002: jr nz, $02 >
ld d,$9c		
cp $04			
.DB $20 $02 ; < ['$20', '$02'] > < 0x55c0 > < 255c0 02 55C0 | 2002: jr nz, $02 >
ld d,$04		
ld a,e			
ld ($c219),a		
ld b,$00		
call  rlabel_00_083E 
ld a,d			
ld ($c21d),a		
inc hl			
inc hl			
ld (hl),a		
ld a,($c224)		
cp $0c			
.DB $28 $08 ; < ['$28', '$08'] > < 0x55d9 > < 255d9 02 55D9 | 2808: jr z, $08 >
cp $18			
.DB $28 $04 ; < ['$28', '$04'] > < 0x55dd > < 255dd 02 55DD | 2804: jr z, $04 >
cp $1a			
.DB $20 $09 ; < ['$20', '$09'] > < 0x55e1 > < 255e1 02 55E1 | 2009: jr nz, $09 >
.incbin "data/02_55E3.data"
xor a			
ld ($c234),a		
ld b,$06		
ld hl,$4ebd		
rst $28			
ld b,$06		
ld hl,$41fc		
rst $28			
ld a,($c318)		
ld e,a			
ld a,($c319)		
ld d,a			
ld b,$05		
ld hl,$405f		
rst $28			
call  rlabel_02_57FD 
ld a,($c316)		
call  rlabel_00_0815 
ld ($ff00+$b3),a	
ld a,$75		
ld ($ff00+$b0),a	
ld a,$60		
ld ($ff00+$b1),a	
ld a,$07		
call  rlabel_00_0244 
ld b,$07		
ld hl,$409e		
rst $28			
cp $0d			
.DB $20 $0a ; < ['$20', '$0a'] > < 0x562a > < 2562a 02 562A | 200A: jr nz, $0A >
.incbin "data/02_562C.data"
ld a,($c224)		
bit 7,a			
.DB $28 $0a ; < ['$28', '$0a'] > < 0x563b > < 2563b 02 563B | 280A: jr z, $0A >
and $7f			
ld e,a			
ld a,$02		
call  rlabel_02_5809 
.DB $18 $75 ; < ['$18', '$75'] > < 0x5645 > < 25645 02 5645 | 1875: jr $75 >
ld a,($c224)		
cp $04			
.DB $28 $6e ; < ['$28', '$6e'] > < 0x564c > < 2564c 02 564C | 286E: jr z, $6E >
ld a,($db38)		
rla			
.DB $30 $0b ; < ['$30', '$0b'] > < 0x5652 > < 25652 02 5652 | 300B: jr nc, $0B >
.incbin "data/02_5654.data"
ld a,($c224)		
cp $09			
.DB $20 $1b ; < ['$20', '$1b'] > < 0x5664 > < 25664 02 5664 | 201B: jr nz, $1B >
.incbin "data/02_5666.data"
ld a,($c229)		
cp $07			
.DB $20 $11 ; < ['$20', '$11'] > < 0x5686 > < 25686 02 5686 | 2011: jr nz, $11 >
ld a,$05		
ld e,$03		
call  rlabel_02_5809 
ld b,$06		
call  rlabel_00_0832 
and $df			
ld (hl),a		
.DB $18 $23 ; < ['$18', '$23'] > < 0x5697 > < 25697 02 5697 | 1823: jr $23 >
cp $02			
.DB $20 $09 ; < ['$20', '$09'] > < 0x569b > < 2569b 02 569B | 2009: jr nz, $09 >
.incbin "data/02_569D.data"
ld a,($c224)		
cp $08			
.DB $28 $0f ; < ['$28', '$0f'] > < 0x56ab > < 256ab 02 56AB | 280F: jr z, $0F >
cp $19			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x56af > < 256af 02 56AF | 280B: jr z, $0B >
cp $1f			
.DB $28 $07 ; < ['$28', '$07'] > < 0x56b3 > < 256b3 02 56B3 | 2807: jr z, $07 >
ld a,$02		
ld e,$00		
call  rlabel_02_5809 
ld e,$03		
ld a,e			
call  rlabel_00_084C 
call  rlabel_00_0812 
ld b,$14		
call  rlabel_00_0876 
and a			
.DB $28 $10 ; < ['$28', '$10'] > < 0x56cb > < 256cb 02 56CB | 2810: jr z, $10 >
ld b,$0a		
call  rlabel_00_0876 
inc a			
.DB $28 $08 ; < ['$28', '$08'] > < 0x56d3 > < 256d3 02 56D3 | 2808: jr z, $08 >
ld b,$06		
call  rlabel_00_0832 
or $60			
ld (hl),a		
dec e			
.DB $20 $de ; < ['$20', '$de'] > < 0x56de > < 256de 02 56DE | 20DE: jr nz, $DE >
ld a,($c316)		
call  rlabel_00_0815 
ld a,($c224)		
cp $1f			
.DB $28 $08 ; < ['$28', '$08'] > < 0x56eb > < 256eb 02 56EB | 2808: jr z, $08 >
ld b,$06		
call  rlabel_00_0832 
or $60			
ld (hl),a		
ld b,$05		
ld hl,$446d		
rst $28			
ld a,($c31d)		
cp $04			
call nz,$05aa		
call  rlabel_02_6003 
call  rlabel_00_098D 
.DB $28 $0b ; < ['$28', '$0b'] > < 0x5709 > < 25709 02 5709 | 280B: jr z, $0B >
call  rlabel_02_60F7 
call  rlabel_02_7E26 
ld a,$0c		
ld ($c237),a		
ld b,$06		
ld hl,$4248		
rst $28			
call  rlabel_00_0369 
call  rlabel_02_6DD6 
ret			
call  rlabel_00_037E 
ld a,($cad8)		
and a			
.DB $20 $03 ; < ['$20', '$03'] > < 0x572a > < 2572a 02 572A | 2003: jr nz, $03 >
call  rlabel_02_6CFA 
ld a,$01		
ld de,$c9c0		
call  rlabel_00_0E10 
ld a,($c31d)		
cp $04			
.DB $28 $06 ; < ['$28', '$06'] > < 0x573c > < 2573c 02 573C | 2806: jr z, $06 >
ld b,$06		
ld hl,$4ebd		
rst $28			
ld b,$07		
ld hl,$4a7e		
rst $28			
ld a,($c316)		
ld l,a			
ld h,$00		
add hl,hl		
add hl,hl		
add hl,hl		
ld de,$c9c8		
add hl,de		
ld a,c			
add $10			
call  rlabel_00_0E10 
ld a,($c316)		
call  rlabel_00_0815 
ld a,($c318)		
ld e,a			
ld a,($c319)		
ld d,a			
and e			
inc a			
.DB $20 $06 ; < ['$20', '$06'] > < 0x576d > < 2576d 02 576D | 2006: jr nz, $06 >
.incbin "data/02_576F.data"
call  rlabel_02_45F3 
ld a,e			
ld ($c318),a		
ld a,d			
ld ($c319),a		
ld a,($c31a)		
cp $ff			
.DB $28 $0d ; < ['$28', '$0d'] > < 0x5785 > < 25785 02 5785 | 280D: jr z, $0D >
cp $fe			
call z,$57f5		
ld ($c219),a		
ld b,$00		
call  rlabel_00_083E 
ld a,($c31b)		
cp $ff			
.DB $28 $0d ; < ['$28', '$0d'] > < 0x5799 > < 25799 02 5799 | 280D: jr z, $0D >
cp $fe			
call z,$57f1		
ld ($c21d),a		
ld b,$02		
call  rlabel_00_083E 
ld a,($c31c)		
cp $ff			
.DB $28 $0a ; < ['$28', '$0a'] > < 0x57ad > < 257ad 02 57AD | 280A: jr z, $0A >
cp $fe			
call z,$57f9		
ld b,$05		
call  rlabel_00_083E 
jp $55ec		
.incbin "data/02_57BC.data"
rlabel_02_57FD:
xor a			
ld hl,$c21a		
ldi (hl),a		
ld (hl),a		
ld hl,$c21e		
ldi (hl),a		
ld (hl),a		
ret			
rlabel_02_5809:
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
ld a,c			
push af			
ld b,$0e		
ld hl,$4044		
rst $28			
call  rlabel_02_4A3A 
pop af			
cp $ff			
.DB $20 $03 ; < ['$20', '$03'] > < 0x5835 > < 25835 02 5835 | 2003: jr nz, $03 >
.incbin "data/02_5837.data"
ld c,a			
ld b,$05		
ld hl,$593c		
rst $28			
ld a,c			
push af			
call  rlabel_02_4A62 
ld b,$0e		
ld hl,$4064		
rst $28			
pop af			
ld ($cdbf),a		
xor a			
ld ($cdc0),a		
ret			
.incbin "data/02_5855.data"
rlabel_02_58D1:
ld b,$7f		
ld hl,$c56d		
.DB $18 $0b ; < ['$18', '$0b'] > < 0x58d6 > < 258d6 02 58D6 | 180B: jr $0B >
pop hl			
dec b			
.DB $28 $15 ; < ['$28', '$15'] > < 0x58da > < 258da 02 58DA | 2815: jr z, $15 >
ld a,$08		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x58e0 > < 258e0 02 58E0 | 3001: jr nc, $01 >
inc h			
push hl			
ldi a,(hl)		
cp e			
.DB $20 $f0 ; < ['$20', '$f0'] > < 0x58e6 > < 258e6 02 58E6 | 20F0: jr nz, $F0 >
ldi a,(hl)		
cp d			
.DB $20 $ec ; < ['$20', '$ec'] > < 0x58ea > < 258ea 02 58EA | 20EC: jr nz, $EC >
pop de			
ld a,$80		
sub b			
ret			
.incbin "data/02_58F1.data"
rlabel_02_58FD:
ld d,$05		
ld e,c			
call  rlabel_00_03F7 
ld hl,$59b7		
add hl,de		
ld e,l			
ld d,h			
ret			
rlabel_02_590A:
ld b,$16		
call  rlabel_00_0876 
cp $ff			
.DB $28 $03 ; < ['$28', '$03'] > < 0x5911 > < 25911 02 5911 | 2803: jr z, $03 >
bit 7,a			
ret nz			
call  rlabel_02_58FD 
ld a,$04		
call  rlabel_00_0462 
ld a,(hl)		
ld e,a			
ld b,$04		
call  rlabel_00_0832 
and $ef			
ld d,a			
ld a,e			
rra			
rra			
rra			
and $10			
or d			
ld (hl),a		
ld a,e			
and $7f			
ld b,$16		
call  rlabel_00_0882 
ret			
rlabel_02_5939:
ld b,$0d		
call  rlabel_00_0876 
cp $4d			
.DB $20 $08 ; < ['$20', '$08'] > < 0x5940 > < 25940 02 5940 | 2008: jr nz, $08 >
.incbin "data/02_5942.data"
ld b,$16		
call  rlabel_00_0876 
ld l,a			
ld de,$4809		
ld a,($c23c)		
ld h,a			
jp $089b		
.incbin "data/02_595A.data"
call  rlabel_02_58FD 
ld c,(hl)		
ret			
call  rlabel_02_58FD 
inc hl			
ld c,(hl)		
ret			
call  rlabel_02_58FD 
inc de			
inc de			
ld a,(de)		
inc de			
ld c,a			
and $0f			
ld b,$0f		
call  rlabel_00_0882 
ld a,c			
swap a			
and $0f			
inc hl			
ld (hl),a		
ld a,(de)		
and $7f			
ld b,$0d		
call  rlabel_00_0882 
ret			
.incbin "data/02_59A3.data"
.DB $06 $0d ; < ['$06', '$0d'] > < 0x5cc3 > < 25cc3 02 5CC3 | 060D: ld b, $0D >
call  rlabel_00_0876 
and a			
ret z			
ld e,a			
ld d,$00		
ld hl,$5cd9		
ldi a,(hl)		
and a			
ret z			
cp e			
.DB $28 $27 ; < ['$28', '$27'] > < 0x5cd4 > < 25cd4 02 5CD4 | 2827: jr z, $27 >
inc d			
.DB $18 $f7 ; < ['$18', '$f7'] > < 0x5cd7 > < 25cd7 02 5CD7 | 18F7: jr $F7 >
.incbin "data/02_5CD9.data"
rlabel_02_6003:
ld hl,$c33a		
bit 0,(hl)		
jp z,$60f7		
.incbin "data/02_600B.data"
rlabel_02_60F7:
ld a,$c8		
ld ($c33d),a		
ld ($c33e),a		
ld a,$24		
ld c,$08		
call  rlabel_00_05B1 
xor a			
ld hl,$c33a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ret			
.incbin "data/02_610E.data"
rlabel_02_6199:
ret			
.incbin "data/02_619A.data"
rlabel_02_6874:
ld a,$a7		
ld ($ff00+$a3),a	
xor a			
ld ($ff00+$a2),a	
call  rlabel_00_0377 
call  rlabel_00_027C 
ld a,$01		
ld ($ff00+$4f),a	
ld de,$9c00		
ld bc,$0240		
ld a,$07		
call  rlabel_00_2AD8 
xor a			
ld ($ff00+$4f),a	
ld de,$9c00		
ld bc,$0240		
call  rlabel_00_2AD8 
ret			
rlabel_02_689D:
ld hl,$d5d5		
ld b,$90		
ld de,$68b4		
ld a,b			
and $0f			
add e			
ld e,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x68aa > < 268aa 02 68AA | 3001: jr nc, $01 >
.incbin "data/02_68AC.data"
ld a,(de)		
add c			
ldi (hl),a		
dec b			
.DB $20 $ef ; < ['$20', '$ef'] > < 0x68b1 > < 268b1 02 68B1 | 20EF: jr nz, $EF >
ret			
.incbin "data/02_68B4.data"
rlabel_02_68C4:
.DB $f0 $41 ; < ['$f0', '$41'] > < 0x68c4 > < 268c4 02 68C4 | F041: ld a, [$FF41] >
and $03			
cp $01			
jr nz,-$08		
ret			
call  rlabel_02_6874 
ld c,$a0		
call  rlabel_02_689D 
di			
ld hl,$c1a3		
ld de,$6936		
call  rlabel_00_0231 
ld hl,$c1a0		
ld de,$692f		
call  rlabel_00_0231 
ld a,($ff00+$41)	
and $03			
or $08			
ld ($ff00+$41),a	
ld b,$1d		
call  rlabel_02_68C4 
ld ($ff00+$0f),a	
call  rlabel_02_692F 
call  rlabel_02_68C4 
ld a,b			
and a			
.DB $20 $f9 ; < ['$20', '$f9'] > < 0x68ff > < 268ff 02 68FF | 20F9: jr nz, $F9 >
di			
ld a,$07		
ld ($ff00+$a3),a	
call  rlabel_00_0370 
call  rlabel_02_403C 
ei			
ld c,$10		
ld de,$0000		
call  rlabel_00_1311 
ret			
rlabel_02_6916:
push af			
push bc			
push de			
push hl			
call  rlabel_00_0261 
ld a,($ff00+$40)	
xor $02			
ld ($ff00+$40),a	
ld hl,$ffa6		
inc (hl)		
call  rlabel_00_3085 
pop hl			
pop de			
pop bc			
pop af			
ret			
rlabel_02_692F:
call  rlabel_02_6916 
dec b			
ld hl,$d5d5		
push af			
ld a,(hl)		
sub $08			
.DB $30 $01 ; < ['$30', '$01'] > < 0x693a > < 2693a 02 693A | 3001: jr nc, $01 >
xor a			
ldi (hl),a		
add $07			
ld ($ff00+$4b),a	
pop af			
reti			
call  rlabel_02_6874 
ld a,$07		
ld ($ff00+$a3),a	
ld c,$00		
call  rlabel_02_689D 
call  rlabel_00_0369 
call  rlabel_00_027C 
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ld c,$10		
call  rlabel_00_132B 
ld hl,$c1a0		
ld de,$69b2		
call  rlabel_00_0231 
di			
ld hl,$c1a3		
ld de,$69bd		
call  rlabel_00_0231 
ld hl,$c1a0		
ld de,$69b6		
call  rlabel_00_0231 
ld a,($ff00+$41)	
and $03			
or $08			
ld ($ff00+$41),a	
ld b,$1d		
call  rlabel_02_68C4 
ld ($ff00+$0f),a	
call  rlabel_02_69B6 
call  rlabel_02_68C4 
ld a,b			
and a			
.DB $20 $f9 ; < ['$20', '$f9'] > < 0x6997 > < 26997 02 6997 | 20F9: jr nz, $F9 >
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
di			
ld a,$a0		
ld ($ff00+$a3),a	
call  rlabel_00_037E 
call  rlabel_00_0369 
call  rlabel_02_403C 
ei			
ret			
.incbin "data/02_69B2.data"
rlabel_02_69B6:
call  rlabel_02_6916 
dec b			
ld hl,$d5d5		
push af			
ld a,(hl)		
add $08			
ldi (hl),a		
sub $20			
.DB $30 $01 ; < ['$30', '$01'] > < 0x69c4 > < 269c4 02 69C4 | 3001: jr nc, $01 >
xor a			
add $07			
ld ($ff00+$4b),a	
pop af			
reti			
.incbin "data/02_69CD.data"
call  rlabel_02_6CEB 
ld l,e			
ld h,d			
ld de,$c204		
ld bc,$0142		
call  rlabel_00_04BC 
ld e,l			
ld d,h			
ret			
call  rlabel_02_6CEB 
xor a			
ld ($c225),a		
ld a,$02		
ld ($c221),a		
ld a,$67		
ld ($c21d),a		
ld a,$63		
ld ($c219),a		
ld a,$ff		
ld ($c358),a		
ld ($c353),a		
ld ($c354),a		
xor a			
ld hl,$ffab		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ld ($c31d),a		
ld de,$03f7		
ld b,$0e		
ld hl,$42f8		
rst $28			
ld de,$03f8		
ld b,$0e		
ld hl,$42f8		
rst $28			
ld de,$03fc		
ld b,$0e		
ld hl,$42f8		
rst $28			
ld de,$03fd		
ld b,$0e		
ld hl,$42f8		
rst $28			
ret			
rlabel_02_6CEB:
ld hl,$c1b5		
ld bc,$0191		
xor a			
jp $04d2		
ld a,c			
ld ($c31d),a		
ret			
rlabel_02_6CFA:
ld a,($c31d)		
call  rlabel_00_3005 
.incbin "data/02_6D00.data"
rlabel_02_6D1A:
ld c,$08		
ld de,$0000		
ld b,$00		
ld hl,$1311		
rst $28			
ret			
ld c,$01		
ld de,$0000		
ld b,$00		
ld hl,$1311		
rst $28			
ret			
.incbin "data/02_6D32.data"
ld b,$02		
ld hl,$68cd		
rst $28			
ret			
.incbin "data/02_6D52.data"
call  rlabel_02_6D1A 
ld b,$0e		
ld hl,$67b9		
rst $28			
ld c,$0a		
ld b,$02		
ld hl,$7779		
rst $28			
call  rlabel_02_403C 
ld a,$ff		
ld ($c96d),a		
ret			
rlabel_02_6DD6:
ld hl,$c31d		
ld b,(hl)		
xor a			
ld (hl),a		
ld a,b			
call  rlabel_00_3005 
.incbin "data/02_6DE0.data"
.DB $0e $08 ; < ['$0e', '$08'] > < 0x6dfa > < 26dfa 02 6DFA | 0E08: ld c, $08 >
.DB $cd $26 $13 ; < ['$cd', '$26', '$13'] > < 0x6dfc > < 26dfc 02 6DFC | CD2613: call $1326 >
ret			
ld c,$01		
call  rlabel_00_1326 
ret			
.incbin "data/02_6E06.data"
ld b,$02		
ld hl,$6944		
rst $28			
ret			
.incbin "data/02_6E13.data"
rlabel_02_6EB0:
ld hl,$6ebd		
ld de,$8810		
call  rlabel_00_0654 
call  rlabel_00_0658 
ret			
.incbin "data/02_6EBD.data"
call  rlabel_02_6EB0 
ld hl,$9c00		
ld a,($cbf2)		
and a			
.DB $28 $0c ; < ['$28', '$0c'] > < 0x6ed7 > < 26ed7 02 6ED7 | 280C: jr z, $0C >
ld a,$01		
ld ($ff00+$4f),a	
ld a,$07		
call  rlabel_00_0518 
xor a			
ld ($ff00+$4f),a	
ld a,$81		
call  rlabel_00_0518 
ld a,($c226)		
cp $1f			
.DB $28 $09 ; < ['$28', '$09'] > < 0x6eef > < 26eef 02 6EEF | 2809: jr z, $09 >
ld c,a			
ld b,$03		
ld hl,$4b72		
rst $28			
.DB $18 $03 ; < ['$18', '$03'] > < 0x6ef8 > < 26ef8 02 6EF8 | 1803: jr $03 >
.incbin "data/02_6EFA.data"
ld a,($c224)		
cp $06			
.DB $20 $1a ; < ['$20', '$1a'] > < 0x6f02 > < 26f02 02 6F02 | 201A: jr nz, $1A >
.incbin "data/02_6F04.data"
ld a,$01		
ld ($caea),a		
ld hl,$cb26		
ld bc,$0001		
ld de,$8207		
call  rlabel_00_0F47 
xor a			
ld ($caea),a		
ld hl,$cb26		
call  rlabel_00_1164 
push bc			
ld hl,$8820		
inc l			
xor a			
call  rlabel_00_0518 
inc l			
ld e,$07		
xor a			
call  rlabel_00_0518 
inc l			
inc l			
dec e			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x6f4c > < 26f4c 02 6F4C | 20F7: jr nz, $F7 >
dec c			
.DB $20 $ec ; < ['$20', '$ec'] > < 0x6f4f > < 26f4f 02 6F4F | 20EC: jr nz, $EC >
pop bc			
inc c			
sla c			
sla c			
sla c			
ld a,$98		
sub c			
ld ($c33f),a		
add $0f			
ld ($ff00+$a3),a	
ld a,$88		
ld ($ff00+$a2),a	
call  rlabel_00_0377 
ret			
.incbin "data/02_6F6B.data"
ld a,($c975)		
swap a			
and $03			
call  rlabel_00_084C 
call  rlabel_00_0812 
ld a,($c978)		
and a			
ld a,$00		
.DB $20 $03 ; < ['$20', '$03'] > < 0x70a5 > < 270a5 02 70A5 | 2003: jr nz, $03 >
ld a,($c97a)		
ld b,$14		
call  rlabel_00_0882 
ld a,($c972)		
ld d,a			
ld a,($c971)		
ld e,a			
ld a,($c978)		
and a			
.DB $20 $0e ; < ['$20', '$0e'] > < 0x70bb > < 270bb 02 70BB | 200E: jr nz, $0E >
ld a,d			
ld b,$02		
call  rlabel_00_083E 
ld a,e			
ld b,$00		
call  rlabel_00_083E 
.DB $18 $0c ; < ['$18', '$0c'] > < 0x70c9 > < 270c9 02 70C9 | 180C: jr $0C >
ld a,$b4		
ld b,$02		
call  rlabel_00_083E 
ld b,$00		
call  rlabel_00_083E 
ld a,d			
ld b,$05		
call  rlabel_00_0882 
ld a,e			
ld b,$01		
call  rlabel_00_0882 
ld a,($c97c)		
and $3f			
ld b,$17		
call  rlabel_00_0882 
call  rlabel_00_098D 
.DB $28 $1a ; < ['$28', '$1a'] > < 0x70f0 > < 270f0 02 70F0 | 281A: jr z, $1A >
xor a			
ld b,$0c		
call  rlabel_00_0882 
ld b,$0b		
call  rlabel_00_0882 
ld b,$18		
call  rlabel_00_0882 
ld b,$08		
call  rlabel_00_0882 
ld b,$0f		
call  rlabel_00_083E 
ld b,$08		
call  rlabel_00_0876 
ld b,$01		
call  rlabel_00_083E 
ld a,($c975)		
and $45			
cp $04			
jp z,$71b2		
xor a			
ld b,$08		
call  rlabel_00_0882 
ld b,$01		
call  rlabel_00_083E 
call  rlabel_00_098D 
.DB $28 $0d ; < ['$28', '$0d'] > < 0x712e > < 2712e 02 712E | 280D: jr z, $0D >
ld b,$0e		
call  rlabel_00_0876 
bit 7,a			
.DB $20 $01 ; < ['$20', '$01'] > < 0x7137 > < 27137 02 7137 | 2001: jr nz, $01 >
xor a			
and $7f			
ld (hl),a		
ld b,$0f		
call  rlabel_00_0876 
inc a			
.DB $20 $03 ; < ['$20', '$03'] > < 0x7143 > < 27143 02 7143 | 2003: jr nz, $03 >
ld a,$02		
ld (hl),a		
ld a,($c976)		
ld b,a			
ld ($ff00+$b3),a	
ld a,$80		
ld ($ff00+$b0),a	
ld a,$0a		
ld ($ff00+$b1),a	
ld a,$00		
call  rlabel_00_0244 
ld b,$0a		
call  rlabel_00_0876 
inc a			
.DB $20 $02 ; < ['$20', '$02'] > < 0x7161 > < 27161 02 7161 | 2002: jr nz, $02 >
ld a,e			
ld (hl),a		
ld b,$16		
call  rlabel_00_0876 
inc a			
.DB $20 $02 ; < ['$20', '$02'] > < 0x716b > < 2716b 02 716B | 2002: jr nz, $02 >
ld a,d			
ld (hl),a		
ld a,($c977)		
ld b,$0d		
call  rlabel_00_0882 
xor a			
ld b,$15		
call  rlabel_00_0882 
ld a,($c97c)		
swap a			
rra			
rra			
and $03			
ld d,a			
ld b,$0a		
call  rlabel_00_0876 
ld c,a			
ld b,$0e		
call  rlabel_00_0876 
ld e,a			
ld b,$06		
ld hl,$447d		
rst $28			
ld b,$16		
call  rlabel_00_0876 
ld l,a			
ld a,($c23c)		
ld h,a			
ld de,$4809		
call  rlabel_00_089B 
ld b,$04		
call  rlabel_00_0832 
and $ef			
ld (hl),a		
ret			
ld a,($c976)		
ld b,$15		
call  rlabel_00_0882 
call  rlabel_00_098D 
.DB $28 $0c ; < ['$28', '$0c'] > < 0x71bd > < 271bd 02 71BD | 280C: jr z, $0C >
xor a			
ld b,$12		
call  rlabel_00_0882 
xor a			
ld b,$0e		
call  rlabel_00_0882 
ld a,($c976)		
ld c,a			
ld b,$02		
ld hl,$5984		
rst $28			
ld b,$0a		
call  rlabel_00_0876 
inc a			
.DB $20 $10 ; < ['$20', '$10'] > < 0x71db > < 271db 02 71DB | 2010: jr nz, $10 >
ld a,($c976)		
ld c,a			
ld b,$02		
ld hl,$5979		
rst $28			
ld a,c			
ld b,$0a		
call  rlabel_00_0882 
ld a,($c97c)		
swap a			
rra			
rra			
and $03			
ld b,$05		
call  rlabel_00_083E 
ld a,($c976)		
ld c,a			
call  rlabel_02_590A 
call  rlabel_00_098D 
.DB $28 $15 ; < ['$28', '$15'] > < 0x7205 > < 27205 02 7205 | 2815: jr z, $15 >
xor a			
ld b,$02		
call  rlabel_00_0882 
inc hl			
ld (hl),a		
ld b,$06		
call  rlabel_00_0882 
inc hl			
ld (hl),a		
ld b,$02		
ld hl,$5cc3		
rst $28			
ld b,$0a		
call  rlabel_00_0876 
ld c,a			
ld b,$0e		
call  rlabel_00_0876 
ld e,a			
ld b,$05		
call  rlabel_00_0832 
ld d,a			
ld b,$06		
ld hl,$447d		
rst $28			
call  rlabel_02_5939 
ld b,$07		
ld hl,$613c		
rst $28			
ret			
ld b,$01		
call  rlabel_00_0876 
ld e,a			
ld b,$05		
call  rlabel_00_0876 
ld d,a			
ld b,$05		
call  rlabel_00_0832 
ld c,a			
ld b,$14		
call  rlabel_00_0876 
and a			
ret z			
ld l,a			
ld h,$00		
add hl,hl		
add hl,hl		
add hl,hl		
push de			
ld de,$c569		
add hl,de		
pop de			
ld a,(hl)		
and $3f			
rrc c			
rrc c			
or c			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld a,e			
ld (hl),a		
ret			
.incbin "data/02_7271.data"
rlabel_02_729E:
ld a,$03		
push af			
call  rlabel_00_084C 
call  rlabel_00_0812 
ld b,$01		
call  rlabel_00_0876 
ld e,a			
ld b,$05		
call  rlabel_00_0876 
ld d,a			
ld b,$05		
call  rlabel_00_0832 
rrca			
rrca			
ld c,a			
ld b,$17		
call  rlabel_00_0876 
or c			
ld c,a			
ld b,$14		
call  rlabel_00_0876 
and a			
.DB $28 $18 ; < ['$28', '$18'] > < 0x72c8 > < 272c8 02 72C8 | 2818: jr z, $18 >
ld l,a			
ld h,$00		
add hl,hl		
add hl,hl		
add hl,hl		
push de			
ld de,$c569		
add hl,de		
pop de			
ld a,c			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld a,e			
ld (hl),a		
xor a			
ld b,$14		
call  rlabel_00_0882 
pop af			
dec a			
.DB $20 $ba ; < ['$20', '$ba'] > < 0x72e4 > < 272e4 02 72E4 | 20BA: jr nz, $BA >
ret			
.incbin "data/02_72E7.data"
ld hl,$c2ff		
ld c,$10		
call  rlabel_00_04E2 
ret			
push bc			
ld b,$02		
ld hl,$4ebd		
rst $28			
pop bc			
ld a,c			
and a			
.DB $28 $0d ; < ['$28', '$0d'] > < 0x73a6 > < 273a6 02 73A6 | 280D: jr z, $0D >
push bc			
call  rlabel_02_751B 
call  rlabel_00_027C 
pop bc			
dec c			
.DB $20 $f5 ; < ['$20', '$f5'] > < 0x73b1 > < 273b1 02 73B1 | 20F5: jr nz, $F5 >
.DB $18 $14 ; < ['$18', '$14'] > < 0x73b3 > < 273b3 02 73B3 | 1814: jr $14 >
call  rlabel_02_751B 
call  rlabel_00_027C 
ld b,$04		
ld a,b			
dec a			
call  rlabel_02_74FD 
ld a,(hl)		
and a			
.DB $20 $ef ; < ['$20', '$ef'] > < 0x73c4 > < 273c4 02 73C4 | 20EF: jr nz, $EF >
dec b			
.DB $20 $f4 ; < ['$20', '$f4'] > < 0x73c7 > < 273c7 02 73C7 | 20F4: jr nz, $F4 >
ld b,$07		
ld hl,$6075		
rst $28			
ld b,$07		
ld hl,$409e		
rst $28			
ret			
call  rlabel_02_74F7 
ld a,$1f		
cp c			
.DB $28 $22 ; < ['$28', '$22'] > < 0x73dc > < 273dc 02 73DC | 2822: jr z, $22 >
ld a,(hl)		
cp c			
ld a,c			
ldi (hl),a		
ld a,e			
cp $ff			
.DB $20 $03 ; < ['$20', '$03'] > < 0x73e5 > < 273e5 02 73E5 | 2003: jr nz, $03 >
.incbin "data/02_73E7.data"
ldi (hl),a		
ld a,d			
cp $ff			
.DB $20 $03 ; < ['$20', '$03'] > < 0x73ee > < 273ee 02 73EE | 2003: jr nz, $03 >
.incbin "data/02_73F0.data"
ld (hl),a		
ret z			
ld a,c			
and $f0			
cp $50			
ld e,$01		
call nz,$7506		
ret			
ld a,e			
cp $ff			
.DB $20 $03 ; < ['$20', '$03'] > < 0x7403 > < 27403 02 7403 | 2003: jr nz, $03 >
.incbin "data/02_7405.data"
ld b,$01		
call  rlabel_00_0882 
di			
ld b,$00		
call  rlabel_00_083E 
ld a,d			
cp $ff			
.DB $20 $03 ; < ['$20', '$03'] > < 0x7416 > < 27416 02 7416 | 2003: jr nz, $03 >
.incbin "data/02_7418.data"
ld b,$02		
call  rlabel_00_083E 
ei			
ld b,$05		
call  rlabel_00_0882 
ret			
ld a,($c23c)		
cp $ff			
.DB $20 $0e ; < ['$20', '$0e'] > < 0x742c > < 2742c 02 742C | 200E: jr nz, $0E >
.incbin "data/02_742E.data"
call  rlabel_02_74F7 
ld b,(hl)		
xor a			
ld (hl),a		
and $f0			
cp $50			
ret z			
cp $60			
.DB $20 $06 ; < ['$20', '$06'] > < 0x7449 > < 27449 02 7449 | 2006: jr nz, $06 >
.incbin "data/02_744B.data"
ld e,$00		
call  rlabel_02_7506 
ret			
ld a,($c97d)		
and a			
.DB $28 $08 ; < ['$28', '$08'] > < 0x745b > < 2745b 02 745B | 2808: jr z, $08 >
push bc			
ld b,$05		
ld hl,$49df		
rst $28			
pop bc			
call  rlabel_02_74F7 
ld a,c			
and a			
.DB $28 $3b ; < ['$28', '$3b'] > < 0x746a > < 2746a 02 746A | 283B: jr z, $3B >
push bc			
push hl			
call  rlabel_02_74A7 
ld de,$74bb		
ld a,(de)		
ld b,a			
inc de			
ld hl,$c2ff		
ld c,$04		
ldi a,(hl)		
inc hl			
and $f0			
cp $80			
.DB $20 $04 ; < ['$20', '$04'] > < 0x7482 > < 27482 02 7482 | 2004: jr nz, $04 >
ld a,(hl)		
cp b			
.DB $28 $ec ; < ['$28', '$ec'] > < 0x7486 > < 27486 02 7486 | 28EC: jr z, $EC >
inc hl			
inc hl			
dec c			
.DB $20 $ef ; < ['$20', '$ef'] > < 0x748b > < 2748b 02 748B | 20EF: jr nz, $EF >
ld e,b			
pop hl			
pop bc			
ld a,c			
or $80			
ldi (hl),a		
xor a			
ldi (hl),a		
ld (hl),e		
ld a,($c23c)		
add $04			
ld h,a			
ld l,c			
ld de,$728a		
ld b,$06		
call  rlabel_00_0897 
ret			
rlabel_02_74A7:
ld a,(hl)		
and $f0			
cp $80			
ret nz			
xor a			
ldi (hl),a		
ldi (hl),a		
ld l,(hl)		
ld h,$c0		
ld a,$a0		
ldi (hl),a		
inc l			
inc l			
inc l			
ld (hl),a		
ret			
.incbin "data/02_74BB.data"
call  rlabel_00_0812 
ld a,c			
cp $ff			
.DB $28 $2a ; < ['$28', '$2a'] > < 0x74c5 > < 274c5 02 74C5 | 282A: jr z, $2A >
bit 7,c			
.DB $20 $07 ; < ['$20', '$07'] > < 0x74c9 > < 274c9 02 74C9 | 2007: jr nz, $07 >
ld b,$06		
ld hl,$43a8		
rst $28			
ret			
ld a,($cad8)		
and a			
.DB $20 $02 ; < ['$20', '$02'] > < 0x74d6 > < 274d6 02 74D6 | 2002: jr nz, $02 >
res 7,c			
ld a,($c23c)		
and a			
ld a,c			
.DB $20 $05 ; < ['$20', '$05'] > < 0x74df > < 274df 02 74DF | 2005: jr nz, $05 >
ld ($c224),a		
.DB $18 $05 ; < ['$18', '$05'] > < 0x74e4 > < 274e4 02 74E4 | 1805: jr $05 >
ld b,$0e		
call  rlabel_00_0882 
res 7,c			
ld e,c			
jp $7506		
ld a,$02		
ld ($c224),a		
ret			
rlabel_02_74F7:
call  rlabel_00_0812 
ld a,($c23c)		
rlabel_02_74FD:
add a			
add a			
ld hl,$c2ff		
call  rlabel_00_0462 
ret			
rlabel_02_7506:
ld b,$0a		
call  rlabel_00_0876 
ld c,a			
ld b,$05		
call  rlabel_00_0832 
ld d,a			
di			
ld b,$06		
ld hl,$447d		
rst $28			
ei			
ret			
rlabel_02_751B:
ld c,$04		
ld hl,$c2ff		
push bc			
push hl			
ld a,(hl)		
and a			
call nz,$7534		
pop hl			
ld a,$04		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x752c > < 2752c 02 752C | 3001: jr nc, $01 >
inc h			
pop bc			
dec c			
.DB $20 $ed ; < ['$20', '$ed'] > < 0x7531 > < 27531 02 7531 | 20ED: jr nz, $ED >
ret			
ld d,a			
swap a			
and $0f			
ld ($ff00+$8a),a	
ld a,d			
and $0f			
ld ($ff00+$8b),a	
ld e,l			
ld d,h			
inc hl			
ldi a,(hl)		
ld ($ff00+$8c),a	
ldi a,(hl)		
ld ($ff00+$8d),a	
ld a,$04		
sub c			
call  rlabel_00_084C 
call  rlabel_00_0812 
ld a,($ff00+$8a)	
call  rlabel_00_3005 
.incbin "data/02_7557.data"
call  rlabel_02_7573 
jp c,$7570		
ret			
jp $7427		
rlabel_02_7573:
ld b,$01		
call  rlabel_00_0876 
ld e,a			
ld b,$05		
call  rlabel_00_0876 
ld d,a			
push de			
ld a,($ff00+$8c)	
ld e,a			
ld a,($ff00+$8d)	
ld d,a			
pop hl			
ld ($ff00+$b3),a	
ld a,$4a		
ld ($ff00+$b0),a	
ld a,$79		
ld ($ff00+$b1),a	
ld a,$07		
call  rlabel_00_0244 
ld a,c			
ld ($ff00+$8e),a	
ld a,($ff00+$8a)	
cp $02			
.DB $28 $0a ; < ['$28', '$0a'] > < 0x759d > < 2759d 02 759D | 280A: jr z, $0A >
cp $05			
.DB $28 $06 ; < ['$28', '$06'] > < 0x75a1 > < 275a1 02 75A1 | 2806: jr z, $06 >
ld b,$07		
ld hl,$79ab		
rst $28			
ld hl,$4d2f		
ld a,($ff00+$8b)	
call  rlabel_00_04A7 
ld a,($ff00+$8e)	
add a			
add a			
call  rlabel_00_0462 
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld b,a			
push bc			
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld b,a			
push bc			
ld b,$04		
call  rlabel_00_0876 
ld e,a			
inc hl			
ld d,(hl)		
pop hl			
add hl,de		
ld a,l			
ld d,h			
ld b,$04		
call  rlabel_00_0882 
inc hl			
ld (hl),d		
ld c,d			
ld b,$00		
call  rlabel_00_0876 
ld e,a			
inc hl			
ld d,(hl)		
pop hl			
add hl,de		
ld a,l			
ld e,h			
ld b,$00		
call  rlabel_00_0882 
inc hl			
ld (hl),e		
ld hl,$c1fd		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,e			
di			
ldi (hl),a		
inc hl			
ld (hl),c		
ei			
ld d,c			
ld a,($ff00+$8c)	
ld l,a			
ld a,($ff00+$8d)	
ld h,a			
ld c,$01		
call  rlabel_00_0920 
ret			
.incbin "data/02_7602.data"
ld a,($ff00+$a6)	
and $03			
ld b,a			
ld a,($c23c)		
cp b			
ret nz			
push de			
inc de			
inc de			
ld a,(de)		
ld l,a			
ld h,$c0		
push hl			
ld b,$00		
call  rlabel_00_0832 
sub $16			
ld e,a			
inc hl			
inc hl			
ld a,(hl)		
add $00			
ld d,a			
ld a,($c23c)		
ld c,a			
add a			
add a			
add $40			
ld b,a			
ld a,$04		
add c			
ld c,a			
pop hl			
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld a,b			
ldi (hl),a		
ld a,c			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld a,d			
add $08			
ldi (hl),a		
ld a,b			
inc a			
inc a			
ldi (hl),a		
ld a,c			
ld (hl),a		
pop de			
ld b,$06		
ld hl,$7246		
rst $28			
ret			
.incbin "data/02_76DB.data"
call  rlabel_02_775B 
.DB $28 $36 ; < ['$28', '$36'] > < 0x7711 > < 27711 02 7711 | 2836: jr z, $36 >
cp $0a			
.DB $28 $3b ; < ['$28', '$3b'] > < 0x7715 > < 27715 02 7715 | 283B: jr z, $3B >
cp $32			
.DB $28 $2e ; < ['$28', '$2e'] > < 0x7719 > < 27719 02 7719 | 282E: jr z, $2E >
cp $3c			
.DB $28 $33 ; < ['$28', '$33'] > < 0x771d > < 2771d 02 771D | 2833: jr z, $33 >
cp $5c			
.DB $28 $26 ; < ['$28', '$26'] > < 0x7721 > < 27721 02 7721 | 2826: jr z, $26 >
cp $66			
.DB $28 $2b ; < ['$28', '$2b'] > < 0x7725 > < 27725 02 7725 | 282B: jr z, $2B >
cp $7e			
.DB $28 $1e ; < ['$28', '$1e'] > < 0x7729 > < 27729 02 7729 | 281E: jr z, $1E >
cp $88			
.DB $28 $23 ; < ['$28', '$23'] > < 0x772d > < 2772d 02 772D | 2823: jr z, $23 >
cp $98			
.DB $28 $16 ; < ['$28', '$16'] > < 0x7731 > < 27731 02 7731 | 2816: jr z, $16 >
cp $a2			
.DB $28 $1b ; < ['$28', '$1b'] > < 0x7735 > < 27735 02 7735 | 281B: jr z, $1B >
cp $aa			
.DB $28 $0e ; < ['$28', '$0e'] > < 0x7739 > < 27739 02 7739 | 280E: jr z, $0E >
cp $b4			
.DB $28 $13 ; < ['$28', '$13'] > < 0x773d > < 2773d 02 773D | 2813: jr z, $13 >
cp $be			
.DB $28 $06 ; < ['$28', '$06'] > < 0x7741 > < 27741 02 7741 | 2806: jr z, $06 >
cp $bf			
jp z,$7427		
ret			
ld b,$06		
call  rlabel_00_0832 
and $3f			
ld (hl),a		
ret			
ld b,$06		
call  rlabel_00_0832 
or $60			
ld (hl),a		
ret			
rlabel_02_775B:
call  rlabel_02_74F7 
inc hl			
ld a,(hl)		
inc a			
ld (hl),a		
dec a			
ret			
.incbin "data/02_7764.data"
ld hl,$c314		
set 4,(hl)		
ld a,c			
and a			
.DB $28 $e2 ; < ['$28', '$e2'] > < 0x7780 > < 27780 02 7780 | 28E2: jr z, $E2 >
ld hl,$c336		
ldi a,(hl)		
ld b,a			
ld a,($cad8)		
and a			
.DB $20 $06 ; < ['$20', '$06'] > < 0x778b > < 2778b 02 778B | 2006: jr nz, $06 >
.incbin "data/02_778D.data"
bit 7,c			
.DB $20 $3e ; < ['$20', '$3e'] > < 0x7795 > < 27795 02 7795 | 203E: jr nz, $3E >
ld a,c			
call  rlabel_00_3005 
.incbin "data/02_779B.data"
ld a,c			
sub $80			
call  rlabel_00_3005 
.incbin "data/02_77DB.data"
ld de,$c351		
ld hl,$c33b		
ld c,$04		
jp $04cb		
ld hl,$c351		
ld de,$c33b		
ld c,$04		
jp $04cb		
.incbin "data/02_7899.data"
ld b,$0e		
ld hl,$4044		
rst $28			
ld a,($cad8)		
and a			
push af			
.DB $20 $0b ; < ['$20', '$0b'] > < 0x7985 > < 27985 02 7985 | 200B: jr nz, $0B >
.incbin "data/02_7987.data"
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ld b,$39		
ld hl,$600d		
rst $28			
ld a,($cad7)		
and a			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x79a5 > < 279a5 02 79A5 | 20FA: jr nz, $FA >
ld hl,$c1a3		
ld de,$0729		
call  rlabel_00_0231 
ld b,$07		
ld hl,$4a7e		
rst $28			
ld a,$ff		
ld ($c96d),a		
ld ($c96e),a		
pop af			
call z,$4a62		
ld b,$0e		
ld hl,$4064		
rst $28			
ret			
.incbin "data/02_79C9.data"
ld c,$00		
ld de,$0a08		
call  rlabel_02_7DBC 
ld de,$0e0c		
call  rlabel_02_7DBC 
inc c			
ld a,c			
cp $03			
.DB $20 $ee ; < ['$20', '$ee'] > < 0x7db9 > < 27db9 02 7DB9 | 20EE: jr nz, $EE >
ret			
rlabel_02_7DBC:
push de			
ld b,d			
call  rlabel_02_7DCE 
pop de			
ld b,e			
ld e,l			
ld d,h			
call  rlabel_02_7DCE 
ld a,(de)		
inc de			
ldi (hl),a		
ld a,(de)		
ld (hl),a		
ret			
rlabel_02_7DCE:
ld hl,$cfd5		
ld a,c			
add h			
ld h,a			
ld a,b			
jp $0462		
.incbin "data/02_7DD8.data"
rlabel_02_7E26:
xor a			
ld hl,$c2fc		
ldi (hl),a		
ldi (hl),a		
ld (hl),a		
ld ($c094),a		
ret			
.incbin "data/02_7E31.data"
ld b,$0a		
call  rlabel_00_0876 
ld c,a			
ld hl,$7f08		
ld d,$00		
ldi a,(hl)		
cp c			
.DB $28 $05 ; < ['$28', '$05'] > < 0x7ec9 > < 27ec9 02 7EC9 | 2805: jr z, $05 >
inc a			
ret z			
inc d			
.DB $18 $f7 ; < ['$18', '$f7'] > < 0x7ece > < 27ece 02 7ECE | 18F7: jr $F7 >
.incbin "data/02_7ED0.data"
