.BANK $00 SLOT 0
.ORG 0
.incbin "data/00_0000.data"
rlabel_00_0028:
ld a,($4000)		
push af			
ld a,b			
ld ($2000),a		
call  rlabel_00_05DB 
pop af			
ld ($2000),a		
ret			
.incbin "data/00_0038.data"
jp $c1a0		
.incbin "data/00_0043.data"
jp $c1a3		
.incbin "data/00_004B.data"
jp $0150		
.incbin "data/00_0104.data"
di			
ld e,a			
ld d,b			
xor a			
ld ($ff00+$0f),a	
ld ($ff00+$ff),a	
ld ($ff00+$26),a	
ld ($0000),a		
ld a,($ff00+$44)	
cp $91			
.DB $38 $fa ; < ['$38', '$fa'] > < 0x161 > < 161 01 0161 | 38FA: jr c, $FA >
xor a			
ld ($ff00+$40),a	
ld sp,$e000		
ld hl,$c000		
ld bc,$1ffe		
xor a			
call  rlabel_00_04D2 
ld a,d			
ld ($c1a7),a		
ld a,e			
ld ($c1a6),a		
cp $11			
.DB $20 $03 ; < ['$20', '$03'] > < 0x17d > < 17d 01 017D | 2003: jr nz, $03 >
ld ($cbf2),a		
ld hl,$ff80		
ld c,$7f		
call  rlabel_00_04E2 
ld a,$01		
ld ($ff00+$4f),a	
dec a			
ld hl,$9800		
ld bc,$0800		
call  rlabel_00_04D2 
xor a			
ld ($ff00+$4f),a	
ld hl,$9800		
ld bc,$0800		
call  rlabel_00_04D2 
call  rlabel_00_031A 
call  rlabel_00_05B9 
call  rlabel_00_34E5 
ld a,$07		
ld ($ff00+$4b),a	
ld ($ff00+$a3),a	
ld a,$40		
ld ($ff00+$41),a	
ld a,$c4		
ld ($ff00+$40),a	
ld ($ff00+$9b),a	
ld a,$c9		
ld ($c1aa),a		
ld hl,$c1a0		
ld de,$0287		
call  rlabel_00_0231 
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ld a,$01		
ld ($ff00+$ff),a	
ld ($ff00+$9c),a	
call  rlabel_00_02E7 
.DB $28 $fb ; < ['$28', '$fb'] > < 0x1dd > < 1dd 08 01DD | 28FB: jr z, $FB >
ei			
ld b,$bd		
ld hl,$4b8b		
rst $28			
ld b,$0e		
ld hl,$4001		
rst $28			
xor a			
ld ($c1a8),a		
ld hl,$0221		
ld a,($c1a8)		
ld b,a			
add a			
add b			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x1fb > < 1fb 08 01FB | 3001: jr nc, $01 >
.incbin "data/00_01FD.data"
ldd a,(hl)		
ld ($2000),a		
ldd a,(hl)		
ld l,(hl)		
ld h,a			
call  rlabel_00_05DB 
.DB $18 $e6 ; < ['$18', '$e6'] > < 0x208 > < 208 01 0208 | 18E6: jr $E6 >
.incbin "data/00_020A.data"
rlabel_00_0214:
ld a,($c1a8)		
ld ($c1a9),a		
ld a,b			
ld ($c1a8),a		
ret			
.incbin "data/00_021F.data"
rlabel_00_0231:
ld a,($ff00+$ff)	
ld ($ff00+$9c),a	
xor a			
ld ($ff00+$ff),a	
ld a,$c3		
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld a,($ff00+$9c)	
ld ($ff00+$ff),a	
ret			
rlabel_00_0244:
ld ($ff00+$b2),a	
ld a,($4000)		
push af			
ld a,($ff00+$b2)	
ld ($2000),a		
ld a,$c3		
ld ($ff00+$af),a	
ld a,($ff00+$b3)	
call $ffaf		
ld ($ff00+$b2),a	
pop af			
ld ($2000),a		
ld a,($ff00+$b2)	
ret			
rlabel_00_0261:
ld hl,$ffab		
inc (hl)		
ld a,$3c		
sub (hl)		
ret nz			
ldi (hl),a		
ld a,($ff00+$ae)	
inc a			
ret z			
inc (hl)		
ld a,$3c		
sub (hl)		
ret nz			
ldi (hl),a		
inc (hl)		
ld a,$3c		
sub (hl)		
ret nz			
.incbin "data/00_0279.data"
rlabel_00_027C:
ei			
ld hl,$ffa6		
ld a,(hl)		
halt			
nop			
cp (hl)			
.DB $28 $fb ; < ['$28', '$fb'] > < 0x284 > < 284 BD 0284 | 28FB: jr z, $FB >
ret			
push af			
push bc			
push de			
push hl			
call $ff80		
call  rlabel_00_02C4 
ld hl,$ffa6		
inc (hl)		
call  rlabel_00_02E7 
jp z,$020a		
ld c,$a7		
ld a,($ff00+c)		
and a			
.DB $20 $1a ; < ['$20', '$1a'] > < 0x29f > < 29f 08 029F | 201A: jr nz, $1A >
inc a			
ld ($ff00+c),a		
ld a,($4000)		
push af			
ei			
call  rlabel_00_3085 
ld a,($c1ad)		
ld ($2000),a		
call $c1aa		
pop af			
ld ($2000),a		
call  rlabel_00_0261 
di			
xor a			
ld ($ff00+$a7),a	
pop hl			
pop de			
pop bc			
pop af			
reti			
rlabel_00_02C4:
ld hl,$ff9a		
ldi a,(hl)		
ld ($ff00+$45),a	
ldi a,(hl)		
ld ($ff00+$40),a	
ldi a,(hl)		
ld ($ff00+$ff),a	
ldi a,(hl)		
ld ($ff00+$47),a	
ldi a,(hl)		
ld ($ff00+$48),a	
ldi a,(hl)		
ld ($ff00+$49),a	
ldi a,(hl)		
ld ($ff00+$42),a	
ldi a,(hl)		
ld ($ff00+$43),a	
ldi a,(hl)		
ld ($ff00+$4a),a	
ldi a,(hl)		
ld ($ff00+$4b),a	
ret			
reti			
rlabel_00_02E7:
ld a,$20		
ld ($ff00+$00),a	
ld a,($ff00+$00)	
ld a,($ff00+$00)	
cpl			
and $0f			
swap a			
ld b,a			
ld a,$10		
ld ($ff00+$00),a	
ld a,($ff00+$00)	
ld a,($ff00+$00)	
ld a,($ff00+$00)	
ld a,($ff00+$00)	
ld a,($ff00+$00)	
ld a,($ff00+$00)	
cpl			
and $0f			
or b			
ld c,a			
ld a,($ff00+$a4)	
xor c			
and c			
ld ($ff00+$a5),a	
ld a,$30		
ld ($ff00+$00),a	
ld a,c			
ld ($ff00+$a4),a	
cp $0f			
ret			
rlabel_00_031A:
ld c,$80		
ld b,$0a		
ld hl,$0328		
ldi a,(hl)		
ld ($ff00+c),a		
inc c			
dec b			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x325 > < 325 01 0325 | 20FA: jr nz, $FA >
ret			
.incbin "data/00_0328.data"
rlabel_00_035B:
ld a,($ff00+$9b)	
or $01			
ld ($ff00+$9b),a	
ret			
.incbin "data/00_0362.data"
rlabel_00_0369:
ld a,($ff00+$9b)	
or $02			
ld ($ff00+$9b),a	
ret			
rlabel_00_0370:
ld a,($ff00+$9b)	
and $fd			
ld ($ff00+$9b),a	
ret			
rlabel_00_0377:
ld a,($ff00+$9b)	
or $20			
ld ($ff00+$9b),a	
ret			
rlabel_00_037E:
ld a,($ff00+$9b)	
and $df			
ld ($ff00+$9b),a	
ret			
rlabel_00_0385:
ld a,($ff00+$44)	
cp c			
.DB $38 $fb ; < ['$38', '$fb'] > < 0x388 > < 388 0E 0388 | 38FB: jr c, $FB >
ret			
rlabel_00_038B:
push bc			
xor a			
ld c,$08		
rl d			
rla			
cp e			
.DB $38 $01 ; < ['$38', '$01'] > < 0x393 > < 393 05 0393 | 3801: jr c, $01 >
sub e			
ccf			
rl d			
dec c			
.DB $20 $f5 ; < ['$20', '$f5'] > < 0x39a > < 39a 05 039A | 20F5: jr nz, $F5 >
ld e,a			
pop bc			
ret			
rlabel_00_039F:
push bc			
ld b,a			
xor a			
rl e			
rl d			
ld c,$10		
rla			
.DB $38 $03 ; < ['$38', '$03'] > < 0x3a9 > < 3a9 04 03A9 | 3803: jr c, $03 >
cp b			
.DB $38 $02 ; < ['$38', '$02'] > < 0x3ac > < 3ac 04 03AC | 3802: jr c, $02 >
sub b			
and a			
ccf			
rl e			
rl d			
dec c			
.DB $20 $f0 ; < ['$20', '$f0'] > < 0x3b6 > < 3b6 04 03B6 | 20F0: jr nz, $F0 >
pop bc			
ret			
rlabel_00_03BA:
ld h,a			
rlabel_00_03BB:
push bc			
ld c,e			
ld e,d			
ld d,l			
ld a,h			
call  rlabel_00_039F 
ld l,d			
ld b,e			
ld d,a			
ld e,c			
ld a,h			
call  rlabel_00_039F 
ld d,b			
ld h,a			
pop bc			
ret			
rlabel_00_03CF:
push hl			
xor a			
ld hl,$0000		
ld a,$10		
rl e			
rl d			
rl l			
rl h			
push de			
ld d,a			
ld a,l			
sub c			
ld l,a			
ld a,h			
sbc b			
ld h,a			
ld a,d			
pop de			
.DB $30 $01 ; < ['$30', '$01'] > < 0x3e8 > < 3e8 01 03E8 | 3001: jr nc, $01 >
add hl,bc		
ccf			
rl e			
rl d			
dec a			
.DB $20 $e7 ; < ['$20', '$e7'] > < 0x3f1 > < 3f1 01 03F1 | 20E7: jr nz, $E7 >
ld c,l			
ld b,h			
pop hl			
ret			
rlabel_00_03F7:
push bc			
xor a			
ld c,$08		
rr e			
.DB $30 $01 ; < ['$30', '$01'] > < 0x3fd > < 3fd 01 03FD | 3001: jr nc, $01 >
add d			
rra			
dec c			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x402 > < 402 01 0402 | 20F7: jr nz, $F7 >
rr e			
ld d,a			
pop bc			
ret			
rlabel_00_0409:
push bc			
push hl			
ld b,a			
ld c,e			
ld e,a			
call  rlabel_00_03F7 
ld h,d			
ld l,e			
ld d,c			
ld e,b			
call  rlabel_00_03F7 
add l			
ld d,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x41a > < 41a 61 041A | 3001: jr nc, $01 >
.incbin "data/00_041C.data"
ld a,h			
pop hl			
pop bc			
ret			
rlabel_00_0421:
ld a,h			
push af			
push de			
ld e,l			
ld d,a			
call  rlabel_00_03F7 
ld l,e			
ld h,d			
pop de			
pop af			
call  rlabel_00_0409 
jp $0462		
rlabel_00_0433:
push bc			
push de			
ld a,h			
call  rlabel_00_0409 
ld c,e			
ld b,d			
ld h,a			
pop de			
ld a,l			
call  rlabel_00_0409 
ld l,a			
ld a,d			
add c			
ld d,a			
ld a,l			
adc b			
ld l,a			
pop bc			
ret nc			
.incbin "data/00_044A.data"
rlabel_00_0458:
add c			
ld c,a			
ret nc			
inc b			
ret			
rlabel_00_045D:
add e			
ld e,a			
ret nc			
inc d			
ret			
rlabel_00_0462:
add l			
ld l,a			
ret nc			
inc h			
ret			
.incbin "data/00_0467.data"
rlabel_00_049C:
push hl			
ld l,a			
ld h,$00		
add hl,hl		
add hl,de		
ld e,(hl)		
inc hl			
ld d,(hl)		
pop hl			
ret			
rlabel_00_04A7:
push de			
ld e,a			
ld d,$00		
add hl,de		
add hl,de		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,e			
pop de			
ret			
rlabel_00_04B3:
dec bc			
ld a,c			
cpl			
ld c,a			
ld a,b			
cpl			
ld b,a			
or c			
ret			
rlabel_00_04BC:
inc c			
dec c			
.DB $28 $01 ; < ['$28', '$01'] > < 0x4be > < 4be 01 04BE | 2801: jr z, $01 >
inc b			
ldi a,(hl)		
ld (de),a		
inc de			
dec c			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x4c5 > < 4c5 01 04C5 | 20FA: jr nz, $FA >
dec b			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x4c8 > < 4c8 01 04C8 | 20F7: jr nz, $F7 >
ret			
rlabel_00_04CB:
ld a,(de)		
ldi (hl),a		
inc de			
dec c			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x4cf > < 4cf 01 04CF | 20FA: jr nz, $FA >
ret			
rlabel_00_04D2:
inc c			
dec c			
.DB $28 $01 ; < ['$28', '$01'] > < 0x4d4 > < 4d4 01 04D4 | 2801: jr z, $01 >
inc b			
ldi (hl),a		
dec c			
.DB $20 $fc ; < ['$20', '$fc'] > < 0x4d9 > < 4d9 01 04D9 | 20FC: jr nz, $FC >
dec b			
.DB $20 $f9 ; < ['$20', '$f9'] > < 0x4dc > < 4dc 01 04DC | 20F9: jr nz, $F9 >
ret			
.incbin "data/00_04DF.data"
rlabel_00_04E2:
xor a			
rlabel_00_04E3:
ldi (hl),a		
dec c			
.DB $20 $fc ; < ['$20', '$fc'] > < 0x4e5 > < 4e5 01 04E5 | 20FC: jr nz, $FC >
ret			
.incbin "data/00_04E8.data"
rlabel_00_050E:
di			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x513 > < 513 03 0513 | 20FA: jr nz, $FA >
ld a,(de)		
ei			
ret			
rlabel_00_0518:
ld b,a			
rlabel_00_0519:
di			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x51e > < 51e 01 051E | 20FA: jr nz, $FA >
ld (hl),b		
ei			
ret			
rlabel_00_0523:
ld a,$20		
sub c			
add l			
ld l,a			
ret nc			
inc h			
ret			
.incbin "data/00_052B.data"
rlabel_00_0533:
push bc			
ld b,d			
call  rlabel_00_05A2 
pop bc			
call  rlabel_00_0523 
dec b			
.DB $20 $f4 ; < ['$20', '$f4'] > < 0x53d > < 53d 01 053D | 20F4: jr nz, $F4 >
ret			
rlabel_00_0540:
push bc			
ld b,d			
call  rlabel_00_0519 
inc b			
inc hl			
dec c			
.DB $20 $f8 ; < ['$20', '$f8'] > < 0x548 > < 548 01 0548 | 20F8: jr nz, $F8 >
ld d,b			
pop bc			
call  rlabel_00_0523 
dec b			
.DB $20 $ee ; < ['$20', '$ee'] > < 0x550 > < 550 01 0550 | 20EE: jr nz, $EE >
ret			
.incbin "data/00_0553.data"
rlabel_00_05A2:
call  rlabel_00_0519 
inc hl			
dec c			
.DB $20 $f9 ; < ['$20', '$f9'] > < 0x5a7 > < 5a7 01 05A7 | 20F9: jr nz, $F9 >
ret			
rlabel_00_05AA:
ld c,$a0		
xor a			
.DB $18 $02 ; < ['$18', '$02'] > < 0x5ad > < 5ad 01 05AD | 1802: jr $02 >
rlabel_00_05AF:
ld c,$04		
rlabel_00_05B1:
add a			
add a			
ld l,a			
ld h,$c0		
jp $04e2		
rlabel_00_05B9:
ld a,$e4		
ld ($ff00+$9d),a	
ld ($ff00+$9f),a	
ld a,$d0		
ld ($ff00+$9e),a	
ret			
.incbin "data/00_05C4.data"
rlabel_00_05D3:
add a			
call  rlabel_00_0462 
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,c			
rlabel_00_05DB:
jp hl			
rlabel_00_05DC:
ld c,$6a		
.DB $18 $02 ; < ['$18', '$02'] > < 0x5de > < 5de 3C 05DE | 1802: jr $02 >
ld c,$68		
ld hl,$ff41		
di			
bit 1,(hl)		
.DB $20 $fc ; < ['$20', '$fc'] > < 0x5e8 > < 5e8 3C 05E8 | 20FC: jr nz, $FC >
ld ($ff00+c),a		
ei			
inc c			
ld a,(de)		
di			
bit 1,(hl)		
.DB $20 $fc ; < ['$20', '$fc'] > < 0x5f1 > < 5f1 3C 05F1 | 20FC: jr nz, $FC >
ld ($ff00+c),a		
ei			
inc de			
dec b			
.DB $20 $f4 ; < ['$20', '$f4'] > < 0x5f7 > < 5f7 3C 05F7 | 20F4: jr nz, $F4 >
ret			
.incbin "data/00_05FA.data"
rlabel_00_0603:
ld a,($4000)		
push af			
ld a,b			
ld ($2000),a		
ld a,(de)		
ld b,a			
pop af			
ld ($2000),a		
ret			
rlabel_00_0612:
ld a,($ff00+$ff)	
ld ($ff00+$aa),a	
rlabel_00_0616:
push bc			
ld bc,$03ff		
ld a,($ff00+$aa)	
ld ($ff00+c),a		
xor a			
ld ($ff00+c),a		
ld a,($ff00+$41)	
and b			
cp $02			
.DB $20 $f4 ; < ['$20', '$f4'] > < 0x624 > < 624 04 0624 | 20F4: jr nz, $F4 >
ld ($ffa8),sp		
ld sp,hl		
ld l,e			
ld h,d			
ld c,$41		
ld a,($ff00+c)		
and b			
.DB $20 $fc ; < ['$20', '$fc'] > < 0x630 > < 630 04 0630 | 20FC: jr nz, $FC >
pop de			
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
pop de			
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld e,l			
ld d,h			
ld hl,$ffa8		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld ($ffa8),sp		
ld sp,hl		
ld hl,$ffa8		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,($ff00+$aa)	
ld ($ff00+$ff),a	
pop bc			
ret			
rlabel_00_0654:
ld a,($ff00+$ff)	
ld ($ff00+$aa),a	
rlabel_00_0658:
push bc			
ld bc,$03ff		
ld a,($ff00+$aa)	
ld ($ff00+c),a		
xor a			
ld ($ff00+c),a		
ld a,($ff00+$41)	
and b			
cp $02			
.DB $20 $f4 ; < ['$20', '$f4'] > < 0x666 > < 666 01 0666 | 20F4: jr nz, $F4 >
ld ($ffa8),sp		
ld sp,hl		
ld l,e			
ld h,d			
ld c,$41		
ld a,($ff00+c)		
and b			
.DB $20 $fc ; < ['$20', '$fc'] > < 0x672 > < 672 01 0672 | 20FC: jr nz, $FC >
pop de			
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
pop de			
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
pop de			
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
pop de			
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld e,l			
ld d,h			
ld hl,$ffa8		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld ($ffa8),sp		
ld sp,hl		
ld hl,$ffa8		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,($ff00+$aa)	
ld ($ff00+$ff),a	
pop bc			
ret			
ld a,($4000)		
push af			
ld a,b			
ld ($2000),a		
.DB $18 $0a ; < ['$18', '$0a'] > < 0x6a8 > < 6a8 D5 06A8 | 180A: jr $0A >
rlabel_00_06AA:
ld a,($4000)		
push af			
ld a,b			
ld ($2000),a		
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld b,a			
inc a			
.DB $20 $04 ; < ['$20', '$04'] > < 0x6b7 > < 6b7 D5 06B7 | 2004: jr nz, $04 >
.incbin "data/00_06B9.data"
ld a,(hl)		
cp b			
.DB $20 $13 ; < ['$20', '$13'] > < 0x6bf > < 6bf D5 06BF | 2013: jr nz, $13 >
push hl			
ld hl,$06cc		
call  rlabel_00_0654 
pop hl			
inc hl			
.DB $18 $0b ; < ['$18', '$0b'] > < 0x6ca > < 6ca D5 06CA | 180B: jr $0B >
.incbin "data/00_06CC.data"
call  rlabel_00_0654 
dec c			
.DB $20 $e3 ; < ['$20', '$e3'] > < 0x6d8 > < 6d8 D5 06D8 | 20E3: jr nz, $E3 >
jp $0a3c		
rlabel_00_06DD:
ld a,($4000)		
push af			
ld a,b			
ld ($2000),a		
call  rlabel_00_0654 
call  rlabel_00_0658 
jp $0a3c		
rlabel_00_06EE:
ld b,a			
ld a,($4000)		
push af			
ld a,b			
ld ($2000),a		
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld b,a			
.DB $18 $0d ; < ['$18', '$0d'] > < 0x6fb > < 6fb 06 06FB | 180D: jr $0D >
rlabel_00_06FD:
push bc			
ld b,a			
ld a,($4000)		
ld c,a			
ld a,b			
ld ($2000),a		
ld a,c			
pop bc			
push af			
call  rlabel_00_0654 
.DB $18 $03 ; < ['$18', '$03'] > < 0x70d > < 70d 01 070D | 1803: jr $03 >
call  rlabel_00_0658 
dec bc			
ld a,b			
or c			
.DB $20 $f8 ; < ['$20', '$f8'] > < 0x715 > < 715 01 0715 | 20F8: jr nz, $F8 >
jp $0a3c		
rlabel_00_071A:
pop hl			
push bc			
push de			
ld a,($4000)		
ld b,a			
ld a,($ff00+$4f)	
ld c,a			
push bc			
xor a			
ld ($ff00+$4f),a	
jp hl			
push af			
push hl			
call  rlabel_00_071A 
ld hl,$c314		
set 7,(hl)		
bit 6,(hl)		
.DB $20 $11 ; < ['$20', '$11'] > < 0x735 > < 735 02 0735 | 2011: jr nz, $11 >
ld a,$06		
ld ($2000),a		
call  rlabel_06_43D5 
call  rlabel_06_42ED 
call  rlabel_06_410E 
call  rlabel_06_4FFB 
ei			
ld a,($c987)		
and a			
call nz,$076c		
ld a,($c224)		
cp $07			
call z,$0774		
ld a,($c337)		
and a			
call nz,$077c		
pop bc			
ld a,c			
ld ($ff00+$4f),a	
ld a,b			
ld ($2000),a		
pop de			
pop bc			
pop hl			
pop af			
reti			
ld a,$05		
ld ($2000),a		
jp $4774		
.incbin "data/00_0774.data"
push af			
ld a,($c345)		
ld ($ff00+$40),a	
ld a,$27		
ld ($ff00+$45),a	
ld a,$9b		
ld ($c1a4),a		
ld a,$07		
ld ($c1a5),a		
pop af			
reti			
push af			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x7a0 > < 7a0 0E 07A0 | 20FA: jr nz, $FA >
ld a,($ff00+$9b)	
ld ($ff00+$40),a	
ld a,$54		
ld ($ff00+$45),a	
ld a,$b6		
ld ($c1a4),a		
ld a,$07		
ld ($c1a5),a		
pop af			
reti			
push af			
ld a,$00		
ld ($ff00+$9a),a	
ld a,$85		
ld ($c1a4),a		
ld a,$07		
ld ($c1a5),a		
jp $072a		
push af			
ld a,$67		
ld ($ff00+$45),a	
ld a,$da		
ld ($c1a4),a		
ld a,$07		
ld ($c1a5),a		
jp $072a		
push af			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x7df > < 7df 0E 07DF | 20FA: jr nz, $FA >
ld a,($c345)		
ld ($ff00+$40),a	
ld ($ff00+$40),a	
ld a,$90		
ld ($ff00+$45),a	
ld a,$f8		
ld ($c1a4),a		
ld a,$07		
ld ($c1a5),a		
pop af			
reti			
push af			
ld a,($ff00+$9b)	
ld ($ff00+$40),a	
ld a,$10		
ld ($ff00+$9a),a	
ld a,$c8		
ld ($c1a4),a		
ld a,$07		
ld ($c1a5),a		
pop af			
reti			
ld a,b			
ld ($2000),a		
jp hl			
rlabel_00_0812:
ld a,($c23c)		
rlabel_00_0815:
ld hl,$082a		
ld ($c203),a		
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x81e > < 81e 01 081E | 3001: jr nc, $01 >
.incbin "data/00_0820.data"
ldi a,(hl)		
ld ($c1fd),a		
ld a,(hl)		
ld ($c1fe),a		
ret			
.incbin "data/00_082A.data"
rlabel_00_0832:
ld hl,$c1fd		
ldi a,(hl)		
ld h,(hl)		
add b			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x839 > < 839 07 0839 | 3001: jr nc, $01 >
inc h			
ld a,(hl)		
ret			
rlabel_00_083E:
push af			
ld hl,$c1fd		
ldi a,(hl)		
ld h,(hl)		
add b			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x846 > < 846 01 0846 | 3001: jr nc, $01 >
inc h			
pop af			
ld (hl),a		
ret			
rlabel_00_084C:
ld ($c23c),a		
ld hl,$0863		
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x855 > < 855 07 0855 | 3001: jr nc, $01 >
.incbin "data/00_0857.data"
ldi a,(hl)		
ld ($c23d),a		
ld h,(hl)		
ld l,a			
ld a,h			
ld ($c23e),a		
ret			
.incbin "data/00_0863.data"
rlabel_00_086B:
.DB $21 $3d $c2 ; < ['$21', '$3d', '$c2'] > < 0x86b > < 86b 07 086B | 213DC2: ld hl, $C23D >
.DB $2a ; < ['$2a'] > < 0x86e > < 86e 07 086E | 2A: ld a, [hl+] >
.DB $66 ; < ['$66'] > < 0x86f > < 86f 07 086F | 66: ld h, [hl] >
add b			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x872 > < 872 07 0872 | 3001: jr nc, $01 >
.incbin "data/00_0874.data"
ret			
rlabel_00_0876:
ld hl,$c23d		
ldi a,(hl)		
ld h,(hl)		
add b			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x87d > < 87d 02 087D | 3001: jr nc, $01 >
.incbin "data/00_087F.data"
ld a,(hl)		
ret			
rlabel_00_0882:
push af			
ld hl,$c23d		
ldi a,(hl)		
ld h,(hl)		
add b			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x88a > < 88a 07 088A | 3001: jr nc, $01 >
.incbin "data/00_088C.data"
pop af			
ld (hl),a		
ret			
rlabel_00_0890:
set 4,h			
rlabel_00_0892:
ld de,$4001		
.DB $18 $06 ; < ['$18', '$06'] > < 0x895 > < 895 06 0895 | 1806: jr $06 >
rlabel_00_0897:
set 4,h			
.DB $18 $04 ; < ['$18', '$04'] > < 0x899 > < 899 01 0899 | 1804: jr $04 >
rlabel_00_089B:
set 4,h			
rlabel_00_089D:
ld b,$3c		
rlabel_00_089F:
ld a,($4000)		
push af			
ld a,b			
ld ($2000),a		
ld bc,$08cd		
push bc			
ld c,h			
ld h,$00		
add hl,hl		
add hl,hl		
add hl,hl		
add hl,de		
ld e,l			
ld d,h			
ld a,($cad8)		
ld b,a			
ld a,($cad7)		
or b			
.DB $20 $14 ; < ['$20', '$14'] > < 0x8bc > < 8bc 01 08BC | 2014: jr nz, $14 >
ld a,c			
swap a			
scf			
rra			
ld b,$08		
bit 4,c			
jp z,$05e0		
jp $05dc		
pop af			
ld ($2000),a		
ret			
bit 4,c			
ld l,c			
res 4,l			
ld bc,$c988		
.DB $28 $03 ; < ['$28', '$03'] > < 0x8da > < 8da 01 08DA | 2803: jr z, $03 >
ld bc,$c9c8		
ld h,$00		
add hl,hl		
add hl,hl		
add hl,hl		
add hl,bc		
ld c,$08		
ld a,(de)		
inc de			
ldi (hl),a		
dec c			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x8eb > < 8eb 01 08EB | 20FA: jr nz, $FA >
ret			
rlabel_00_08EE:
ld a,($ff00+$44)	
cp c			
.DB $30 $fb ; < ['$30', '$fb'] > < 0x8f1 > < 8f1 0E 08F1 | 30FB: jr nc, $FB >
jp $0385		
rlabel_00_08F6:
ld a,($4000)		
ld (de),a		
inc de			
ld hl,sp+$02		
ld a,l			
ld (de),a		
inc de			
ld a,h			
ld (de),a		
inc de			
pop hl			
push hl			
ld a,l			
ld (de),a		
inc de			
ld a,h			
ld (de),a		
xor a			
ret			
rlabel_00_090C:
ld a,(de)		
inc de			
ld ($2000),a		
ld a,(de)		
inc de			
ld l,a			
ld a,(de)		
inc de			
ld h,a			
ld sp,hl		
ld a,(de)		
inc de			
ld l,a			
ld a,(de)		
ld h,a			
push hl			
ld a,b			
ret			
rlabel_00_0920:
ld b,c			
sla b			
inc b			
ld a,e			
sub l			
add c			
cp b			
ret nc			
ld a,d			
sub h			
add c			
cp b			
ret			
.incbin "data/00_092E.data"
rlabel_00_093E:
ld a,e			
cp l			
ret c			
ld a,c			
cp e			
ret c			
ld a,d			
cp h			
ret c			
ld a,b			
cp d			
ret			
rlabel_00_094A:
ld a,l			
sub e			
.DB $30 $02 ; < ['$30', '$02'] > < 0x94c > < 94c 07 094C | 3002: jr nc, $02 >
cpl			
inc a			
cp c			
ret nc			
ld a,h			
sub d			
.DB $30 $02 ; < ['$30', '$02'] > < 0x954 > < 954 07 0954 | 3002: jr nc, $02 >
cpl			
inc a			
cp b			
ret			
.incbin "data/00_095A.data"
rlabel_00_097C:
ld a,($c351)		
ld e,a			
ld a,($c352)		
ld d,a			
ret			
rlabel_00_0985:
and $4f			
cp $04			
ret z			
cp $05			
ret			
rlabel_00_098D:
ld a,($c351)		
ld b,a			
ld a,($c353)		
cp b			
ret nz			
ld a,($c352)		
ld b,a			
ld a,($c354)		
cp b			
ret			
rlabel_00_099F:
push bc			
ld b,a			
ld a,($4000)		
ld c,a			
ld a,b			
ld ($2000),a		
ld a,c			
pop bc			
push af			
.DB $18 $38 ; < ['$18', '$38'] > < 0x9ac > < 9ac D4 09AC | 1838: jr $38 >
rlabel_00_09AE:
ld a,($4000)		
push af			
ld a,$10		
ld ($2000),a		
ld c,l			
ld b,h			
add hl,hl		
add hl,bc		
ld bc,$4001		
add hl,bc		
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld b,a			
ld a,(hl)		
ld l,c			
ld h,b			
ld b,a			
.DB $18 $10 ; < ['$18', '$10'] > < 0x9c7 > < 9c7 10 09C7 | 1810: jr $10 >
rlabel_00_09C9:
ld ($ff00+$a8),a	
ld a,($4000)		
push af			
ld a,b			
ld ($2000),a		
.DB $18 $0c ; < ['$18', '$0c'] > < 0x9d3 > < 9d3 06 09D3 | 180C: jr $0C >
ld a,($4000)		
push af			
ld a,$18		
ld ($ff00+$a8),a	
ld a,b			
ld ($2000),a		
ld a,($ff00+$a8)	
ld b,a			
ldi a,(hl)		
ld c,a			
ld ($ffa8),sp		
ld sp,hl		
ld l,e			
ld h,d			
ld a,($ff00+$41)	
and $03			
cp $02			
.DB $20 $f8 ; < ['$20', '$f8'] > < 0x9f2 > < 9f2 10 09F2 | 20F8: jr nz, $F8 >
pop de			
ld a,e			
cp c			
.DB $28 $1e ; < ['$28', '$1e'] > < 0x9f7 > < 9f7 10 09F7 | 281E: jr z, $1E >
ld a,($ff00+$41)	
and $03			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x9fd > < 9fd 10 09FD | 20FA: jr nz, $FA >
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
pop de			
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
pop de			
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
pop de			
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
dec b			
.DB $20 $d7 ; < ['$20', '$d7'] > < 0xa13 > < a13 10 0A13 | 20D7: jr nz, $D7 >
.DB $18 $13 ; < ['$18', '$13'] > < 0xa15 > < a15 15 0A15 | 1813: jr $13 >
ld a,($ff00+$41)	
and $03			
.DB $20 $fa ; < ['$20', '$fa'] > < 0xa1b > < a1b 10 0A1B | 20FA: jr nz, $FA >
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
add sp,-$01		
dec b			
.DB $20 $c2 ; < ['$20', '$c2'] > < 0xa28 > < a28 10 0A28 | 20C2: jr nz, $C2 >
ld e,l			
ld d,h			
ld hl,$ffa8		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld ($ffa8),sp		
ld sp,hl		
ld hl,$ffa8		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
pop af			
ld ($2000),a		
ret			
rlabel_00_0A41:
ld a,$56		
ld ($2000),a		
ld a,($c358)		
ld l,a			
ld h,$00		
add hl,hl		
add hl,hl		
ld de,$4001		
add hl,de		
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
ret			
call  rlabel_00_0A41 
ld a,c			
and a			
.DB $28 $15 ; < ['$28', '$15'] > < 0xa5e > < a5e 56 0A5E | 2815: jr z, $15 >
ld b,$00		
sla c			
rl b			
sla c			
rl b			
sla c			
rl b			
ld a,(hl)		
ld l,e			
ld h,d			
ld de,$c56d		
ret			
.incbin "data/00_0A75.data"
call  rlabel_00_0A41 
ld a,(hl)		
ld ($2000),a		
ld l,c			
ld h,$00		
add hl,hl		
add hl,hl		
add hl,hl		
add hl,de		
ld a,b			
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0xa92 > < a92 56 0A92 | 3001: jr nc, $01 >
.incbin "data/00_0A94.data"
ldi a,(hl)		
ld e,a			
ld d,(hl)		
ret			
rlabel_00_0A99:
ld a,($ff00+$44)	
cp c			
jp nc,$027c		
ret			
rlabel_00_0AA0:
call  rlabel_00_027C 
dec c			
ret z			
.DB $18 $f9 ; < ['$18', '$f9'] > < 0xaa5 > < aa5 BD 0AA5 | 18F9: jr $F9 >
rlabel_00_0AA7:
ld a,($4000)		
push af			
push de			
ld h,d			
ld l,e			
add hl,hl		
add hl,de		
ld de,$4001		
add hl,de		
ld a,$5a		
ld ($2100),a		
ld e,(hl)		
inc hl			
ld d,(hl)		
inc hl			
ld a,(hl)		
ld ($2100),a		
ld hl,$d85d		
call  rlabel_00_0B26 
ld hl,$d9c5		
call  rlabel_00_0B98 
ld hl,$db39		
call  rlabel_00_0BF7 
pop de			
call  rlabel_00_0B02 
ld a,b			
ld ($2000),a		
ld hl,$d85c		
ld a,(de)		
inc de			
ld (hl),a		
ld hl,$db2d		
ld c,$0c		
call  rlabel_00_04CB 
ld hl,$db81		
ld c,$07		
call  rlabel_00_04CB 
ld hl,$d85d		
ld de,$d2d5		
ld bc,$02d0		
call  rlabel_00_04BC 
pop af			
ld ($2100),a		
ret			
rlabel_00_0B02:
ld l,e			
ld h,d			
ld b,$54		
ld de,$0320		
ld a,h			
cp d			
.DB $38 $0b ; < ['$38', '$0b'] > < 0xb0b > < b0b 61 0B0B | 380B: jr c, $0B >
.incbin "data/00_0B0D.data"
ld e,l			
ld d,h			
ld a,$14		
call  rlabel_00_0409 
ld hl,$4001		
add hl,de		
ld e,l			
ld d,h			
ret			
rlabel_00_0B26:
.DB $18 $09 ; < ['$18', '$09'] > < 0xb26 > < b26 61 0B26 | 1809: jr $09 >
ld a,$c5		
cp l			
.DB $20 $04 ; < ['$20', '$04'] > < 0xb2b > < b2b 61 0B2B | 2004: jr nz, $04 >
ld a,$d9		
cp h			
ret z			
ld a,(de)		
inc de			
bit 7,a			
.DB $28 $27 ; < ['$28', '$27'] > < 0xb35 > < b35 61 0B35 | 2827: jr z, $27 >
cp $a0			
.DB $30 $23 ; < ['$30', '$23'] > < 0xb39 > < b39 61 0B39 | 3023: jr nc, $23 >
bit 4,a			
.DB $20 $0f ; < ['$20', '$0f'] > < 0xb3d > < b3d 61 0B3D | 200F: jr nz, $0F >
cpl			
and $0f			
ld bc,$0b61		
add c			
ld c,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0xb47 > < b47 61 0B47 | 3001: jr nc, $01 >
.incbin "data/00_0B49.data"
dec hl			
ldi a,(hl)		
push bc			
ret			
cpl			
and $0f			
add a			
ld bc,$0b74		
add c			
ld c,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0xb57 > < b57 61 0B57 | 3001: jr nc, $01 >
.incbin "data/00_0B59.data"
dec hl			
ldi a,(hl)		
push bc			
ret			
ldi (hl),a		
.DB $18 $c7 ; < ['$18', '$c7'] > < 0xb5f > < b5f 61 0B5F | 18C7: jr $C7 >
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
.DB $18 $b4 ; < ['$18', '$b4'] > < 0xb72 > < b72 61 0B72 | 18B4: jr $B4 >
.incbin "data/00_0B74.data"
inc a			
ldi (hl),a		
inc a			
ldi (hl),a		
inc a			
ldi (hl),a		
inc a			
ldi (hl),a		
inc a			
ldi (hl),a		
inc a			
ldi (hl),a		
inc a			
ldi (hl),a		
inc a			
ldi (hl),a		
inc a			
ldi (hl),a		
inc a			
ldi (hl),a		
inc a			
ldi (hl),a		
inc a			
ldi (hl),a		
.DB $18 $90 ; < ['$18', '$90'] > < 0xb96 > < b96 61 0B96 | 1890: jr $90 >
rlabel_00_0B98:
bit 7,d			
.DB $20 $05 ; < ['$20', '$05'] > < 0xb9a > < b9a 61 0B9A | 2005: jr nz, $05 >
ld a,(de)		
cp $07			
.DB $20 $15 ; < ['$20', '$15'] > < 0xb9f > < b9f 61 0B9F | 2015: jr nz, $15 >
.incbin "data/00_0BA1.data"
ld a,$2d		
cp l			
.DB $20 $04 ; < ['$20', '$04'] > < 0xbb0 > < bb0 61 0BB0 | 2004: jr nz, $04 >
ld a,$db		
cp h			
ret z			
ld a,(de)		
inc de			
ld b,a			
cpl			
and $06			
.DB $28 $04 ; < ['$28', '$04'] > < 0xbbc > < bbc 61 0BBC | 2804: jr z, $04 >
ld (hl),b		
inc hl			
.DB $18 $eb ; < ['$18', '$eb'] > < 0xbc0 > < bc0 61 0BC0 | 18EB: jr $EB >
ld a,b			
swap a			
cpl			
and $1f			
ld bc,$0bd4		
add c			
ld c,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0xbcd > < bcd 61 0BCD | 3001: jr nc, $01 >
.incbin "data/00_0BCF.data"
dec hl			
ldi a,(hl)		
push bc			
ret			
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
.DB $18 $b6 ; < ['$18', '$b6'] > < 0xbf5 > < bf5 61 0BF5 | 18B6: jr $B6 >
rlabel_00_0BF7:
bit 7,d			
.DB $20 $12 ; < ['$20', '$12'] > < 0xbf9 > < bf9 61 0BF9 | 2012: jr nz, $12 >
ld a,(de)		
inc de			
rra			
ld b,a			
.DB $30 $1a ; < ['$30', '$1a'] > < 0xbff > < bff 61 0BFF | 301A: jr nc, $1A >
.incbin "data/00_0C01.data"
ld a,(de)		
inc de			
ld ($ff00+$8a),a	
ld c,$07		
srl b			
.DB $38 $09 ; < ['$38', '$09'] > < 0xc23 > < c23 61 0C23 | 3809: jr c, $09 >
xor a			
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
.DB $18 $12 ; < ['$18', '$12'] > < 0xc2c > < c2c 61 0C2C | 1812: jr $12 >
ld a,(de)		
inc de			
ldi (hl),a		
ld a,(de)		
inc de			
ldi (hl),a		
ld a,(de)		
inc de			
ldi (hl),a		
ld a,(de)		
inc de			
ldi (hl),a		
ld a,(de)		
inc de			
ldi (hl),a		
ld a,(de)		
inc de			
ldi (hl),a		
dec c			
.DB $20 $de ; < ['$20', '$de'] > < 0xc41 > < c41 61 0C41 | 20DE: jr nz, $DE >
ld a,($ff00+$8a)	
bit 7,a			
ret nz			
ld b,a			
ld c,$05		
ld a,$80		
ld ($ff00+$8a),a	
.DB $18 $d0 ; < ['$18', '$d0'] > < 0xc4f > < c4f 61 0C4F | 18D0: jr $D0 >
.incbin "data/00_0C51.data"
push af			
ld a,($4000)		
push af			
ld a,($c1b8)		
ld ($2000),a		
call $c1b5		
pop af			
ld ($2000),a		
pop af			
reti			
.incbin "data/00_0CE0.data"
rlabel_00_0CF4:
ld a,($caea)		
and a			
.DB $20 $04 ; < ['$20', '$04'] > < 0xcf8 > < cf8 01 0CF8 | 2004: jr nz, $04 >
call  rlabel_00_2F5C 
ret			
push de			
ld l,b			
ld h,$00		
add hl,hl		
add hl,hl		
add hl,hl		
add hl,hl		
add hl,hl		
ld d,$9c		
ld e,c			
add hl,de		
pop de			
ret			
rlabel_00_0D0D:
ld a,($cbf2)		
or a			
jp z,$0d25		
ld a,e			
and $07			
ld e,a			
ld a,$01		
ld ($ff00+$4f),a	
di			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0xd21 > < d21 01 0D21 | 20FA: jr nz, $FA >
ld (hl),e		
ei			
rlabel_00_0D25:
ld a,$00		
ld ($ff00+$4f),a	
di			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0xd2e > < d2e 01 0D2E | 20FA: jr nz, $FA >
ld (hl),d		
ei			
ret			
rlabel_00_0D33:
ld a,($cbf2)		
or a			
jp z,$0d4f		
ld a,e			
and $07			
ld e,a			
ld a,$01		
ld ($ff00+$4f),a	
di			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0xd47 > < d47 03 0D47 | 20FA: jr nz, $FA >
ld (hl),e		
ei			
ld a,$00		
ld ($ff00+$4f),a	
ret			
rlabel_00_0D50:
di			
ld ($cbd3),a		
ld a,($4000)		
push af			
ld a,($cbd3)		
ld ($2000),a		
ei			
ldi a,(hl)		
ld (de),a		
inc de			
dec bc			
ld a,b			
or c			
.DB $20 $f8 ; < ['$20', '$f8'] > < 0xd65 > < d65 88 0D65 | 20F8: jr nz, $F8 >
pop af			
ld ($2000),a		
ret			
rlabel_00_0D6C:
di			
ld ($cbd3),a		
ld a,($4000)		
push af			
ld a,($cbd3)		
ld ($2000),a		
ei			
ld a,(hl)		
ld (de),a		
pop af			
ld ($2000),a		
ld a,(de)		
ret			
rlabel_00_0D83:
di			
ld ($cbd3),a		
ld a,($4000)		
push af			
ld a,($cbd3)		
ld ($2000),a		
ei			
di			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0xd97 > < d97 88 0D97 | 20FA: jr nz, $FA >
ldi a,(hl)		
ld (de),a		
inc de			
ei			
dec bc			
ld a,b			
or c			
.DB $20 $f0 ; < ['$20', '$f0'] > < 0xda0 > < da0 88 0DA0 | 20F0: jr nz, $F0 >
pop af			
ld ($2000),a		
ret			
rlabel_00_0DA7:
di			
ld ($cbd3),a		
ld a,($4000)		
push af			
ld a,($cbd3)		
ld ($2000),a		
ei			
srl b			
rr c			
di			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0xdbf > < dbf 3D 0DBF | 20FA: jr nz, $FA >
ld a,$ff		
ld (de),a		
inc hl			
inc de			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0xdca > < dca 3D 0DCA | 20FA: jr nz, $FA >
ldi a,(hl)		
ld (de),a		
inc de			
ei			
dec bc			
ld a,b			
or c			
.DB $20 $e5 ; < ['$20', '$e5'] > < 0xdd3 > < dd3 3D 0DD3 | 20E5: jr nz, $E5 >
pop af			
ld ($2000),a		
ret			
rlabel_00_0DDA:
di			
ld ($cbd3),a		
ld a,($4000)		
push af			
ld a,($cbd3)		
ld ($2000),a		
ei			
di			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0xdee > < dee 3D 0DEE | 20FA: jr nz, $FA >
ldi a,(hl)		
cpl			
ld (de),a		
inc de			
ei			
dec bc			
ld a,b			
or c			
.DB $20 $ef ; < ['$20', '$ef'] > < 0xdf8 > < df8 3D 0DF8 | 20EF: jr nz, $EF >
pop af			
ld ($2000),a		
ret			
rlabel_00_0DFF:
di			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0xe04 > < e04 03 0E04 | 20FA: jr nz, $FA >
ldi a,(hl)		
ld (de),a		
inc de			
ei			
dec bc			
ld a,b			
or c			
.DB $20 $f0 ; < ['$20', '$f0'] > < 0xe0d > < e0d 03 0E0D | 20F0: jr nz, $F0 >
ret			
rlabel_00_0E10:
ld l,a			
ld h,$00		
sla l			
rl h			
sla l			
rl h			
sla l			
rl h			
ld bc,$4001		
add hl,bc		
ld bc,$0008		
ld a,$3c		
call  rlabel_00_0D50 
ret			
rlabel_00_0E2C:
di			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0xe31 > < e31 01 0E31 | 20FA: jr nz, $FA >
ld a,$80		
ld ($ff00+$68),a	
ei			
ld b,$40		
di			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0xe3f > < e3f 01 0E3F | 20FA: jr nz, $FA >
ldi a,(hl)		
ld ($ff00+$69),a	
ei			
dec b			
.DB $20 $f2 ; < ['$20', '$f2'] > < 0xe46 > < e46 01 0E46 | 20F2: jr nz, $F2 >
ret			
rlabel_00_0E49:
add a			
add a			
add a			
or $80			
ld b,a			
di			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0xe54 > < e54 03 0E54 | 20FA: jr nz, $FA >
ld a,b			
ld ($ff00+$68),a	
ei			
ld b,$08		
di			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0xe61 > < e61 03 0E61 | 20FA: jr nz, $FA >
ldi a,(hl)		
ld ($ff00+$69),a	
ei			
dec b			
.DB $20 $f2 ; < ['$20', '$f2'] > < 0xe68 > < e68 03 0E68 | 20F2: jr nz, $F2 >
ret			
rlabel_00_0E6B:
di			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0xe70 > < e70 01 0E70 | 20FA: jr nz, $FA >
ld a,$80		
ld ($ff00+$6a),a	
ei			
ld b,$40		
di			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0xe7e > < e7e 01 0E7E | 20FA: jr nz, $FA >
ldi a,(hl)		
ld ($ff00+$6b),a	
ei			
dec b			
.DB $20 $f2 ; < ['$20', '$f2'] > < 0xe85 > < e85 01 0E85 | 20F2: jr nz, $F2 >
ret			
rlabel_00_0E88:
add a			
add a			
add a			
or $80			
ld b,a			
di			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0xe93 > < e93 04 0E93 | 20FA: jr nz, $FA >
ld a,b			
ld ($ff00+$6a),a	
ei			
ld b,$08		
di			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0xea0 > < ea0 04 0EA0 | 20FA: jr nz, $FA >
ldi a,(hl)		
ld ($ff00+$6b),a	
ei			
dec b			
.DB $20 $f2 ; < ['$20', '$f2'] > < 0xea7 > < ea7 04 0EA7 | 20F2: jr nz, $F2 >
ret			
rlabel_00_0EAA:
ld hl,$c000		
add a			
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0xeb1 > < eb1 03 0EB1 | 3001: jr nc, $01 >
.incbin "data/00_0EB3.data"
ld a,b			
add a			
add a			
add a			
add $10			
ldi (hl),a		
ld a,c			
add a			
add a			
add a			
add $08			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ret			
rlabel_00_0EC7:
ld hl,$c000		
add a			
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0xece > < ece 03 0ECE | 3001: jr nc, $01 >
.incbin "data/00_0ED0.data"
ld a,b			
add $10			
ldi (hl),a		
ld a,c			
add $08			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ret			
rlabel_00_0EDE:
ld hl,$9800		
ld bc,$0400		
call  rlabel_00_0D0D 
inc hl			
dec bc			
ld a,b			
or c			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0xeeb > < eeb 01 0EEB | 20F7: jr nz, $F7 >
ret			
rlabel_00_0EEE:
ld a,($cbd9)		
and a			
.DB $20 $03 ; < ['$20', '$03'] > < 0xef2 > < ef2 01 0EF2 | 2003: jr nz, $03 >
call  rlabel_00_2707 
ld a,($ff00+$a4)	
ld ($cbd6),a		
ld a,($cccc)		
and a			
ret z			
cp $0f			
ret nc			
xor a			
ld ($cbd6),a		
ret			
rlabel_00_0F09:
push bc			
ld a,($cbda)		
swap a			
ld b,a			
ld a,($ff00+$04)	
add b			
ld ($cbda),a		
pop bc			
ret			
.incbin "data/00_0F18.data"
rlabel_00_0F23:
ld ($ff00+$b3),a	
ld a,$3d		
ld ($ff00+$b0),a	
ld a,$58		
ld ($ff00+$b1),a	
ld a,$05		
call  rlabel_00_0244 
ret			
rlabel_00_0F33:
push bc			
push de			
pop de			
pop bc			
ld ($ff00+$b3),a	
ld a,$3d		
ld ($ff00+$b0),a	
ld a,$58		
ld ($ff00+$b1),a	
ld a,$05		
call  rlabel_00_0244 
ret			
rlabel_00_0F47:
cpl			
and a			
.DB $28 $08 ; < ['$28', '$08'] > < 0xf49 > < f49 02 0F49 | 2808: jr z, $08 >
ld a,b			
ld ($cae5),a		
ld a,c			
ld ($cae6),a		
ld a,d			
ld ($cae8),a		
ld a,e			
ld ($cae9),a		
ldi a,(hl)		
cp $00			
.DB $20 $09 ; < ['$20', '$09'] > < 0xf5e > < f5e 02 0F5E | 2009: jr nz, $09 >
ld a,($cae8)		
ld d,a			
ld a,($cae9)		
ld e,a			
ret			
cp $01			
.DB $20 $07 ; < ['$20', '$07'] > < 0xf6b > < f6b 02 0F6B | 2007: jr nz, $07 >
inc b			
ld a,($cae6)		
ld c,a			
.DB $18 $e7 ; < ['$18', '$e7'] > < 0xf72 > < f72 03 0F72 | 18E7: jr $E7 >
cp $20			
.DB $20 $0f ; < ['$20', '$0f'] > < 0xf76 > < f76 02 0F76 | 200F: jr nz, $0F >
push hl			
ld d,$00		
ld e,$07		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
pop hl			
inc c			
.DB $18 $d4 ; < ['$18', '$d4'] > < 0xf85 > < f85 03 0F85 | 18D4: jr $D4 >
ld de,$4001		
cp $5e			
.DB $20 $06 ; < ['$20', '$06'] > < 0xf8c > < f8c 02 0F8C | 2006: jr nz, $06 >
ldi a,(hl)		
ld de,$5001		
.DB $18 $08 ; < ['$18', '$08'] > < 0xf92 > < f92 03 0F92 | 1808: jr $08 >
cp $5f			
.DB $20 $04 ; < ['$20', '$04'] > < 0xf96 > < f96 02 0F96 | 2004: jr nz, $04 >
ldi a,(hl)		
ld de,$6001		
push hl			
swap a			
ld h,a			
and $f0			
ld l,a			
ld a,h			
and $0f			
ld h,a			
add hl,de		
push hl			
ld de,$8800		
ld a,($cae8)		
xor $80			
swap a			
ld h,a			
and $f0			
ld l,a			
ld a,h			
and $0f			
ld h,a			
add hl,de		
ld d,h			
ld e,l			
pop hl			
push bc			
ld b,$3d		
call  rlabel_00_06DD 
pop bc			
ld a,($cae8)		
ld d,a			
ld a,($cae9)		
ld e,a			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
ld hl,$cae8		
inc (hl)		
inc c			
pop hl			
jp $0f5b		
.incbin "data/00_0FDD.data"
rlabel_00_0FDE:
ld a,c			
ld ($cae7),a		
ldi a,(hl)		
cp $00			
ret z			
cp $01			
.DB $20 $07 ; < ['$20', '$07'] > < 0xfe8 > < fe8 03 0FE8 | 2007: jr nz, $07 >
inc b			
ld a,($cae7)		
ld c,a			
.DB $18 $f1 ; < ['$18', '$f1'] > < 0xfef > < fef 03 0FEF | 18F1: jr $F1 >
cp $20			
.DB $20 $0d ; < ['$20', '$0d'] > < 0xff3 > < ff3 03 0FF3 | 200D: jr nz, $0D >
push hl			
ld d,$00		
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
pop hl			
inc c			
.DB $18 $e0 ; < ['$18', '$e0'] > < 0x1000 > < 1000 03 1000 | 18E0: jr $E0 >
ld de,$4001		
cp $5e			
.DB $20 $06 ; < ['$20', '$06'] > < 0x1007 > < 1007 03 1007 | 2006: jr nz, $06 >
ldi a,(hl)		
ld de,$5001		
.DB $18 $08 ; < ['$18', '$08'] > < 0x100d > < 100d 39 100D | 1808: jr $08 >
cp $5f			
.DB $20 $04 ; < ['$20', '$04'] > < 0x1011 > < 1011 03 1011 | 2004: jr nz, $04 >
ldi a,(hl)		
ld de,$6001		
push hl			
swap a			
ld h,a			
and $f0			
ld l,a			
ld a,h			
and $0f			
ld h,a			
add hl,de		
push hl			
ld a,($cae8)		
xor $80			
swap a			
ld h,a			
and $f0			
ld l,a			
ld a,h			
and $0f			
ld h,a			
ld de,$8800		
add hl,de		
ld e,l			
ld d,h			
pop hl			
push bc			
ld b,$3d		
call  rlabel_00_06DD 
pop bc			
ld a,($cae8)		
ld d,a			
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
ld hl,$cae8		
inc (hl)		
inc c			
pop hl			
.DB $18 $8f ; < ['$18', '$8f'] > < 0x1051 > < 1051 03 1051 | 188F: jr $8F >
.incbin "data/00_1053.data"
rlabel_00_1054:
ld a,c			
ld ($cae7),a		
ldi a,(hl)		
cp $00			
ret z			
cp $01			
.DB $20 $07 ; < ['$20', '$07'] > < 0x105e > < 105e 03 105E | 2007: jr nz, $07 >
inc b			
ld a,($cae7)		
ld c,a			
.DB $18 $f1 ; < ['$18', '$f1'] > < 0x1065 > < 1065 03 1065 | 18F1: jr $F1 >
cp $20			
.DB $20 $0d ; < ['$20', '$0d'] > < 0x1069 > < 1069 03 1069 | 200D: jr nz, $0D >
push hl			
ld d,$00		
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
pop hl			
inc c			
.DB $18 $e0 ; < ['$18', '$e0'] > < 0x1076 > < 1076 03 1076 | 18E0: jr $E0 >
ld de,$4001		
cp $5e			
.DB $20 $06 ; < ['$20', '$06'] > < 0x107d > < 107d 03 107D | 2006: jr nz, $06 >
ldi a,(hl)		
ld de,$5001		
.DB $18 $08 ; < ['$18', '$08'] > < 0x1083 > < 1083 03 1083 | 1808: jr $08 >
cp $5f			
.DB $20 $04 ; < ['$20', '$04'] > < 0x1087 > < 1087 03 1087 | 2004: jr nz, $04 >
.incbin "data/00_1089.data"
push hl			
swap a			
ld h,a			
and $f0			
ld l,a			
ld a,h			
and $0f			
ld h,a			
add hl,de		
push hl			
ld a,($cae8)		
xor $80			
swap a			
ld h,a			
and $f0			
ld l,a			
ld a,h			
and $0f			
ld h,a			
ld de,$8800		
add hl,de		
ld d,h			
ld e,l			
pop hl			
push bc			
ld bc,$0010		
ld a,$3d		
call  rlabel_00_0DA7 
pop bc			
ld a,($cae8)		
ld d,a			
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
ld hl,$cae8		
inc (hl)		
inc c			
pop hl			
.DB $18 $8c ; < ['$18', '$8c'] > < 0x10ca > < 10ca 03 10CA | 188C: jr $8C >
.incbin "data/00_10CC.data"
rlabel_00_10CD:
ld a,d			
ld ($cae8),a		
ldi a,(hl)		
cp $00			
.DB $20 $05 ; < ['$20', '$05'] > < 0x10d4 > < 10d4 0D 10D4 | 2005: jr nz, $05 >
ld a,($cae8)		
ld d,a			
ret			
cp $01			
.DB $28 $f2 ; < ['$28', '$f2'] > < 0x10dd > < 10dd 0D 10DD | 28F2: jr z, $F2 >
cp $20			
.DB $28 $ee ; < ['$28', '$ee'] > < 0x10e1 > < 10e1 0D 10E1 | 28EE: jr z, $EE >
ld de,$4001		
cp $5e			
.DB $20 $06 ; < ['$20', '$06'] > < 0x10e8 > < 10e8 0D 10E8 | 2006: jr nz, $06 >
ldi a,(hl)		
ld de,$5001		
.DB $18 $08 ; < ['$18', '$08'] > < 0x10ee > < 10ee 05 10EE | 1808: jr $08 >
cp $5f			
.DB $20 $04 ; < ['$20', '$04'] > < 0x10f2 > < 10f2 0D 10F2 | 2004: jr nz, $04 >
ldi a,(hl)		
ld de,$6001		
push hl			
swap a			
ld h,a			
and $f0			
ld l,a			
ld a,h			
and $0f			
ld h,a			
add hl,de		
push hl			
ld de,$8800		
ld a,($cae8)		
xor $80			
swap a			
ld h,a			
and $f0			
ld l,a			
ld a,h			
and $0f			
ld h,a			
add hl,de		
ld d,h			
ld e,l			
pop hl			
ld b,$3d		
call  rlabel_00_06DD 
ld hl,$cae8		
inc (hl)		
pop hl			
.DB $18 $aa ; < ['$18', '$aa'] > < 0x1125 > < 1125 0D 1125 | 18AA: jr $AA >
.incbin "data/00_1127.data"
rlabel_00_1128:
ld d,$00		
ld a,c			
cp e			
ret nc			
push de			
ld e,$07		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
pop de			
inc c			
.DB $18 $f0 ; < ['$18', '$f0'] > < 0x1138 > < 1138 03 1138 | 18F0: jr $F0 >
.incbin "data/00_113A.data"
rlabel_00_113B:
ld d,$00		
ld a,c			
cp e			
ret nc			
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
inc c			
.DB $18 $f4 ; < ['$18', '$f4'] > < 0x1147 > < 1147 39 1147 | 18F4: jr $F4 >
.incbin "data/00_1149.data"
rlabel_00_1164:
xor a			
ld c,a			
ldi a,(hl)		
inc hl			
and a			
ret z			
cp $5e			
.DB $28 $05 ; < ['$28', '$05'] > < 0x116c > < 116c 02 116C | 2805: jr z, $05 >
cp $5f			
.DB $28 $01 ; < ['$28', '$01'] > < 0x1170 > < 1170 02 1170 | 2801: jr z, $01 >
dec hl			
inc c			
.DB $18 $f0 ; < ['$18', '$f0'] > < 0x1174 > < 1174 02 1174 | 18F0: jr $F0 >
rlabel_00_1176:
xor $80			
swap a			
ld d,a			
and $f0			
ld e,a			
ld a,d			
and $0f			
add $88			
ld d,a			
ret			
rlabel_00_1185:
swap a			
ld d,a			
and $f0			
ld e,a			
ld a,d			
and $0f			
add $80			
ld d,a			
ret			
.incbin "data/00_1192.data"
rlabel_00_11A6:
xor a			
ld ($ff00+$a0),a	
ld ($ff00+$a1),a	
ld ($ff00+$42),a	
ld ($ff00+$43),a	
ret			
rlabel_00_11B0:
ld h,d			
ld l,e			
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld d,a			
ldi a,(hl)		
ld e,a			
rlabel_00_11B8:
ld hl,$cbb6		
rlabel_00_11BB:
ld b,$08		
ld a,$ff		
ldi (hl),a		
dec b			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x11c1 > < 11c1 04 11C1 | 20FA: jr nz, $FA >
dec hl			
xor a			
ld b,a			
ld a,c			
and a			
.DB $28 $38 ; < ['$28', '$38'] > < 0x11c8 > < 11c8 04 11C8 | 2838: jr z, $38 >
cp $98			
.DB $38 $28 ; < ['$38', '$28'] > < 0x11cc > < 11cc 04 11CC | 3828: jr c, $28 >
.DB $20 $0c ; < ['$20', '$0c'] > < 0x11ce > < 11ce 04 11CE | 200C: jr nz, $0C >
.incbin "data/00_11D0.data"
ld a,c			
xor $ff			
ld c,a			
ld a,d			
xor $ff			
ld d,a			
ld a,e			
xor $ff			
add $01			
ld e,a			
ld a,d			
adc $00			
ld d,a			
ld a,c			
adc $00			
ld c,a			
ld b,$01		
.DB $18 $d0 ; < ['$18', '$d0'] > < 0x11f4 > < 11f4 04 11F4 | 18D0: jr $D0 >
.incbin "data/00_11F6.data"
ld a,d			
and a			
.DB $28 $08 ; < ['$28', '$08'] > < 0x1204 > < 1204 04 1204 | 2808: jr z, $08 >
ld a,$0a		
call  rlabel_00_039F 
ldd (hl),a		
.DB $18 $f4 ; < ['$18', '$f4'] > < 0x120c > < 120c 04 120C | 18F4: jr $F4 >
ld a,e			
cp $0a			
.DB $38 $08 ; < ['$38', '$08'] > < 0x1211 > < 1211 04 1211 | 3808: jr c, $08 >
ld a,$0a		
call  rlabel_00_039F 
ldd (hl),a		
.DB $18 $f3 ; < ['$18', '$f3'] > < 0x1219 > < 1219 04 1219 | 18F3: jr $F3 >
ldd (hl),a		
ld a,b			
and a			
ret z			
ld a,$fe		
ldd (hl),a		
ret			
rlabel_00_1223:
ld a,$08		
rlabel_00_1225:
ld hl,$cbb6		
rlabel_00_1228:
push af			
dec a			
add c			
ld c,a			
ld a,$08		
push af			
ld a,(hl)		
cp $ff			
.DB $20 $05 ; < ['$20', '$05'] > < 0x1232 > < 1232 04 1232 | 2005: jr nz, $05 >
ld a,$00		
ld (hl),a		
.DB $18 $0f ; < ['$18', '$0f'] > < 0x1237 > < 1237 04 1237 | 180F: jr $0F >
cp $fe			
.DB $20 $05 ; < ['$20', '$05'] > < 0x123b > < 123b 04 123B | 2005: jr nz, $05 >
ld a,$0f		
ld (hl),a		
.DB $18 $06 ; < ['$18', '$06'] > < 0x1240 > < 1240 04 1240 | 1806: jr $06 >
cp $0a			
.DB $30 $02 ; < ['$30', '$02'] > < 0x1244 > < 1244 04 1244 | 3002: jr nc, $02 >
add d			
ld (hl),a		
inc hl			
pop af			
dec a			
.DB $20 $e1 ; < ['$20', '$e1'] > < 0x124b > < 124b 04 124B | 20E1: jr nz, $E1 >
pop af			
dec hl			
push af			
ld d,(hl)		
push hl			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
pop hl			
dec c			
dec hl			
pop af			
dec a			
.DB $20 $f0 ; < ['$20', '$f0'] > < 0x125d > < 125d 04 125D | 20F0: jr nz, $F0 >
ret			
rlabel_00_1260:
ld ($ff00+$b3),a	
ld a,$d4		
ld ($ff00+$b0),a	
ld a,$58		
ld ($ff00+$b1),a	
ld a,$05		
call  rlabel_00_0244 
ret			
rlabel_00_1270:
ld ($ff00+$b3),a	
ld a,$ea		
ld ($ff00+$b0),a	
ld a,$58		
ld ($ff00+$b1),a	
ld a,$05		
call  rlabel_00_0244 
ret			
rlabel_00_1280:
ld b,$05		
ld hl,$58ff		
rst $28			
ret			
rlabel_00_1287:
ld ($ff00+$b3),a	
ld a,$19		
ld ($ff00+$b0),a	
ld a,$59		
ld ($ff00+$b1),a	
ld a,$05		
call  rlabel_00_0244 
ret			
rlabel_00_1297:
push af			
push hl			
ld hl,$ff8c		
ld a,(hl)		
ld (hl),b		
ld b,a			
inc hl			
ld a,(hl)		
ld (hl),c		
ld c,a			
inc hl			
ld a,(hl)		
ld (hl),d		
ld d,a			
inc hl			
ld a,(hl)		
ld (hl),e		
ld e,a			
pop hl			
push de			
ld d,h			
ld e,l			
ld hl,$ff90		
ld a,(hl)		
ld (hl),d		
ld d,a			
inc hl			
ld a,(hl)		
ld (hl),e		
ld e,a			
ld h,d			
ld l,e			
pop de			
ld a,($ff00+$8b)	
ld ($ff00+$8a),a	
pop af			
ld ($ff00+$8b),a	
ld a,($ff00+$8a)	
ret			
rlabel_00_12C6:
ld a,h			
cp d			
.DB $38 $0a ; < ['$38', '$0a'] > < 0x12c8 > < 12c8 03 12C8 | 380A: jr c, $0A >
.DB $20 $0b ; < ['$20', '$0b'] > < 0x12ca > < 12ca 03 12CA | 200B: jr nz, $0B >
ld a,l			
cp e			
.DB $38 $04 ; < ['$38', '$04'] > < 0x12ce > < 12ce 03 12CE | 3804: jr c, $04 >
.DB $20 $05 ; < ['$20', '$05'] > < 0x12d0 > < 12d0 03 12D0 | 2005: jr nz, $05 >
xor a			
ret			
ld a,$ff		
ret			
ld a,$01		
ret			
rlabel_00_12DA:
ld a,($cafb)		
rlabel_00_12DD:
ld hl,$c34c		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x12e2 > < 12e2 01 12E2 | 3001: jr nc, $01 >
.incbin "data/00_12E4.data"
ld a,(hl)		
ld ($cb87),a		
ret			
rlabel_00_12EA:
ld a,($cafb)		
rlabel_00_12ED:
push de			
ld h,a			
ld l,$00		
ld de,$cfd5		
add hl,de		
pop de			
add hl,de		
ret			
.incbin "data/00_12F8.data"
rlabel_00_1311:
ld b,$05		
ld hl,$542f		
rst $28			
ret			
rlabel_00_1318:
ld b,$05		
ld hl,$5441		
rst $28			
ret			
.incbin "data/00_131F.data"
rlabel_00_1326:
ld a,($cad8)		
and a			
ret z			
rlabel_00_132B:
ld b,$05		
ld hl,$54e0		
rst $28			
ret			
rlabel_00_1332:
ld b,$05		
ld hl,$54ed		
rst $28			
ret			
rlabel_00_1339:
ld b,$05		
ld hl,$5506		
rst $28			
ret			
rlabel_00_1340:
ld b,$05		
ld hl,$5515		
rst $28			
ret			
rlabel_00_1347:
ld b,$05		
ld hl,$559a		
rst $28			
ret			
rlabel_00_134E:
call  rlabel_00_0815 
ld a,$c0		
ld b,$00		
call  rlabel_00_083E 
xor a			
ld b,$06		
call  rlabel_00_083E 
xor a			
ld c,a			
ld d,a			
ld e,a			
ld hl,$447d		
ld b,$06		
call  rlabel_00_0028 
ret			
rlabel_00_136B:
call  rlabel_00_1375 
ld b,$06		
ld hl,$4441		
rst $28			
ret			
rlabel_00_1375:
xor a			
push af			
call  rlabel_00_134E 
pop af			
inc a			
cp $04			
.DB $38 $f6 ; < ['$38', '$f6'] > < 0x137e > < 137e 01 137E | 38F6: jr c, $F6 >
ret			
rlabel_00_1381:
push af			
push bc			
ld a,$60		
ld b,$06		
call  rlabel_00_083E 
pop bc			
ld a,b			
ld b,$00		
call  rlabel_00_083E 
ld a,c			
ld b,$02		
call  rlabel_00_083E 
pop af			
ld c,a			
ld b,$06		
ld hl,$447d		
rst $28			
ret			
rlabel_00_13A0:
push af			
ld hl,$c9c8		
add a			
add a			
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x13a9 > < 13a9 04 13A9 | 3001: jr nc, $01 >
.incbin "data/00_13AB.data"
pop af			
call  rlabel_00_0E88 
ret			
rlabel_00_13B1:
di			
ld hl,$c1a4		
ldi a,(hl)		
ld ($cbde),a		
ldi a,(hl)		
ld ($cbdf),a		
ld a,($ff00+$ff)	
ld ($cbdb),a		
ld a,($ff00+$9c)	
ld ($cbe5),a		
ld a,($ff00+$41)	
and $fc			
ld ($cbdc),a		
ld a,($ff00+$45)	
ld ($cbdd),a		
ld a,($ff00+$9a)	
ld ($cbe6),a		
ld hl,$c1a1		
ldi a,(hl)		
ld ($cbe0),a		
ldi a,(hl)		
ld ($cbe1),a		
ei			
ret			
rlabel_00_13E5:
di			
ld a,($cbde)		
ld e,a			
ld a,($cbdf)		
ld d,a			
ld hl,$c1a3		
call  rlabel_00_0231 
ld a,($cbe5)		
ld ($ff00+$9c),a	
ld a,($cbdb)		
ld ($ff00+$ff),a	
ld a,($cbdc)		
ld ($ff00+$41),a	
ld a,($cbe6)		
ld ($ff00+$9a),a	
ld a,($cbdd)		
ld ($ff00+$45),a	
ld a,($cbe0)		
ld e,a			
ld a,($cbe1)		
ld d,a			
ld hl,$c1a0		
call  rlabel_00_0231 
ei			
ret			
.incbin "data/00_141D.data"
push af			
push de			
push hl			
ld hl,$d5d5		
xor a			
ld d,a			
ld a,($ff00+$44)	
ld e,a			
add hl,de		
add hl,de		
ld a,$86		
ld ($ff00+$68),a	
ldi a,(hl)		
ld ($ff00+$69),a	
ldi a,(hl)		
ld ($ff00+$69),a	
pop hl			
pop de			
pop af			
reti			
push af			
push bc			
push de			
push hl			
ld hl,$d5d5		
ldi a,(hl)		
and a			
.DB $28 $14 ; < ['$28', '$14'] > < 0x1458 > < 1458 05 1458 | 2814: jr z, $14 >
ldi a,(hl)		
and a			
.DB $28 $10 ; < ['$28', '$10'] > < 0x145c > < 145c 05 145C | 2810: jr z, $10 >
ld b,a			
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
call  rlabel_00_0612 
.DB $18 $03 ; < ['$18', '$03'] > < 0x1466 > < 1466 05 1466 | 1803: jr $03 >
call  rlabel_00_0616 
dec b			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x146c > < 146c 05 146C | 20FA: jr nz, $FA >
pop hl			
pop de			
pop bc			
pop af			
reti			
push af			
push bc			
push de			
push hl			
ld a,$c0		
ld ($ff00+$4b),a	
.DB $18 $d6 ; < ['$18', '$d6'] > < 0x147b > < 147b 05 147B | 18D6: jr $D6 >
push af			
push bc			
push de			
push hl			
call $ff80		
ld hl,$ff9a		
ldi a,(hl)		
ld ($ff00+$45),a	
ldi a,(hl)		
ld ($ff00+$40),a	
ldi a,(hl)		
ld ($ff00+$ff),a	
ldi a,(hl)		
ld ($ff00+$47),a	
ldi a,(hl)		
ld ($ff00+$48),a	
ldi a,(hl)		
ld ($ff00+$49),a	
ldi a,(hl)		
ld ($ff00+$42),a	
ldi a,(hl)		
ld ($ff00+$43),a	
ldi a,(hl)		
ld ($ff00+$4a),a	
ldi a,(hl)		
ld ($ff00+$4b),a	
ld hl,$ffa6		
inc (hl)		
ld a,($cbe7)		
and a			
.DB $20 $06 ; < ['$20', '$06'] > < 0x14ad > < 14ad 3D 14AD | 2006: jr nz, $06 >
call  rlabel_00_02E7 
jp z,$020a		
ld c,$a7		
ld a,($ff00+c)		
and a			
.DB $20 $1c ; < ['$20', '$1c'] > < 0x14b9 > < 14b9 3D 14B9 | 201C: jr nz, $1C >
inc a			
ld ($ff00+c),a		
ld a,($cbd3)		
push af			
ei			
call  rlabel_00_3085 
ld hl,$cbe2		
ldi a,(hl)		
ld b,a			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
call  rlabel_00_0028 
pop af			
ld ($cbd3),a		
call  rlabel_00_0261 
di			
xor a			
ld ($ff00+$a7),a	
pop hl			
pop de			
pop bc			
pop af			
reti			
.incbin "data/00_14E0.data"
rlabel_00_14E5:
di			
ld hl,$cbe2		
ld (hl),b		
inc hl			
ld (hl),e		
inc hl			
ld (hl),d		
ld hl,$c1a0		
ld de,$147d		
call  rlabel_00_0231 
ei			
ret			
.incbin "data/00_14F9.data"
rlabel_00_1AE5:
call  rlabel_00_1AF0 
push bc			
push de			
call  rlabel_00_1BF3 
pop de			
pop bc			
ret			
rlabel_00_1AF0:
ld a,$01		
ld ($cbef),a		
halt			
nop			
ld a,($cbef)		
or a			
.DB $20 $f8 ; < ['$20', '$f8'] > < 0x1afb > < 1afb 09 1AFB | 20F8: jr nz, $F8 >
xor a			
ld ($cbf0),a		
ret			
.incbin "data/00_1B02.data"
rlabel_00_1B0E:
ld a,($ff00+$41)	
and $03			
cp $01			
.DB $20 $f8 ; < ['$20', '$f8'] > < 0x1b14 > < 1b14 09 1B14 | 20F8: jr nz, $F8 >
ret			
rlabel_00_1B17:
push af			
di			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x1b1d > < 1b1d 04 1B1D | 20FA: jr nz, $FA >
pop af			
ret			
rlabel_00_1B21:
ld a,($ff00+$41)	
and $03			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x1b25 > < 1b25 06 1B25 | 20FA: jr nz, $FA >
ret			
push af			
push bc			
push de			
push hl			
ld a,($4000)		
ld ($cbee),a		
ld a,$09		
ld ($2000),a		
ld hl,$cbef		
ld a,(hl)		
or a			
.DB $28 $18 ; < ['$28', '$18'] > < 0x1b3c > < 1b3c 09 1B3C | 2818: jr z, $18 >
ld (hl),$00		
call $ff80		
call  rlabel_00_02C4 
ld a,($cad7)		
or a			
call nz,$1347		
ld a,($cced)		
or a			
call nz,$4f23		
.DB $18 $04 ; < ['$18', '$04'] > < 0x1b54 > < 1b54 09 1B54 | 1804: jr $04 >
ld hl,$cbf0		
inc (hl)		
ld a,($cce5)		
or a			
.DB $28 $36 ; < ['$28', '$36'] > < 0x1b5e > < 1b5e 09 1B5E | 2836: jr z, $36 >
.incbin "data/00_1B60.data"
ld a,($cbee)		
ld ($2000),a		
ld c,$a7		
ld a,($ff00+c)		
or a			
.DB $20 $1c ; < ['$20', '$1c'] > < 0x1ba0 > < 1ba0 3D 1BA0 | 201C: jr nz, $1C >
inc a			
ld ($ff00+c),a		
ei			
call  rlabel_00_3085 
ld a,($ccfc)		
or a			
.DB $28 $0c ; < ['$28', '$0c'] > < 0x1bac > < 1bac 3D 1BAC | 280C: jr z, $0C >
.incbin "data/00_1BAE.data"
ld hl,$ffa6		
inc (hl)		
di			
xor a			
ld ($ff00+$a7),a	
pop hl			
pop de			
pop bc			
pop af			
reti			
.incbin "data/00_1BC7.data"
rlabel_00_1BF3:
ld c,$00		
ld ($ff00+$b3),a	
ld a,$4f		
ld ($ff00+$b0),a	
ld a,$7d		
ld ($ff00+$b1),a	
ld a,$3a		
call  rlabel_00_0244 
ret			
rlabel_00_1C05:
push bc			
ld a,c			
ld bc,$0002		
call  rlabel_00_06FD 
ld bc,$0010		
xor a			
call  rlabel_00_2AD8 
pop bc			
dec b			
.DB $20 $ed ; < ['$20', '$ed'] > < 0x1c16 > < 1c16 39 1C16 | 20ED: jr nz, $ED >
ret			
rlabel_00_1C19:
ld c,(hl)		
ld a,(de)		
ldi (hl),a		
ld a,c			
ld (de),a		
inc de			
dec b			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x1c20 > < 1c20 04 1C20 | 20F7: jr nz, $F7 >
ret			
rlabel_00_1C23:
ld ($4000),a		
ld a,$0a		
ld ($0000),a		
ld a,$01		
ld ($cbf7),a		
xor a			
ld ($ccdb),a		
ld ($ccdc),a		
ld a,(de)		
ldi (hl),a		
push hl			
ld hl,$ccdb		
ldi a,(hl)		
ld l,(hl)		
ld h,a			
ld a,(de)		
call  rlabel_00_0462 
ld a,h			
ld ($ccdb),a		
ld a,l			
ld ($ccdc),a		
pop hl			
inc de			
dec bc			
ld a,b			
or c			
.DB $20 $e4 ; < ['$20', '$e4'] > < 0x1c51 > < 1c51 01 1C51 | 20E4: jr nz, $E4 >
ld a,($ccdb)		
ldi (hl),a		
ld a,($ccdc)		
ldi (hl),a		
xor a			
ld ($0000),a		
ld ($cbf7),a		
ret			
rlabel_00_1C63:
ld ($4000),a		
ld a,$0a		
ld ($0000),a		
xor a			
ld ($ccdd),a		
ld ($ccde),a		
ld a,(de)		
ldi (hl),a		
push hl			
ld hl,$ccdd		
ldi a,(hl)		
ld l,(hl)		
ld h,a			
ld a,(de)		
call  rlabel_00_0462 
ld a,h			
ld ($ccdd),a		
ld a,l			
ld ($ccde),a		
pop hl			
inc de			
dec bc			
ld a,b			
or c			
.DB $20 $e4 ; < ['$20', '$e4'] > < 0x1c8c > < 1c8c 01 1C8C | 20E4: jr nz, $E4 >
ld a,(de)		
ld ($ccdf),a		
inc de			
ld a,(de)		
ld ($cce0),a		
xor a			
ld ($0000),a		
ld hl,$ccdf		
ld a,($ccdd)		
cp (hl)			
.DB $20 $09 ; < ['$20', '$09'] > < 0x1ca2 > < 1ca2 01 1CA2 | 2009: jr nz, $09 >
inc hl			
ld a,($ccde)		
cp (hl)			
.DB $20 $02 ; < ['$20', '$02'] > < 0x1ca9 > < 1ca9 01 1CA9 | 2002: jr nz, $02 >
xor a			
ret			
.incbin "data/00_1CAD.data"
rlabel_00_1CE2:
ld a,($cbf2)		
or a			
jp z,$1cea		
push hl			
ld e,d			
xor a			
ld ($ff00+$4f),a	
call  rlabel_00_1B17 
ld a,b			
ldi (hl),a		
ei			
dec d			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x1cf5 > < 1cf5 04 1CF5 | 20F7: jr nz, $F7 >
ld a,($cbf2)		
or a			
jp z,$1d0c		
pop hl			
ld a,$01		
ld ($ff00+$4f),a	
call  rlabel_00_1B17 
ld a,c			
ldi (hl),a		
ei			
dec e			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x1d0a > < 1d0a 04 1D0A | 20F7: jr nz, $F7 >
ret			
rlabel_00_1D0D:
ld a,($cbf2)		
or a			
jp z,$1d15		
push hl			
ld e,d			
xor a			
ld ($ff00+$4f),a	
call  rlabel_00_1B17 
ld a,b			
ld (hl),a		
ei			
ld a,$20		
add l			
.DB $30 $01 ; < ['$30', '$01'] > < 0x1d22 > < 1d22 04 1D22 | 3001: jr nc, $01 >
inc h			
ld l,a			
dec d			
.DB $20 $f0 ; < ['$20', '$f0'] > < 0x1d27 > < 1d27 04 1D27 | 20F0: jr nz, $F0 >
ld a,($cbf2)		
or a			
jp z,$1d45		
pop hl			
ld a,$01		
ld ($ff00+$4f),a	
call  rlabel_00_1B17 
ld a,c			
ld (hl),a		
ei			
ld a,$20		
add l			
.DB $30 $01 ; < ['$30', '$01'] > < 0x1d3e > < 1d3e 04 1D3E | 3001: jr nc, $01 >
inc h			
ld l,a			
dec e			
.DB $20 $f0 ; < ['$20', '$f0'] > < 0x1d43 > < 1d43 04 1D43 | 20F0: jr nz, $F0 >
ret			
rlabel_00_1D46:
ld h,$00		
ld l,b			
add hl,hl		
add hl,hl		
ld a,c			
ld b,h			
ld c,l			
add hl,hl		
add hl,hl		
add hl,bc		
ld b,$00		
ld c,a			
add hl,bc		
ret			
rlabel_00_1D56:
ld de,$9800		
ld hl,$d6f5		
ld b,$12		
ld c,$14		
xor a			
ld ($ff00+$4f),a	
call  rlabel_00_1B17 
ld a,(de)		
ldi (hl),a		
ei			
ld a,$01		
ld ($ff00+$4f),a	
call  rlabel_00_1B17 
ld a,(de)		
ldi (hl),a		
ei			
inc de			
dec c			
.DB $20 $e9 ; < ['$20', '$e9'] > < 0x1d75 > < 1d75 39 1D75 | 20E9: jr nz, $E9 >
ld a,$0c		
call  rlabel_00_045D 
dec b			
.DB $20 $df ; < ['$20', '$df'] > < 0x1d7d > < 1d7d 39 1D7D | 20DF: jr nz, $DF >
xor a			
ld ($ff00+$4f),a	
ret			
rlabel_00_1D83:
ld hl,$d6f5		
ld de,$d9c5		
ld b,$12		
xor a			
ld ($ff00+$4f),a	
call  rlabel_00_0654 
call  rlabel_00_0658 
call  rlabel_00_0616 
dec b			
.DB $20 $f4 ; < ['$20', '$f4'] > < 0x1d98 > < 1d98 04 1D98 | 20F4: jr nz, $F4 >
ld de,$9e40		
ld b,$12		
call  rlabel_00_0654 
call  rlabel_00_0658 
call  rlabel_00_0616 
dec b			
.DB $20 $f4 ; < ['$20', '$f4'] > < 0x1da9 > < 1da9 04 1DA9 | 20F4: jr nz, $F4 >
ret			
push bc			
call  rlabel_00_1D46 
add hl,hl		
ld bc,$d6f5		
add hl,bc		
ld d,h			
ld e,l			
pop bc			
call  rlabel_00_2F50 
ld a,($ff00+$8a)	
ld b,a			
ld a,$14		
sub b			
add a			
ld ($ff00+$8c),a	
ld a,$20		
sub b			
ld ($ff00+$8d),a	
ld a,($ff00+$8b)	
ld b,a			
ld a,($ff00+$8a)	
ld c,a			
call  rlabel_00_1B17 
ld a,(de)		
ld (hl),a		
ei			
inc de			
ld a,($cbf2)		
or a			
jp z,$1dea		
ld a,$01		
ld ($ff00+$4f),a	
call  rlabel_00_1B17 
ld a,(de)		
ld (hl),a		
ei			
xor a			
ld ($ff00+$4f),a	
inc de			
inc hl			
dec c			
.DB $20 $e0 ; < ['$20', '$e0'] > < 0x1ded > < 1ded 00 1DED | 20E0: jr nz, $E0 >
ld a,($ff00+$8c)	
call  rlabel_00_045D 
ld a,($ff00+$8d)	
call  rlabel_00_0462 
dec b			
.DB $20 $d0 ; < ['$20', '$d0'] > < 0x1dfa > < 1dfa 00 1DFA | 20D0: jr nz, $D0 >
ret			
rlabel_00_1DFD:
ld de,$d6f5		
ld hl,$d9c5		
ld b,$12		
xor a			
ld ($ff00+$4f),a	
call  rlabel_00_0654 
call  rlabel_00_0658 
call  rlabel_00_0616 
dec b			
.DB $20 $f4 ; < ['$20', '$f4'] > < 0x1e12 > < 1e12 04 1E12 | 20F4: jr nz, $F4 >
ld hl,$9e40		
ld b,$12		
call  rlabel_00_0654 
call  rlabel_00_0658 
call  rlabel_00_0616 
dec b			
.DB $20 $f4 ; < ['$20', '$f4'] > < 0x1e23 > < 1e23 04 1E23 | 20F4: jr nz, $F4 >
ret			
.incbin "data/00_1E26.data"
rlabel_00_1E43:
ld a,l			
ld ($cc74),a		
ld a,h			
ld ($cc75),a		
ld a,e			
ld ($cc76),a		
ld a,d			
ld ($cc77),a		
ld a,c			
ld ($cc78),a		
rlabel_00_1E57:
ld b,$1e		
call  rlabel_00_2CDF 
ld a,($cc97)		
or a			
.DB $20 $0c ; < ['$20', '$0c'] > < 0x1e60 > < 1e60 04 1E60 | 200C: jr nz, $0C >
ld a,($cc95)		
or a			
.DB $28 $03 ; < ['$28', '$03'] > < 0x1e66 > < 1e66 39 1E66 | 2803: jr z, $03 >
call  rlabel_00_1D83 
call  rlabel_00_1D56 
ld a,($cc74)		
inc a			
ld ($cc79),a		
ld a,($cc75)		
inc a			
ld ($cc7a),a		
ld a,($cc75)		
ld b,a			
ld a,($cc74)		
ld c,a			
call  rlabel_00_2F50 
ld a,($cc96)		
or a			
.DB $28 $04 ; < ['$28', '$04'] > < 0x1e8b > < 1e8b 04 1E8B | 2804: jr z, $04 >
.incbin "data/00_1E8D.data"
ld b,$10		
ld c,$07		
ld d,$01		
call  rlabel_00_1CE2 
ld a,$01		
ld ($cc7d),a		
ld a,$80		
ld ($cc7e),a		
xor a			
ld ($ff00+$4f),a	
ret			
rlabel_00_1EA8:
ld a,($cc7e)		
and $80			
.DB $28 $06 ; < ['$28', '$06'] > < 0x1ead > < 1ead 04 1EAD | 2806: jr z, $06 >
xor a			
ld ($cc7e),a		
.DB $18 $65 ; < ['$18', '$65'] > < 0x1eb3 > < 1eb3 04 1EB3 | 1865: jr $65 >
ld a,($cc7e)		
and $04			
.DB $20 $2b ; < ['$20', '$2b'] > < 0x1eba > < 1eba 04 1EBA | 202B: jr nz, $2B >
ld a,($cc75)		
ld b,a			
ld a,($cc7b)		
ld c,a			
call  rlabel_00_2F50 
ld bc,$0007		
ld a,($cc75)		
ld d,a			
ld a,($cc7c)		
sub d			
ld d,a			
call  rlabel_00_1D0D 
ld a,($cc7b)		
inc a			
ld ($cc7b),a		
ld a,($cc79)		
ld b,a			
ld a,($cc7b)		
cp b			
.DB $38 $d5 ; < ['$38', '$d5'] > < 0x1ee5 > < 1ee5 04 1EE5 | 38D5: jr c, $D5 >
ld a,($cc7e)		
and $08			
.DB $20 $2c ; < ['$20', '$2c'] > < 0x1eec > < 1eec 04 1EEC | 202C: jr nz, $2C >
ld a,($cc7c)		
ld b,a			
ld a,($cc74)		
ld c,a			
call  rlabel_00_2F50 
ld bc,$0007		
ld a,($cc74)		
ld d,a			
ld a,($cc7b)		
sub d			
ld d,a			
inc d			
call  rlabel_00_1CE2 
ld a,($cc7c)		
inc a			
ld ($cc7c),a		
ld a,($cc7a)		
ld b,a			
ld a,($cc7c)		
cp b			
.DB $38 $d4 ; < ['$38', '$d4'] > < 0x1f18 > < 1f18 04 1F18 | 38D4: jr c, $D4 >
ld a,($cc75)		
ld b,a			
ld a,($cc74)		
ld c,a			
call  rlabel_00_2F50 
inc hl			
ld bc,$1107		
ld a,($cc74)		
ld d,a			
ld a,($cc79)		
sub d			
ld d,a			
call  rlabel_00_1CE2 
ld a,($cc75)		
ld b,a			
ld a,($cc79)		
ld c,a			
call  rlabel_00_2F50 
ld bc,$1207		
ld d,$01		
call  rlabel_00_1CE2 
ld a,($cc7e)		
and $02			
.DB $20 $1f ; < ['$20', '$1f'] > < 0x1f4d > < 1f4d 04 1F4D | 201F: jr nz, $1F >
ld a,($cc75)		
ld b,a			
ld a,($cc74)		
ld c,a			
call  rlabel_00_2F50 
ld a,$20		
call  rlabel_00_0462 
ld bc,$1707		
ld a,($cc75)		
ld d,a			
ld a,($cc7a)		
sub d			
ld d,a			
call  rlabel_00_1D0D 
ld a,($cc75)		
ld b,a			
ld a,($cc79)		
ld c,a			
call  rlabel_00_2F50 
ld a,$20		
call  rlabel_00_0462 
ld bc,$1307		
ld a,($cc75)		
ld d,a			
ld a,($cc7a)		
sub d			
ld d,a			
call  rlabel_00_1D0D 
ld a,($cc7a)		
ld b,a			
ld a,($cc74)		
ld c,a			
call  rlabel_00_2F50 
inc hl			
ld bc,$1507		
ld a,($cc74)		
ld d,a			
ld a,($cc79)		
sub d			
ld d,a			
call  rlabel_00_1CE2 
ld a,($cc7e)		
and $02			
.DB $20 $13 ; < ['$20', '$13'] > < 0x1fad > < 1fad 04 1FAD | 2013: jr nz, $13 >
ld a,($cc7a)		
ld b,a			
ld a,($cc74)		
ld c,a			
call  rlabel_00_2F50 
ld bc,$1607		
ld d,$01		
call  rlabel_00_1CE2 
ld a,($cc7a)		
ld b,a			
ld a,($cc79)		
ld c,a			
call  rlabel_00_2F50 
ld bc,$1407		
ld d,$01		
call  rlabel_00_1CE2 
ld a,($cc7e)		
and $04			
.DB $28 $08 ; < ['$28', '$08'] > < 0x1fda > < 1fda 04 1FDA | 2808: jr z, $08 >
ld a,($cc7e)		
or $01			
ld ($cc7e),a		
ld a,($cc7e)		
and $08			
.DB $28 $08 ; < ['$28', '$08'] > < 0x1fe9 > < 1fe9 04 1FE9 | 2808: jr z, $08 >
ld a,($cc7e)		
or $02			
ld ($cc7e),a		
ld a,($cc79)		
ld ($cc7b),a		
ld a,($cc7a)		
ld ($cc7c),a		
ld c,$01		
ld a,($cc76)		
ld b,a			
ld a,($cc79)		
cp b			
.DB $30 $10 ; < ['$30', '$10'] > < 0x2009 > < 2009 04 2009 | 3010: jr nc, $10 >
ld d,a			
ld a,($cc78)		
add d			
cp b			
.DB $38 $03 ; < ['$38', '$03'] > < 0x2011 > < 2011 04 2011 | 3803: jr c, $03 >
ld a,($cc76)		
ld ($cc79),a		
ld c,$00		
ld a,($cc77)		
ld b,a			
ld a,($cc7a)		
cp b			
.DB $30 $10 ; < ['$30', '$10'] > < 0x2023 > < 2023 04 2023 | 3010: jr nc, $10 >
ld d,a			
ld a,($cc78)		
add d			
cp b			
.DB $38 $03 ; < ['$38', '$03'] > < 0x202b > < 202b 04 202B | 3803: jr c, $03 >
ld a,($cc77)		
ld ($cc7a),a		
ld c,$00		
ld a,($cc79)		
ld b,a			
ld a,($cc7b)		
cp b			
.DB $20 $08 ; < ['$20', '$08'] > < 0x203d > < 203d 04 203D | 2008: jr nz, $08 >
ld a,($cc7e)		
or $04			
ld ($cc7e),a		
ld a,($cc7a)		
ld b,a			
ld a,($cc7c)		
cp b			
.DB $20 $08 ; < ['$20', '$08'] > < 0x204f > < 204f 04 204F | 2008: jr nz, $08 >
ld a,($cc7e)		
or $08			
ld ($cc7e),a		
ld a,c			
or a			
jp z,$2078		
ld a,($cc95)		
inc a			
ld ($cc95),a		
cp $01			
.DB $20 $0b ; < ['$20', '$0b'] > < 0x2067 > < 2067 04 2067 | 200B: jr nz, $0B >
ld de,$cc74		
ld hl,$cc7f		
ld c,$0b		
call  rlabel_00_04CB 
xor a			
ld ($cc7d),a		
xor a			
ld ($ff00+$4f),a	
ret			
rlabel_00_207C:
ld b,$1d		
call  rlabel_00_2CDF 
call  rlabel_00_2214 
ld a,$01		
ld ($cc7d),a		
xor a			
ld ($ff00+$4f),a	
ret			
rlabel_00_208D:
ld a,($cc75)		
ld b,a			
ld a,($cc79)		
ld c,a			
call  rlabel_00_2F50 
push hl			
pop de			
ld a,($cc79)		
ld c,a			
ld a,($cc75)		
ld b,a			
call  rlabel_00_1D46 
add hl,hl		
ld bc,$d6f5		
add hl,bc		
ld a,($cc75)		
ld b,a			
ld a,($cc7a)		
sub b			
ld b,a			
inc b			
xor a			
ld ($ff00+$4f),a	
call  rlabel_00_1B17 
ldi a,(hl)		
ld (de),a		
ei			
ld a,($cbf2)		
or a			
jp z,$20ce		
ld a,$01		
ld ($ff00+$4f),a	
call  rlabel_00_1B17 
ld a,(hl)		
ld (de),a		
ei			
ld a,$20		
call  rlabel_00_045D 
ld a,$27		
call  rlabel_00_0462 
dec b			
.DB $20 $d9 ; < ['$20', '$d9'] > < 0x20d9 > < 20d9 39 20D9 | 20D9: jr nz, $D9 >
ld a,($cc7a)		
ld b,a			
ld a,($cc74)		
ld c,a			
call  rlabel_00_2F50 
push hl			
pop de			
ld a,($cc74)		
ld c,a			
ld a,($cc7a)		
ld b,a			
call  rlabel_00_1D46 
add hl,hl		
ld bc,$d6f5		
add hl,bc		
ld a,($cc74)		
ld b,a			
ld a,($cc79)		
sub b			
ld b,a			
xor a			
ld ($ff00+$4f),a	
call  rlabel_00_1B17 
ldi a,(hl)		
ld (de),a		
ei			
ld a,($cbf2)		
or a			
jp z,$211b		
ld a,$01		
ld ($ff00+$4f),a	
call  rlabel_00_1B17 
ld a,(hl)		
ld (de),a		
ei			
inc hl			
inc de			
dec b			
.DB $20 $e1 ; < ['$20', '$e1'] > < 0x211e > < 211e 39 211E | 20E1: jr nz, $E1 >
ld c,$00		
ld a,($cc74)		
ld b,a			
ld a,($cc79)		
inc b			
cp b			
.DB $28 $08 ; < ['$28', '$08'] > < 0x212b > < 212b 39 212B | 2808: jr z, $08 >
.DB $38 $06 ; < ['$38', '$06'] > < 0x212d > < 212d 39 212D | 3806: jr c, $06 >
dec a			
ld ($cc79),a		
ld c,$01		
ld a,($cc75)		
ld b,a			
ld a,($cc7a)		
inc b			
cp b			
.DB $28 $08 ; < ['$28', '$08'] > < 0x213e > < 213e 39 213E | 2808: jr z, $08 >
.DB $38 $06 ; < ['$38', '$06'] > < 0x2140 > < 2140 39 2140 | 3806: jr c, $06 >
dec a			
ld ($cc7a),a		
ld c,$01		
ld a,c			
or a			
jp z,$21be		
ld a,($cc75)		
ld b,a			
ld a,($cc79)		
ld c,a			
call  rlabel_00_2F50 
ld bc,$1307		
ld a,($cc75)		
ld d,a			
ld a,($cc7a)		
sub d			
ld d,a			
call  rlabel_00_1D0D 
ld a,($cc75)		
ld b,a			
ld a,($cc79)		
ld c,a			
call  rlabel_00_2F50 
ld bc,$1207		
ld d,$01		
call  rlabel_00_1CE2 
ld a,($cc7a)		
ld b,a			
ld a,($cc74)		
ld c,a			
call  rlabel_00_2F50 
ld bc,$1507		
ld a,($cc74)		
ld d,a			
ld a,($cc79)		
sub d			
ld d,a			
call  rlabel_00_1CE2 
ld a,($cc7a)		
ld b,a			
ld a,($cc74)		
ld c,a			
call  rlabel_00_2F50 
ld bc,$1607		
ld d,$01		
call  rlabel_00_1CE2 
ld a,($cc7a)		
ld b,a			
ld a,($cc79)		
ld c,a			
call  rlabel_00_2F50 
ld bc,$1407		
ld d,$01		
call  rlabel_00_1CE2 
xor a			
ld ($ff00+$4f),a	
ret			
ld a,($cc75)		
ld b,a			
ld a,($cc74)		
ld c,a			
call  rlabel_00_2F50 
push hl			
pop de			
ld a,($cc74)		
ld c,a			
ld a,($cc75)		
ld b,a			
call  rlabel_00_1D46 
add hl,hl		
ld bc,$d6f5		
add hl,bc		
xor a			
ld ($ff00+$4f),a	
call  rlabel_00_1B17 
ldi a,(hl)		
ld (de),a		
ei			
ld a,$01		
ld ($ff00+$4f),a	
call  rlabel_00_1B17 
ld a,(hl)		
ld (de),a		
ei			
ld a,($cc97)		
or a			
.DB $20 $19 ; < ['$20', '$19'] > < 0x21f2 > < 21f2 39 21F2 | 2019: jr nz, $19 >
ld a,($cc95)		
dec a			
ld ($cc95),a		
cp $00			
.DB $28 $0e ; < ['$28', '$0e'] > < 0x21fd > < 21fd 39 21FD | 280E: jr z, $0E >
call  rlabel_00_1DFD 
ld de,$cc7f		
ld hl,$cc74		
ld c,$0b		
call  rlabel_00_04CB 
xor a			
ld ($cc7d),a		
ld ($ff00+$4f),a	
ret			
rlabel_00_2214:
ld a,($cc75)		
ld b,a			
ld a,($cc74)		
ld c,a			
inc b			
inc c			
call  rlabel_00_2F50 
ld a,($cc75)		
ld b,a			
ld a,($cc77)		
sub b			
ld b,a			
dec b			
push hl			
pop de			
ld a,($cc74)		
ld c,a			
ld a,($cc76)		
sub c			
ld c,a			
dec c			
xor a			
ld ($ff00+$4f),a	
call  rlabel_00_1B17 
ld (de),a		
ei			
inc de			
dec c			
.DB $20 $f4 ; < ['$20', '$f4'] > < 0x2241 > < 2241 39 2241 | 20F4: jr nz, $F4 >
ld a,$20		
call  rlabel_00_0462 
dec b			
.DB $20 $e0 ; < ['$20', '$e0'] > < 0x2249 > < 2249 39 2249 | 20E0: jr nz, $E0 >
ret			
rlabel_00_224C:
ld a,l			
ld ($cc8a),a		
ld a,h			
ld ($cc8b),a		
ld a,e			
ld ($cc8c),a		
ld a,d			
ld ($cc8d),a		
ld a,($cc8b)		
ld b,a			
ld a,($cc8a)		
ld c,a			
call  rlabel_00_2F50 
ld a,($cc96)		
or a			
.DB $28 $04 ; < ['$28', '$04'] > < 0x226b > < 226b 0D 226B | 2804: jr z, $04 >
.incbin "data/00_226D.data"
ld b,$10		
ld c,$07		
ld d,$01		
call  rlabel_00_1CE2 
ld a,($cc8b)		
ld b,a			
ld a,($cc8c)		
ld c,a			
call  rlabel_00_2F50 
ld bc,$1207		
ld d,$01		
call  rlabel_00_1CE2 
ld a,($cc8a)		
ld c,a			
inc c			
ld a,($cc8b)		
ld b,a			
ld a,c			
ld c,a			
call  rlabel_00_2F50 
ld bc,$1107		
ld a,($cc8a)		
ld d,a			
ld a,($cc8c)		
sub d			
dec a			
ld d,a			
call  rlabel_00_1CE2 
ld a,($cc8b)		
ld c,a			
inc c			
ld a,c			
ld b,a			
ld a,($cc8a)		
ld c,a			
call  rlabel_00_2F50 
ld bc,$1707		
ld a,($cc8b)		
ld d,a			
ld a,($cc8d)		
sub d			
dec a			
ld d,a			
call  rlabel_00_1D0D 
ld a,($cc8b)		
ld c,a			
inc c			
ld a,c			
ld b,a			
ld a,($cc8c)		
ld c,a			
call  rlabel_00_2F50 
ld bc,$1307		
ld a,($cc8b)		
ld d,a			
ld a,($cc8d)		
sub d			
dec a			
ld d,a			
call  rlabel_00_1D0D 
ld a,($cc8d)		
ld b,a			
ld a,($cc8a)		
ld c,a			
call  rlabel_00_2F50 
ld bc,$1607		
ld d,$01		
call  rlabel_00_1CE2 
ld a,($cc8d)		
ld b,a			
ld a,($cc8c)		
ld c,a			
call  rlabel_00_2F50 
ld bc,$1407		
ld d,$01		
call  rlabel_00_1CE2 
ld a,($cc8a)		
ld c,a			
inc c			
ld a,($cc8d)		
ld b,a			
ld a,c			
ld c,a			
call  rlabel_00_2F50 
ld bc,$1507		
ld a,($cc8a)		
ld d,a			
ld a,($cc8c)		
sub d			
dec a			
ld d,a			
call  rlabel_00_1CE2 
ld a,($cc8b)		
ld b,a			
ld a,($cc8a)		
ld c,a			
inc b			
inc c			
call  rlabel_00_2F50 
ld a,($cc8b)		
ld b,a			
ld a,($cc8d)		
sub b			
ld b,a			
dec b			
push hl			
pop de			
ld a,($cc8a)		
ld c,a			
ld a,($cc8c)		
sub c			
ld c,a			
dec c			
ld a,($cbf2)		
or a			
jp z,$2360		
ld a,$01		
ld ($ff00+$4f),a	
call  rlabel_00_1B17 
ld a,$07		
ld (de),a		
ei			
xor a			
ld ($ff00+$4f),a	
call  rlabel_00_1B17 
ld (de),a		
ei			
inc de			
dec c			
.DB $20 $e2 ; < ['$20', '$e2'] > < 0x236a > < 236a 0D 236A | 20E2: jr nz, $E2 >
ld a,$20		
call  rlabel_00_0462 
dec b			
.DB $20 $ce ; < ['$20', '$ce'] > < 0x2372 > < 2372 0D 2372 | 20CE: jr nz, $CE >
ret			
rlabel_00_2375:
xor a			
ld ($ccbf),a		
.DB $18 $05 ; < ['$18', '$05'] > < 0x2379 > < 2379 39 2379 | 1805: jr $05 >
rlabel_00_237B:
ld a,$01		
ld ($ccbf),a		
ld a,h			
ld ($ccb9),a		
ld a,l			
ld ($ccba),a		
ld a,d			
ld ($ccbb),a		
ld a,e			
ld ($ccbc),a		
ld a,b			
ld ($ccbd),a		
ld a,c			
ld ($ccbe),a		
ld a,($cad9)		
cp $02			
.DB $28 $05 ; < ['$28', '$05'] > < 0x239d > < 239d 39 239D | 2805: jr z, $05 >
ld c,$04		
call  rlabel_00_1332 
ld a,($cca1)		
or a			
.DB $28 $1d ; < ['$28', '$1d'] > < 0x23a8 > < 23a8 39 23A8 | 281D: jr z, $1D >
call  rlabel_00_24E2 
call  rlabel_00_1EA8 
call  rlabel_00_24F4 
ld a,($cca1)		
or a			
.DB $20 $0e ; < ['$20', '$0e'] > < 0x23b7 > < 23b7 39 23B7 | 200E: jr nz, $0E >
ld hl,$ccb9		
ldi a,(hl)		
ld l,(hl)		
ld h,a			
or l			
.DB $28 $05 ; < ['$28', '$05'] > < 0x23c0 > < 23c0 39 23C0 | 2805: jr z, $05 >
ld de,$23c7		
push de			
jp hl			
ld a,($ccac)		
or a			
.DB $28 $1d ; < ['$28', '$1d'] > < 0x23cb > < 23cb 39 23CB | 281D: jr z, $1D >
call  rlabel_00_24E8 
call  rlabel_00_1EA8 
call  rlabel_00_24FA 
ld a,($ccac)		
or a			
.DB $20 $0e ; < ['$20', '$0e'] > < 0x23da > < 23da 39 23DA | 200E: jr nz, $0E >
ld hl,$ccbb		
ldi a,(hl)		
ld l,(hl)		
ld h,a			
or l			
.DB $28 $05 ; < ['$28', '$05'] > < 0x23e3 > < 23e3 39 23E3 | 2805: jr z, $05 >
ld de,$23ea		
push de			
jp hl			
ld a,($ccb7)		
or a			
.DB $28 $1d ; < ['$28', '$1d'] > < 0x23ee > < 23ee 39 23EE | 281D: jr z, $1D >
call  rlabel_00_24EE 
call  rlabel_00_1EA8 
call  rlabel_00_2500 
ld a,($ccb7)		
or a			
.DB $20 $0e ; < ['$20', '$0e'] > < 0x23fd > < 23fd 04 23FD | 200E: jr nz, $0E >
ld hl,$ccbd		
ldi a,(hl)		
ld l,(hl)		
ld h,a			
or l			
.DB $28 $05 ; < ['$28', '$05'] > < 0x2406 > < 2406 04 2406 | 2805: jr z, $05 >
.incbin "data/00_2408.data"
ld a,($cad7)		
or a			
.DB $28 $03 ; < ['$28', '$03'] > < 0x2411 > < 2411 39 2411 | 2803: jr z, $03 >
call  rlabel_00_1340 
ld a,($ccbf)		
or a			
.DB $20 $0e ; < ['$20', '$0e'] > < 0x241a > < 241a 39 241A | 200E: jr nz, $0E >
call  rlabel_00_027C 
ld a,($cad7)		
or a			
.DB $28 $08 ; < ['$28', '$08'] > < 0x2423 > < 2423 39 2423 | 2808: jr z, $08 >
call  rlabel_00_1347 
.DB $18 $03 ; < ['$18', '$03'] > < 0x2428 > < 2428 39 2428 | 1803: jr $03 >
call  rlabel_00_1AE5 
ld a,($cca1)		
ld b,a			
ld a,($ccac)		
ld c,a			
ld a,($ccb7)		
ld d,a			
ld a,($cad7)		
or b			
or c			
or d			
jp nz,$23a4		
ret			
.incbin "data/00_2443.data"
ld a,$01		
ld ($ccbf),a		
ld a,b			
ld ($ccc0),a		
ld a,($ccc0)		
bit 0,a			
.DB $28 $09 ; < ['$28', '$09'] > < 0x2457 > < 2457 09 2457 | 2809: jr z, $09 >
call  rlabel_00_24E2 
call  rlabel_00_207C 
call  rlabel_00_24F4 
ld a,($ccc0)		
bit 1,a			
.DB $28 $09 ; < ['$28', '$09'] > < 0x2467 > < 2467 09 2467 | 2809: jr z, $09 >
call  rlabel_00_24E8 
call  rlabel_00_207C 
call  rlabel_00_24FA 
ld a,($ccc0)		
bit 2,a			
.DB $28 $09 ; < ['$28', '$09'] > < 0x2477 > < 2477 09 2477 | 2809: jr z, $09 >
.incbin "data/00_2479.data"
ld a,($ccbf)		
or a			
.DB $20 $05 ; < ['$20', '$05'] > < 0x2486 > < 2486 09 2486 | 2005: jr nz, $05 >
.incbin "data/00_2488.data"
call  rlabel_00_1AE5 
ld a,($ccc0)		
bit 0,a			
.DB $28 $0f ; < ['$28', '$0f'] > < 0x2495 > < 2495 09 2495 | 280F: jr z, $0F >
ld a,($cca1)		
or a			
.DB $28 $09 ; < ['$28', '$09'] > < 0x249b > < 249b 09 249B | 2809: jr z, $09 >
call  rlabel_00_24E2 
call  rlabel_00_208D 
call  rlabel_00_24F4 
ld a,($ccc0)		
bit 1,a			
.DB $28 $0f ; < ['$28', '$0f'] > < 0x24ab > < 24ab 09 24AB | 280F: jr z, $0F >
ld a,($ccac)		
or a			
.DB $28 $09 ; < ['$28', '$09'] > < 0x24b1 > < 24b1 09 24B1 | 2809: jr z, $09 >
call  rlabel_00_24E8 
call  rlabel_00_208D 
call  rlabel_00_24FA 
ld a,($ccc0)		
bit 2,a			
.DB $28 $0f ; < ['$28', '$0f'] > < 0x24c1 > < 24c1 09 24C1 | 280F: jr z, $0F >
.incbin "data/00_24C3.data"
ld a,($cca1)		
ld c,a			
ld a,($ccac)		
ld b,a			
ld a,($ccb7)		
or b			
or c			
.DB $20 $a1 ; < ['$20', '$a1'] > < 0x24df > < 24df 09 24DF | 20A1: jr nz, $A1 >
ret			
rlabel_00_24E2:
ld de,$cc98		
jp $2506		
rlabel_00_24E8:
ld de,$cca3		
jp $2506		
rlabel_00_24EE:
ld de,$ccae		
jp $2506		
rlabel_00_24F4:
ld hl,$cc98		
jp $250e		
rlabel_00_24FA:
ld hl,$cca3		
jp $250e		
rlabel_00_2500:
ld hl,$ccae		
jp $250e		
ld hl,$cc74		
ld c,$0b		
jp $04cb		
ld de,$cc74		
ld c,$0b		
jp $04cb		
rlabel_00_2516:
ld hl,$cc2e		
ld de,$cc1b		
ld b,$13		
jp $1c19		
rlabel_00_2521:
ld hl,$cc2e		
ld de,$cc1b		
jp $2550		
rlabel_00_252A:
ld hl,$cc1b		
ld de,$cc2e		
jp $2550		
.incbin "data/00_2533.data"
ld c,$13		
jp $04cb		
rlabel_00_2555:
call  rlabel_00_26D5 
rlabel_00_2558:
ld hl,$2555		
rlabel_00_255B:
xor a			
ld ($ff00+$8a),a	
push hl			
ld a,($cc1f)		
call  rlabel_00_0462 
ld d,(hl)		
pop hl			
ld a,($cccd)		
and $03			
jp z,$2577		
ld b,a			
ld a,($cc2d)		
or b			
ld ($cc2d),a		
ld a,($cc2b)		
or a			
.DB $20 $1b ; < ['$20', '$1b'] > < 0x257b > < 257b 03 257B | 201B: jr nz, $1B >
ld a,($cc20)		
or a			
.DB $20 $15 ; < ['$20', '$15'] > < 0x2581 > < 2581 03 2581 | 2015: jr nz, $15 >
ld a,($cc2d)		
or a			
.DB $28 $0f ; < ['$28', '$0f'] > < 0x2587 > < 2587 03 2587 | 280F: jr z, $0F >
ld b,a			
ld a,($cccd)		
or b			
ld ($cccd),a		
xor a			
ld ($cc2d),a		
jp $2679		
ld a,($cccd)		
and $fc			
ld ($cccd),a		
ld a,($cc20)		
or a			
jp nz,$2679		
ld a,($cccd)		
and $40			
jp z,$2601		
ld a,($cc1e)		
cp $0e			
.DB $20 $08 ; < ['$20', '$08'] > < 0x25b4 > < 25b4 39 25B4 | 2008: jr nz, $08 >
ld a,($cc1f)		
cp $05			
jp z,$2645		
ld a,($cc23)		
or a			
.DB $28 $0d ; < ['$28', '$0d'] > < 0x25c2 > < 25c2 39 25C2 | 280D: jr z, $0D >
ld a,($cc1f)		
or a			
.DB $20 $07 ; < ['$20', '$07'] > < 0x25c8 > < 25c8 03 25C8 | 2007: jr nz, $07 >
.incbin "data/00_25CA.data"
ld a,$10		
call  rlabel_00_2CCC 
ld a,($cc1f)		
or a			
jp nz,$25ee		
ld a,($cc1b)		
ld ($cc1f),a		
add a			
ld ($cc21),a		
add a			
add a			
ld ($cc20),a		
.DB $18 $7c ; < ['$18', '$7c'] > < 0x25ec > < 25ec 03 25EC | 187C: jr $7C >
ld a,$f8		
ld ($cc20),a		
ld a,$02		
ld ($cc21),a		
ld a,($cc1f)		
dec a			
ld ($cc1f),a		
.DB $18 $69 ; < ['$18', '$69'] > < 0x25ff > < 25ff 39 25FF | 1869: jr $69 >
ld a,($cccd)		
and $80			
jp z,$2679		
ld a,($cc1e)		
cp $0e			
.DB $20 $10 ; < ['$20', '$10'] > < 0x260e > < 260e 39 260E | 2010: jr nz, $10 >
.incbin "data/00_2610.data"
ld a,($cc23)		
or a			
.DB $28 $10 ; < ['$28', '$10'] > < 0x2624 > < 2624 39 2624 | 2810: jr z, $10 >
ld a,($cc1b)		
ld b,a			
ld a,($cc1f)		
cp b			
.DB $20 $06 ; < ['$20', '$06'] > < 0x262e > < 262e 03 262E | 2006: jr nz, $06 >
.incbin "data/00_2630.data"
ld a,$10		
call  rlabel_00_2CCC 
ld a,($cc1b)		
ld b,a			
ld a,($cc1f)		
cp b			
.DB $20 $14 ; < ['$20', '$14'] > < 0x2643 > < 2643 39 2643 | 2014: jr nz, $14 >
xor a			
ld ($cc1f),a		
ld a,($cc1b)		
add a			
ld ($cc21),a		
add a			
add a			
cpl			
inc a			
ld ($cc20),a		
.DB $18 $11 ; < ['$18', '$11'] > < 0x2657 > < 2657 04 2657 | 1811: jr $11 >
ld a,$08		
ld ($cc20),a		
ld a,$02		
ld ($cc21),a		
ld a,($cc1f)		
inc a			
ld ($cc1f),a		
ld a,($cc1f)		
call  rlabel_00_0462 
ld a,(hl)		
sub d			
sra a			
sra a			
ld ($cc27),a		
ld a,($cc20)		
or a			
.DB $28 $4e ; < ['$28', '$4e'] > < 0x267d > < 267d 03 267D | 284E: jr z, $4E >
ld a,($cc27)		
ld b,a			
ld a,($cc28)		
add b			
ld ($cc28),a		
ld a,($cc21)		
ld c,a			
ld a,($cc22)		
ld d,a			
inc d			
ld a,c			
dec d			
.DB $28 $03 ; < ['$28', '$03'] > < 0x2695 > < 2695 39 2695 | 2803: jr z, $03 >
add a			
.DB $18 $fa ; < ['$18', '$fa'] > < 0x2698 > < 2698 05 2698 | 18FA: jr $FA >
ld b,a			
ld a,($cc20)		
cp $80			
.DB $38 $10 ; < ['$38', '$10'] > < 0x26a0 > < 26a0 39 26A0 | 3810: jr c, $10 >
ld a,($cc1d)		
sub b			
ld ($cc1d),a		
ld a,($cc20)		
add c			
ld ($cc20),a		
.DB $18 $0e ; < ['$18', '$0e'] > < 0x26b0 > < 26b0 39 26B0 | 180E: jr $0E >
ld a,($cc1d)		
add b			
ld ($cc1d),a		
ld a,($cc20)		
sub c			
ld ($cc20),a		
ld a,($cc20)		
or a			
.DB $20 $07 ; < ['$20', '$07'] > < 0x26c4 > < 26c4 39 26C4 | 2007: jr nz, $07 >
ld a,$01		
ld ($cc2a),a		
.DB $18 $04 ; < ['$18', '$04'] > < 0x26cb > < 26cb 39 26CB | 1804: jr $04 >
xor a			
ld ($cc2a),a		
ld a,($cc1f)		
ret			
rlabel_00_26D5:
ld hl,$c000		
ld a,($cc24)		
cp $ff			
ret z			
add a			
add a			
call  rlabel_00_0462 
ld a,($cc1d)		
add $10			
ld b,a			
ldi (hl),a		
ld a,($cc1c)		
add $08			
ld c,a			
ldi (hl),a		
ld a,($cc25)		
ldi (hl),a		
ld d,a			
ld a,($cc26)		
ldi (hl),a		
ld e,a			
ld a,b			
ldi (hl),a		
ld a,c			
add $08			
ldi (hl),a		
ld a,d			
add $02			
ldi (hl),a		
ld (hl),e		
ret			
rlabel_00_2707:
ld a,($ff00+$a4)	
or a			
.DB $28 $27 ; < ['$28', '$27'] > < 0x270a > < 270a 01 270A | 2827: jr z, $27 >
ld a,($ff00+$a4)	
and $f0			
ld b,a			
ld a,($ccca)		
cp b			
.DB $20 $18 ; < ['$20', '$18'] > < 0x2715 > < 2715 05 2715 | 2018: jr nz, $18 >
ld a,($cccc)		
ld c,a			
ld a,($cccb)		
ld b,a			
ld a,($ff00+$a6)	
sub b			
add c			
ld ($cccc),a		
.DB $30 $05 ; < ['$30', '$05'] > < 0x2726 > < 2726 05 2726 | 3005: jr nc, $05 >
ld a,$ff		
ld ($cccc),a		
.DB $18 $04 ; < ['$18', '$04'] > < 0x272d > < 272d 05 272D | 1804: jr $04 >
xor a			
ld ($cccc),a		
ld a,($ff00+$a5)	
and $0f			
ld ($cccd),a		
ld a,($cccc)		
or a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x273e > < 273e 01 273E | 2807: jr z, $07 >
ld a,($cccc)		
cp $0f			
.DB $38 $0c ; < ['$38', '$0c'] > < 0x2745 > < 2745 05 2745 | 380C: jr c, $0C >
ld a,($cccd)		
ld b,a			
ld a,($ff00+$a4)	
and $f0			
or b			
ld ($cccd),a		
ld a,($ff00+$a4)	
ld ($ccca),a		
ld a,($ff00+$a6)	
ld ($cccb),a		
ret			
rlabel_00_275E:
ld a,($4000)		
ld e,a			
rlabel_00_2762:
ld a,($4000)		
push af			
ld a,e			
ld ($2000),a		
ld a,d			
add a			
add a			
ld de,$c000		
call  rlabel_00_045D 
ld a,b			
add $10			
ld b,a			
ld a,c			
add $08			
ld c,a			
ld a,(hl)		
cp $7f			
.DB $28 $2b ; < ['$28', '$2b'] > < 0x277e > < 277e 39 277E | 282B: jr z, $2B >
ld a,e			
cp $a0			
.DB $30 $26 ; < ['$30', '$26'] > < 0x2783 > < 2783 39 2783 | 3026: jr nc, $26 >
ldi a,(hl)		
add b			
ld (de),a		
inc de			
ldi a,(hl)		
add c			
ld (de),a		
inc de			
push bc			
ld a,($cd45)		
ld b,a			
ldi a,(hl)		
add b			
ld (de),a		
inc de			
ld a,($cd46)		
ld b,a			
ldi a,(hl)		
add b			
ld (de),a		
inc de			
pop bc			
ld a,($cd81)		
inc a			
ld ($cd81),a		
ld a,(hl)		
cp $7f			
.DB $20 $d5 ; < ['$20', '$d5'] > < 0x27a9 > < 27a9 39 27A9 | 20D5: jr nz, $D5 >
pop af			
ld ($2000),a		
xor a			
ld ($cd45),a		
ret			
rlabel_00_27B4:
ld a,($ff00+$8a)	
ld ($cd42),a		
ld a,($ff00+$8b)	
ld ($cd43),a		
ld a,($ff00+$8c)	
ld ($cd44),a		
ld a,d			
ld ($ff00+$8a),a	
ld a,e			
ld ($ff00+$8b),a	
push hl			
push bc			
push bc			
ld a,($ff00+$8a)	
ld b,a			
ld a,$20		
sub b			
pop bc			
ld c,a			
ld a,($ff00+$8b)	
ld e,a			
ld a,($ff00+$8a)	
ld d,a			
call  rlabel_00_1B17 
ld a,b			
ldi (hl),a		
ei			
ld a,($cd82)		
xor $01			
add b			
ld b,a			
dec d			
.DB $20 $f0 ; < ['$20', '$f0'] > < 0x27e8 > < 27e8 B0 27E8 | 20F0: jr nz, $F0 >
ld a,c			
call  rlabel_00_0462 
dec e			
.DB $20 $e6 ; < ['$20', '$e6'] > < 0x27ef > < 27ef B0 27EF | 20E6: jr nz, $E6 >
ld a,c			
pop bc			
pop hl			
ld b,a			
ld a,($cd83)		
or a			
.DB $20 $24 ; < ['$20', '$24'] > < 0x27f9 > < 27f9 B0 27F9 | 2024: jr nz, $24 >
ld a,($cbf2)		
or a			
jp z,$281f		
ld a,$01		
ld ($ff00+$4f),a	
ld a,($ff00+$8b)	
ld e,a			
ld a,($ff00+$8a)	
ld d,a			
call  rlabel_00_1B17 
ld a,c			
ldi (hl),a		
ei			
dec d			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x2813 > < 2813 B0 2813 | 20F7: jr nz, $F7 >
ld a,b			
call  rlabel_00_0462 
dec e			
.DB $20 $ed ; < ['$20', '$ed'] > < 0x281a > < 281a B0 281A | 20ED: jr nz, $ED >
xor a			
ld ($ff00+$4f),a	
ld a,($cd42)		
ld ($ff00+$8a),a	
ld a,($cd43)		
ld ($ff00+$8b),a	
ld a,($cd44)		
ld ($ff00+$8c),a	
xor a			
ld ($cd82),a		
ld ($cd83),a		
ret			
rlabel_00_2836:
or a			
ret z			
push de			
push af			
call  rlabel_00_0F09 
pop de			
ld e,a			
call  rlabel_00_03F7 
ld a,d			
pop de			
ret			
.incbin "data/00_2845.data"
push hl			
ld hl,$ff92		
ld c,$07		
ld a,$20		
call  rlabel_00_04E3 
pop hl			
ld a,$98		
ld c,a			
ld b,$07		
ld a,$0a		
call  rlabel_00_03BA 
ld h,a			
ld a,($ff00+$99)	
add h			
ld ($ff00+c),a		
dec c			
ld a,e			
or d			
or l			
.DB $28 $03 ; < ['$28', '$03'] > < 0x2871 > < 2871 0D 2871 | 2803: jr z, $03 >
.incbin "data/00_2873.data"
ld a,$00		
ld ($ff00+$99),a	
ret			
.incbin "data/00_287B.data"
rlabel_00_287D:
ld l,$00		
ld a,$30		
ld ($ff00+$99),a	
jp $2852		
.incbin "data/00_2886.data"
rlabel_00_289B:
ld ($cd52),a		
ld h,$00		
ld l,a			
add hl,hl		
add hl,hl		
add hl,hl		
add hl,hl		
ld de,$8000		
add hl,de		
ld d,h			
ld e,l			
ld hl,$7061		
ld bc,$0008		
ld a,$3d		
call  rlabel_00_06FD 
ld a,$01		
ld ($cd99),a		
xor a			
ld ($cd98),a		
xor a			
ld ($cd48),a		
ld ($cd50),a		
ld ($cd51),a		
ld a,($cd4c)		
ld h,a			
ld a,($cd4d)		
ld l,a			
ld a,$01		
ld ($caea),a		
push hl			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,($cd4e)		
ld d,a			
ld e,$07		
push de			
ld bc,$0001		
push bc			
xor a			
call  rlabel_00_0F47 
ld e,$13		
call  rlabel_00_1128 
pop bc			
pop de			
pop hl			
ld a,($cd4a)		
ld ($ff00+$8a),a	
inc hl			
inc hl			
push hl			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,d			
add $12			
ld d,a			
inc b			
push de			
push bc			
xor a			
call  rlabel_00_0F47 
ld e,$13		
call  rlabel_00_1128 
pop bc			
pop de			
pop hl			
ld a,($ff00+$8a)	
dec a			
ld ($ff00+$8a),a	
.DB $20 $e0 ; < ['$20', '$e0'] > < 0x2914 > < 2914 04 2914 | 20E0: jr nz, $E0 >
xor a			
ld ($caea),a		
ld hl,$9c00		
ld bc,$1707		
ld d,$20		
call  rlabel_00_1D0D 
ld hl,$9c13		
ld bc,$1307		
ld d,$20		
call  rlabel_00_1D0D 
xor a			
ld ($ff00+$4f),a	
call  rlabel_00_027C 
di			
ld a,($cd47)		
ld ($ff00+$45),a	
ld hl,$c1a3		
ld de,$2e16		
call  rlabel_00_0231 
ld a,($ff00+$41)	
and $03			
or $44			
ld ($ff00+$41),a	
ld a,($ff00+$ff)	
or $02			
ld ($ff00+$9c),a	
ld ($ff00+$ff),a	
xor a			
ld ($ff00+$0f),a	
ei			
ret			
rlabel_00_295A:
ld a,($cd53)		
add $24			
add a			
add a			
ld hl,$c000		
call  rlabel_00_0462 
ld c,$10		
call  rlabel_00_04E2 
ld bc,$0010		
call  rlabel_00_2BBA 
ld a,($cd98)		
srl a			
srl a			
ld d,a			
push de			
ld a,($cd47)		
ld b,a			
ld c,$48		
push bc			
ld a,b			
sub d			
sub $08			
ld b,a			
ld a,($cd48)		
or a			
.DB $28 $14 ; < ['$28', '$14'] > < 0x298b > < 298b 04 298B | 2814: jr z, $14 >
.incbin "data/00_298D.data"
pop bc			
pop de			
ld a,($cd49)		
ld e,a			
ld a,($cd48)		
cp e			
.DB $28 $1d ; < ['$28', '$1d'] > < 0x29ab > < 29ab 04 29AB | 281D: jr z, $1D >
ld a,($cd4a)		
add a			
add a			
add a			
add b			
add d			
ld b,a			
ld hl,$6d47		
ld a,($cd53)		
add $26			
ld d,a			
ld e,$39		
ld a,($cd52)		
ld ($cd45),a		
call  rlabel_00_2762 
ld a,($ff00+$a4)	
and $40			
.DB $28 $78 ; < ['$28', '$78'] > < 0x29ce > < 29ce 04 29CE | 2878: jr z, $78 >
.incbin "data/00_29D0.data"
ld a,($ff00+$a4)	
and $80			
jp z,$2ad7		
.incbin "data/00_2A4F.data"
ret			
rlabel_00_2AD8:
push hl			
ld h,a			
call  rlabel_00_1B17 
ld a,h			
ld (de),a		
ei			
inc de			
dec bc			
ld a,b			
or c			
.DB $20 $f4 ; < ['$20', '$f4'] > < 0x2ae4 > < 2ae4 0D 2AE4 | 20F4: jr nz, $F4 >
pop hl			
ret			
.incbin "data/00_2AE8.data"
rlabel_00_2B09:
ld a,($4000)		
push af			
ld a,b			
ld ($2000),a		
ld a,(de)		
ld b,a			
inc de			
ld a,(de)		
cp $01			
.DB $20 $08 ; < ['$20', '$08'] > < 0x2b17 > < 2b17 39 2B17 | 2008: jr nz, $08 >
.incbin "data/00_2B19.data"
ld c,$08		
call  rlabel_00_04CB 
dec b			
.DB $20 $eb ; < ['$20', '$eb'] > < 0x2b27 > < 2b27 39 2B27 | 20EB: jr nz, $EB >
pop af			
ld ($2000),a		
ret			
.incbin "data/00_2B2E.data"
rlabel_00_2B62:
push bc			
bit 7,a			
.DB $20 $04 ; < ['$20', '$04'] > < 0x2b65 > < 2b65 09 2B65 | 2004: jr nz, $04 >
.incbin "data/00_2B67.data"
ld b,$ff		
ld c,a			
add hl,bc		
pop bc			
ret			
rlabel_00_2B71:
push de			
cp $80			
.DB $38 $08 ; < ['$38', '$08'] > < 0x2b74 > < 2b74 0D 2B74 | 3808: jr c, $08 >
sub $80			
ld l,a			
ld de,$8800		
.DB $18 $04 ; < ['$18', '$04'] > < 0x2b7c > < 2b7c 0D 2B7C | 1804: jr $04 >
ld l,a			
ld de,$9000		
ld h,$00		
add hl,hl		
add hl,hl		
add hl,hl		
add hl,hl		
add hl,de		
pop de			
ret			
rlabel_00_2B8B:
push hl			
call  rlabel_00_2B71 
ld d,h			
ld e,l			
pop hl			
ret			
.incbin "data/00_2B93.data"
rlabel_00_2BA1:
ld h,$00		
ld l,a			
add hl,hl		
add hl,hl		
add hl,hl		
add hl,hl		
ret			
rlabel_00_2BA9:
ld hl,$c000		
ld c,$50		
jp $04e2		
rlabel_00_2BB1:
dec de			
ld a,e			
cpl			
ld e,a			
ld a,d			
cpl			
ld d,a			
or e			
ret			
rlabel_00_2BBA:
ld a,($cd99)		
ld d,a			
ld a,($cd98)		
add d			
ld ($cd98),a		
cp b			
.DB $28 $02 ; < ['$28', '$02'] > < 0x2bc6 > < 2bc6 39 2BC6 | 2802: jr z, $02 >
.DB $30 $05 ; < ['$30', '$05'] > < 0x2bc8 > < 2bc8 39 2BC8 | 3005: jr nc, $05 >
ld a,$01		
ld ($cd99),a		
cp c			
.DB $38 $05 ; < ['$38', '$05'] > < 0x2bd0 > < 2bd0 39 2BD0 | 3805: jr c, $05 >
ld a,$ff		
ld ($cd99),a		
ret			
rlabel_00_2BD8:
push bc			
push de			
push bc			
push de			
push de			
call  rlabel_00_10CD 
ld a,h			
ld ($cd96),a		
ld a,l			
ld ($cd97),a		
ld a,d			
ld ($cd95),a		
pop de			
ld e,a			
sub d			
inc a			
ld ($cd94),a		
ld a,e			
call  rlabel_00_2B8B 
ld a,$ff		
ld bc,$0010		
call  rlabel_00_2AD8 
ld hl,$cd84		
ld c,$10		
ld a,$f0		
call  rlabel_00_04E3 
pop af			
call  rlabel_00_2B71 
ld a,($cd94)		
ld b,a			
ld de,$cd84		
ld c,$10		
push bc			
ld a,(de)		
ld c,a			
call  rlabel_00_1B17 
ld a,(hl)		
ei			
swap a			
ld b,a			
and $0f			
or c			
call  rlabel_00_1B17 
ldi (hl),a		
ei			
ld a,b			
and $f0			
ld (de),a		
inc de			
pop bc			
dec c			
.DB $20 $e4 ; < ['$20', '$e4'] > < 0x2c30 > < 2c30 0D 2C30 | 20E4: jr nz, $E4 >
dec b			
.DB $20 $dc ; < ['$20', '$dc'] > < 0x2c33 > < 2c33 0D 2C33 | 20DC: jr nz, $DC >
pop bc			
call  rlabel_00_2F50 
ld a,($cd94)		
ld b,a			
pop af			
call  rlabel_00_1B17 
ldi (hl),a		
ei			
inc a			
dec b			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x2c45 > < 2c45 0D 2C45 | 20F7: jr nz, $F7 >
ld a,($cd95)		
ld d,a			
inc d			
ld a,($cd96)		
ld h,a			
ld a,($cd97)		
ld l,a			
pop bc			
ld a,($cd94)		
add c			
ld c,a			
ret			
rlabel_00_2C5B:
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld b,a			
ldi a,(hl)		
ld e,a			
and $10			
.DB $20 $0a ; < ['$20', '$0a'] > < 0x2c63 > < 2c63 39 2C63 | 200A: jr nz, $0A >
ld a,e			
and $0f			
ld e,a			
xor a			
call  rlabel_00_0F47 
.DB $18 $03 ; < ['$18', '$03'] > < 0x2c6d > < 2c6d 39 2C6D | 1803: jr $03 >
call  rlabel_00_2BD8 
ld a,(hl)		
cp $7f			
.DB $20 $e4 ; < ['$20', '$e4'] > < 0x2c75 > < 2c75 39 2C75 | 20E4: jr nz, $E4 >
ret			
rlabel_00_2C78:
ld d,$00		
push hl			
push de			
ld a,($cc1c)		
ld c,a			
ld a,($cc1d)		
ld b,a			
push bc			
ld a,($cc28)		
add c			
ld c,a			
ld hl,$5295		
ld a,($cd46)		
push af			
ld ($ff00+$b3),a	
ld a,$01		
ld ($ff00+$b0),a	
ld a,$40		
ld ($ff00+$b1),a	
ld a,$3a		
call  rlabel_00_0244 
pop af			
ld ($cd46),a		
pop bc			
ld a,($cc29)		
ld d,a			
ld a,($cc28)		
cpl			
inc a			
add c			
add d			
ld c,a			
pop de			
ld a,d			
add $03			
ld d,a			
ld hl,$5295		
ld ($ff00+$b3),a	
ld a,$01		
ld ($ff00+$b0),a	
ld a,$40		
ld ($ff00+$b1),a	
ld a,$3a		
call  rlabel_00_0244 
pop hl			
jp $255b		
rlabel_00_2CCC:
push bc			
ld b,a			
ld a,($cfd4)		
or a			
ld a,b			
.DB $20 $08 ; < ['$20', '$08'] > < 0x2cd3 > < 2cd3 A8 2CD3 | 2008: jr nz, $08 >
push de			
push hl			
ld a,a			
call  rlabel_00_3071 
pop hl			
pop de			
pop bc			
ret			
rlabel_00_2CDF:
ld a,($cfd4)		
or a			
ret nz			
ld a,b			
call  rlabel_00_3071 
ret			
push af			
ld a,($ff00+$99)	
ld ($ff00+$43),a	
push hl			
ld a,($ff00+$44)	
inc a			
ld hl,$d5d5		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x2cf7 > < 2cf7 09 2CF7 | 3001: jr nc, $01 >
inc h			
ld a,(hl)		
ld ($ff00+$99),a	
pop hl			
pop af			
reti			
push af			
ld a,($ff00+$99)	
ld ($ff00+$42),a	
push hl			
ld a,($ff00+$44)	
inc a			
ld hl,$d5d5		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x2d0e > < 2d0e 09 2D0E | 3001: jr nc, $01 >
inc h			
ld a,(hl)		
ld ($ff00+$99),a	
pop hl			
pop af			
reti			
ei			
push af			
push bc			
push de			
push hl			
ld a,($cbef)		
or a			
jp z,$2d3f		
ld a,($d5d5)		
ld ($ff00+$99),a	
ld a,($cad7)		
or a			
call nz,$1347		
ld a,($ff00+$9d)	
ld ($ff00+$47),a	
ld a,($ff00+$9e)	
ld ($ff00+$48),a	
ld a,($ff00+$9f)	
ld ($ff00+$49),a	
xor a			
ld ($cbef),a		
call  rlabel_00_3085 
call  rlabel_00_0261 
call  rlabel_00_02E7 
jp z,$020a		
ld hl,$ffa6		
inc (hl)		
pop hl			
pop de			
pop bc			
pop af			
reti			
push af			
push bc			
push de			
push hl			
call  rlabel_00_02E7 
jp z,$020a		
ld hl,$ffa6		
inc (hl)		
ld a,($ff00+$a7)	
or a			
.DB $20 $25 ; < ['$20', '$25'] > < 0x2d65 > < 2d65 09 2D65 | 2025: jr nz, $25 >
ld a,$01		
ld ($ff00+$a7),a	
ei			
ld a,($cad7)		
or a			
call nz,$1347		
ld a,($ff00+$9d)	
ld ($ff00+$47),a	
ld a,($ff00+$9e)	
ld ($ff00+$48),a	
ld a,($ff00+$9f)	
ld ($ff00+$49),a	
ld a,($cad7)		
or a			
call nz,$1340		
call  rlabel_00_3085 
call  rlabel_00_0261 
di			
xor a			
ld ($ff00+$a7),a	
pop hl			
pop de			
pop bc			
pop af			
reti			
push af			
push de			
push hl			
ld a,$57		
ld ($ff00+$45),a	
ld hl,$c1a3		
ld de,$2db1		
call  rlabel_00_0231 
call  rlabel_00_1B21 
ld a,($cd30)		
ld ($ff00+$43),a	
pop hl			
pop de			
pop af			
reti			
push af			
push de			
push hl			
ld a,($cd33)		
or a			
.DB $20 $0e ; < ['$20', '$0e'] > < 0x2db8 > < 2db8 39 2DB8 | 200E: jr nz, $0E >
xor a			
ld ($ff00+$9a),a	
ld hl,$c1a3		
ld de,$2de0		
call  rlabel_00_0231 
.DB $18 $0d ; < ['$18', '$0d'] > < 0x2dc6 > < 2dc6 39 2DC6 | 180D: jr $0D >
ld a,$37		
ld ($ff00+$9a),a	
ld hl,$c1a3		
ld de,$2d95		
call  rlabel_00_0231 
call  rlabel_00_1B21 
ld a,($ff00+$a1)	
ld ($ff00+$43),a	
pop hl			
pop de			
pop af			
reti			
push af			
push de			
push hl			
ld a,$37		
ld ($ff00+$45),a	
ld hl,$c1a3		
ld de,$2d95		
call  rlabel_00_0231 
pop hl			
pop de			
pop af			
jp $0729		
.incbin "data/00_2DF6.data"
push af			
push de			
push hl			
ld a,($cd4a)		
add a			
add a			
add a			
ld d,a			
ld a,($cd47)		
add d			
ld ($ff00+$45),a	
ld hl,$c1a3		
ld de,$2e4a		
call  rlabel_00_0231 
call  rlabel_00_1B21 
ld a,($cd47)		
ld d,a			
ld a,($cd48)		
ld e,a			
ld a,$ff		
add e			
sub d			
ld ($ff00+$42),a	
ld a,($ff00+$40)	
or $08			
ld ($ff00+$40),a	
pop hl			
pop de			
pop af			
reti			
push af			
push de			
push hl			
ld a,($cd47)		
ld ($ff00+$9a),a	
ld hl,$c1a3		
ld de,$2e16		
call  rlabel_00_0231 
call  rlabel_00_1B21 
ld a,($ff00+$a0)	
ld ($ff00+$42),a	
ld a,($ff00+$9b)	
ld ($ff00+$40),a	
pop hl			
pop de			
pop af			
reti			
.incbin "data/00_2E6A.data"
rlabel_00_2F01:
ld b,a			
rlabel_00_2F02:
di			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x2f07 > < 2f07 A8 2F07 | 20FA: jr nz, $FA >
ld a,b			
ld (de),a		
ei			
ret			
rlabel_00_2F0D:
ld a,($4000)		
push af			
ld a,b			
ld ($2000),a		
ld b,(hl)		
pop af			
ld ($2000),a		
ld a,b			
ret			
rlabel_00_2F1C:
push bc			
push hl			
ld b,d			
ld c,e			
ld h,$00		
ld l,b			
add hl,hl		
add hl,hl		
ld d,h			
ld e,l			
add hl,hl		
add hl,hl		
add hl,de		
ld b,$00		
add hl,bc		
ld bc,$d85d		
add hl,bc		
ld d,h			
ld e,l			
pop hl			
pop bc			
ret			
rlabel_00_2F36:
push bc			
push hl			
ld b,d			
ld c,e			
ld h,$00		
ld l,b			
add hl,hl		
add hl,hl		
ld d,h			
ld e,l			
add hl,hl		
add hl,hl		
add hl,de		
ld b,$00		
add hl,bc		
ld bc,$d9c5		
add hl,bc		
ld d,h			
ld e,l			
pop hl			
pop bc			
ret			
rlabel_00_2F50:
ld h,$00		
ld l,b			
add hl,hl		
add hl,hl		
add hl,hl		
add hl,hl		
add hl,hl		
ld b,$98		
add hl,bc		
ret			
rlabel_00_2F5C:
ld a,($ff00+$a0)	
swap a			
rlca			
add b			
and $1f			
swap a			
rlca			
ld l,a			
and $1f			
ld h,$98		
add h			
ld h,a			
ld a,l			
and $e0			
ld l,a			
ld a,($ff00+$a1)	
swap a			
rlca			
add c			
and $1f			
add l			
ld l,a			
ret			
.incbin "data/00_2F7D.data"
rlabel_00_2F86:
bit 5,l			
.DB $28 $06 ; < ['$28', '$06'] > < 0x2f88 > < 2f88 09 2F88 | 2806: jr z, $06 >
res 5,l			
inc l			
set 5,l			
ret			
inc l			
res 5,l			
ret			
.incbin "data/00_2F94.data"
rlabel_00_2FA2:
ld a,l			
and $1f			
.DB $28 $02 ; < ['$28', '$02'] > < 0x2fa5 > < 2fa5 0E 2FA5 | 2802: jr z, $02 >
dec l			
ret			
ld a,$1f		
or l			
ld l,a			
ret			
rlabel_00_2FAE:
ld a,$20		
add l			
ld l,a			
ret nc			
inc h			
ld a,$fb		
and h			
ld h,a			
ret			
rlabel_00_2FB9:
ld a,($4000)		
push af			
ld a,b			
ld ($2000),a		
ld a,(de)		
inc de			
call  rlabel_00_0518 
inc hl			
dec c			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x2fc8 > < 2fc8 3D 2FC8 | 20F7: jr nz, $F7 >
pop af			
ld ($2000),a		
ret			
.incbin "data/00_2FCF.data"
rlabel_00_3005:
pop hl			
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x3009 > < 3009 02 3009 | 3001: jr nc, $01 >
.incbin "data/00_300B.data"
ldi a,(hl)		
ld h,(hl)		
ld l,a			
jp hl			
.incbin "data/00_3010.data"
rlabel_00_3019:
ld e,l			
ld d,$00		
ld l,d			
ld a,$08		
add hl,hl		
.DB $30 $01 ; < ['$30', '$01'] > < 0x3020 > < 3020 01 3020 | 3001: jr nc, $01 >
add hl,de		
dec a			
.DB $20 $f9 ; < ['$20', '$f9'] > < 0x3024 > < 3024 01 3024 | 20F9: jr nz, $F9 >
ret			
rlabel_00_3027:
or a			
ret z			
ld l,a			
call  rlabel_00_304A 
ld h,a			
call  rlabel_00_3019 
ld a,h			
ret			
.incbin "data/00_3033.data"
rlabel_00_304A:
push bc			
ld a,($cf3f)		
ld b,a			
ld a,($ff00+$04)	
add b			
ld ($cf3f),a		
pop bc			
ret			
.incbin "data/00_3057.data"
rlabel_00_305E:
add $80			
ld b,a			
ld a,($c120)		
cp b			
ret z			
ld a,b			
ld ($c120),a		
call  rlabel_00_3AB2 
ret			
rlabel_00_306E:
xor a			
.DB $18 $ed ; < ['$18', '$ed'] > < 0x306f > < 306f 02 306F | 18ED: jr $ED >
rlabel_00_3071:
ld ($c122),a		
ld a,($4000)		
push af			
ld a,$08		
ld ($2000),a		
call  rlabel_08_7D69 
pop af			
ld ($2000),a		
ret			
rlabel_00_3085:
ld a,($4000)		
push af			
ld a,($c180)		
ld ($2000),a		
call  rlabel_00_3504 
ld a,$08		
ld ($2000),a		
call  rlabel_08_76C2 
pop af			
ld ($2000),a		
ret			
.incbin "data/00_309F.data"
push af			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x30b6 > < 30b6 AC 30B6 | 20FA: jr nz, $FA >
ld a,($ff00+$40)	
xor $0a			
ld ($ff00+$40),a	
ld a,($ff00+$44)	
cp $6f			
.DB $20 $09 ; < ['$20', '$09'] > < 0x30c2 > < 30c2 AC 30C2 | 2009: jr nz, $09 >
ld a,$04		
ld ($ff00+$42),a	
xor a			
ld ($ff00+$43),a	
.DB $18 $08 ; < ['$18', '$08'] > < 0x30cb > < 30cb AC 30CB | 1808: jr $08 >
ld a,$6f		
ld ($ff00+$45),a	
ld a,($ff00+$91)	
ld ($ff00+$42),a	
pop af			
reti			
rlabel_00_30D7:
ld a,($4000)		
ld ($ff00+$92),a	
ld a,($d5e0)		
ld ($2000),a		
inc hl			
ld e,(hl)		
inc hl			
ld d,(hl)		
inc hl			
ld a,($d5e5)		
and $01			
.DB $28 $1b ; < ['$28', '$1b'] > < 0x30ec > < 30ec AC 30EC | 281B: jr z, $1B >
ld a,($ff00+$a1)	
cpl			
inc a			
ld c,a			
ld a,($d5e6)		
add c			
ld c,(hl)		
inc hl			
add c			
ld c,a			
ld a,($ff00+$91)	
cpl			
inc a			
ld b,a			
ld a,($d5e7)		
add b			
ld b,(hl)		
add b			
ld b,a			
.DB $18 $0d ; < ['$18', '$0d'] > < 0x3107 > < 3107 A8 3107 | 180D: jr $0D >
ld c,(hl)		
inc hl			
ld a,($d5e6)		
add c			
ld c,a			
ld b,(hl)		
ld a,($d5e7)		
add b			
ld b,a			
call  rlabel_00_311F 
ld a,($ff00+$92)	
ld ($2000),a		
ret			
rlabel_00_311F:
ld a,(de)		
inc de			
ld ($ff00+$93),a	
or a			
.DB $28 $2f ; < ['$28', '$2f'] > < 0x3124 > < 3124 AC 3124 | 282F: jr z, $2F >
ld l,a			
ld a,($d5dd)		
add l			
cp $29			
.DB $30 $26 ; < ['$30', '$26'] > < 0x312d > < 312d AC 312D | 3026: jr nc, $26 >
ld ($d5dd),a		
ld hl,$d5de		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,(de)		
inc de			
add b			
ldi (hl),a		
ld a,(de)		
inc de			
add c			
ldi (hl),a		
ld a,(de)		
inc de			
ldi (hl),a		
ld a,(de)		
inc de			
ldi (hl),a		
ld a,($ff00+$93)	
dec a			
ld ($ff00+$93),a	
.DB $20 $eb ; < ['$20', '$eb'] > < 0x314b > < 314b AC 314B | 20EB: jr nz, $EB >
ld a,l			
ld ($d5de),a		
ld a,h			
ld ($d5df),a		
ret			
.incbin "data/00_3156.data"
ld ($c203),a		
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x31a3 > < 31a3 0A 31A3 | 3001: jr nc, $01 >
inc h			
ldi a,(hl)		
ld ($c1fd),a		
ld h,(hl)		
ld l,a			
ld a,h			
ld ($c1fe),a		
ret			
.incbin "data/00_31B1.data"
rlabel_00_3314:
ld hl,$d2d5		
ld a,($cbcd)		
cp $01			
ret z			
.incbin "data/00_331D.data"
rlabel_00_3321:
ld a,($4000)		
push af			
ld a,c			
ld ($2000),a		
ld a,(de)		
ld b,a			
pop af			
ld ($2000),a		
ret			
push af			
push hl			
call  rlabel_00_071A 
ld a,$bc		
ld ($2000),a		
call  rlabel_BC_7C73 
jp $075f		
.incbin "data/00_3340.data"
rlabel_00_334F:
ld a,($4000)		
push af			
ld a,$bc		
ld ($2000),a		
call  rlabel_BC_4029 
jp $0a3c		
rlabel_00_335E:
ld a,($4000)		
push af			
ld a,b			
ld ($2000),a		
call  rlabel_00_337D 
ld a,(bc)		
ld e,a			
inc bc			
jp $0a3c		
rlabel_00_336F:
ld a,($4000)		
push af			
ld a,b			
ld ($2000),a		
call  rlabel_00_337D 
jp $0a3c		
rlabel_00_337D:
push de			
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
ld a,c			
call  rlabel_00_04A7 
ldi a,(hl)		
ld c,a			
add a			
add a			
call  rlabel_00_045D 
inc c			
ld c,l			
ld b,h			
pop hl			
.DB $28 $0c ; < ['$28', '$0c'] > < 0x3391 > < 3391 CB 3391 | 280C: jr z, $0C >
ld a,(de)		
inc de			
ldi (hl),a		
ld a,(de)		
inc de			
ldi (hl),a		
ld a,(de)		
inc de			
ldi (hl),a		
ld a,(de)		
ld (hl),a		
ret			
xor a			
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ld (hl),a		
ret			
rlabel_00_33A5:
ld a,($4000)		
push af			
ld a,b			
ld ($2000),a		
ldi a,(hl)		
ld c,a			
inc a			
jp z,$0a3c		
bit 3,c			
.DB $28 $2a ; < ['$28', '$2a'] > < 0x33b5 > < 33b5 F4 33B5 | 282A: jr z, $2A >
res 3,c			
ldi a,(hl)		
ld d,a			
ld e,c			
ld a,($d32e)		
and a			
ldi a,(hl)		
push hl			
ld hl,$9aa0		
.DB $28 $03 ; < ['$28', '$03'] > < 0x33c5 > < 33c5 F4 33C5 | 2803: jr z, $03 >
ld hl,$98e0		
call  rlabel_00_0462 
call  rlabel_00_0D0D 
ld a,e			
cp $04			
.DB $30 $09 ; < ['$30', '$09'] > < 0x33d3 > < 33d3 F4 33D3 | 3009: jr nc, $09 >
ld a,$20		
call  rlabel_00_0462 
inc d			
call  rlabel_00_0D0D 
pop hl			
.DB $18 $cc ; < ['$18', '$cc'] > < 0x33df > < 33df F4 33DF | 18CC: jr $CC >
inc hl			
inc hl			
inc hl			
.DB $18 $c7 ; < ['$18', '$c7'] > < 0x33e4 > < 33e4 F4 33E4 | 18C7: jr $C7 >
rlabel_00_33E6:
ld a,($4000)		
push af			
ld a,b			
ld ($2000),a		
ldi a,(hl)		
ld c,a			
inc a			
jp z,$0a3c		
bit 3,c			
.DB $20 $05 ; < ['$20', '$05'] > < 0x33f6 > < 33f6 F4 33F6 | 2005: jr nz, $05 >
call  rlabel_00_3414 
.DB $18 $f1 ; < ['$18', '$f1'] > < 0x33fb > < 33fb F4 33FB | 18F1: jr $F1 >
inc hl			
inc hl			
.DB $18 $ed ; < ['$18', '$ed'] > < 0x33ff > < 33ff F4 33FF | 18ED: jr $ED >
rlabel_00_3401:
ld a,($4000)		
push af			
ld a,b			
ld ($2000),a		
ldi a,(hl)		
ld c,a			
inc a			
jp z,$0a3c		
call  rlabel_00_3414 
.DB $18 $f5 ; < ['$18', '$f5'] > < 0x3412 > < 3412 CB 3412 | 18F5: jr $F5 >
rlabel_00_3414:
ldi a,(hl)		
ld b,a			
ld a,($ff00+$b4)	
add b			
ld (de),a		
inc e			
ldi a,(hl)		
ld b,a			
ld a,($ff00+$b5)	
add b			
ld (de),a		
inc e			
ldi a,(hl)		
ld (de),a		
inc e			
ld a,c			
ld (de),a		
inc e			
ret			
rlabel_00_3429:
ld a,($4000)		
push af			
ld a,b			
ld ($2000),a		
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
pop af			
ld ($2000),a		
ret			
rlabel_00_343A:
ld hl,$3440		
jp $319d		
.incbin "data/00_3440.data"
rlabel_00_3446:
ld a,($d4dd)		
rlabel_00_3449:
push hl			
ld hl,$c34c		
call  rlabel_00_0462 
ld a,(hl)		
pop hl			
ret			
rlabel_00_3453:
ld a,($d4dd)		
rlabel_00_3456:
ld hl,$cfd5		
add h			
ld h,a			
ret			
rlabel_00_345C:
ld a,($d4dc)		
rlabel_00_345F:
push de			
ld hl,$d508		
ld e,a			
ld d,$09		
call  rlabel_00_03F7 
add hl,de		
pop de			
ret			
rlabel_00_346C:
ld a,($d4dd)		
push de			
ld d,a			
ld e,$29		
call  rlabel_00_03F7 
ld hl,$d3bf		
add hl,de		
pop de			
ret			
rlabel_00_347C:
push hl			
ld h,d			
ld l,e			
add hl,bc		
ld d,h			
ld e,l			
pop hl			
ret			
rlabel_00_3484:
push bc			
push hl			
ld c,$00		
ld b,a			
srl b			
rl c			
call  rlabel_00_3453 
ld a,$a0		
add b			
call  rlabel_00_0462 
ld a,(hl)		
bit 0,c			
.DB $20 $02 ; < ['$20', '$02'] > < 0x3499 > < 3499 0A 3499 | 2002: jr nz, $02 >
swap a			
and $0f			
pop hl			
pop bc			
ret			
rlabel_00_34A2:
ld a,($d4dd)		
ld hl,$d5af		
jp $0462		
.incbin "data/00_34AB.data"
rlabel_00_34E5:
ld a,$00		
ld ($ff00+$26),a	
ld a,$80		
ld ($ff00+$26),a	
ld a,$77		
ld ($ff00+$24),a	
ld a,$ff		
ld ($ff00+$25),a	
ld hl,$c0a0		
ld b,$ff		
xor a			
ldi (hl),a		
dec b			
jp nz,$34fb		
call  rlabel_00_3A43 
ret			
rlabel_00_3504:
ld a,($c0a1)		
or a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x3508 > < 3508 00 3508 | 2807: jr z, $07 >
ld hl,$c0a4		
dec (hl)		
call z,$3552		
ld a,($c0b1)		
or a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x3515 > < 3515 00 3515 | 2807: jr z, $07 >
ld hl,$c0b4		
dec (hl)		
call z,$36bb		
ld a,($c0c1)		
or a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x3522 > < 3522 00 3522 | 2807: jr z, $07 >
ld hl,$c0c4		
dec (hl)		
call z,$381a		
ld a,($c0d1)		
or a			
ret z			
ld hl,$c0d4		
dec (hl)		
call z,$3979		
ret			
.incbin "data/00_3538.data"
ld hl,$c0a0		
ldi a,(hl)		
ld c,a			
ld b,(hl)		
ld a,(bc)		
inc bc			
cp $80			
ret c			
cp $90			
jp c,$3687		
cp $a0			
jp c,$3624		
cp $b0			
jp z,$35ae		
cp $c0			
jp z,$35f7		
cp $e0			
jp z,$35b6		
cp $fd			
jp z,$3589		
cp $fe			
jp z,$3595		
ld hl,$c0a0		
cp $ff			
jp z,$3a5f		
.incbin "data/00_3588.data"
ld a,(bc)		
inc bc			
ld hl,$c0ac		
ldd (hl),a		
ld a,b			
ldd (hl),a		
ld (hl),c		
jp $3677		
ld hl,$c0ac		
ld a,(hl)		
cp $7f			
.DB $28 $08 ; < ['$28', '$08'] > < 0x359b > < 359b 27 359B | 2808: jr z, $08 >
or a			
.DB $28 $05 ; < ['$28', '$05'] > < 0x359e > < 359e 27 359E | 2805: jr z, $05 >
.incbin "data/00_35A0.data"
ld hl,$c0aa		
ldi a,(hl)		
ld c,a			
ld b,(hl)		
jp $3677		
ld a,(bc)		
inc bc			
ld ($c0ad),a		
jp $3677		
ld a,(bc)		
inc bc			
sub $40			
.DB $38 $0d ; < ['$38', '$0d'] > < 0x35ba > < 35ba 2C 35BA | 380D: jr c, $0D >
ld e,a			
ld d,$00		
ld a,($c0ad)		
dec a			
.DB $28 $15 ; < ['$28', '$15'] > < 0x35c3 > < 35c3 2B 35C3 | 2815: jr z, $15 >
srl e			
.DB $18 $f9 ; < ['$18', '$f9'] > < 0x35c7 > < 35c7 2B 35C7 | 18F9: jr $F9 >
cpl			
ld e,a			
ld d,$ff		
ld a,($c0ad)		
dec a			
.DB $28 $04 ; < ['$28', '$04'] > < 0x35d1 > < 35d1 2C 35D1 | 2804: jr z, $04 >
srl e			
.DB $18 $f9 ; < ['$18', '$f9'] > < 0x35d5 > < 35d5 2C 35D5 | 18F9: jr $F9 >
ld a,e			
cpl			
ld e,a			
ld hl,$c0ae		
ld a,e			
ldi (hl),a		
ld (hl),d		
ld a,($c0e1)		
or a			
jp nz,$3677		
ld hl,$c0a2		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
add hl,de		
ld a,l			
ld ($ff00+$13),a	
ld a,h			
ld ($ff00+$14),a	
jp $3677		
ld a,(bc)		
inc bc			
ld e,a			
ld a,($4000)		
ld d,a			
ld a,$08		
ld ($2100),a		
ld hl,$c12e		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,e			
add a			
add e			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x360e > < 360e 08 360E | 3001: jr nc, $01 >
.incbin "data/00_3610.data"
ldi a,(hl)		
ld ($c0a7),a		
ldi a,(hl)		
ld ($c0a8),a		
ld a,(hl)		
ld ($c0a9),a		
ld a,d			
ld ($2100),a		
jp $3677		
and $0f			
swap a			
ld ($c0a6),a		
ld a,(bc)		
inc a			
ld d,a			
ld a,($4000)		
ld e,a			
ld a,$08		
ld ($2100),a		
ld a,d			
add a			
ld hl,$75e8		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x363e > < 363e 08 363E | 3001: jr nc, $01 >
inc h			
ldi a,(hl)		
ld ($c0a2),a		
ld a,(hl)		
ld ($c0a3),a		
ld a,e			
ld ($2100),a		
ld a,($c0e1)		
or a			
.DB $20 $23 ; < ['$20', '$23'] > < 0x3651 > < 3651 2C 3651 | 2023: jr nz, $23 >
ld hl,$c0a6		
ldi a,(hl)		
ld ($ff00+$12),a	
ldi a,(hl)		
ld ($ff00+$10),a	
ldi a,(hl)		
and $e0			
ld ($ff00+$11),a	
ld hl,$c0ae		
ldi a,(hl)		
ld e,a			
ld d,(hl)		
ld hl,$c0a2		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
add hl,de		
ld a,l			
ld ($ff00+$13),a	
ld a,h			
or $80			
ld ($ff00+$14),a	
inc bc			
ld a,(bc)		
inc bc			
or a			
jp z,$3558		
ld ($c0a4),a		
ld hl,$c0a0		
ld a,c			
ldi (hl),a		
ld (hl),b		
ret			
ld a,($c0e1)		
or a			
.DB $20 $ea ; < ['$20', '$ea'] > < 0x368b > < 368b 2C 368B | 20EA: jr nz, $EA >
ld hl,$c0ae		
ldi a,(hl)		
ld e,a			
ld d,(hl)		
ld hl,$c0a2		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
add hl,de		
ld a,l			
ld ($ff00+$13),a	
ld a,($c0a8)		
ld ($ff00+$11),a	
ld a,($c0a9)		
or a			
.DB $20 $05 ; < ['$20', '$05'] > < 0x36a6 > < 36a6 2C 36A6 | 2005: jr nz, $05 >
.incbin "data/00_36A8.data"
ld e,a			
ld a,($c0a6)		
or e			
ld ($ff00+$12),a	
ld a,h			
or $80			
ld ($ff00+$14),a	
.DB $18 $bc ; < ['$18', '$bc'] > < 0x36b9 > < 36b9 2C 36B9 | 18BC: jr $BC >
ld a,($c0b0)		
ld c,a			
ld a,($c0b1)		
ld b,a			
ld a,(bc)		
inc bc			
cp $80			
ret c			
cp $90			
jp c,$37e6		
cp $a0			
jp c,$3785		
cp $b0			
jp z,$3715		
cp $e0			
jp z,$371d		
cp $c0			
jp z,$375e		
cp $fd			
jp z,$36f4		
cp $fe			
jp z,$3700		
ld hl,$c0b0		
cp $ff			
jp z,$3a5f		
.incbin "data/00_36F3.data"
ld a,(bc)		
inc bc			
ld hl,$c0bc		
ldd (hl),a		
ld a,b			
ldd (hl),a		
ld (hl),c		
jp $37d6		
ld hl,$c0bc		
ld a,(hl)		
or a			
.DB $28 $05 ; < ['$28', '$05'] > < 0x3705 > < 3705 27 3705 | 2805: jr z, $05 >
.incbin "data/00_3707.data"
ld hl,$c0ba		
ldi a,(hl)		
ld c,a			
ld b,(hl)		
jp $37d6		
.incbin "data/00_3715.data"
ld a,(bc)		
inc bc			
sub $40			
.DB $38 $0d ; < ['$38', '$0d'] > < 0x3721 > < 3721 2C 3721 | 380D: jr c, $0D >
ld e,a			
ld d,$00		
ld a,($c0bd)		
dec a			
.DB $28 $15 ; < ['$28', '$15'] > < 0x372a > < 372a 2C 372A | 2815: jr z, $15 >
srl e			
.DB $18 $f9 ; < ['$18', '$f9'] > < 0x372e > < 372e 2C 372E | 18F9: jr $F9 >
.incbin "data/00_3730.data"
ld hl,$c0be		
ld a,e			
ldi (hl),a		
ld (hl),d		
ld a,($c0f1)		
or a			
jp nz,$37d6		
ld hl,$c0b2		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
add hl,de		
ld a,l			
ld ($ff00+$18),a	
ld a,h			
ld ($ff00+$19),a	
jp $37d6		
ld a,(bc)		
inc bc			
ld e,a			
ld a,($4000)		
ld d,a			
ld a,$08		
ld ($2100),a		
ld hl,$c130		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,e			
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x3774 > < 3774 08 3774 | 3001: jr nc, $01 >
.incbin "data/00_3776.data"
ldi a,(hl)		
ld ($c0b7),a		
ld a,(hl)		
ld ($c0b8),a		
ld a,d			
ld ($2100),a		
.DB $18 $51 ; < ['$18', '$51'] > < 0x3783 > < 3783 2C 3783 | 1851: jr $51 >
and $0f			
swap a			
ld ($c0b6),a		
ld a,(bc)		
inc a			
ld d,a			
ld a,($4000)		
ld e,a			
ld a,$08		
ld ($2100),a		
ld a,d			
add a			
ld hl,$75e8		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x379f > < 379f 08 379F | 3001: jr nc, $01 >
inc h			
ldi a,(hl)		
ld ($c0b2),a		
ld a,(hl)		
ld ($c0b3),a		
ld a,e			
ld ($2100),a		
ld a,($c0f1)		
or a			
.DB $20 $21 ; < ['$20', '$21'] > < 0x37b2 > < 37b2 2C 37B2 | 2021: jr nz, $21 >
ld hl,$c0be		
ldi a,(hl)		
ld e,a			
ld d,(hl)		
ld hl,$c0b2		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
add hl,de		
ld a,($c0b6)		
ld ($ff00+$17),a	
ld a,($c0b7)		
and $e0			
ld ($ff00+$16),a	
ld a,l			
ld ($ff00+$18),a	
ld a,h			
or $80			
ld ($ff00+$19),a	
inc bc			
ld a,(bc)		
inc bc			
or a			
jp z,$36c3		
ld ($c0b4),a		
ld hl,$c0b0		
ld a,c			
ldi (hl),a		
ld (hl),b		
ret			
ld a,($c0f1)		
or a			
.DB $20 $ea ; < ['$20', '$ea'] > < 0x37ea > < 37ea 2C 37EA | 20EA: jr nz, $EA >
ld hl,$c0be		
ldi a,(hl)		
ld e,a			
ld d,(hl)		
ld hl,$c0b2		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
add hl,de		
ld a,l			
ld ($ff00+$18),a	
ld a,($c0b7)		
ld ($ff00+$16),a	
ld a,($c0b8)		
or a			
.DB $20 $05 ; < ['$20', '$05'] > < 0x3805 > < 3805 2C 3805 | 2005: jr nz, $05 >
.incbin "data/00_3807.data"
ld e,a			
ld a,($c0b6)		
or e			
ld ($ff00+$17),a	
ld a,h			
or $80			
ld ($ff00+$19),a	
.DB $18 $bc ; < ['$18', '$bc'] > < 0x3818 > < 3818 2C 3818 | 18BC: jr $BC >
ld hl,$c0c0		
ldi a,(hl)		
ld c,a			
ld b,(hl)		
ld a,(bc)		
inc bc			
cp $80			
ret c			
cp $90			
jp c,$396c		
cp $a0			
jp c,$38f3		
cp $b0			
jp z,$3873		
cp $e0			
jp z,$387b		
cp $c0			
jp z,$38bc		
cp $fd			
jp z,$3851		
cp $fe			
jp z,$385d		
ld hl,$c0c0		
cp $ff			
jp z,$3a5f		
.incbin "data/00_3850.data"
ld a,(bc)		
inc bc			
ld hl,$c0cc		
ldd (hl),a		
ld a,b			
ldd (hl),a		
ld (hl),c		
jp $395c		
ld a,($c0cc)		
or a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x3861 > < 3861 27 3861 | 2807: jr z, $07 >
.incbin "data/00_3863.data"
ld hl,$c0cb		
ldd a,(hl)		
ld b,a			
ld c,(hl)		
jp $395c		
.incbin "data/00_3873.data"
ld a,(bc)		
inc bc			
sub $40			
.DB $38 $0d ; < ['$38', '$0d'] > < 0x387f > < 387f 2C 387F | 380D: jr c, $0D >
ld e,a			
ld d,$00		
ld a,($c0cd)		
dec a			
.DB $28 $15 ; < ['$28', '$15'] > < 0x3888 > < 3888 2C 3888 | 2815: jr z, $15 >
srl e			
.DB $18 $f9 ; < ['$18', '$f9'] > < 0x388c > < 388c 2C 388C | 18F9: jr $F9 >
.incbin "data/00_388E.data"
ld hl,$c0ce		
ld a,e			
ldi (hl),a		
ld (hl),d		
ld a,($c101)		
or a			
jp nz,$395c		
ld hl,$c0c2		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
add hl,de		
ld a,l			
ld ($ff00+$1d),a	
ld a,h			
ld ($ff00+$1e),a	
jp $395c		
ld a,(bc)		
ld ($c0c7),a		
inc bc			
add a			
ld e,a			
ld a,($4000)		
ld ($cfcf),a		
ld a,$08		
ld ($2100),a		
ld hl,$c132		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
push hl			
ld d,$00		
add hl,de		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
pop de			
add hl,de		
ld d,b			
ld e,c			
ld bc,$1030		
ldi a,(hl)		
ld ($ff00+c),a		
inc c			
dec b			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x38e6 > < 38e6 08 38E6 | 20FA: jr nz, $FA >
ld b,d			
ld c,e			
ld a,($cfcf)		
ld ($2100),a		
jp $395c		
and $0f			
cp $0c			
.DB $38 $04 ; < ['$38', '$04'] > < 0x38f7 > < 38f7 2C 38F7 | 3804: jr c, $04 >
ld a,$20		
.DB $18 $0a ; < ['$18', '$0a'] > < 0x38fb > < 38fb 2C 38FB | 180A: jr $0A >
cp $08			
.DB $38 $04 ; < ['$38', '$04'] > < 0x38ff > < 38ff 2B 38FF | 3804: jr c, $04 >
ld a,$40		
.DB $18 $02 ; < ['$18', '$02'] > < 0x3903 > < 3903 2B 3903 | 1802: jr $02 >
ld a,$60		
ld ($c0c6),a		
ld a,(bc)		
inc a			
ld e,a			
ld a,($4000)		
ld d,a			
ld a,$08		
ld ($2100),a		
ld a,e			
ld hl,$75e8		
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x391d > < 391d 08 391D | 3001: jr nc, $01 >
inc h			
ldi a,(hl)		
ld ($c0c2),a		
ld a,(hl)		
ld ($c0c3),a		
ld a,d			
ld ($2100),a		
ld a,($c101)		
or a			
.DB $20 $29 ; < ['$20', '$29'] > < 0x3930 > < 3930 2C 3930 | 2029: jr nz, $29 >
ld hl,$c0ce		
ldi a,(hl)		
ld e,a			
ld d,(hl)		
ld hl,$c0c2		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
add hl,de		
xor a			
ld ($ff00+$1a),a	
ld a,h			
and $7f			
ld ($ff00+$1e),a	
ld a,($c0c6)		
ld ($ff00+$1c),a	
xor a			
ld ($ff00+$1b),a	
ld a,l			
ld ($ff00+$1d),a	
ld a,$80		
ld ($ff00+$1a),a	
ld a,h			
or $80			
ld ($ff00+$1e),a	
inc bc			
ld a,(bc)		
inc bc			
or a			
jp z,$3820		
ld ($c0c4),a		
ld hl,$c0c0		
ld a,c			
ldi (hl),a		
ld (hl),b		
ret			
ld a,($c101)		
or a			
.DB $20 $ea ; < ['$20', '$ea'] > < 0x3970 > < 3970 2C 3970 | 20EA: jr nz, $EA >
xor a			
ld ($ff00+$1a),a	
ld ($ff00+$1c),a	
.DB $18 $e3 ; < ['$18', '$e3'] > < 0x3977 > < 3977 2C 3977 | 18E3: jr $E3 >
ld hl,$c0d0		
ldi a,(hl)		
ld c,a			
ld b,(hl)		
ld a,(bc)		
inc bc			
cp $80			
ret c			
cp $90			
jp c,$3a23		
cp $a0			
jp c,$39cd		
cp $c0			
jp z,$39c8		
cp $fd			
jp z,$39a6		
cp $fe			
jp z,$39b2		
ld hl,$c0d0		
cp $ff			
jp z,$3a5f		
.incbin "data/00_39A5.data"
ld a,(bc)		
inc bc			
ld hl,$c0dc		
ldd (hl),a		
ld a,b			
ldd (hl),a		
ld (hl),c		
jp $3a13		
ld a,($c0dc)		
or a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x39b6 > < 39b6 27 39B6 | 2807: jr z, $07 >
.incbin "data/00_39B8.data"
ld hl,$c0db		
ldd a,(hl)		
ld b,a			
ld c,(hl)		
jp $3a13		
.incbin "data/00_39C8.data"
and $0f			
swap a			
ld ($c0d6),a		
ld a,(bc)		
sub $23			
ld e,a			
ld a,($4000)		
ld d,a			
ld a,$08		
ld ($2100),a		
ld hl,$c134		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,e			
dec a			
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x39ec > < 39ec 08 39EC | 3001: jr nc, $01 >
.incbin "data/00_39EE.data"
ldi a,(hl)		
ld ($c0d2),a		
ldi a,(hl)		
ld ($c0d7),a		
ld a,d			
ld ($2100),a		
ld a,($c111)		
or a			
.DB $20 $11 ; < ['$20', '$11'] > < 0x39ff > < 39ff 2C 39FF | 2011: jr nz, $11 >
ld a,($c0d2)		
ld ($ff00+$22),a	
ld a,($c0d6)		
ld ($ff00+$21),a	
xor a			
ld ($ff00+$20),a	
ld a,$80		
ld ($ff00+$23),a	
inc bc			
ld a,(bc)		
inc bc			
or a			
jp z,$397f		
ld ($c0d4),a		
ld hl,$c0d0		
ld a,c			
ldi (hl),a		
ld (hl),b		
ret			
ld a,($c111)		
or a			
.DB $20 $ea ; < ['$20', '$ea'] > < 0x3a27 > < 3a27 2C 3A27 | 20EA: jr nz, $EA >
ld a,($c0d2)		
ld ($ff00+$22),a	
ld hl,$c0d6		
ld a,($c0d7)		
or a			
.DB $20 $03 ; < ['$20', '$03'] > < 0x3a35 > < 3a35 2C 3A35 | 2003: jr nz, $03 >
.incbin "data/00_3A37.data"
or (hl)			
ld ($ff00+$21),a	
ld a,$80		
ld ($ff00+$23),a	
.DB $18 $d0 ; < ['$18', '$d0'] > < 0x3a41 > < 3a41 2C 3A41 | 18D0: jr $D0 >
rlabel_00_3A43:
ld a,$08		
ld ($2100),a		
ld hl,$4001		
ld de,$c12c		
ld b,$12		
ldi a,(hl)		
ld (de),a		
inc de			
dec b			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x3a54 > < 3a54 08 3A54 | 20FA: jr nz, $FA >
ld hl,$c12a		
ld (hl),$01		
inc hl			
ld (hl),$40		
ret			
ld b,$10		
xor a			
.DB $18 $06 ; < ['$18', '$06'] > < 0x3a62 > < 3a62 28 3A62 | 1806: jr $06 >
.incbin "data/00_3A64.data"
ldi (hl),a		
dec b			
.DB $20 $fc ; < ['$20', '$fc'] > < 0x3a6c > < 3a6c 01 3A6C | 20FC: jr nz, $FC >
ret			
rlabel_00_3A6F:
xor a			
ld hl,$c126		
ldi (hl),a		
ld (hl),a		
ld ($c128),a		
ld hl,$c0a0		
ld b,$40		
.DB $18 $eb ; < ['$18', '$eb'] > < 0x3a7d > < 3a7d 01 3A7D | 18EB: jr $EB >
rlabel_00_3A7F:
ld bc,$0880		
ld a,($c0e1)		
or a			
.DB $20 $08 ; < ['$20', '$08'] > < 0x3a86 > < 3a86 01 3A86 | 2008: jr nz, $08 >
xor a			
ld ($ff00+$10),a	
ld ($ff00+$12),a	
ld a,c			
ld ($ff00+$14),a	
ld a,($c0f1)		
or a			
.DB $20 $05 ; < ['$20', '$05'] > < 0x3a94 > < 3a94 01 3A94 | 2005: jr nz, $05 >
ld ($ff00+$17),a	
ld a,c			
ld ($ff00+$19),a	
ld a,($c101)		
or a			
.DB $20 $05 ; < ['$20', '$05'] > < 0x3a9f > < 3a9f 01 3A9F | 2005: jr nz, $05 >
xor a			
ld ($ff00+$1a),a	
ld ($ff00+$1c),a	
ld a,($c111)		
or a			
.DB $20 $05 ; < ['$20', '$05'] > < 0x3aaa > < 3aaa 01 3AAA | 2005: jr nz, $05 >
ld ($ff00+$21),a	
ld a,c			
ld ($ff00+$23),a	
ret			
rlabel_00_3AB2:
ld a,($c120)		
bit 7,a			
ret z			
and $7f			
ld b,a			
push bc			
call  rlabel_00_3A6F 
call  rlabel_00_3A7F 
pop bc			
ld a,($4000)		
push af			
ld a,$08		
ld ($2100),a		
ld hl,$7e5a		
ld a,b			
add a			
add b			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x3ad4 > < 3ad4 08 3AD4 | 3001: jr nc, $01 >
.incbin "data/00_3AD6.data"
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
ld a,(hl)		
ld ($c180),a		
ld h,d			
ld l,e			
inc hl			
inc hl			
ld ($2100),a		
ld bc,$c0a4		
call  rlabel_00_3B03 
ld bc,$c0b4		
call  rlabel_00_3B03 
ld bc,$c0c4		
call  rlabel_00_3B03 
ld bc,$c0d4		
call  rlabel_00_3B03 
pop af			
ld ($2100),a		
ret			
rlabel_00_3B03:
ldi a,(hl)		
push hl			
ld l,(hl)		
ld h,a			
add hl,de		
ldi a,(hl)		
inc a			
ld (bc),a		
dec bc			
dec bc			
dec bc			
ld a,h			
ld (bc),a		
dec bc			
ld a,l			
ld (bc),a		
pop hl			
inc hl			
ret			
.incbin "data/00_3B16.data"
