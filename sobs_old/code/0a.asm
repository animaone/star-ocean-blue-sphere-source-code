.BANK $0a SLOT 1
.ORG 0
.incbin "data/0a_4000.data"
rlabel_0A_47FA:
ld a,($cfd3)		
ld ($d342),a		
ld a,($c35b)		
cp $08			
.DB $20 $05 ; < ['$20', '$05'] > < 0x4805 > < a4805 0A 4805 | 2005: jr nz, $05 >
.incbin "data/0a_4807.data"
call  rlabel_0A_7188 
.DB $28 $03 ; < ['$28', '$03'] > < 0x480f > < a480f 0A 480F | 2803: jr z, $03 >
.incbin "data/0a_4811.data"
ld a,$ff		
ld ($d362),a		
ld b,$0b		
ld hl,$4001		
rst $28			
call  rlabel_0A_4896 
call  rlabel_0A_4867 
xor a			
ld ($d362),a		
ld c,$04		
call  rlabel_00_0AA0 
ret			
rlabel_0A_482F:
call  rlabel_0A_68F9 
ld b,$bd		
ld hl,$7986		
rst $28			
ld hl,$4851		
call  rlabel_0A_6716 
ld a,($c225)		
ld ($d331),a		
ld b,$bd		
ld hl,$418f		
rst $28			
call  rlabel_0A_4854 
call  rlabel_0A_4961 
ret			
jp $49fb		
rlabel_0A_4854:
ld a,($d4f0)		
ld hl,$4861		
call  rlabel_00_0462 
ld a,(hl)		
ld ($d499),a		
ret			
.incbin "data/0a_4862.data"
rlabel_0A_4867:
xor a			
ld ($d361),a		
ld ($d362),a		
ld a,$c9		
ld ($c1aa),a		
ld hl,$c1a0		
ld de,$0287		
call  rlabel_00_0231 
ld hl,$c1a3		
ld de,$3330		
call  rlabel_00_0231 
ld a,$65		
ld ($ff00+$9a),a	
ld a,$c7		
ld ($ff00+$9b),a	
ld a,$03		
ld ($ff00+$9c),a	
ld a,$40		
ld ($ff00+$41),a	
ret			
rlabel_0A_4896:
ld a,$ff		
ld hl,$d365		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ld ($d384),a		
ld ($d39d),a		
ld ($d3c6),a		
ld ($d3ef),a		
ld ($d423),a		
xor a			
ld ($d422),a		
ld a,$24		
ld ($d380),a		
ld a,$40		
ld ($d3ab),a		
ld ($d3d4),a		
ld ($d3fd),a		
ld ($d37d),a		
ld ($d43b),a		
ld ($d352),a		
ld a,$24		
ld ($d3ae),a		
ld a,$54		
ld ($d3d7),a		
ld a,$3c		
ld ($d400),a		
ld a,$78		
ld ($d380),a		
call  rlabel_0A_4952 
call  rlabel_0A_49D5 
ld c,$00		
call  rlabel_0A_751C 
ld ($d3a9),a		
inc c			
call  rlabel_0A_751C 
ld ($d3d2),a		
inc c			
call  rlabel_0A_751C 
ld ($d3fb),a		
ld a,$44		
ld ($d439),a		
ld a,$98		
ld ($d3aa),a		
add $18			
ld ($d3d3),a		
add $18			
ld ($d3fc),a		
ld a,$48		
ld ($d43a),a		
ld a,$01		
ld ($d39b),a		
ld ($d3c4),a		
ld ($d3ed),a		
ld ($d390),a		
ld a,$ff		
ld ($d381),a		
ld a,$00		
ld ($d382),a		
ld a,$00		
ld ($d4c0),a		
ld a,$00		
ld ($d437),a		
ld a,$00		
ld ($d43d),a		
ld a,$00		
ld ($d48f),a		
ld a,$03		
ld ($d492),a		
ld a,$07		
ld ($d363),a		
ld a,$01		
ld ($d35d),a		
call  rlabel_0A_5F43 
ret			
rlabel_0A_4952:
ld a,$48		
ld ($d45a),a		
ld a,$0f		
ld hl,$d471		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ret			
rlabel_0A_4961:
ld de,$c9b8		
ld hl,$d475		
ld c,$08		
call  rlabel_00_04CB 
ld de,$c9e0		
ld hl,$d47d		
ld c,$08		
jp $04cb		
.incbin "data/0a_4977.data"
rlabel_0A_49D5:
ld a,$20		
ld ($d3ad),a		
ld a,$21		
ld ($d3d6),a		
ld a,$22		
ld ($d3ff),a		
ld hl,$d3ad		
ld de,$0029		
res 7,(hl)		
add hl,de		
res 7,(hl)		
add hl,de		
res 7,(hl)		
ret			
.incbin "data/0a_49F3.data"
ld a,($c203)		
ld ($d4dd),a		
ld a,$33		
call  rlabel_00_3484 
and a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x4a07 > < a4a07 0A 4A07 | 2802: jr z, $02 >
.incbin "data/0a_4A09.data"
ld c,a			
call  rlabel_0A_717D 
cp $05			
.DB $28 $08 ; < ['$28', '$08'] > < 0x4a11 > < a4a11 0A 4A11 | 2808: jr z, $08 >
cp $08			
.DB $28 $04 ; < ['$28', '$04'] > < 0x4a15 > < a4a15 0A 4A15 | 2804: jr z, $04 >
cp $0b			
.DB $20 $01 ; < ['$20', '$01'] > < 0x4a19 > < a4a19 0A 4A19 | 2001: jr nz, $01 >
inc c			
inc c			
ld a,c			
ld b,$26		
call  rlabel_00_083E 
ret			
di			
ld hl,$4a75		
ld a,($d4fe)		
ld c,a			
call  rlabel_00_04A7 
push hl			
ld h,c			
ld de,$8c00		
call  rlabel_00_334F 
ld hl,$8c00		
pop af			
call  rlabel_00_0462 
ld de,$9b50		
ld bc,$0050		
call  rlabel_0A_4A51 
add hl,bc		
call  rlabel_0A_4A51 
add hl,bc		
call  rlabel_0A_4A51 
ei			
ret			
rlabel_0A_4A51:
call  rlabel_00_0654 
call  rlabel_00_0658 
call  rlabel_00_0658 
call  rlabel_00_0658 
call  rlabel_00_0658 
jp $0658		
ld de,$94f0		
ld hl,$9b50		
ld c,$09		
call  rlabel_00_0654 
call  rlabel_00_0658 
dec c			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x4a72 > < a4a72 0A 4A72 | 20F7: jr nz, $F7 >
ret			
.incbin "data/0a_4A75.data"
rlabel_0A_4AE1:
ld a,($ff00+$a4)	
ld c,a			
ld hl,$d33c		
ld a,(hl)		
ld (hl),c		
xor c			
and c			
ld ($d33d),a		
ret			
rlabel_0A_4AEF:
ld a,($d4d5)		
and a			
jp nz,$6dd5		
call  rlabel_0A_5783 
call  rlabel_0A_53C5 
call  rlabel_0A_6031 
call  rlabel_0A_525D 
ld hl,$d331		
ldd a,(hl)		
ld (hl),a		
ld b,a			
ld a,($d346)		
and a			
.DB $28 $04 ; < ['$28', '$04'] > < 0x4b0c > < a4b0c 0A 4B0C | 2804: jr z, $04 >
ld a,($d348)		
ld b,a			
ld a,b			
call  rlabel_00_343A 
ld a,($d4d5)		
and a			
call z,$5a8b		
call  rlabel_0A_71B1 
ld a,($d344)		
and a			
call nz,$4bfe		
xor a			
call  rlabel_0A_4B80 
ld a,$01		
call  rlabel_0A_4B80 
ld a,$02		
call  rlabel_0A_4B80 
call  rlabel_0A_605D 
ld a,($d334)		
cp $03			
call z,$4b7a		
ld a,($d5b9)		
and a			
.DB $28 $33 ; < ['$28', '$33'] > < 0x4b44 > < a4b44 0A 4B44 | 2833: jr z, $33 >
ld a,($d367)		
inc a			
.DB $20 $2d ; < ['$20', '$2d'] > < 0x4b4a > < a4b4a 0A 4B4A | 202D: jr nz, $2D >
ld a,($cfd0)		
cp $60			
jp z,$62bc		
cp $63			
jp z,$6347		
cp $64			
jp z,$6351		
cp $65			
jp z,$635b		
cp $66			
jp z,$6365		
cp $62			
jp nz,$4b74		
.incbin "data/0a_4B6D.data"
ld a,$01		
ld ($d4d5),a		
ret			
.incbin "data/0a_4B7A.data"
rlabel_0A_4B80:
call  rlabel_00_343A 
call  rlabel_0A_54F3 
ld hl,$d38e		
ld (hl),$00		
ld a,($c203)		
ld e,a			
ld a,($d330)		
cp e			
.DB $20 $3d ; < ['$20', '$3d'] > < 0x4b93 > < a4b93 0A 4B93 | 203D: jr nz, $3D >
inc (hl)		
call  rlabel_0A_6857 
ld a,($d33c)		
ld ($d33e),a		
ld a,($d33d)		
ld ($d33f),a		
ld a,($d347)		
bit 5,a			
.DB $20 $07 ; < ['$20', '$07'] > < 0x4baa > < a4baa 0A 4BAA | 2007: jr nz, $07 >
bit 3,a			
call nz,$5711		
.DB $18 $40 ; < ['$18', '$40'] > < 0x4bb1 > < a4bb1 0A 4BB1 | 1840: jr $40 >
.incbin "data/0a_4BB3.data"
xor a			
ld ($d33e),a		
ld a,($d346)		
ld b,a			
ld a,($d4d5)		
add b			
.DB $20 $0d ; < ['$20', '$0d'] > < 0x4bde > < a4bde 0A 4BDE | 200D: jr nz, $0D >
ld a,($d347)		
and $96			
.DB $20 $06 ; < ['$20', '$06'] > < 0x4be5 > < a4be5 0A 4BE5 | 2006: jr nz, $06 >
ld b,$0d		
ld hl,$6c3c		
rst $28			
ld a,($d33e)		
ld ($d33f),a		
call  rlabel_0A_5097 
ld a,($d344)		
and a			
jp z,$4d98		
.incbin "data/0a_4BFD.data"
rlabel_0A_4C0D:
ld d,a			
ld b,$18		
call  rlabel_00_0832 
.DB $18 $08 ; < ['$18', '$08'] > < 0x4c13 > < a4c13 0A 4C13 | 1808: jr $08 >
ld d,a			
ld b,$18		
call  rlabel_00_0832 
cp d			
ret z			
push de			
push hl			
inc hl			
ld (hl),$00		
call  rlabel_00_3005 
.incbin "data/0a_4C25.data"
call  rlabel_0A_4C88 
call  rlabel_0A_6971 
call  rlabel_0A_5B46 
xor a			
ld ($d34b),a		
call  rlabel_0A_55FB 
ld a,($c203)		
ld b,a			
ld a,($d330)		
cp b			
.DB $20 $2e ; < ['$20', '$2e'] > < 0x4c5d > < a4c5d 0A 4C5D | 202E: jr nz, $2E >
xor a			
ld ($d340),a		
.DB $18 $28 ; < ['$18', '$28'] > < 0x4c63 > < a4c63 0A 4C63 | 1828: jr $28 >
.DB $18 $26 ; < ['$18', '$26'] > < 0x4c65 > < a4c65 0A 4C65 | 1826: jr $26 >
call  rlabel_0A_4C88 
xor a			
ld b,$15		
call  rlabel_00_083E 
xor a			
ld b,$28		
call  rlabel_00_083E 
call  rlabel_0A_55FB 
.DB $18 $12 ; < ['$18', '$12'] > < 0x4c79 > < a4c79 0A 4C79 | 1812: jr $12 >
.incbin "data/0a_4C7B.data"
rlabel_0A_4C88:
xor a			
ld ($d346),a		
ret			
pop hl			
pop af			
ld c,(hl)		
ld (hl),a		
call  rlabel_00_3005 
.incbin "data/0a_4C94.data"
ld a,($d347)		
and $96			
ld a,$0a		
jp nz,$4c0d		
ld c,$21		
call  rlabel_0A_750E 
bit 0,(hl)		
ld a,$09		
jp nz,$4c15		
xor a			
jp $4d86		
ld a,$02		
jp $4d86		
ld a,$03		
jp $4d86		
ld a,$08		
ld b,$1f		
call  rlabel_00_083E 
ld a,$05		
jp $4d86		
ld b,$0d		
ld hl,$4b76		
rst $28			
xor a			
ld ($d34b),a		
ld a,$01		
ld ($d346),a		
ld a,($c203)		
ld ($d348),a		
call  rlabel_0A_5B46 
xor a			
ld ($d382),a		
call  rlabel_0A_6951 
ld a,$04		
ld ($d364),a		
call  rlabel_0A_69AD 
call  rlabel_0A_5B4C 
ld a,$01		
ld ($d2df),a		
ret			
ld a,$0c		
ld b,$15		
call  rlabel_00_083E 
ld a,$0b		
.DB $18 $67 ; < ['$18', '$67'] > < 0x4d1d > < a4d1d 0A 4D1D | 1867: jr $67 >
xor a			
ld b,$1d		
call  rlabel_00_083E 
ld a,$04		
.DB $18 $5d ; < ['$18', '$5d'] > < 0x4d27 > < a4d27 0A 4D27 | 185D: jr $5D >
.incbin "data/0a_4D29.data"
ld a,($d347)		
and $96			
ret nz			
ld b,$02		
call  rlabel_00_0832 
cp $07			
.DB $20 $02 ; < ['$20', '$02'] > < 0x4d3d > < a4d3d 0A 4D3D | 2002: jr nz, $02 >
.incbin "data/0a_4D3F.data"
ld a,$07		
.DB $18 $41 ; < ['$18', '$41'] > < 0x4d43 > < a4d43 0A 4D43 | 1841: jr $41 >
.incbin "data/0a_4D45.data"
ld a,($d347)		
and $86			
ld a,$08		
.DB $20 $2d ; < ['$20', '$2d'] > < 0x4d57 > < a4d57 0A 4D57 | 202D: jr nz, $2D >
.incbin "data/0a_4D59.data"
ld a,$02		
ld ($d346),a		
ld a,($c203)		
ld ($d348),a		
ld a,$01		
ld ($d35c),a		
call  rlabel_0A_69C2 
ld a,$ff		
ld ($d366),a		
xor a			
ld ($d346),a		
ld a,$00		
jp $4c0d		
.incbin "data/0a_4D7B.data"
ld b,$01		
call  rlabel_00_083E 
ret			
rlabel_0A_4D8C:
ld a,($c203)		
call  rlabel_00_3456 
ld bc,$002d		
add hl,bc		
ld a,(hl)		
ret			
ld b,$1d		
call  rlabel_00_0832 
and $7f			
.DB $28 $0f ; < ['$28', '$0f'] > < 0x4d9f > < a4d9f 0A 4D9F | 280F: jr z, $0F >
dec (hl)		
bit 7,(hl)		
ld a,$01		
.DB $20 $05 ; < ['$20', '$05'] > < 0x4da6 > < a4da6 0A 4DA6 | 2005: jr nz, $05 >
call  rlabel_0A_5243 
.DB $18 $03 ; < ['$18', '$03'] > < 0x4dab > < a4dab 0A 4DAB | 1803: jr $03 >
.incbin "data/0a_4DAD.data"
ld a,($d346)		
and a			
.DB $28 $09 ; < ['$28', '$09'] > < 0x4db4 > < a4db4 0A 4DB4 | 2809: jr z, $09 >
ld a,($d348)		
ld c,a			
ld a,($c203)		
cp c			
ret nz			
ld a,($d485)		
and a			
.DB $28 $14 ; < ['$28', '$14'] > < 0x4dc3 > < a4dc3 0A 4DC3 | 2814: jr z, $14 >
.incbin "data/0a_4DC5.data"
ld b,$18		
call  rlabel_00_0832 
call  rlabel_00_3005 
.incbin "data/0a_4DE1.data"
call  rlabel_0A_51ED 
call  rlabel_0A_5E2D 
call  rlabel_0A_5270 
ld a,($d33e)		
ld c,a			
ld a,$01		
bit 5,c			
jp nz,$4c15		
ld a,$02		
bit 4,c			
jp nz,$4c15		
ret			
call  rlabel_0A_51ED 
call  rlabel_0A_5270 
ld a,($d33e)		
and $20			
ld a,$00		
jp z,$4c15		
ld a,($c203)		
ld c,a			
add a			
add a			
add c			
ld c,a			
ld b,$00		
ld hl,$d49c		
add hl,bc		
di			
ldi a,(hl)		
ld e,(hl)		
ei			
ld d,a			
ld a,$01		
cpl			
inc a			
call  rlabel_0A_74F6 
call  rlabel_0A_5906 
ret z			
ld b,$26		
call  rlabel_00_0832 
jp $545c		
call  rlabel_0A_51ED 
call  rlabel_0A_5270 
ld a,($d33e)		
and $10			
ld a,$00		
jp z,$4c15		
ld a,($d4d5)		
and a			
.DB $20 $0e ; < ['$20', '$0e'] > < 0x4e67 > < a4e67 0A 4E67 | 200E: jr nz, $0E >
ld b,$17		
call  rlabel_00_0832 
ldd a,(hl)		
rla			
.DB $38 $05 ; < ['$38', '$05'] > < 0x4e70 > < a4e70 0A 4E70 | 3805: jr c, $05 >
ld a,(hl)		
cp $c0			
.DB $30 $0d ; < ['$30', '$0d'] > < 0x4e75 > < a4e75 0A 4E75 | 300D: jr nc, $0D >
ld b,$26		
call  rlabel_00_0832 
call  rlabel_0A_5473 
ld a,($d340)		
and a			
ret z			
.incbin "data/0a_4E84.data"
ld b,$1f		
call  rlabel_00_0832 
and a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x4ecc > < a4ecc 0A 4ECC | 2802: jr z, $02 >
dec (hl)		
ret			
call  rlabel_0A_51ED 
ld a,($d33e)		
bit 7,a			
ret nz			
ld a,$00		
jp $4c15		
call  rlabel_0A_5CCB 
call  rlabel_0A_5C54 
ret nz			
ld a,$ff		
ld ($d366),a		
xor a			
ld ($d346),a		
ld a,$00		
jp $4c0d		
ld a,($d4d5)		
and a			
jp nz,$5074		
call  rlabel_0A_51ED 
ld b,$02		
call  rlabel_00_0832 
cp $0b			
.DB $28 $06 ; < ['$28', '$06'] > < 0x4f04 > < a4f04 0A 4F04 | 2806: jr z, $06 >
cp $0c			
.DB $28 $02 ; < ['$28', '$02'] > < 0x4f08 > < a4f08 0A 4F08 | 2802: jr z, $02 >
ld (hl),$0c		
ld a,($c203)		
call  rlabel_00_3456 
ld de,$002e		
add hl,de		
ld a,(hl)		
and a			
.DB $20 $28 ; < ['$20', '$28'] > < 0x4f18 > < a4f18 0A 4F18 | 2028: jr nz, $28 >
ld a,$01		
ld b,$28		
call  rlabel_00_083E 
call  rlabel_0A_5079 
.DB $20 $1c ; < ['$20', '$1c'] > < 0x4f24 > < a4f24 0A 4F24 | 201C: jr nz, $1C >
call  rlabel_0A_575D 
.DB $20 $17 ; < ['$20', '$17'] > < 0x4f29 > < a4f29 0A 4F29 | 2017: jr nz, $17 >
ld a,$03		
ld ($d346),a		
ld a,($c203)		
ld ($d348),a		
call  rlabel_0A_5DA5 
xor a			
ld ($d346),a		
ld a,$00		
jp $4c0d		
ret			
.incbin "data/0a_4F43.data"
call  rlabel_0A_7499 
xor a			
ld (hl),a		
ld b,$0e		
call  rlabel_00_0832 
ld e,a			
call  rlabel_0A_7518 
cp e			
ld a,$08		
jp nz,$4c15		
ld c,$1d		
call  rlabel_0A_750E 
ld a,(hl)		
and $7f			
ret nz			
ld a,$00		
jp $4c15		
.incbin "data/0a_4F96.data"
ld a,($d347)		
and $10			
.DB $20 $07 ; < ['$20', '$07'] > < 0x4fcc > < a4fcc 0A 4FCC | 2007: jr nz, $07 >
ld a,$08		
ld b,$01		
call  rlabel_00_083E 
ld a,($d35d)		
and a			
.DB $28 $26 ; < ['$28', '$26'] > < 0x4fd9 > < a4fd9 0A 4FD9 | 2826: jr z, $26 >
call  rlabel_0A_53AB 
ld de,$0040		
add hl,de		
call  rlabel_0A_539C 
bit 7,h			
.DB $28 $18 ; < ['$28', '$18'] > < 0x4fe7 > < a4fe7 0A 4FE7 | 2818: jr z, $18 >
.incbin "data/0a_4FE9.data"
ld a,($d347)		
and $80			
.DB $28 $1b ; < ['$28', '$1b'] > < 0x5006 > < a5006 0A 5006 | 281B: jr z, $1B >
call  rlabel_0A_74A4 
bit 0,(hl)		
.DB $28 $14 ; < ['$28', '$14'] > < 0x500d > < a500d 0A 500D | 2814: jr z, $14 >
.incbin "data/0a_500F.data"
ld a,($d38e)		
and a			
ret z			
call  rlabel_0A_535D 
ret			
.incbin "data/0a_502C.data"
rlabel_0A_5079:
ld a,($d346)		
and a			
ret nz			
ld a,($d46f)		
and a			
ret nz			
ld a,($d437)		
cp $ff			
ret nz			
ld a,($d438)		
ld b,a			
ld a,($d494)		
cp b			
ret z			
ld a,($d496)		
cp b			
ret			
rlabel_0A_5097:
ld b,$1e		
call  rlabel_00_0832 
and a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x509d > < a509d 0A 509D | 2802: jr z, $02 >
dec (hl)		
ret			
call  rlabel_0A_58D8 
ret z			
ld a,($c203)		
ld ($d4dd),a		
ld hl,$d344		
ld a,(hl)		
and a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x50b0 > < a50b0 0A 50B0 | 2802: jr z, $02 >
.incbin "data/0a_50B2.data"
call  rlabel_0A_67FA 
ld a,$37		
call  rlabel_00_3484 
call nz,$515f		
ld a,$10		
ld b,$1e		
call  rlabel_00_083E 
ld b,$0d		
ld hl,$4b82		
rst $28			
ld a,$01		
ld ($d2e3),a		
ld d,$00		
ld b,$18		
call  rlabel_00_0832 
cp $03			
.DB $28 $3e ; < ['$28', '$3e'] > < 0x50da > < a50da 0A 50DA | 283E: jr z, $3E >
cp $04			
.DB $28 $54 ; < ['$28', '$54'] > < 0x50de > < a50de 0A 50DE | 2854: jr z, $54 >
.DB $18 $02 ; < ['$18', '$02'] > < 0x50e0 > < a50e0 0A 50E0 | 1802: jr $02 >
.incbin "data/0a_50E2.data"
call  rlabel_0A_5147 
ld b,$1d		
call  rlabel_00_083E 
call  rlabel_0A_513C 
ld a,$07		
call  rlabel_0A_4C0D 
ld a,($d45f)		
and a			
ret z			
.incbin "data/0a_50F9.data"
call  rlabel_0A_5147 
ld b,$1d		
call  rlabel_00_083E 
ld a,$06		
ld de,$ffe4		
add hl,de		
ld (hl),a		
ld de,$001e		
add hl,de		
ld a,$20		
ld (hl),a		
call  rlabel_0A_513C 
ret			
call  rlabel_0A_5B46 
call  rlabel_0A_5196 
.DB $18 $a8 ; < ['$18', '$a8'] > < 0x513a > < a513a 0A 513A | 18A8: jr $A8 >
rlabel_0A_513C:
ld a,($d48c)		
and a			
ret z			
.incbin "data/0a_5141.data"
rlabel_0A_5147:
ld a,($d48c)		
and a			
.DB $20 $10 ; < ['$20', '$10'] > < 0x514b > < a514b 0A 514B | 2010: jr nz, $10 >
ld a,($d347)		
and $10			
.DB $20 $03 ; < ['$20', '$03'] > < 0x5152 > < a5152 0A 5152 | 2003: jr nz, $03 >
ld a,$10		
ret			
.incbin "data/0a_5157.data"
rlabel_0A_5196:
ld c,$07		
ld a,($d366)		
inc a			
ret z			
di			
ld a,($d367)		
inc a			
.DB $20 $04 ; < ['$20', '$04'] > < 0x51a2 > < a51a2 0A 51A2 | 2004: jr nz, $04 >
dec a			
ld ($d365),a		
ld a,c			
ld ($d382),a		
ld a,$ff		
ld ($d366),a		
ei			
call  rlabel_0A_6971 
xor a			
ld ($d346),a		
ret			
.incbin "data/0a_51BA.data"
rlabel_0A_51ED:
call  rlabel_0A_58F5 
ret nz			
ld a,($d347)		
and $96			
ret nz			
ld a,c			
sub $08			
ld c,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x51fb > < a51fb 0A 51FB | 3001: jr nc, $01 >
.incbin "data/0a_51FD.data"
ld a,b			
cp d			
.DB $20 $02 ; < ['$20', '$02'] > < 0x5200 > < a5200 0A 5200 | 2002: jr nz, $02 >
ld a,c			
cp e			
.DB $38 $18 ; < ['$38', '$18'] > < 0x5204 > < a5204 0A 5204 | 3818: jr c, $18 >
pop af			
ld b,$18		
call  rlabel_00_0832 
ld e,$0e		
cp $05			
.DB $28 $08 ; < ['$28', '$08'] > < 0x5210 > < a5210 0A 5210 | 2808: jr z, $08 >
ld e,$0f		
cp $0c			
.DB $28 $02 ; < ['$28', '$02'] > < 0x5216 > < a5216 0A 5216 | 2802: jr z, $02 >
ld e,$06		
ld a,e			
jp $4c15		
ld a,$01		
jp $5243		
.incbin "data/0a_5223.data"
rlabel_0A_5243:
ld c,a			
di			
ld b,$0f		
call  rlabel_00_0832 
inc hl			
ld e,a			
ld d,(hl)		
ei			
ld a,c			
call  rlabel_0A_74F6 
ld a,d			
ldd (hl),a		
ld (hl),e		
ret			
.incbin "data/0a_5256.data"
rlabel_0A_525D:
ld a,($d346)		
and a			
ret nz			
ld a,($d33d)		
and $04			
ret z			
.incbin "data/0a_5268.data"
rlabel_0A_5270:
ld a,($d33f)		
bit 0,a			
.DB $20 $0e ; < ['$20', '$0e'] > < 0x5275 > < a5275 0A 5275 | 200E: jr nz, $0E >
bit 1,a			
.DB $20 $1a ; < ['$20', '$1a'] > < 0x5279 > < a5279 0A 5279 | 201A: jr nz, $1A >
ld a,($d33e)		
and $f0			
cp $80			
.DB $28 $26 ; < ['$28', '$26'] > < 0x5282 > < a5282 0A 5282 | 2826: jr z, $26 >
ret			
ld a,($d5b9)		
and a			
ret nz			
ld a,($d346)		
and a			
ret nz			
pop af			
ld a,$04		
jp $4c15		
ld a,($d346)		
and a			
ret nz			
ld a,($d5b9)		
and a			
ret nz			
call  rlabel_0A_52B0 
ret z			
pop bc			
jp $4c15		
.incbin "data/0a_52A7.data"
pop af			
ld a,$03		
jp $4c15		
rlabel_0A_52B0:
ld a,($d347)		
bit 3,a			
call nz,$5748		
ld a,($d33e)		
and $f0			
ld c,$00		
ld d,c			
.DB $28 $11 ; < ['$28', '$11'] > < 0x52c0 > < a52c0 0A 52C0 | 2811: jr z, $11 >
.incbin "data/0a_52C2.data"
ld a,($c203)		
ld ($d4dd),a		
call  rlabel_00_3456 
ld a,c			
add $d4			
ld e,a			
add hl,de		
ld a,(hl)		
cp $ff			
.DB $28 $75 ; < ['$28', '$75'] > < 0x52e4 > < a52e4 0A 52E4 | 2875: jr z, $75 >
call  rlabel_0A_5ECC 
ld a,($cb66)		
ld c,a			
ld b,$b0		
ld hl,$756e		
rst $28			
ld a,c			
and a			
.DB $20 $64 ; < ['$20', '$64'] > < 0x52f5 > < a52f5 0A 52F5 | 2064: jr nz, $64 >
ld a,($d4df)		
cp $a0			
.DB $30 $0c ; < ['$30', '$0c'] > < 0x52fc > < a52fc 0A 52FC | 300C: jr nc, $0C >
ld a,($d38e)		
ld b,$25		
call  rlabel_00_083E 
ld a,$0b		
and a			
ret			
ld b,$18		
call  rlabel_00_0832 
cp $04			
.DB $28 $48 ; < ['$28', '$48'] > < 0x5311 > < a5311 0A 5311 | 2848: jr z, $48 >
ld a,($d347)		
bit 3,a			
.DB $20 $20 ; < ['$20', '$20'] > < 0x5318 > < a5318 0A 5318 | 2020: jr nz, $20 >
ld a,($d38e)		
and a			
.DB $28 $24 ; < ['$28', '$24'] > < 0x531e > < a531e 0A 531E | 2824: jr z, $24 >
.incbin "data/0a_5320.data"
call  rlabel_00_3453 
ld de,$002e		
add hl,de		
ld a,($cb6a)		
ld (hl),a		
ld a,($d38e)		
ld b,$25		
call  rlabel_00_083E 
ld a,$05		
and a			
ret			
xor a			
ret			
rlabel_0A_535D:
ld a,($d4d5)		
and a			
.DB $28 $01 ; < ['$28', '$01'] > < 0x5361 > < a5361 0A 5361 | 2801: jr z, $01 >
.incbin "data/0a_5363.data"
ld a,($d330)		
ld e,$03		
inc a			
cp $03			
.DB $20 $01 ; < ['$20', '$01'] > < 0x536c > < a536c 0A 536C | 2001: jr nz, $01 >
.incbin "data/0a_536E.data"
ld d,a			
call  rlabel_0A_54DA 
and $96			
.DB $28 $05 ; < ['$28', '$05'] > < 0x5375 > < a5375 0A 5375 | 2805: jr z, $05 >
.incbin "data/0a_5377.data"
push de			
ld b,$0d		
ld hl,$6c0a		
rst $28			
pop de			
xor a			
ld ($d340),a		
ld a,($d330)		
cp d			
.DB $28 $00 ; < ['$28', '$00'] > < 0x538c > < a538c 0A 538C | 2800: jr z, $00 >
ld a,d			
ld ($d331),a		
ld ($d330),a		
call  rlabel_0A_68A8 
call  rlabel_0A_5B46 
ret			
rlabel_0A_539C:
di			
ld a,($d351)		
cpl			
ld c,a			
ld a,($d352)		
ei			
cpl			
ld b,a			
inc bc			
add hl,bc		
ret			
rlabel_0A_53AB:
ld a,($d367)		
inc a			
.DB $20 $0b ; < ['$20', '$0b'] > < 0x53af > < a53af 0A 53AF | 200B: jr nz, $0B >
di			
ld b,$0f		
call  rlabel_00_0832 
inc hl			
ld h,(hl)		
ei			
ld l,a			
ret			
ld hl,$d37c		
di			
ldi a,(hl)		
ld h,(hl)		
ei			
ld l,a			
ret			
rlabel_0A_53C5:
ld hl,$d351		
di			
ldi a,(hl)		
cpl			
ld c,a			
ld a,(hl)		
ei			
cpl			
ld b,a			
inc bc			
ld a,($d4ba)		
cpl			
ld e,a			
ld a,($d4bb)		
cpl			
ld d,a			
inc de			
di			
ld a,($d43a)		
ld l,a			
ld a,($d43b)		
ei			
ld h,a			
add hl,bc		
ld a,l			
ld ($d443),a		
ld a,h			
ld ($d444),a		
ld a,($d4ad)		
ld c,a			
ld b,$00		
add hl,bc		
ld a,l			
ld ($d445),a		
ld a,h			
ld ($d446),a		
ld hl,$d49c		
ldi a,(hl)		
ld l,(hl)		
ld h,a			
add hl,de		
ld a,l			
ld ($d416),a		
ld a,h			
ld ($d417),a		
ld hl,$d4a1		
ldi a,(hl)		
ld l,(hl)		
ld h,a			
add hl,de		
ld a,l			
ld ($d418),a		
ld a,h			
ld ($d419),a		
ld hl,$d4a6		
ldi a,(hl)		
ld l,(hl)		
ld h,a			
add hl,de		
ld a,l			
ld ($d41a),a		
ld a,h			
ld ($d41b),a		
ret			
.incbin "data/0a_542C.data"
ld ($ff00+$99),a	
ld c,$11		
call  rlabel_0A_750E 
ldd a,(hl)		
ld e,a			
push hl			
di			
ldd a,(hl)		
ld d,(hl)		
ei			
ld c,a			
ld a,($ff00+$99)	
call  rlabel_0A_549A 
dec b			
.DB $18 $14 ; < ['$18', '$14'] > < 0x5471 > < a5471 0A 5471 | 1814: jr $14 >
rlabel_0A_5473:
ld ($ff00+$99),a	
ld c,$11		
call  rlabel_0A_750E 
ldd a,(hl)		
ld e,a			
push hl			
di			
ldd a,(hl)		
ld d,(hl)		
ei			
ld c,a			
ld a,($ff00+$99)	
call  rlabel_0A_5495 
add hl,de		
ld a,c			
adc b			
ld e,l			
ld d,h			
pop hl			
ldi (hl),a		
ld a,e			
di			
ldd (hl),a		
dec hl			
ld (hl),d		
ei			
ret			
rlabel_0A_5495:
ld hl,$54a7		
.DB $18 $03 ; < ['$18', '$03'] > < 0x5498 > < a5498 0A 5498 | 1803: jr $03 >
rlabel_0A_549A:
ld hl,$54bf		
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x54a0 > < a54a0 0A 54A0 | 3001: jr nc, $01 >
.incbin "data/0a_54A2.data"
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ret			
.incbin "data/0a_54A7.data"
rlabel_0A_54D7:
.DB $fa $03 $c2 ; < ['$fa', '$03', '$c2'] > < 0x54d7 > < a54d7 0A 54D7 | FA03C2: ld a, [$C203] >
rlabel_0A_54DA:
.DB $21 $af $d5 ; < ['$21', '$af', '$d5'] > < 0x54da > < a54da 0A 54DA | 21AFD5: ld hl, $D5AF >
call  rlabel_00_0462 
ld a,(hl)		
ret			
.incbin "data/0a_54E2.data"
rlabel_0A_54F3:
call  rlabel_0A_54D7 
ld ($d347),a		
ld e,a			
ld a,($d365)		
inc a			
ret nz			
ld a,($d346)		
and a			
ret nz			
ld b,$22		
call  rlabel_00_0832 
cp e			
ret z			
ld (hl),e		
ld d,a			
xor e			
and e			
.DB $28 $32 ; < ['$28', '$32'] > < 0x550f > < a550f 0A 550F | 2832: jr z, $32 >
rra			
.DB $30 $04 ; < ['$30', '$04'] > < 0x5512 > < a5512 0A 5512 | 3004: jr nc, $04 >
.incbin "data/0a_5514.data"
rra			
.DB $30 $04 ; < ['$30', '$04'] > < 0x5519 > < a5519 0A 5519 | 3004: jr nc, $04 >
.incbin "data/0a_551B.data"
rra			
.DB $30 $04 ; < ['$30', '$04'] > < 0x5520 > < a5520 0A 5520 | 3004: jr nc, $04 >
.incbin "data/0a_5522.data"
rra			
.DB $30 $04 ; < ['$30', '$04'] > < 0x5527 > < a5527 0A 5527 | 3004: jr nc, $04 >
.incbin "data/0a_5529.data"
rra			
.DB $30 $04 ; < ['$30', '$04'] > < 0x552e > < a552e 0A 552E | 3004: jr nc, $04 >
.incbin "data/0a_5530.data"
rra			
.DB $30 $04 ; < ['$30', '$04'] > < 0x5535 > < a5535 0A 5535 | 3004: jr nc, $04 >
.incbin "data/0a_5537.data"
rra			
rra			
.DB $30 $04 ; < ['$30', '$04'] > < 0x553d > < a553d 0A 553D | 3004: jr nc, $04 >
ld hl,$55b0		
push hl			
ld a,e			
xor d			
and d			
.DB $28 $2c ; < ['$28', '$2c'] > < 0x5546 > < a5546 0A 5546 | 282C: jr z, $2C >
.incbin "data/0a_5548.data"
ret			
.incbin "data/0a_5575.data"
call  rlabel_0A_55EF 
ld b,$18		
call  rlabel_00_0832 
cp $07			
ret z			
.incbin "data/0a_558E.data"
call  rlabel_0A_74A4 
bit 0,(hl)		
call z,$55ea		
.DB $18 $c9 ; < ['$18', '$c9'] > < 0x55b8 > < a55b8 0A 55B8 | 18C9: jr $C9 >
.incbin "data/0a_55BA.data"
ld hl,$d334		
inc (hl)		
ret			
rlabel_0A_55EF:
ld a,($c203)		
ld hl,$d2f2		
call  rlabel_00_0462 
xor a			
ld (hl),a		
ret			
rlabel_0A_55FB:
call  rlabel_0A_4D8C 
ld e,a			
ld c,$21		
call  rlabel_0A_750E 
bit 0,(hl)		
ld a,e			
.DB $20 $0a ; < ['$20', '$0a'] > < 0x5607 > < a5607 0A 5607 | 200A: jr nz, $0A >
cp $4c			
.DB $38 $02 ; < ['$38', '$02'] > < 0x560b > < a560b 0A 560B | 3802: jr c, $02 >
xor a			
ret			
.incbin "data/0a_560F.data"
rlabel_0A_5633:
ld a,($d346)		
and a			
ret nz			
ld a,($d367)		
inc a			
ret nz			
ld a,($d5aa)		
and $03			
add a			
ld e,a			
ld d,$00		
ld hl,$564b		
add hl,de		
jp hl			
.DB $18 $3d ; < ['$18', '$3d'] > < 0x564b > < a564b 0A 564B | 183D: jr $3D >
.DB $18 $54 ; < ['$18', '$54'] > < 0x564d > < a564d 0A 564D | 1854: jr $54 >
.DB $18 $6b ; < ['$18', '$6b'] > < 0x564f > < a564f 0A 564F | 186B: jr $6B >
ld b,$00		
ld a,($d503)		
and a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x5657 > < a5657 0A 5657 | 2802: jr z, $02 >
.incbin "data/0a_5659.data"
ld a,($d504)		
and a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x565f > < a565f 0A 565F | 2802: jr z, $02 >
.incbin "data/0a_5661.data"
ld c,$7c		
ld a,b			
and a			
.DB $28 $6c ; < ['$28', '$6c'] > < 0x5667 > < a5667 0A 5667 | 286C: jr z, $6C >
.incbin "data/0a_5669.data"
ld c,$70		
ld a,($d5af)		
and $6f			
.DB $28 $42 ; < ['$28', '$42'] > < 0x5691 > < a5691 0A 5691 | 2842: jr z, $42 >
.incbin "data/0a_5693.data"
ld c,$74		
ld a,($d5b0)		
and $6f			
.DB $28 $29 ; < ['$28', '$29'] > < 0x56aa > < a56aa 0A 56AA | 2829: jr z, $29 >
.incbin "data/0a_56AC.data"
ld c,$78		
ld a,($d5b1)		
and $6f			
.DB $28 $10 ; < ['$28', '$10'] > < 0x56c3 > < a56c3 0A 56C3 | 2810: jr z, $10 >
.incbin "data/0a_56C5.data"
ld b,$c0		
ld (bc),a		
ret			
rlabel_0A_56D9:
ld hl,$c070		
ld bc,$0004		
ld a,($d367)		
inc a			
.DB $20 $04 ; < ['$20', '$04'] > < 0x56e3 > < a56e3 0A 56E3 | 2004: jr nz, $04 >
ld (hl),b		
add hl,bc		
ld (hl),b		
add hl,bc		
ld (hl),b		
add hl,bc		
ld (hl),b		
ret			
.incbin "data/0a_56ED.data"
rlabel_0A_575D:
ld a,($d5af)		
and $96			
.DB $28 $06 ; < ['$28', '$06'] > < 0x5762 > < a5762 0A 5762 | 2806: jr z, $06 >
ld a,($d3b3)		
cp $0a			
ret nz			
ld a,($d5b0)		
and $96			
.DB $28 $06 ; < ['$28', '$06'] > < 0x576f > < a576f 0A 576F | 2806: jr z, $06 >
.incbin "data/0a_5771.data"
ld a,($d5b1)		
and $96			
ret z			
.incbin "data/0a_577D.data"
rlabel_0A_5783:
ld a,($d367)		
inc a			
.DB $28 $43 ; < ['$28', '$43'] > < 0x5787 > < a5787 0A 5787 | 2843: jr z, $43 >
ld a,($d38b)		
and a			
.DB $20 $76 ; < ['$20', '$76'] > < 0x578d > < a578d 0A 578D | 2076: jr nz, $76 >
ld hl,$d387		
ld de,$d37b		
ld bc,$d4b4		
call  rlabel_0A_5840 
ld hl,$57d5		
push hl			
ld de,$d37b		
ld a,($d365)		
and a			
.DB $28 $10 ; < ['$28', '$10'] > < 0x57a6 > < a57a6 0A 57A6 | 2810: jr z, $10 >
cp $01			
.DB $28 $14 ; < ['$28', '$14'] > < 0x57aa > < a57aa 0A 57AA | 2814: jr z, $14 >
cp $ff			
.DB $28 $18 ; < ['$28', '$18'] > < 0x57ae > < a57ae 0A 57AE | 2818: jr z, $18 >
call  rlabel_0A_583A 
call  rlabel_0A_5821 
.DB $18 $74 ; < ['$18', '$74'] > < 0x57b6 > < a57b6 0A 57B6 | 1874: jr $74 >
call  rlabel_0A_5824 
call  rlabel_0A_582C 
.DB $18 $77 ; < ['$18', '$77'] > < 0x57be > < a57be 0A 57BE | 1877: jr $77 >
call  rlabel_0A_582F 
call  rlabel_0A_5821 
.DB $18 $6f ; < ['$18', '$6f'] > < 0x57c6 > < a57c6 0A 57C6 | 186F: jr $6F >
.incbin "data/0a_57C8.data"
call  rlabel_0A_5821 
call  rlabel_0A_582C 
call  rlabel_0A_5837 
ld hl,$d447		
ld de,$d439		
ld bc,$d4af		
call  rlabel_0A_5840 
ld a,($d457)		
and a			
.DB $20 $2c ; < ['$20', '$2c'] > < 0x57e5 > < a57e5 0A 57E5 | 202C: jr nz, $2C >
ld hl,$d44b		
ld de,$d439		
ld bc,$d4b9		
call  rlabel_0A_5840 
ld hl,$d4ab		
ldi a,(hl)		
ld b,a			
ldi a,(hl)		
add (hl)		
.DB $30 $01 ; < ['$30', '$01'] > < 0x57fa > < a57fa 0A 57FA | 3001: jr nc, $01 >
inc b			
ld ($d4ba),a		
ld a,b			
ld ($d4bb),a		
ret			
.incbin "data/0a_5805.data"
rlabel_0A_5821:
ld de,$d3a9		
rlabel_0A_5824:
ld hl,$d3b4		
ld bc,$d4a0		
.DB $18 $14 ; < ['$18', '$14'] > < 0x582a > < a582a 0A 582A | 1814: jr $14 >
rlabel_0A_582C:
ld de,$d3d2		
rlabel_0A_582F:
ld hl,$d3dd		
ld bc,$d4a5		
.DB $18 $09 ; < ['$18', '$09'] > < 0x5835 > < a5835 0A 5835 | 1809: jr $09 >
rlabel_0A_5837:
ld de,$d3fb		
rlabel_0A_583A:
ld hl,$d406		
ld bc,$d4aa		
rlabel_0A_5840:
di			
ldi a,(hl)		
ld (bc),a		
dec bc			
ld a,(de)		
inc de			
add (hl)		
inc hl			
ld (bc),a		
dec bc			
ldi a,(hl)		
ld (bc),a		
dec bc			
ld a,(de)		
inc de			
bit 7,(hl)		
.DB $20 $0a ; < ['$20', '$0a'] > < 0x5851 > < a5851 0A 5851 | 200A: jr nz, $0A >
add (hl)		
ld (bc),a		
dec bc			
ld a,(de)		
ei			
.DB $30 $01 ; < ['$30', '$01'] > < 0x5858 > < a5858 0A 5858 | 3001: jr nc, $01 >
inc a			
ld (bc),a		
ret			
add (hl)		
cp (hl)			
ld (bc),a		
dec bc			
ld a,(de)		
ei			
.DB $38 $01 ; < ['$38', '$01'] > < 0x5863 > < a5863 0A 5863 | 3801: jr c, $01 >
dec a			
ld (bc),a		
ret			
rlabel_0A_5868:
ld hl,$d4b0		
ld de,$d4ab		
ldi a,(hl)		
cpl			
ld b,a			
ldi a,(hl)		
cpl			
ld c,a			
inc bc			
push hl			
ld a,(de)		
inc de			
ld h,a			
ld a,(de)		
inc de			
ld l,a			
add hl,bc		
bit 7,h			
.DB $20 $10 ; < ['$20', '$10'] > < 0x587f > < a587f 0A 587F | 2010: jr nz, $10 >
ld a,h			
and a			
.DB $20 $3f ; < ['$20', '$3f'] > < 0x5883 > < a5883 0A 5883 | 203F: jr nz, $3F >
ld a,l			
pop hl			
cp (hl)			
.DB $30 $3b ; < ['$30', '$3b'] > < 0x5888 > < a5888 0A 5888 | 303B: jr nc, $3B >
ld a,(de)		
and a			
.DB $28 $37 ; < ['$28', '$37'] > < 0x588c > < a588c 0A 588C | 2837: jr z, $37 >
inc hl			
.DB $18 $15 ; < ['$18', '$15'] > < 0x588f > < a588f 0A 588F | 1815: jr $15 >
inc h			
.DB $20 $30 ; < ['$20', '$30'] > < 0x5892 > < a5892 0A 5892 | 2030: jr nz, $30 >
ld a,(de)		
and a			
.DB $28 $2c ; < ['$28', '$2c'] > < 0x5896 > < a5896 0A 5896 | 282C: jr z, $2C >
ld h,a			
ld a,l			
cpl			
inc a			
.DB $28 $26 ; < ['$28', '$26'] > < 0x589c > < a589c 0A 589C | 2826: jr z, $26 >
cp h			
.DB $30 $23 ; < ['$30', '$23'] > < 0x589f > < a589f 0A 589F | 3023: jr nc, $23 >
pop hl			
ldi a,(hl)		
and a			
.DB $28 $1f ; < ['$28', '$1f'] > < 0x58a4 > < a58a4 0A 58A4 | 281F: jr z, $1F >
inc de			
ldi a,(hl)		
cpl			
inc a			
ld c,a			
ld a,(de)		
add c			
bit 7,a			
.DB $20 $07 ; < ['$20', '$07'] > < 0x58af > < a58af 0A 58AF | 2007: jr nz, $07 >
cp (hl)			
.DB $30 $13 ; < ['$30', '$13'] > < 0x58b2 > < a58b2 0A 58B2 | 3013: jr nc, $13 >
ld a,$01		
and a			
ret			
inc de			
cpl			
inc a			
ld l,e			
ld h,d			
cp (hl)			
.DB $30 $07 ; < ['$30', '$07'] > < 0x58be > < a58be 0A 58BE | 3007: jr nc, $07 >
ld a,$01		
and a			
ret			
pop af			
xor a			
ret			
.incbin "data/0a_58C7.data"
rlabel_0A_58C9:
ld a,($c203)		
ld c,a			
add a			
add a			
add c			
ld c,a			
ld b,$00		
ld hl,$d49c		
add hl,bc		
ret			
rlabel_0A_58D8:
call  rlabel_0A_58C9 
ld de,$d4b5		
jp $586e		
.incbin "data/0a_58E1.data"
rlabel_0A_58F5:
ld a,($c203)		
ld c,a			
add a			
add a			
add c			
ld c,a			
ld b,$00		
ld hl,$d49c		
add hl,bc		
ldi a,(hl)		
ld e,(hl)		
ld d,a			
rlabel_0A_5906:
ld a,($d4ba)		
ld c,a			
ld a,($d4bb)		
ld b,a			
cp d			
.DB $20 $02 ; < ['$20', '$02'] > < 0x590f > < a590f 0A 590F | 2002: jr nz, $02 >
ld a,c			
cp e			
.DB $30 $04 ; < ['$30', '$04'] > < 0x5913 > < a5913 0A 5913 | 3004: jr nc, $04 >
ld a,$01		
and a			
ret			
xor a			
ret			
rlabel_0A_591B:
push bc			
push de			
call  rlabel_0A_5783 
ld hl,$d4ab		
.DB $18 $35 ; < ['$18', '$35'] > < 0x5923 > < a5923 0A 5923 | 1835: jr $35 >
push bc			
push de			
ld hl,$d43a		
di			
ldi a,(hl)		
ld h,(hl)		
ei			
ld l,a			
.DB $18 $33 ; < ['$18', '$33'] > < 0x592f > < a592f 0A 592F | 1833: jr $33 >
.incbin "data/0a_5931.data"
rlabel_0A_5948:
push bc			
push de			
call  rlabel_0A_5783 
pop de			
push de			
ld a,e			
add a			
add a			
add e			
ld c,a			
ld b,$00		
ld hl,$d49c		
add hl,bc		
ldi a,(hl)		
ld d,a			
ldi a,(hl)		
ld e,a			
ld l,(hl)		
srl l			
ld h,$00		
add hl,de		
pop af			
add $40			
ld c,a			
ld b,$00		
call  rlabel_00_04B3 
add hl,bc		
ld a,l			
di			
ld ($d35a),a		
ld a,h			
ld ($d35b),a		
ei			
pop bc			
call  rlabel_0A_59C3 
ld a,c			
ld ($d359),a		
ret			
rlabel_0A_5981:
ld a,($d359)		
and a			
ld c,$00		
ret nz			
inc c			
ret			
.incbin "data/0a_598A.data"
rlabel_0A_59A9:
ld a,$01		
ld ($d35d),a		
ret			
rlabel_0A_59AF:
xor a			
ld ($d35d),a		
ret			
.incbin "data/0a_59B4.data"
rlabel_0A_59C3:
ld e,l			
ld d,h			
ld hl,$d351		
di			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
cp e			
.DB $20 $07 ; < ['$20', '$07'] > < 0x59cd > < a59cd 0A 59CD | 2007: jr nz, $07 >
ld a,h			
sub d			
.DB $20 $03 ; < ['$20', '$03'] > < 0x59d1 > < a59d1 0A 59D1 | 2003: jr nz, $03 >
ei			
ld c,a			
ret			
ei			
ld a,e			
cpl			
ld e,a			
ld a,d			
cpl			
ld d,a			
inc de			
add hl,de		
bit 7,h			
ret nz			
ld a,c			
cpl			
inc a			
ld c,a			
ret			
ld c,$08		
ld a,($d367)		
inc a			
.DB $28 $13 ; < ['$28', '$13'] > < 0x59ed > < a59ed 0A 59ED | 2813: jr z, $13 >
ld hl,$d390		
set 1,(hl)		
call  rlabel_00_0AA0 
call  rlabel_0A_690A 
ld hl,$d390		
res 1,(hl)		
jp $693e		
.incbin "data/0a_5A02.data"
rlabel_0A_5A15:
call  rlabel_0A_690E 
ld a,($d367)		
inc a			
ret z			
ld a,($d365)		
call  rlabel_00_343A 
ld b,$01		
call  rlabel_00_0832 
ld ($d382),a		
ld a,$fc		
ld ($d367),a		
ld a,$ff		
ld ($d366),a		
call  rlabel_0A_6971 
ld a,($d367)		
inc a			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x5a3c > < a5a3c 0A 5A3C | 20FA: jr nz, $FA >
ret			
.incbin "data/0a_5A3F.data"
ld a,($d485)		
ld b,a			
ld a,($d4d5)		
or b			
jp nz,$641e		
ld ($ff00+$8a),a	
ld hl,$d446		
ldd a,(hl)		
and a			
.DB $20 $12 ; < ['$20', '$12'] > < 0x5a9d > < a5a9d 0A 5A9D | 2012: jr nz, $12 >
ld a,(hl)		
cp $a4			
.DB $38 $12 ; < ['$38', '$12'] > < 0x5aa2 > < a5aa2 0A 5AA2 | 3812: jr c, $12 >
ld b,$01		
cp $bc			
.DB $38 $02 ; < ['$38', '$02'] > < 0x5aa8 > < a5aa8 0A 5AA8 | 3802: jr c, $02 >
ld b,$02		
ld a,b			
ld ($d353),a		
ret			
.incbin "data/0a_5AB1.data"
cp $9c			
.DB $38 $08 ; < ['$38', '$08'] > < 0x5ab8 > < a5ab8 0A 5AB8 | 3808: jr c, $08 >
xor a			
ld ($d353),a		
ld a,$01		
ld ($ff00+$8a),a	
ld hl,$d360		
bit 7,(hl)		
.DB $28 $1f ; < ['$28', '$1f'] > < 0x5ac7 > < a5ac7 0A 5AC7 | 281F: jr z, $1F >
call  rlabel_0A_5B12 
and a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x5acd > < a5acd 0A 5ACD | 2807: jr z, $07 >
inc a			
.DB $28 $0c ; < ['$28', '$0c'] > < 0x5ad0 > < a5ad0 0A 5AD0 | 280C: jr z, $0C >
ld a,$03		
.DB $18 $0e ; < ['$18', '$0e'] > < 0x5ad4 > < a5ad4 0A 5AD4 | 180E: jr $0E >
ld hl,$d360		
res 7,(hl)		
xor a			
.DB $18 $06 ; < ['$18', '$06'] > < 0x5adc > < a5adc 0A 5ADC | 1806: jr $06 >
ld a,($ff00+$8a)	
and a			
ret nz			
ld a,$fd		
ld ($d353),a		
ret			
call  rlabel_0A_5B12 
and a			
.DB $28 $f6 ; < ['$28', '$f6'] > < 0x5aec > < a5aec 0A 5AEC | 28F6: jr z, $F6 >
ld b,a			
ld a,($d346)		
and a			
ld a,b			
.DB $20 $ee ; < ['$20', '$ee'] > < 0x5af4 > < a5af4 0A 5AF4 | 20EE: jr nz, $EE >
cp $ff			
.DB $28 $09 ; < ['$28', '$09'] > < 0x5af8 > < a5af8 0A 5AF8 | 2809: jr z, $09 >
ld a,l			
cp $c9			
ld a,b			
.DB $38 $e4 ; < ['$38', '$e4'] > < 0x5afe > < a5afe 0A 5AFE | 38E4: jr c, $E4 >
inc a			
.DB $18 $e1 ; < ['$18', '$e1'] > < 0x5b01 > < a5b01 0A 5B01 | 18E1: jr $E1 >
ld a,l			
cp $5f			
ld a,b			
.DB $30 $db ; < ['$30', '$db'] > < 0x5b07 > < a5b07 0A 5B07 | 30DB: jr nc, $DB >
.incbin "data/0a_5B09.data"
rlabel_0A_5B0C:
call  rlabel_0A_53AB 
jp $539c		
rlabel_0A_5B12:
call  rlabel_0A_5B0C 
bit 7,h			
.DB $20 $12 ; < ['$20', '$12'] > < 0x5b17 > < a5b17 0A 5B17 | 2012: jr nz, $12 >
ld a,h			
and a			
.DB $20 $0b ; < ['$20', '$0b'] > < 0x5b1b > < a5b1b 0A 5B1B | 200B: jr nz, $0B >
ld a,l			
cp $c8			
.DB $30 $06 ; < ['$30', '$06'] > < 0x5b20 > < a5b20 0A 5B20 | 3006: jr nc, $06 >
cp $90			
.DB $38 $05 ; < ['$38', '$05'] > < 0x5b24 > < a5b24 0A 5B24 | 3805: jr c, $05 >
xor a			
ret			
ld a,$01		
ret			
ld e,l			
ld a,($ff00+$8a)	
and a			
.DB $20 $f5 ; < ['$20', '$f5'] > < 0x5b2f > < a5b2f 0A 5B2F | 20F5: jr nz, $F5 >
ld c,$17		
call  rlabel_0A_750E 
bit 7,(hl)		
.DB $20 $ec ; < ['$20', '$ec'] > < 0x5b38 > < a5b38 0A 5B38 | 20EC: jr nz, $EC >
ld l,e			
ld a,$ff		
ret			
rlabel_0A_5B3E:
xor a			
ld ($d353),a		
ld ($d354),a		
ret			
rlabel_0A_5B46:
ld hl,$d360		
set 7,(hl)		
ret			
rlabel_0A_5B4C:
xor a			
ld ($d349),a		
ld ($d34c),a		
ld ($d341),a		
inc a			
ld ($d34a),a		
ld a,($c203)		
ld ($d4dd),a		
add a			
ld hl,$d416		
call  rlabel_00_0462 
ldi a,(hl)		
bit 7,(hl)		
.DB $28 $01 ; < ['$28', '$01'] > < 0x5b6a > < a5b6a 0A 5B6A | 2801: jr z, $01 >
.incbin "data/0a_5B6C.data"
ld hl,$d34f		
add (hl)		
ld (hl),$00		
.DB $30 $02 ; < ['$30', '$02'] > < 0x5b73 > < a5b73 0A 5B73 | 3002: jr nc, $02 >
.incbin "data/0a_5B75.data"
ld ($ff00+$99),a	
ld c,a			
ld b,$b0		
ld hl,$71ab		
rst $28			
call  rlabel_0A_5EC7 
.DB $28 $06 ; < ['$28', '$06'] > < 0x5b83 > < a5b83 0A 5B83 | 2806: jr z, $06 >
.incbin "data/0a_5B85.data"
call  rlabel_0A_56D9 
call  rlabel_0A_68A2 
ld a,($d535)		
add a			
ld hl,$5bb6		
call  rlabel_00_0462 
call  rlabel_0A_69AD 
ldi a,(hl)		
ld ($d366),a		
ld c,a			
ld a,(hl)		
ld ($d34d),a		
and a			
.DB $28 $06 ; < ['$28', '$06'] > < 0x5ba8 > < a5ba8 0A 5BA8 | 2806: jr z, $06 >
.incbin "data/0a_5BAA.data"
ld a,$ff		
ld ($d381),a		
ret			
.incbin "data/0a_5BB6.data"
rlabel_0A_5C54:
.DB $fa $4d $d3 ; < ['$fa', '$4d', '$d3'] > < 0x5c54 > < a5c54 0A 5C54 | FA4DD3: ld a, [$D34D] >
ld e,a			
and a			
.DB $28 $29 ; < ['$28', '$29'] > < 0x5c59 > < a5c59 0A 5C59 | 2829: jr z, $29 >
.incbin "data/0a_5C5B.data"
ld a,($d367)		
inc a			
.DB $20 $05 ; < ['$20', '$05'] > < 0x5c88 > < a5c88 0A 5C88 | 2005: jr nz, $05 >
ld a,($d366)		
inc a			
ret z			
ld a,$01		
ret			
.incbin "data/0a_5C92.data"
rlabel_0A_5CBF:
ld hl,$d390		
set 2,(hl)		
ret			
rlabel_0A_5CC5:
ld hl,$d390		
res 2,(hl)		
ret			
rlabel_0A_5CCB:
call  rlabel_0A_70F9 
ld hl,$d349		
ld a,(hl)		
and a			
jp z,$5d62		
dec (hl)		
ld a,($d34a)		
and a			
ret z			
call  rlabel_0A_54D7 
and $80			
ret nz			
ld a,($d34b)		
cp $63			
ret nc			
ld a,($d38e)		
and a			
.DB $20 $32 ; < ['$20', '$32'] > < 0x5cec > < a5cec 0A 5CEC | 2032: jr nz, $32 >
ld a,($d341)		
and a			
.DB $28 $2f ; < ['$28', '$2f'] > < 0x5cf2 > < a5cf2 0A 5CF2 | 282F: jr z, $2F >
ld a,($cfd0)		
cp $66			
.DB $28 $0d ; < ['$28', '$0d'] > < 0x5cf9 > < a5cf9 0A 5CF9 | 280D: jr z, $0D >
ld a,($d2dd)		
and a			
.DB $20 $07 ; < ['$20', '$07'] > < 0x5cff > < a5cff 0A 5CFF | 2007: jr nz, $07 >
ld a,($d498)		
cp $01			
.DB $28 $08 ; < ['$28', '$08'] > < 0x5d06 > < a5d06 0A 5D06 | 2808: jr z, $08 >
ld a,($d349)		
and a			
ld a,$00		
.DB $20 $13 ; < ['$20', '$13'] > < 0x5d0e > < a5d0e 0A 5D0E | 2013: jr nz, $13 >
ld b,$0d		
ld hl,$6604		
rst $28			
xor a			
ld ($d341),a		
ld a,($d33e)		
ld ($d33f),a		
ld a,($d33f)		
bit 0,a			
.DB $28 $4c ; < ['$28', '$4c'] > < 0x5d25 > < a5d25 0A 5D25 | 284C: jr z, $4C >
.incbin "data/0a_5D27.data"
ld a,($d33f)		
and $03			
ret z			
call  rlabel_0A_70EF 
xor a			
ld ($d34a),a		
ld ($d34b),a		
ret			
and $02			
ret z			
.incbin "data/0a_5D76.data"
rlabel_0A_5D90:
ld c,$03		
ld d,$54		
ld a,($c203)		
ld ($d4dd),a		
ld e,a			
call  rlabel_0A_5948 
call  rlabel_0A_5981 
dec c			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x5da2 > < a5da2 0A 5DA2 | 20FA: jr nz, $FA >
ret			
rlabel_0A_5DA5:
call  rlabel_0A_5EEA 
ld a,$08		
ld ($d364),a		
call  rlabel_0A_69AD 
ld ($d4dd),a		
call  rlabel_0A_6951 
ld a,$0d		
ld ($d366),a		
ld a,$fe		
ld ($d381),a		
xor a			
ld ($d382),a		
ld b,$01		
call  rlabel_00_083E 
call  rlabel_0A_5EA6 
.DB $28 $19 ; < ['$28', '$19'] > < 0x5dcc > < a5dcc 0A 5DCC | 2819: jr z, $19 >
.incbin "data/0a_5DCE.data"
ld b,$23		
call  rlabel_00_0832 
ld ($d4df),a		
ld b,$0d		
ld hl,$4f11		
rst $28			
ld b,$0d		
ld hl,$4fbc		
rst $28			
call  rlabel_00_027C 
ld b,$0d		
ld hl,$43c3		
rst $28			
ld a,($d366)		
cp $fe			
.DB $20 $f0 ; < ['$20', '$f0'] > < 0x5e09 > < a5e09 0A 5E09 | 20F0: jr nz, $F0 >
ld a,($d59f)		
and a			
.DB $20 $ea ; < ['$20', '$ea'] > < 0x5e0f > < a5e0f 0A 5E0F | 20EA: jr nz, $EA >
xor a			
ld b,$01		
call  rlabel_00_083E 
ld b,$23		
call  rlabel_00_0832 
ld c,a			
inc hl			
ld e,(hl)		
ld a,($c203)		
ld d,a			
ld b,$0c		
ld hl,$4d84		
rst $28			
call  rlabel_0A_5F06 
ret			
rlabel_0A_5E2D:
ld a,($c203)		
ld hl,$d2f2		
add l			
ld l,a			
.DB $20 $01 ; < ['$20', '$01'] > < 0x5e35 > < a5e35 0A 5E35 | 2001: jr nz, $01 >
.incbin "data/0a_5E37.data"
ld a,(hl)		
and a			
ret z			
.incbin "data/0a_5E3B.data"
rlabel_0A_5EA6:
ld a,($d556)		
and a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x5eaa > < a5eaa 0A 5EAA | 2802: jr z, $02 >
.incbin "data/0a_5EAC.data"
ld b,$23		
call  rlabel_00_0832 
ld e,a			
call  rlabel_0A_5B3E 
call  rlabel_00_3453 
ld d,(hl)		
ld b,$88		
ld hl,$6fe7		
rst $28			
ld b,$b0		
ld hl,$79c6		
rst $28			
rlabel_0A_5EC7:
ld a,($d556)		
and a			
ret z			
rlabel_0A_5ECC:
ld ($d4df),a		
ld b,$23		
call  rlabel_00_083E 
ld b,$0d		
ld hl,$4f11		
rst $28			
ld a,$01		
and a			
ret			
.incbin "data/0a_5EDE.data"
rlabel_0A_5EE4:
ld hl,$d462		
res 1,(hl)		
ret			
rlabel_0A_5EEA:
ld a,($c203)		
ld ($d33b),a		
call  rlabel_0A_5B3E 
call  rlabel_0A_6826 
call  rlabel_0A_68A2 
call  rlabel_0A_56D9 
call  rlabel_0A_59AF 
call  rlabel_0A_5D90 
call  rlabel_0A_5F3D 
ret			
rlabel_0A_5F06:
ld a,$07		
ld ($d363),a		
call  rlabel_0A_5A15 
call  rlabel_0A_59A9 
call  rlabel_0A_5F43 
ld a,($d33b)		
call  rlabel_00_343A 
call  rlabel_0A_5B46 
call  rlabel_0A_68A8 
call  rlabel_0A_7577 
ld a,($d503)		
and a			
ret z			
.incbin "data/0a_5F28.data"
rlabel_0A_5F3D:
ld hl,$d462		
res 6,(hl)		
ret			
rlabel_0A_5F43:
ld hl,$d462		
set 6,(hl)		
ret			
rlabel_0A_5F49:
call  rlabel_0A_6031 
cp c			
ret z			
ld a,($d4fe)		
ld b,a			
add a			
add b			
ld hl,$5f77		
call  rlabel_00_0462 
ldi a,(hl)		
bit 7,a			
.DB $20 $06 ; < ['$20', '$06'] > < 0x5f5d > < a5f5d 0A 5F5D | 2006: jr nz, $06 >
ld b,a			
and c			
cp b			
ret z			
.DB $18 $04 ; < ['$18', '$04'] > < 0x5f63 > < a5f63 0A 5F63 | 1804: jr $04 >
.incbin "data/0a_5F65.data"
ld a,($d48f)		
ld e,a			
ldi a,(hl)		
ld ($d48f),a		
ld b,a			
ldi a,(hl)		
ld ($d492),a		
ret			
.incbin "data/0a_5F77.data"
ld a,($d4fe)		
ld b,a			
add a			
add b			
ld hl,$5f78		
call  rlabel_00_0462 
ldi a,(hl)		
and a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x6027 > < a6027 0A 6027 | 2807: jr z, $07 >
ld ($d496),a		
ld a,(hl)		
ld ($d497),a		
ret			
rlabel_0A_6031:
ld c,$00		
ld a,($d52c)		
cpl			
rla			
rl c			
ld a,($d523)		
cpl			
rla			
rl c			
ld a,($d51a)		
cpl			
rla			
rl c			
ld a,($d511)		
cpl			
rla			
rl c			
ld a,($d508)		
cpl			
rla			
rl c			
ld hl,$d48d		
ldi a,(hl)		
ldd (hl),a		
ld (hl),c		
ret			
rlabel_0A_605D:
ld hl,$d49b		
ld a,(hl)		
and a			
.DB $28 $03 ; < ['$28', '$03'] > < 0x6062 > < a6062 0A 6062 | 2803: jr z, $03 >
dec (hl)		
.DB $18 $0b ; < ['$18', '$0b'] > < 0x6065 > < a6065 0A 6065 | 180B: jr $0B >
ld a,($d346)		
and a			
.DB $28 $05 ; < ['$28', '$05'] > < 0x606b > < a606b 0A 606B | 2805: jr z, $05 >
call  rlabel_0A_5868 
.DB $20 $4d ; < ['$20', '$4d'] > < 0x6070 > < a6070 0A 6070 | 204D: jr nz, $4D >
ld hl,$d498		
ld a,(hl)		
and a			
jp nz,$614f		
ld ($d464),a		
ld a,($d346)		
cp $02			
ret z			
ld a,($d5b9)		
and a			
ret nz			
ld a,($d48d)		
and a			
ret z			
ld a,($d345)		
and a			
.DB $20 $17 ; < ['$20', '$17'] > < 0x6091 > < a6091 0A 6091 | 2017: jr nz, $17 >
ld a,($d438)		
sub $02			
ld b,a			
ld a,($d495)		
cp b			
ret z			
ld a,($d497)		
cp b			
ret z			
ld b,$0b		
ld hl,$7310		
rst $28			
ret			
.incbin "data/0a_60AA.data"
call  rlabel_0A_7577 
ld a,($d4fe)		
cp $2d			
.DB $20 $06 ; < ['$20', '$06'] > < 0x60c7 > < a60c7 0A 60C7 | 2006: jr nz, $06 >
.incbin "data/0a_60C9.data"
xor a			
ld ($d463),a		
ld ($d45f),a		
ld a,($d552)		
ld ($d4c2),a		
call  rlabel_0A_67B8 
ld hl,$d462		
res 3,(hl)		
xor a			
ld ($d389),a		
call  rlabel_0A_62AB 
.DB $28 $1f ; < ['$28', '$1f'] > < 0x60eb > < a60eb 0A 60EB | 281F: jr z, $1F >
ld a,($d348)		
ld ($d4dd),a		
ld a,($d346)		
cp $02			
.DB $28 $08 ; < ['$28', '$08'] > < 0x60f8 > < a60f8 0A 60F8 | 2808: jr z, $08 >
ld b,$0d		
ld hl,$472e		
rst $28			
.DB $18 $0a ; < ['$18', '$0a'] > < 0x6100 > < a6100 0A 6100 | 180A: jr $0A >
xor a			
ld ($d2dd),a		
ld b,$0d		
ld hl,$4ff4		
rst $28			
call  rlabel_0A_61F9 
ld ($d349),a		
ld a,$01		
ld ($d341),a		
call  rlabel_0A_5F49 
ld a,$10		
ld ($d49b),a		
call  rlabel_0A_62AB 
.DB $28 $26 ; < ['$28', '$26'] > < 0x6122 > < a6122 0A 6122 | 2826: jr z, $26 >
ld a,($d2dd)		
and a			
.DB $20 $20 ; < ['$20', '$20'] > < 0x6128 > < a6128 0A 6128 | 2020: jr nz, $20 >
ld a,($d464)		
and a			
call z,$61fd		
ld a,$01		
ld ($d2e0),a		
xor a			
ld ($d48a),a		
call  rlabel_0A_61B3 
ld hl,$d498		
ldi (hl),a		
ldi a,(hl)		
ld (hl),a		
ld a,($d486)		
and a			
call nz,$71df		
xor a			
ld ($d2db),a		
ret			
ld a,($d438)		
ld b,a			
ld a,($d495)		
cp b			
ret z			
ld a,($d497)		
cp b			
ret z			
dec (hl)		
.DB $28 $1b ; < ['$28', '$1b'] > < 0x615e > < a615e 0A 615E | 281B: jr z, $1B >
ld hl,$d49a		
dec (hl)		
ret nz			
dec hl			
ldi a,(hl)		
ld (hl),a		
ld hl,$d462		
bit 1,(hl)		
ret nz			
ld hl,$d43a		
di			
ldi a,(hl)		
ld d,(hl)		
ld e,a			
dec de			
ld a,d			
ldd (hl),a		
ld (hl),e		
ei			
ret			
ld a,($d34b)		
and a			
.DB $28 $08 ; < ['$28', '$08'] > < 0x617f > < a617f 0A 617F | 2808: jr z, $08 >
.incbin "data/0a_6181.data"
xor a			
ld ($d464),a		
ld a,($d48d)		
and a			
.DB $28 $1d ; < ['$28', '$1d'] > < 0x6191 > < a6191 0A 6191 | 281D: jr z, $1D >
ld a,($d2dd)		
and a			
.DB $20 $12 ; < ['$20', '$12'] > < 0x6197 > < a6197 0A 6197 | 2012: jr nz, $12 >
call  rlabel_0A_62AB 
.DB $28 $0d ; < ['$28', '$0d'] > < 0x619c > < a619c 0A 619C | 280D: jr z, $0D >
call  rlabel_0A_74ED 
ld b,$0b		
ld hl,$72a8		
rst $28			
xor a			
ld ($d2e4),a		
xor a			
ld ($d49b),a		
ret			
jp $621b		
rlabel_0A_61B3:
ld a,($d365)		
ld ($d4dd),a		
ld a,$30		
call  rlabel_00_3484 
.DB $28 $08 ; < ['$28', '$08'] > < 0x61be > < a61be 0A 61BE | 2808: jr z, $08 >
.incbin "data/0a_61C0.data"
ld a,($d538)		
ld c,a			
ld hl,$61ef		
ldi a,(hl)		
cp c			
ldi a,(hl)		
.DB $30 $02 ; < ['$30', '$02'] > < 0x61d2 > < a61d2 0A 61D2 | 3002: jr nc, $02 >
.incbin "data/0a_61D4.data"
ld c,a			
ld e,$32		
ld a,($d4ec)		
and a			
.DB $20 $01 ; < ['$20', '$01'] > < 0x61dd > < a61dd 0A 61DD | 2001: jr nz, $01 >
.incbin "data/0a_61DF.data"
ld d,a			
call  rlabel_00_038B 
ld a,c			
sub d			
ld hl,$d2dd		
bit 0,(hl)		
ret z			
.incbin "data/0a_61EC.data"
rlabel_0A_61F9:
ld a,($d53c)		
ret			
ld a,$01		
ld ($d464),a		
xor a			
ld ($d2dd),a		
ld a,($d492)		
ld hl,$ff8a		
ld e,l			
ld d,h			
ldi (hl),a		
inc a			
ldi (hl),a		
inc a			
ldi (hl),a		
ld (hl),$ff		
call  rlabel_0A_74AF 
jp $74ed		
ld a,($cfd0)		
cp $60			
ret z			
cp $63			
ret z			
cp $64			
ret z			
cp $65			
ret z			
cp $66			
ret z			
cp $62			
.DB $20 $05 ; < ['$20', '$05'] > < 0x622f > < a622f 0A 622F | 2005: jr nz, $05 >
.incbin "data/0a_6231.data"
ld a,($d4fe)		
cp $2a			
.DB $20 $05 ; < ['$20', '$05'] > < 0x623b > < a623b 0A 623B | 2005: jr nz, $05 >
.incbin "data/0a_623D.data"
ld hl,$ff8a		
ld e,l			
ld d,h			
ld a,($d492)		
add $03			
ldi (hl),a		
ld a,$fe		
ldi (hl),a		
ld (hl),$ff		
call  rlabel_0A_74AF 
jp $74ed		
call  rlabel_0A_5F49 
ld hl,$d462		
res 3,(hl)		
jp $6202		
ld hl,$d438		
ld a,($d492)		
cp (hl)			
.DB $20 $03 ; < ['$20', '$03'] > < 0x626a > < a626a 0A 626A | 2003: jr nz, $03 >
.incbin "data/0a_626C.data"
push af			
push hl			
call  rlabel_0A_6031 
pop hl			
pop af			
ld b,a			
ld a,c			
and a			
jp z,$621b		
ld a,b			
inc a			
cp (hl)			
jp z,$74ed		
.incbin "data/0a_6282.data"
xor a			
ld ($d345),a		
ret			
.incbin "data/0a_628A.data"
rlabel_0A_62AB:
ld a,($cfd0)		
cp $66			
ret nz			
.incbin "data/0a_62B1.data"
rlabel_0A_641E:
xor a			
ld ($d353),a		
ld ($d354),a		
ret			
.incbin "data/0a_6426.data"
rlabel_0A_6492:
ld b,$0d		
ld hl,$61e4		
rst $28			
ld b,$0d		
ld hl,$61af		
rst $28			
call  rlabel_0A_64DA 
ld b,$0d		
ld hl,$43c3		
rst $28			
call  rlabel_0A_5783 
ld a,($d4d7)		
inc a			
call nz,$64e3		
ld hl,$d4d6		
ld a,(hl)		
inc a			
.DB $20 $e6 ; < ['$20', '$e6'] > < 0x64b6 > < a64b6 0A 64B6 | 20E6: jr nz, $E6 >
call  rlabel_0A_64DA 
ld a,($cad7)		
and a			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x64bf > < a64bf 0A 64BF | 20F7: jr nz, $F7 >
ld hl,$d4d6		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ld (hl),a		
inc a			
ld ($d35d),a		
ld a,$c9		
ld ($c1aa),a		
call  rlabel_00_027C 
call  rlabel_0A_68A8 
jp $4ae1		
rlabel_0A_64DA:
call  rlabel_0A_761C 
call  rlabel_00_1347 
jp $1340		
ld a,($cfd2)		
call  rlabel_00_3005 
.incbin "data/0a_64E9.data"
ld a,$03		
ld ($cfd2),a		
ret			
.incbin "data/0a_64F7.data"
ld a,($d4d7)		
call  rlabel_00_3005 
.incbin "data/0a_659E.data"
ld hl,$c1aa		
ld de,$672c		
call  rlabel_00_0231 
ld a,$0a		
ld (hl),a		
ld a,$ea		
ld ($ff00+$98),a	
call  rlabel_0A_66D3 
call  rlabel_0A_663D 
xor a			
ld ($d35d),a		
jp $7022		
call  rlabel_0A_6671 
call  rlabel_0A_664C 
ret nz			
ld hl,$4076		
call  rlabel_0A_6658 
ld c,$04		
call  rlabel_00_0AA0 
jp $7022		
call  rlabel_0A_65E9 
call  rlabel_0A_65FC 
ld a,($d4d9)		
cp $03			
ret nz			
jp $7022		
rlabel_0A_65E9:
ld hl,$d4d9		
bit 0,(hl)		
ret nz			
ld a,($d3aa)		
cp $96			
jp nz,$66fb		
set 0,(hl)		
jp $6709		
rlabel_0A_65FC:
ld hl,$d4d9		
bit 1,(hl)		
ret nz			
call  rlabel_0A_6671 
call  rlabel_0A_668E 
ret nz			
ld hl,$d4d9		
set 1,(hl)		
ret			
ld c,$01		
call  rlabel_00_1332 
jp $7022		
ld a,($cad7)		
and a			
ret nz			
call  rlabel_0A_6709 
ld b,$0d		
ld hl,$40c8		
rst $28			
ld b,$0d		
ld hl,$4138		
rst $28			
ld hl,$d358		
ld a,(hl)		
ld (hl),$00		
ld ($d356),a		
ld a,$ff		
ld ($d4d6),a		
ld ($d4d7),a		
ret			
rlabel_0A_663D:
ld a,($d491)		
and a			
ret z			
jp z,$7022		
ld a,($d490)		
ld ($d437),a		
ret			
rlabel_0A_664C:
ld a,($d438)		
ld b,a			
ld a,($d490)		
cp b			
ret			
.incbin "data/0a_6655.data"
rlabel_0A_6658:
ld a,($d493)		
ld c,a			
ld b,$00		
call  rlabel_00_04B3 
add hl,bc		
ld a,($d4ad)		
ld c,a			
ld b,$00		
call  rlabel_00_04B3 
add hl,bc		
ld e,l			
ld d,h			
jp $756c		
rlabel_0A_6671:
ld a,($d491)		
and a			
ret nz			
ld a,($d438)		
ld b,a			
ld a,($d490)		
cp b			
ret z			
ld ($d437),a		
ret			
.incbin "data/0a_6683.data"
rlabel_0A_668E:
ld de,$bf90		
ld hl,$d4ba		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,($d4ad)		
srl a			
ld c,a			
ld b,$00		
call  rlabel_00_04B3 
add hl,bc		
push hl			
push de			
ld a,($d491)		
and a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x66a9 > < a66a9 0A 66A9 | 2807: jr z, $07 >
call  rlabel_0A_7561 
inc de			
call  rlabel_0A_756C 
pop de			
pop hl			
add hl,de		
bit 7,h			
ret nz			
ld a,($d491)		
and a			
ret z			
cp $01			
.DB $28 $09 ; < ['$28', '$09'] > < 0x66bf > < a66bf 0A 66BF | 2809: jr z, $09 >
.incbin "data/0a_66C1.data"
ld ($d437),a		
xor a			
ret			
ld a,($d48f)		
.DB $18 $f6 ; < ['$18', '$f6'] > < 0x66cd > < a66cd 0A 66CD | 18F6: jr $F6 >
.incbin "data/0a_66CF.data"
rlabel_0A_66D3:
ld hl,$66d9		
jp $6716		
ld a,($c203)		
swap a			
ld b,a			
srl a			
add b			
ld e,a			
ld d,$00		
ld a,($ff00+$98)	
call  rlabel_00_045D 
ld hl,$4000		
add hl,de		
ld e,l			
ld d,h			
call  rlabel_0A_754B 
ld a,$02		
ld b,$01		
call  rlabel_00_083E 
ret			
ld hl,$6701		
jp nz,$6716		
call  rlabel_0A_7556 
dec de			
call  rlabel_0A_754B 
ret			
rlabel_0A_6709:
ld hl,$670f		
jp $6716		
xor a			
ld b,$01		
call  rlabel_00_083E 
ret			
rlabel_0A_6716:
xor a			
call  rlabel_0A_6721 
ld a,$01		
call  rlabel_0A_6721 
ld a,$02		
rlabel_0A_6721:
push hl			
call  rlabel_00_343A 
pop hl			
push hl			
call  rlabel_00_05DB 
pop hl			
ret			
ld a,($ff00+$a5)	
bit 2,a			
ld hl,$d331		
ld a,(hl)		
jp z,$673f		
.incbin "data/0a_6737.data"
ld b,a			
ld a,($c203)		
push af			
ld a,b			
call  rlabel_00_343A 
call  rlabel_0A_6857 
pop af			
call  rlabel_00_343A 
ret			
rlabel_0A_6750:
ld a,(de)		
cp (hl)			
.DB $28 $04 ; < ['$28', '$04'] > < 0x6752 > < a6752 0A 6752 | 2804: jr z, $04 >
.DB $38 $0e ; < ['$38', '$0e'] > < 0x6754 > < a6754 0A 6754 | 380E: jr c, $0E >
.incbin "data/0a_6756.data"
inc de			
inc hl			
ld a,(de)		
dec de			
cp (hl)			
dec hl			
.DB $38 $04 ; < ['$38', '$04'] > < 0x675e > < a675e 0A 675E | 3804: jr c, $04 >
push hl			
ld l,e			
ld h,d			
pop de			
ldi a,(hl)		
ld b,a			
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld ($ff00+$8a),a	
push hl			
ld h,b			
ld l,c			
ld a,(de)		
inc de			
ld b,a			
ld a,(de)		
inc de			
ld c,a			
push bc			
call  rlabel_00_04B3 
add hl,bc		
ld h,l			
ld a,(de)		
sub l			
ld l,a			
ld a,($ff00+$8a)	
cp l			
.DB $38 $01 ; < ['$38', '$01'] > < 0x6780 > < a6780 0A 6780 | 3801: jr c, $01 >
ld a,l			
srl a			
add h			
pop bc			
call  rlabel_00_0458 
pop hl			
push bc			
inc de			
ld a,(de)		
cp (hl)			
.DB $38 $04 ; < ['$38', '$04'] > < 0x678f > < a678f 0A 678F | 3804: jr c, $04 >
push hl			
ld l,e			
ld h,d			
pop de			
ld a,(de)		
inc de			
ld c,a			
ldi a,(hl)		
ld b,(hl)		
sub c			
ld l,a			
ld h,a			
ld a,(de)		
sub l			
ld l,a			
ld a,b			
cp l			
.DB $30 $01 ; < ['$30', '$01'] > < 0x67a2 > < a67a2 0A 67A2 | 3001: jr nc, $01 >
ld a,l			
srl a			
add h			
add c			
ld c,a			
pop de			
ret			
rlabel_0A_67AC:
ld a,($c203)		
ld b,a			
add a			
add a			
ld hl,$d4c4		
jp $0462		
rlabel_0A_67B8:
ld a,($d346)		
cp $01			
.DB $20 $18 ; < ['$20', '$18'] > < 0x67bd > < a67bd 0A 67BD | 2018: jr nz, $18 >
ld a,($d38f)		
inc a			
.DB $28 $18 ; < ['$28', '$18'] > < 0x67c3 > < a67c3 0A 67C3 | 2818: jr z, $18 >
call  rlabel_0A_62AB 
.DB $28 $06 ; < ['$28', '$06'] > < 0x67c8 > < a67c8 0A 67C8 | 2806: jr z, $06 >
ld a,($d2dd)		
and a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x67ce > < a67ce 0A 67CE | 2807: jr z, $07 >
ld a,$32		
call  rlabel_00_3071 
.DB $18 $06 ; < ['$18', '$06'] > < 0x67d5 > < a67d5 0A 67D5 | 1806: jr $06 >
ld a,($d38f)		
call  rlabel_00_3071 
ld hl,$d4b0		
ld de,$d4ab		
call  rlabel_0A_6750 
ld a,($d393)		
and a			
.DB $20 $07 ; < ['$20', '$07'] > < 0x67ea > < a67ea 0A 67EA | 2007: jr nz, $07 >
ld hl,$d4d0		
ld b,$03		
.DB $18 $1e ; < ['$18', '$1e'] > < 0x67f1 > < a67f1 0A 67F1 | 181E: jr $1E >
ld b,$bd		
ld hl,$7548		
rst $28			
ret			
rlabel_0A_67FA:
ld a,($d461)		
cp $ff			
.DB $28 $04 ; < ['$28', '$04'] > < 0x67ff > < a67ff 0A 67FF | 2804: jr z, $04 >
ld a,a			
call  rlabel_00_3071 
call  rlabel_0A_58C9 
ld de,$d4b5		
call  rlabel_0A_6750 
call  rlabel_0A_67AC 
ld a,d			
di			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld a,c			
ldi (hl),a		
ld (hl),$01		
ld a,b			
ld ($d4c3),a		
ei			
ld b,$bd		
ld hl,$7243		
rst $28			
ret			
rlabel_0A_6826:
ld de,$0004		
ld hl,$d4c7		
ld (hl),d		
add hl,de		
ld (hl),d		
add hl,de		
ld (hl),d		
add hl,de		
ld (hl),d		
ld hl,$c000		
ld (hl),d		
add hl,de		
ld (hl),d		
ret			
.incbin "data/0a_683A.data"
rlabel_0A_6857:
ld a,($d365)		
inc a			
ld b,a			
ld a,($d485)		
or b			
ld b,a			
ld a,($d344)		
or b			
ret nz			
ld b,a			
ld a,($c203)		
ld c,a			
ld hl,$689f		
add hl,bc		
ld l,(hl)		
ld h,$c0		
ldd a,(hl)		
ld e,a			
ld a,(hl)		
and a			
ret z			
ld hl,$c06c		
ld a,($d340)		
and a			
.DB $20 $15 ; < ['$20', '$15'] > < 0x687e > < a687e 0A 687E | 2015: jr nz, $15 >
ld a,($ff00+$a6)	
rra			
rra			
rra			
and $02			
add $6d			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld a,$48		
ldi (hl),a		
ld (hl),$07		
ret			
.incbin "data/0a_6892.data"
rlabel_0A_68A2:
ld hl,$c06c		
ld (hl),$00		
ret			
rlabel_0A_68A8:
ld a,($d331)		
cp $03			
.DB $30 $17 ; < ['$30', '$17'] > < 0x68ad > < a68ad 0A 68AD | 3017: jr nc, $17 >
ld de,$68c3		
call  rlabel_00_045D 
ld hl,$c090		
ld a,$28		
ldi (hl),a		
ld a,(de)		
ldi (hl),a		
ld a,$48		
ldi (hl),a		
ld (hl),$07		
ret			
.incbin "data/0a_68C3.data"
rlabel_0A_68C6:
ld hl,$c090		
ld (hl),$00		
ret			
rlabel_0A_68CC:
pop hl			
ld a,(hl)		
ld hl,$d338		
push bc			
ld c,a			
ld a,(hl)		
and a			
.DB $20 $fc ; < ['$20', '$fc'] > < 0x68d5 > < a68d5 0A 68D5 | 20FC: jr nz, $FC >
ld (hl),c		
pop bc			
ld a,(hl)		
and a			
.DB $20 $fc ; < ['$20', '$fc'] > < 0x68db > < a68db 0A 68DB | 20FC: jr nz, $FC >
ret			
.incbin "data/0a_68DE.data"
rlabel_0A_68F9:
ld a,($d362)		
inc a			
ret nz			
.incbin "data/0a_68FE.data"
.DB $79 ; < ['$79'] > < 0x6902 > < a6902 0A 6902 | 79: ld a, c >
.DB $ea $39 $d3 ; < ['$ea', '$39', '$d3'] > < 0x6903 > < a6903 0A 6903 | EA39D3: ld [$D339], a >
call  rlabel_0A_68CC 
.incbin "data/0a_6909.data"
rlabel_0A_690A:
call  rlabel_0A_68CC 
.incbin "data/0a_690D.data"
rlabel_0A_690E:
call  rlabel_0A_68CC 
.incbin "data/0a_6911.data"
ld hl,$c078		
ld bc,$0004		
ld (hl),b		
add hl,bc		
ld (hl),b		
add hl,bc		
ld (hl),b		
add hl,bc		
ld (hl),b		
add hl,bc		
ld (hl),b		
add hl,bc		
ld (hl),b		
add hl,bc		
ret			
rlabel_0A_6951:
ld a,($c203)		
ld c,a			
xor a			
ld hl,$d39b		
cp c			
call nz,$696e		
inc a			
ld hl,$d3c4		
cp c			
call nz,$696e		
inc a			
ld hl,$d3ed		
cp c			
call nz,$696e		
ret			
set 1,(hl)		
ret			
rlabel_0A_6971:
ld hl,$d39b		
res 1,(hl)		
ld hl,$d3c4		
res 1,(hl)		
ld hl,$d3ed		
res 1,(hl)		
ret			
.incbin "data/0a_6981.data"
rlabel_0A_69AD:
ld a,($c203)		
push bc			
ld b,a			
ld a,($d365)		
cp $ff			
.DB $28 $03 ; < ['$28', '$03'] > < 0x69b7 > < a69b7 0A 69B7 | 2803: jr z, $03 >
cp b			
.DB $20 $f6 ; < ['$20', '$f6'] > < 0x69ba > < a69ba 0A 69BA | 20F6: jr nz, $F6 >
ld a,b			
ld ($d365),a		
pop bc			
ret			
rlabel_0A_69C2:
call  rlabel_0A_5EA6 
xor a			
ld ($d382),a		
call  rlabel_0A_6951 
ld a,$04		
ld ($d364),a		
call  rlabel_0A_69AD 
ld b,$0d		
ld hl,$4fbc		
rst $28			
ld a,($d438)		
ld b,a			
ld a,($d495)		
cp b			
.DB $28 $f6 ; < ['$28', '$f6'] > < 0x69e2 > < a69e2 0A 69E2 | 28F6: jr z, $F6 >
ld a,($d497)		
cp b			
.DB $28 $f0 ; < ['$28', '$f0'] > < 0x69e8 > < a69e8 0A 69E8 | 28F0: jr z, $F0 >
call  rlabel_0A_5783 
ld a,$01		
ld ($d470),a		
xor a			
ld ($d5cc),a		
ld ($d5d0),a		
ld ($d5cf),a		
ld b,$23		
call  rlabel_00_0832 
sub $60			
ld l,a			
add a			
add l			
ld l,a			
ld h,$00		
ld de,$6a3c		
add hl,de		
ldi a,(hl)		
ld ($d366),a		
inc a			
ld ($d5ce),a		
ldi a,(hl)		
ld d,a			
ldi a,(hl)		
ld ($d5cd),a		
ld a,$ff		
ld ($d381),a		
ld a,d			
cp $58			
.DB $30 $05 ; < ['$30', '$05'] > < 0x6a23 > < a6a23 0A 6A23 | 3005: jr nc, $05 >
ld hl,$d5d0		
set 0,(hl)		
ld a,($c203)		
ld e,a			
inc a			
.DB $28 $05 ; < ['$28', '$05'] > < 0x6a2f > < a6a2f 0A 6A2F | 2805: jr z, $05 >
ld c,$02		
call  rlabel_0A_5948 
call  rlabel_0A_5CC5 
jp $6aea		
.incbin "data/0a_6A3C.data"
call  rlabel_0A_6826 
call  rlabel_0A_68A2 
call  rlabel_0A_56D9 
call  rlabel_0A_5B3E 
call  rlabel_00_027C 
call  rlabel_00_027C 
call  rlabel_0A_5783 
call  rlabel_0A_53C5 
call  rlabel_0A_6031 
ld a,($d5d0)		
and $01			
call z,$5a8b		
ld b,$0c		
ld hl,$4929		
rst $28			
call  rlabel_0A_6C66 
call  rlabel_0A_605D 
ld b,$0d		
ld hl,$43c3		
rst $28			
ld a,($d5cc)		
inc a			
.DB $20 $d4 ; < ['$20', '$d4'] > < 0x6b23 > < a6b23 0A 6B23 | 20D4: jr nz, $D4 >
call  rlabel_0A_5EE4 
ld b,$0d		
ld hl,$44bc		
rst $28			
xor a			
ld hl,$d38b		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ld ($d470),a		
call  rlabel_0A_68A8 
call  rlabel_0A_7577 
ret			
.incbin "data/0a_6B3F.data"
rlabel_0A_6B4E:
pop hl			
ld a,($d5cc)		
call  rlabel_00_04A7 
jp hl			
rlabel_0A_6B56:
ld hl,$d5cc		
inc (hl)		
ret			
call  rlabel_0A_6B56 
jp $6c66		
ld a,($d366)		
ld c,a			
ld a,($d367)		
cp c			
ret nz			
.DB $18 $ef ; < ['$18', '$ef'] > < 0x6b6a > < a6b6a 0A 6B6A | 18EF: jr $EF >
call  rlabel_0A_6B82 
ret nz			
.DB $18 $e9 ; < ['$18', '$e9'] > < 0x6b70 > < a6b70 0A 6B70 | 18E9: jr $E9 >
call  rlabel_0A_5981 
dec c			
ret nz			
.DB $18 $e2 ; < ['$18', '$e2'] > < 0x6b77 > < a6b77 0A 6B77 | 18E2: jr $E2 >
.incbin "data/0a_6B79.data"
ld a,($d383)		
cp c			
ret c			
.DB $18 $d9 ; < ['$18', '$d9'] > < 0x6b80 > < a6b80 0A 6B80 | 18D9: jr $D9 >
rlabel_0A_6B82:
ld a,($d381)		
ld c,a			
ld a,($d367)		
cp c			
ret			
.incbin "data/0a_6B8B.data"
call  rlabel_0A_5CBF 
.DB $18 $a2 ; < ['$18', '$a2'] > < 0x6bb7 > < a6bb7 0A 6BB7 | 18A2: jr $A2 >
call  rlabel_0A_5CC5 
.DB $18 $9d ; < ['$18', '$9d'] > < 0x6bbc > < a6bbc 0A 6BBC | 189D: jr $9D >
.incbin "data/0a_6BBE.data"
ld a,($d326)		
and a			
ret nz			
ld hl,$d381		
ld a,(hl)		
inc a			
.DB $28 $08 ; < ['$28', '$08'] > < 0x6bd2 > < a6bd2 0A 6BD2 | 2808: jr z, $08 >
.incbin "data/0a_6BD4.data"
ld a,$ff		
ld ($d5cc),a		
ret			
.incbin "data/0a_6BE2.data"
call  rlabel_0A_6BEE 
jp $6b5b		
rlabel_0A_6BEE:
call  rlabel_0A_5B3E 
ld hl,$d5d0		
set 0,(hl)		
ret			
.incbin "data/0a_6BF7.data"
ld c,$04		
ld d,$50		
call  rlabel_0A_591B 
jp $6b5b		
rlabel_0A_6C0D:
pop hl			
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld e,a			
ld d,(hl)		
call  rlabel_0A_6B4E 
.incbin "data/0a_6C16.data"
bit 0,d			
jp z,$6be8		
.incbin "data/0a_6C31.data"
ld b,d			
ld hl,$6c42		
push hl			
ld c,e			
bit 7,b			
jp z,$752c		
.incbin "data/0a_6C3F.data"
ld a,c			
call  rlabel_00_045D 
ld hl,$6b5b		
push hl			
bit 2,b			
jp z,$7542		
.incbin "data/0a_6C4F.data"
bit 1,d			
jp nz,$6bbe		
jp $6b5b		
rlabel_0A_6C66:
ld a,($d5cd)		
call  rlabel_00_3005 
.incbin "data/0a_6C6C.data"
call  rlabel_0A_6B4E 
.incbin "data/0a_6CA9.data"
call  rlabel_0A_6C0D 
.incbin "data/0a_6D76.data"
xor a			
ld ($d38e),a		
ld a,($d4d5)		
dec a			
call  rlabel_00_3005 
.incbin "data/0a_6DE0.data"
call  rlabel_0A_6ED3 
ld a,($d4d6)		
call  rlabel_00_3005 
.incbin "data/0a_6DEF.data"
ld hl,$d462		
res 3,(hl)		
xor a			
ld ($d503),a		
call  rlabel_0A_641E 
ld a,($d346)		
and a			
jp nz,$4af6		
call  rlabel_0A_6EA8 
call  rlabel_0A_68A2 
call  rlabel_0A_68C6 
ld a,$ff		
ld ($d331),a		
ld hl,$d360		
res 7,(hl)		
jp $701d		
call  rlabel_0A_6EA1 
ld a,($d346)		
and a			
jp nz,$4af6		
ld a,($d437)		
cp $fe			
jp nz,$4af6		
call  rlabel_0A_5981 
dec c			
jp nz,$4af6		
call  rlabel_0A_709B 
jp nz,$4af6		
ld a,($cfd0)		
cp $67			
jp z,$6ef3		
xor a			
ld ($d332),a		
ld ($d503),a		
ld ($d504),a		
ld ($d4d8),a		
ld ($d4d7),a		
ld ($d33e),a		
ld ($d33f),a		
ld ($d4d9),a		
call  rlabel_0A_5B3E 
call  rlabel_0A_6E8A 
ld a,$17		
call  rlabel_00_305E 
ld b,$0d		
ld hl,$62f9		
rst $28			
call  rlabel_0A_7022 
jp $701d		
call  rlabel_0A_6EFE 
ld a,($d4db)		
ld b,a			
ld a,($d4da)		
cp b			
ret nz			
call  rlabel_0A_6F60 
jp $701d		
ret			
rlabel_0A_6E8A:
xor a			
ld ($d4da),a		
ld hl,$6e94		
jp $6716		
ld b,$18		
call  rlabel_00_0832 
cp $0a			
ret z			
ld hl,$d4da		
inc (hl)		
ret			
rlabel_0A_6EA1:
ld c,$01		
ld d,$08		
jp $5925		
rlabel_0A_6EA8:
ld hl,$6eae		
jp $6716		
call  rlabel_0A_54F3 
ld b,$18		
call  rlabel_00_0832 
cp $06			
.DB $28 $15 ; < ['$28', '$15'] > < 0x6eb8 > < a6eb8 0A 6EB8 | 2815: jr z, $15 >
cp $05			
.DB $28 $11 ; < ['$28', '$11'] > < 0x6ebc > < a6ebc 0A 6EBC | 2811: jr z, $11 >
cp $04			
.DB $28 $0d ; < ['$28', '$0d'] > < 0x6ec0 > < a6ec0 0A 6EC0 | 280D: jr z, $0D >
cp $0b			
.DB $28 $09 ; < ['$28', '$09'] > < 0x6ec4 > < a6ec4 0A 6EC4 | 2809: jr z, $09 >
cp $0c			
.DB $28 $05 ; < ['$28', '$05'] > < 0x6ec8 > < a6ec8 0A 6EC8 | 2805: jr z, $05 >
cp $09			
.DB $28 $01 ; < ['$28', '$01'] > < 0x6ecc > < a6ecc 0A 6ECC | 2801: jr z, $01 >
ret			
.incbin "data/0a_6ECF.data"
rlabel_0A_6ED3:
ld a,($d4d7)		
and a			
ret z			
ld a,($d59f)		
and a			
.DB $20 $06 ; < ['$20', '$06'] > < 0x6edc > < a6edc 0A 6EDC | 2006: jr nz, $06 >
ld b,$0d		
ld hl,$6413		
rst $28			
call  rlabel_0A_7027 
ret z			
ld b,$0d		
ld hl,$62f9		
rst $28			
ld a,($d5b5)		
and a			
ret z			
ld a,$ff		
ld ($d4d5),a		
ld a,$04		
ld ($cfd2),a		
ret			
rlabel_0A_6EFE:
xor a			
ld ($d4db),a		
call  rlabel_0A_5783 
call  rlabel_0A_53C5 
ld c,$04		
xor a			
call  rlabel_0A_6F19 
ld c,$1e		
ld a,$01		
call  rlabel_0A_6F19 
ld c,$38		
ld a,$02		
rlabel_0A_6F19:
call  rlabel_00_343A 
push bc			
call  rlabel_0A_54F3 
pop bc			
ld hl,$d4ab		
ldi a,(hl)		
ld d,a			
ldi a,(hl)		
ld e,a			
ld a,$40		
add c			
call  rlabel_00_045D 
ld b,$0f		
call  rlabel_00_0832 
inc hl			
ld h,(hl)		
cpl			
ld l,a			
ld a,h			
cpl			
ld h,a			
inc hl			
ld c,$00		
add hl,de		
inc hl			
bit 7,h			
.DB $20 $09 ; < ['$20', '$09'] > < 0x6f41 > < a6f41 0A 6F41 | 2009: jr nz, $09 >
ld a,l			
cp $03			
.DB $38 $08 ; < ['$38', '$08'] > < 0x6f46 > < a6f46 0A 6F46 | 3808: jr c, $08 >
set 4,c			
.DB $18 $08 ; < ['$18', '$08'] > < 0x6f4a > < a6f4a 0A 6F4A | 1808: jr $08 >
set 5,c			
.DB $18 $04 ; < ['$18', '$04'] > < 0x6f4e > < a6f4e 0A 6F4E | 1804: jr $04 >
ld hl,$d4db		
inc (hl)		
ld a,c			
ld ($d33e),a		
call  rlabel_0A_4D8C 
ld (hl),$ff		
jp $4d98		
rlabel_0A_6F60:
xor a			
call  rlabel_0A_6F6B 
ld a,$01		
call  rlabel_0A_6F6B 
ld a,$02		
rlabel_0A_6F6B:
call  rlabel_00_343A 
call  rlabel_0A_54D7 
and $96			
ret nz			
ld a,$09		
ld b,$01		
call  rlabel_00_083E 
ret			
.incbin "data/0a_6F7C.data"
ld hl,$d4d6		
inc (hl)		
ret			
rlabel_0A_7022:
ld hl,$d4d7		
inc (hl)		
ret			
rlabel_0A_7027:
ld a,($ff00+$a5)	
and $0b			
ret			
.incbin "data/0a_702C.data"
rlabel_0A_709B:
ld de,$0009		
ld hl,$d508		
ld b,$05		
ld a,(hl)		
cp $ff			
ret nz			
dec b			
ret z			
add hl,de		
.DB $18 $f7 ; < ['$18', '$f7'] > < 0x70aa > < a70aa 0A 70AA | 18F7: jr $F7 >
.incbin "data/0a_70AC.data"
rlabel_0A_70EF:
ld hl,$c070		
ld bc,$0004		
ld (hl),b		
add hl,bc		
ld (hl),b		
ret			
rlabel_0A_70F9:
ld a,($d343)		
and a			
ret z			
.incbin "data/0a_70FE.data"
rlabel_0A_717D:
ld hl,$c34c		
ld a,($c203)		
call  rlabel_00_0462 
ld a,(hl)		
ret			
rlabel_0A_7188:
ld de,$0003		
ld b,$03		
ld hl,$51b2		
rst $28			
ld a,c			
and a			
ret			
.incbin "data/0a_7194.data"
rlabel_0A_71B1:
ld hl,$d485		
ldi a,(hl)		
ldi a,(hl)		
and a			
jp nz,$730e		
ret			
.incbin "data/0a_71BB.data"
rlabel_0A_7499:
ld a,($c203)		
call  rlabel_00_3456 
ld de,$002e		
add hl,de		
ret			
rlabel_0A_74A4:
ld a,($c203)		
call  rlabel_00_3456 
ld de,$00ef		
add hl,de		
ret			
rlabel_0A_74AF:
ld a,$01		
ld ($d470),a		
ld a,($d465)		
ld ($d466),a		
.DB $18 $05 ; < ['$18', '$05'] > < 0x74ba > < a74ba 0A 74BA | 1805: jr $05 >
.incbin "data/0a_74BC.data"
ld hl,$d466		
ldi a,(hl)		
ld c,a			
ld b,$00		
add hl,bc		
ld b,$08		
inc c			
inc hl			
ld a,b			
sub c			
call z,$74e8		
ld a,(de)		
cp $ff			
.DB $28 $04 ; < ['$28', '$04'] > < 0x74d5 > < a74d5 0A 74D5 | 2804: jr z, $04 >
inc de			
ld (hl),a		
.DB $18 $f0 ; < ['$18', '$f0'] > < 0x74d9 > < a74d9 0A 74D9 | 18F0: jr $F0 >
ld a,($d48f)		
ld (hl),a		
ld a,c			
ld ($d466),a		
xor a			
ld ($d470),a		
ret			
ld c,a			
ld hl,$d467		
ret			
rlabel_0A_74ED:
xor a			
ld ($d43c),a		
inc a			
ld ($d46f),a		
ret			
rlabel_0A_74F6:
bit 7,a			
jp z,$045d		
add e			
cp e			
ld e,a			
ret c			
ret z			
dec d			
ret			
.incbin "data/0a_7502.data"
rlabel_0A_750E:
ld b,$00		
ld hl,$c1fd		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
add hl,bc		
ret			
rlabel_0A_7518:
ld a,($c203)		
ld c,a			
rlabel_0A_751C:
ld b,$00		
ld hl,$7524		
add hl,bc		
ld a,(hl)		
ret			
.incbin "data/0a_7524.data"
ld hl,$d4ab		
ldi a,(hl)		
ld d,a			
ldi a,(hl)		
ld e,a			
ld a,(hl)		
srl a			
jp $74f6		
.incbin "data/0a_7539.data"
ld hl,$d37c		
ld a,e			
di			
ldi (hl),a		
ld (hl),d		
ei			
ret			
rlabel_0A_754B:
ld c,$0f		
call  rlabel_0A_750E 
ld a,e			
di			
ldi (hl),a		
ld (hl),d		
ei			
ret			
rlabel_0A_7556:
ld c,$0f		
call  rlabel_0A_750E 
di			
ldi a,(hl)		
ld d,(hl)		
ei			
ld e,a			
ret			
rlabel_0A_7561:
di			
ld a,($d43a)		
ld e,a			
ld a,($d43b)		
ei			
ld d,a			
ret			
rlabel_0A_756C:
ld a,e			
di			
ld ($d43a),a		
ld a,d			
ld ($d43b),a		
ei			
ret			
rlabel_0A_7577:
xor a			
ld ($d44d),a		
ld ($d4b7),a		
ret			
xor a			
ld ($ff00+$a1),a	
ld ($ff00+$a0),a	
ld hl,$d2d5		
ld bc,$02f7		
xor a			
call  rlabel_00_04D2 
ld b,$0d		
ld hl,$4185		
rst $28			
ld b,$b0		
ld hl,$4bd2		
rst $28			
call  rlabel_0A_47FA 
ld b,$0d		
ld hl,$4041		
rst $28			
call  rlabel_0A_482F 
ld b,$0c		
ld hl,$50bd		
rst $28			
call  rlabel_0A_6492 
call  rlabel_0A_761C 
call  rlabel_0A_4AE1 
ld b,$0d		
ld hl,$4001		
rst $28			
call  rlabel_0A_4AEF 
call  rlabel_0A_5633 
ld a,($d346)		
and a			
.DB $20 $2b ; < ['$20', '$2b'] > < 0x75c5 > < a75c5 0A 75C5 | 202B: jr nz, $2B >
ld b,$0d		
ld hl,$4020		
rst $28			
ld a,($d33d)		
and $08			
.DB $28 $1e ; < ['$28', '$1e'] > < 0x75d2 > < a75d2 0A 75D2 | 281E: jr z, $1E >
.incbin "data/0a_75D4.data"
ld a,($d4d5)		
inc a			
.DB $20 $b7 ; < ['$20', '$b7'] > < 0x75f6 > < a75f6 0A 75F6 | 20B7: jr nz, $B7 >
ld b,$0d		
ld hl,$5ad3		
rst $28			
ld c,$08		
ld a,($cfd2)		
cp $04			
.DB $28 $02 ; < ['$28', '$02'] > < 0x7605 > < a7605 0A 7605 | 2802: jr z, $02 >
.incbin "data/0a_7607.data"
ld de,$0000		
ld b,$00		
ld hl,$1311		
rst $28			
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ret			
rlabel_0A_761C:
ld a,($ff00+$a6)	
ld l,a			
ld a,($d333)		
cp l			
call z,$027c		
ld a,($ff00+$a6)	
ld ($d333),a		
ret			
.incbin "data/0a_762C.data"
