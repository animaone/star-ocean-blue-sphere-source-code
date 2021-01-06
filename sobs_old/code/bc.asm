.BANK $bc SLOT 1
.ORG 0
.incbin "data/bc_4000.data"
rlabel_BC_4001:
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld b,a			
ld a,(hl)		
ld l,c			
ld h,b			
ld b,a			
ret			
rlabel_BC_400A:
ld c,l			
ld a,h			
ld hl,$4349		
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4012 > < bc4012 BC 4012 | 3001: jr nc, $01 >
.incbin "data/bc_4014.data"
ldi a,(hl)		
ld h,(hl)		
ld l,a			
push hl			
ld l,c			
ld h,$00		
ld b,h			
add hl,hl		
add hl,bc		
pop bc			
add hl,bc		
jp $4001		
.incbin "data/bc_4024.data"
rlabel_BC_4029:
call  rlabel_BC_400A 
ld c,$40		
jp $06a0		
rlabel_BC_4031:
ld hl,$d422		
ldi a,(hl)		
cp (hl)			
ret z			
ldi (hl),a		
ld (hl),a		
ld c,a			
ld de,$8800		
inc a			
ret z			
ld l,c			
ld h,$00		
ld b,h			
add hl,hl		
add hl,bc		
ld bc,$5849		
add hl,bc		
call  rlabel_BC_4001 
jp $06aa		
.incbin "data/bc_404F.data"
rlabel_BC_4065:
ld l,e			
ld h,d			
add hl,hl		
add hl,de		
ld de,$59c9		
add hl,de		
call  rlabel_BC_4001 
ld e,l			
ld d,h			
ld hl,$d426		
ld a,b			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld (hl),d		
ret			
rlabel_BC_407B:
ld l,e			
inc e			
.DB $28 $18 ; < ['$28', '$18'] > < 0x407d > < bc407d BC 407D | 2818: jr z, $18 >
dec e			
ld h,$00		
ld d,h			
add hl,hl		
add hl,de		
ld de,$5dda		
add hl,de		
call  rlabel_BC_4001 
ld e,l			
ld d,h			
ld hl,$d429		
ld a,b			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld (hl),d		
ret			
xor a			
ld ($d429),a		
ret			
ld hl,$d437		
ldi a,(hl)		
ldd (hl),a		
ld a,$ff		
ld (hl),a		
ld ($d423),a		
ld ($d460),a		
inc a			
ld ($d42f),a		
ld ($d43e),a		
ld ($d43c),a		
ld ($d451),a		
ld ($d455),a		
ld ($d43f),a		
ld ($d46f),a		
ld a,($d457)		
and a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x40c4 > < bc40c4 BC 40C4 | 2807: jr z, $07 >
.incbin "data/bc_40C6.data"
ld a,$4d		
ld ($d461),a		
ld hl,$d462		
set 2,(hl)		
ld a,($d4fe)		
ld l,a			
ld h,$00		
ld c,l			
ld b,h			
add hl,hl		
add hl,bc		
ld bc,$5f9f		
add hl,bc		
call  rlabel_BC_4001 
ld a,($d438)		
add a			
call  rlabel_00_0462 
call  rlabel_00_3429 
ld l,e			
ld h,d			
call  rlabel_00_3429 
push hl			
push bc			
call  rlabel_BC_4065 
pop bc			
pop hl			
call  rlabel_00_3429 
ld a,d			
ld ($d422),a		
push hl			
push bc			
call  rlabel_BC_407B 
pop bc			
pop hl			
push hl			
push bc			
call  rlabel_00_2F0D 
ld b,a			
and $0f			
ld ($d471),a		
ld a,b			
swap a			
and $0f			
ld ($d473),a		
pop bc			
pop hl			
inc hl			
ld e,l			
ld d,h			
ld hl,$d432		
ld a,b			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld (hl),d		
ret			
rlabel_BC_4131:
ld a,($d361)		
cpl			
and $03			
ret nz			
ld a,($d437)		
cp $fe			
ret z			
inc a			
call nz,$409c		
ld hl,$d43c		
ld a,(hl)		
and a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x4147 > < bc4147 BC 4147 | 2802: jr z, $02 >
dec (hl)		
ret			
ld a,($d470)		
and a			
ret nz			
ld hl,$d432		
ldi a,(hl)		
and a			
ret z			
ld b,a			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
call  rlabel_00_3429 
ld a,d			
ld ($d440),a		
ld a,($d46f)		
and a			
.DB $20 $5a ; < ['$20', '$5a'] > < 0x4165 > < bc4165 BC 4165 | 205A: jr nz, $5A >
ld a,e			
and a			
.DB $28 $5d ; < ['$28', '$5d'] > < 0x4169 > < bc4169 BC 4169 | 285D: jr z, $5D >
cp $f0			
.DB $38 $14 ; < ['$38', '$14'] > < 0x416d > < bc416d BC 416D | 3814: jr c, $14 >
inc a			
.DB $28 $6b ; < ['$28', '$6b'] > < 0x4170 > < bc4170 BC 4170 | 286B: jr z, $6B >
inc a			
jp z,$41f9		
.incbin "data/bc_4176.data"
dec a			
ld ($d43c),a		
call  rlabel_00_2F0D 
ld a,($d462)		
and $08			
.DB $20 $0d ; < ['$20', '$0d'] > < 0x418f > < bc418f BC 418F | 200D: jr nz, $0D >
inc hl			
ld a,l			
ld ($d433),a		
ld a,h			
ld ($d434),a		
ld hl,$d43f		
inc (hl)		
ld hl,$d425		
ld a,b			
ld c,b			
ldi (hl),a		
ldi a,(hl)		
ld ($d42f),a		
ld b,a			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld de,$d44f		
call  rlabel_00_335E 
ld a,c			
ld ($d430),a		
ld a,b			
ld ($d431),a		
ld a,($d4fe)		
ld d,a			
jp $4220		
xor a			
ld ($d46f),a		
ld ($d440),a		
ld a,$ff		
ld ($d43e),a		
ld hl,$d440		
ldi a,(hl)		
ldd (hl),a		
ld (hl),$00		
call  rlabel_BC_6041 
ld ($d437),a		
jp $413b		
ld hl,$d43e		
inc (hl)		
xor a			
ld ($d43f),a		
ld hl,$d440		
ldi a,(hl)		
ldd (hl),a		
ld (hl),$00		
ld hl,$d436		
ldd a,(hl)		
ld d,a			
ldd a,(hl)		
ld e,a			
ld a,d			
ldd (hl),a		
ld (hl),e		
jp $414b		
ld a,d			
ld ($d460),a		
jp $415a		
.incbin "data/bc_4200.data"
ld l,e			
ld h,d			
call  rlabel_BC_400A 
ld a,l			
ld d,h			
ld hl,$d41c		
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld a,b			
ldi (hl),a		
ld a,($d32e)		
and a			
ld de,$8e00		
.DB $28 $03 ; < ['$28', '$03'] > < 0x4236 > < bc4236 BC 4236 | 2803: jr z, $03 >
ld de,$8c00		
ld a,e			
ldi (hl),a		
ld (hl),d		
ret			
.incbin "data/bc_423F.data"
res 0,(hl)		
bit 1,(hl)		
.DB $20 $22 ; < ['$20', '$22'] > < 0x4246 > < bc4246 BC 4246 | 2022: jr nz, $22 >
bit 3,(hl)		
.DB $20 $1e ; < ['$20', '$1e'] > < 0x424a > < bc424a BC 424A | 201E: jr nz, $1E >
ld hl,$d43a		
ldi a,(hl)		
ld d,(hl)		
ld e,a			
ld a,($d441)		
and a			
call nz,$66e5		
ld a,($d440)		
and a			
call nz,$66e5		
ld a,d			
ldd (hl),a		
ld (hl),e		
xor a			
ld ($d440),a		
ld ($d441),a		
ld b,$bd		
ld hl,$70b2		
rst $28			
ld hl,$d32e		
ld a,(hl)		
xor $70			
ld (hl),a		
ld hl,$d42f		
ldi a,(hl)		
and a			
.DB $28 $0e ; < ['$28', '$0e'] > < 0x427c > < bc427c BC 427C | 280E: jr z, $0E >
ld de,$d42c		
ld (de),a		
inc de			
ldi a,(hl)		
ld (de),a		
inc de			
ld a,(hl)		
ld (de),a		
xor a			
ld ($d42f),a		
ld hl,$d44f		
ld de,$d447		
ldi a,(hl)		
ld (de),a		
inc de			
ldi a,(hl)		
ld (de),a		
inc de			
ldi a,(hl)		
ld (de),a		
inc de			
ldi a,(hl)		
ld (de),a		
inc de			
ldi a,(hl)		
ld (de),a		
inc de			
ldi a,(hl)		
ld (de),a		
inc de			
ldi a,(hl)		
ld (de),a		
inc de			
ld a,(hl)		
ld (de),a		
ld a,($d460)		
ld c,a			
inc a			
ret z			
ld a,c			
call  rlabel_00_3071 
ld a,$ff		
ld ($d460),a		
ret			
rlabel_BC_42B9:
ld a,($ff00+$b5)	
ld c,a			
ld a,($ff00+$b4)	
ld b,a			
push bc			
ld hl,$d351		
ldi a,(hl)		
cpl			
ld c,a			
ld a,(hl)		
cpl			
ld b,a			
inc bc			
ld hl,$d43a		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
add hl,bc		
ld a,h			
and a			
.DB $20 $50 ; < ['$20', '$50'] > < 0x42d3 > < bc42d3 BC 42D3 | 2050: jr nz, $50 >
ld a,l			
cp $e0			
.DB $30 $4b ; < ['$30', '$4b'] > < 0x42d8 > < bc42d8 BC 42D8 | 304B: jr nc, $4B >
sub $38			
ld ($ff00+$b5),a	
sub $29			
cpl			
ld ($d32c),a		
ld a,($d45a)		
ld ($ff00+$b4),a	
ld a,($d457)		
and a			
.DB $20 $46 ; < ['$20', '$46'] > < 0x42ed > < bc42ed BC 42ED | 2046: jr nz, $46 >
ld a,($d363)		
rra			
.DB $30 $28 ; < ['$30', '$28'] > < 0x42f3 > < bc42f3 BC 42F3 | 3028: jr nc, $28 >
ld de,$c008		
ld hl,$d42c		
ldi a,(hl)		
and a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x42fd > < bc42fd BC 42FD | 2807: jr z, $07 >
ld b,a			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
call  rlabel_00_33E6 
ld l,e			
ld h,d			
ld a,($d462)		
and $40			
.DB $28 $0e ; < ['$28', '$0e'] > < 0x430d > < bc430d BC 430D | 280E: jr z, $0E >
ld bc,$0004		
ld a,$24		
cp l			
.DB $38 $06 ; < ['$38', '$06'] > < 0x4315 > < bc4315 BC 4315 | 3806: jr c, $06 >
.DB $28 $04 ; < ['$28', '$04'] > < 0x4317 > < bc4317 BC 4317 | 2804: jr z, $04 >
ld (hl),b		
add hl,bc		
.DB $18 $f7 ; < ['$18', '$f7'] > < 0x431b > < bc431b BC 431B | 18F7: jr $F7 >
pop bc			
ld a,c			
ld ($ff00+$b5),a	
ld a,b			
ld ($ff00+$b4),a	
ret			
ld a,$60		
ld ($d32c),a		
ld hl,$c008		
ld a,($d457)		
and a			
.DB $20 $b1 ; < ['$20', '$b1'] > < 0x4331 > < bc4331 BC 4331 | 20B1: jr nz, $B1 >
.DB $18 $d3 ; < ['$18', '$d3'] > < 0x4333 > < bc4333 BC 4333 | 18D3: jr $D3 >
.incbin "data/bc_4335.data"
rlabel_BC_6041:
.DB $fa $65 $d4 ; < ['$fa', '$65', '$d4'] > < 0x6041 > < bc6041 BC 6041 | FA65D4: ld a, [$D465] >
.DB $4f ; < ['$4f'] > < 0x6044 > < bc6044 BC 6044 | 4F: ld c, a >
.DB $06 $00 ; < ['$06', '$00'] > < 0x6045 > < bc6045 BC 6045 | 0600: ld b, $00 >
ld hl,$d467		
add hl,bc		
ld b,$08		
inc c			
inc hl			
ld a,b			
sub c			
call z,$605a		
ld a,c			
ld ($d465),a		
ld a,(hl)		
ret			
ld c,a			
ld hl,$d467		
ret			
rlabel_BC_605F:
ld hl,$66f1		
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x6065 > < bc6065 BC 6065 | 3001: jr nc, $01 >
inc h			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ret			
rlabel_BC_606C:
ld c,l			
ld a,h			
call  rlabel_BC_605F 
push hl			
ld l,c			
ld h,$00		
ld b,h			
add hl,hl		
add hl,bc		
pop bc			
add hl,bc		
call  rlabel_BC_4001 
ld c,$18		
jp $09d5		
rlabel_BC_6082:
ld de,$8500		
inc c			
ret z			
dec c			
ld l,c			
ld h,$00		
ld b,h			
add hl,hl		
add hl,bc		
ld bc,$75d6		
add hl,bc		
call  rlabel_BC_4001 
jp $06aa		
rlabel_BC_6098:
ld l,e			
ld h,$00		
ld d,h			
add hl,hl		
add hl,de		
ld de,$7705		
add hl,de		
call  rlabel_BC_4001 
ld e,l			
ld d,h			
ld hl,$d36b		
ld a,b			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld (hl),d		
ret			
rlabel_BC_60B0:
ld l,e			
inc e			
.DB $28 $18 ; < ['$28', '$18'] > < 0x60b2 > < bc60b2 BC 60B2 | 2818: jr z, $18 >
dec e			
ld h,$00		
ld d,h			
add hl,hl		
add hl,de		
ld de,$7945		
add hl,de		
call  rlabel_BC_4001 
ld e,l			
ld d,h			
ld hl,$d370		
ld a,b			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld (hl),d		
ret			
xor a			
ld ($d370),a		
ld ($d389),a		
ret			
ld b,a			
cp $fe			
ret z			
ld a,($d364)		
and a			
.DB $28 $05 ; < ['$28', '$05'] > < 0x60dc > < bc60dc BC 60DC | 2805: jr z, $05 >
dec a			
ld ($d364),a		
ret			
ld a,($d365)		
cp c			
jp nz,$6379		
ld a,b			
ld b,$00		
ld d,b			
ld (hl),b		
dec hl			
ld (hl),e		
ld hl,$d390		
res 7,(hl)		
inc e			
jp z,$6260		
inc a			
jp nz,$617e		
push de			
ld hl,$c34c		
add hl,bc		
ld a,(hl)		
ld ($d36a),a		
ld hl,$3440		
add hl,bc		
add hl,bc		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,(hl)		
push af			
ld e,$04		
add hl,de		
ld a,(hl)		
ld ($d369),a		
ld e,$0a		
add hl,de		
ldi a,(hl)		
ld ($d37b),a		
ldi a,(hl)		
ld ($d37c),a		
ldi a,(hl)		
ld ($d37d),a		
ldi a,(hl)		
ld ($d37e),a		
ld a,(hl)		
set 5,a			
res 7,a			
ld ($d37f),a		
ld e,$07		
add hl,de		
ld a,l			
ld ($d385),a		
ld a,h			
ld ($d386),a		
ld hl,$d390		
res 6,(hl)		
res 2,(hl)		
pop af			
bit 2,a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x6148 > < bc6148 BC 6148 | 2802: jr z, $02 >
.incbin "data/bc_614A.data"
ld a,($d367)		
cp $0a			
.DB $38 $26 ; < ['$38', '$26'] > < 0x6151 > < bc6151 BC 6151 | 3826: jr c, $26 >
.DB $28 $13 ; < ['$28', '$13'] > < 0x6153 > < bc6153 BC 6153 | 2813: jr z, $13 >
ld a,($d36a)		
cp $01			
.DB $28 $1d ; < ['$28', '$1d'] > < 0x615a > < bc615a BC 615A | 281D: jr z, $1D >
cp $02			
.DB $28 $19 ; < ['$28', '$19'] > < 0x615e > < bc615e BC 615E | 2819: jr z, $19 >
cp $07			
.DB $28 $15 ; < ['$28', '$15'] > < 0x6162 > < bc6162 BC 6162 | 2815: jr z, $15 >
cp $09			
.DB $28 $11 ; < ['$28', '$11'] > < 0x6166 > < bc6166 BC 6166 | 2811: jr z, $11 >
set 6,(hl)		
ld hl,$61f4		
add hl,bc		
add hl,bc		
ldi a,(hl)		
ld d,(hl)		
ld e,a			
ld a,$aa		
ld b,$06		
call  rlabel_00_05DC 
xor a			
ld ($d389),a		
pop de			
inc e			
ret z			
xor a			
ld ($d383),a		
ld ($d393),a		
ld ($d394),a		
ld a,$4d		
ld ($d38f),a		
ei			
ld a,($d36a)		
ld l,a			
ld h,$00		
ld c,l			
ld b,h			
ld d,b			
add hl,hl		
add hl,bc		
ld bc,$7a7a		
add hl,bc		
call  rlabel_BC_4001 
ld a,($d367)		
ld e,a			
add hl,de		
add hl,de		
call  rlabel_00_3429 
ld l,e			
ld h,d			
call  rlabel_00_3429 
ld c,d			
push hl			
push bc			
call  rlabel_BC_6098 
pop bc			
push bc			
ld e,c			
call  rlabel_BC_60B0 
pop bc			
pop hl			
call  rlabel_00_3429 
ld c,d			
push hl			
push bc			
ld c,e			
call  rlabel_BC_6082 
pop hl			
push hl			
ld a,l			
inc a			
ld h,$04		
ld de,$7a9e		
ld b,$bc		
call nz,$0897		
pop bc			
pop de			
ld hl,$d375		
ld a,b			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld (hl),d		
ld a,$09		
ld c,$50		
call  rlabel_00_05B1 
ld a,($d390)		
bit 2,a			
ret nz			
jp $6289		
.incbin "data/bc_61F4.data"
.DB $77 ; < ['$77'] > < 0x61fa > < bc61fa BC 61FA | 77: ld [hl], a >
cp $ff			
ret z			
push hl			
ld b,$00		
ld d,b			
ld e,$10		
add hl,de		
set 5,(hl)		
cp $03			
.DB $20 $02 ; < ['$20', '$02'] > < 0x6209 > < bc6209 BC 6209 | 2002: jr nz, $02 >
res 5,(hl)		
inc hl			
inc hl			
ld (hl),d		
ld e,a			
ld hl,$c34c		
add hl,bc		
ld l,(hl)		
ld h,b			
ld c,l			
add hl,hl		
add hl,bc		
ld bc,$7a7a		
add hl,bc		
call  rlabel_BC_4001 
add hl,de		
add hl,de		
call  rlabel_00_3429 
ld l,e			
ld h,d			
call  rlabel_00_3429 
ld a,e			
pop de			
push bc			
push hl			
push de			
ld l,a			
ld h,$00		
ld e,l			
ld d,h			
add hl,hl		
add hl,de		
ld de,$7705		
add hl,de		
call  rlabel_BC_4001 
ld e,l			
ld d,h			
pop hl			
ld a,$0a		
call  rlabel_00_0462 
ld a,d			
ldd (hl),a		
ld a,e			
ldd (hl),a		
ld a,b			
ldd (hl),a		
pop de			
inc de			
inc de			
ld a,d			
ldd (hl),a		
ld a,e			
ldd (hl),a		
ld a,d			
ldd (hl),a		
ld a,e			
ldd (hl),a		
pop af			
ldd (hl),a		
dec hl			
xor a			
ldd (hl),a		
ld ($d4b2),a		
ret			
ld a,($d365)		
cp c			
jp nz,$6379		
ld a,($d366)		
inc a			
jp z,$6392		
ld a,($d394)		
and a			
call nz,$63c1		
ld a,($d367)		
cp $fe			
ret z			
ld a,($d390)		
bit 0,a			
ret z			
and $0c			
ret nz			
ld a,(hl)		
and a			
jp nz,$637a		
ld hl,$d375		
ldi a,(hl)		
ld b,a			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
call  rlabel_00_3429 
ld a,d			
ld ($d391),a		
ld c,e			
ld a,e			
inc a			
cp $f1			
jp nc,$6399		
call  rlabel_00_3429 
ld a,e			
ld ($d392),a		
ld e,d			
ld a,c			
and a			
.DB $28 $16 ; < ['$28', '$16'] > < 0x62aa > < bc62aa BC 62AA | 2816: jr z, $16 >
inc a			
.DB $20 $78 ; < ['$20', '$78'] > < 0x62ad > < bc62ad BC 62AD | 2078: jr nz, $78 >
.incbin "data/bc_62AF.data"
call  rlabel_BC_637D 
ld a,($d365)		
ld c,a			
ld a,($d381)		
ld e,a			
inc a			
.DB $20 $4a ; < ['$20', '$4a'] > < 0x62ce > < bc62ce BC 62CE | 204A: jr nz, $4A >
ld b,a			
ld d,a			
dec a			
ld hl,$d365		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ld hl,$3440		
add hl,bc		
add hl,bc		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
push hl			
inc hl			
ld a,($d382)		
ldi (hl),a		
inc hl			
ld (hl),d		
ld e,$0b		
add hl,de		
ld a,($d37b)		
ldi (hl),a		
ld a,($d37c)		
ldi (hl),a		
ld a,($d37d)		
ldi (hl),a		
ld a,($d37e)		
ldi (hl),a		
set 5,(hl)		
xor a			
ld ($d389),a		
ld e,c			
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
pop hl			
ld c,e			
jp $63f1		
ld a,e			
ld ($d366),a		
ld a,($d367)		
ld hl,$d368		
jp $60eb		
ld a,($d369)		
add c			
dec a			
ld ($d368),a		
ld a,l			
ld b,h			
ld hl,$d376		
ldi (hl),a		
ld (hl),b		
ld hl,$d383		
inc (hl)		
ld hl,$d36b		
ldi a,(hl)		
and a			
ret z			
ld b,a			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld c,e			
push de			
ld a,($d385)		
ld e,a			
ld a,($d386)		
ld d,a			
call  rlabel_00_335E 
ld a,e			
ld ($d384),a		
ld a,c			
ld hl,$d36e		
ldi (hl),a		
ld (hl),b		
pop bc			
ld hl,$d370		
ldi a,(hl)		
and a			
ld b,a			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld de,$d387		
call nz,$336f		
ld a,c			
ld hl,$d373		
ldi (hl),a		
ld (hl),b		
ld hl,$d390		
set 7,(hl)		
call  rlabel_BC_637D 
ret			
dec (hl)		
.DB $18 $fc ; < ['$18', '$fc'] > < 0x637b > < bc637b BC 637B | 18FC: jr $FC >
rlabel_BC_637D:
ld hl,$d37b		
ld a,($d392)		
add (hl)		
ldi (hl),a		
ldi a,(hl)		
ld e,a			
ld d,(hl)		
ld a,($d391)		
call  rlabel_BC_66E5 
ld a,d			
ldd (hl),a		
ld (hl),e		
ret			
dec a			
ld ($d381),a		
jp $62c5		
ld a,e			
cp $fe			
.DB $28 $0a ; < ['$28', '$0a'] > < 0x639c > < bc639c BC 639C | 280A: jr z, $0A >
cp $fd			
.DB $28 $11 ; < ['$28', '$11'] > < 0x63a0 > < bc63a0 BC 63A0 | 2811: jr z, $11 >
cp $fb			
.DB $28 $14 ; < ['$28', '$14'] > < 0x63a4 > < bc63a4 BC 63A4 | 2814: jr z, $14 >
.incbin "data/bc_63A6.data"
push hl			
push bc			
ld a,d			
call  rlabel_00_3071 
pop bc			
pop hl			
jp $6291		
ld a,d			
ld ($d38f),a		
jp $6291		
ld a,d			
ld ($d393),a		
jp $6291		
push hl			
ld d,c			
push de			
ld b,$bd		
ld hl,$758f		
rst $28			
pop de			
ld c,d			
pop hl			
ret			
ld a,($d361)		
and $03			
cp $03			
ret z			
ld c,a			
ld a,($d384)		
inc a			
ret nz			
ld hl,$d366		
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
cp e			
jp nz,$60d4		
inc a			
jp nz,$6260		
ld a,c			
ld hl,$3440		
call  rlabel_00_04A7 
ldi a,(hl)		
ld ($d4c1),a		
bit 0,a			
jp z,$64aa		
ldi a,(hl)		
cp (hl)			
call nz,$61fa		
ldi a,(hl)		
inc a			
jp z,$64aa		
ld a,(hl)		
and a			
jp nz,$64ab		
inc hl			
push hl			
inc hl			
ldi a,(hl)		
ld b,a			
push hl			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
call  rlabel_00_3429 
ld a,d			
ld ($d391),a		
ld c,e			
call  rlabel_00_3429 
ld a,e			
ld ($d392),a		
ld e,d			
ld a,c			
and a			
.DB $28 $18 ; < ['$28', '$18'] > < 0x6424 > < bc6424 BC 6424 | 2818: jr z, $18 >
inc a			
.DB $20 $2b ; < ['$20', '$2b'] > < 0x6427 > < bc6427 BC 6427 | 202B: jr nz, $2B >
pop hl			
push hl			
call  rlabel_BC_64AE 
ld de,$0005		
add hl,de		
ld (hl),d		
pop hl			
inc hl			
inc hl			
ldi a,(hl)		
ld e,a			
ldd a,(hl)		
dec hl			
ldd (hl),a		
ld (hl),e		
.DB $18 $d0 ; < ['$18', '$d0'] > < 0x643c > < bc643c BC 643C | 18D0: jr $D0 >
pop hl			
call  rlabel_BC_64AE 
ld de,$0006		
add hl,de		
ld b,(hl)		
pop hl			
dec hl			
dec hl			
dec hl			
ld (hl),b		
ld a,($d361)		
and $03			
ld c,a			
.DB $18 $a6 ; < ['$18', '$a6'] > < 0x6452 > < bc6452 BC 6452 | 18A6: jr $A6 >
ld a,e			
ld ($d4be),a		
ld e,l			
ld b,h			
ld a,($d4c1)		
and $0c			
.DB $20 $07 ; < ['$20', '$07'] > < 0x645f > < bc645f BC 645F | 2007: jr nz, $07 >
pop hl			
ld a,e			
ldi (hl),a		
ld a,b			
ldi (hl),a		
.DB $18 $0a ; < ['$18', '$0a'] > < 0x6466 > < bc6466 BC 6466 | 180A: jr $0A >
.incbin "data/bc_6468.data"
inc hl			
inc hl			
pop de			
ld a,(de)		
dec de			
add c			
dec a			
ld (de),a		
ldi a,(hl)		
ld b,a			
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
push hl			
ld de,$000c		
add hl,de		
ld e,l			
ld d,h			
ld l,c			
ld h,a			
ld a,($d4be)		
ld c,a			
call  rlabel_00_335E 
ld a,($d361)		
and $03			
ld hl,$d335		
call  rlabel_00_0462 
ld (hl),e		
ld a,e			
ld ($d384),a		
pop hl			
ld a,(hl)		
ldi (hl),a		
call  rlabel_BC_64B2 
ld de,$0005		
add hl,de		
inc (hl)		
ret			
dec (hl)		
.DB $18 $fc ; < ['$18', '$fc'] > < 0x64ac > < bc64ac BC 64AC | 18FC: jr $FC >
rlabel_BC_64AE:
ld de,$0008		
add hl,de		
rlabel_BC_64B2:
ld a,($d392)		
add (hl)		
ldi (hl),a		
ldi a,(hl)		
ld e,a			
ld d,(hl)		
ld a,($d391)		
call  rlabel_BC_66E5 
ld a,d			
ldd (hl),a		
ld (hl),e		
ret			
ld b,$00		
ld a,($d384)		
ld e,a			
inc a			
ret z			
ld a,($d361)		
and $03			
cp $03			
ret z			
ld c,a			
ld a,($d367)		
inc a			
.DB $20 $23 ; < ['$20', '$23'] > < 0x64d9 > < bc64d9 BC 64D9 | 2023: jr nz, $23 >
ld a,c			
push af			
ld hl,$c34c		
add hl,bc		
ld d,(hl)		
add a			
ld c,a			
ld hl,$3440		
add hl,bc		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld c,$0d		
add hl,bc		
ld c,(hl)		
pop af			
push de			
call  rlabel_BC_6516 
pop hl			
call  rlabel_BC_606C 
ld a,$ff		
ld ($d384),a		
ret			
ld a,($d365)		
cp c			
ret nz			
ld e,a			
ld a,($d37a)		
ld c,a			
ld a,e			
call  rlabel_BC_6516 
ld a,($d36a)		
ld h,a			
ld a,($d384)		
ld l,a			
.DB $18 $df ; < ['$18', '$df'] > < 0x6514 > < bc6514 BC 6514 | 18DF: jr $DF >
rlabel_BC_6516:
add a			
add c			
add a			
ld c,a			
ld hl,$6522		
add hl,bc		
ldi a,(hl)		
ld d,(hl)		
ld e,a			
ret			
.incbin "data/bc_6522.data"
ei			
ld a,($d367)		
inc a			
.DB $20 $78 ; < ['$20', '$78'] > < 0x6533 > < bc6533 BC 6533 | 2078: jr nz, $78 >
ld a,($d39b)		
ld hl,$d3a8		
ld b,$00		
call  rlabel_BC_6553 
ld a,($d3c4)		
ld hl,$d3d1		
ld b,$01		
call  rlabel_BC_6553 
ld a,($d3ed)		
ld hl,$d3fa		
ld b,$02		
rlabel_BC_6553:
ld ($d4bc),a		
bit 0,a			
ret z			
push bc			
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld b,a			
push bc			
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
push hl			
ld l,c			
ld h,a			
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
ld a,l			
sub $38			
ld d,a			
ld a,h			
and a			
pop hl			
pop bc			
ld e,b			
.DB $28 $03 ; < ['$28', '$03'] > < 0x657c > < bc657c BC 657C | 2803: jr z, $03 >
ld e,$c8		
ld d,e			
ld a,e			
ld ($ff00+$b4),a	
ld a,d			
ld ($ff00+$b5),a	
inc hl			
ldi a,(hl)		
ld b,a			
pop af			
push hl			
ld hl,$660b		
add a			
add c			
call  rlabel_00_0462 
ld c,(hl)		
pop hl			
ld l,(hl)		
ld h,$c0		
ld a,($d4bc)		
bit 1,a			
.DB $28 $05 ; < ['$28', '$05'] > < 0x659e > < bc659e BC 659E | 2805: jr z, $05 >
ld a,($ff00+$a6)	
rra			
.DB $38 $6c ; < ['$38', '$6c'] > < 0x65a3 > < bc65a3 BC 65A3 | 386C: jr c, $6C >
bit 5,b			
jp nz,$6696		
jp $6649		
ld a,($d365)		
ld b,a			
ld a,($d390)		
ld hl,$d37a		
call  rlabel_BC_6553 
ld de,$c024		
ld hl,$d390		
bit 7,(hl)		
.DB $28 $23 ; < ['$28', '$23'] > < 0x65c2 > < bc65c2 BC 65C2 | 2823: jr z, $23 >
ld hl,$d36b		
ldi a,(hl)		
ld b,a			
inc hl			
inc hl			
and a			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
call nz,$3401		
ld a,($d38b)		
and a			
call nz,$6620		
ld hl,$d370		
ldi a,(hl)		
ld b,a			
inc hl			
inc hl			
and a			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
call nz,$3401		
ld hl,$d390		
bit 6,(hl)		
.DB $28 $1c ; < ['$28', '$1c'] > < 0x65ec > < bc65ec BC 65EC | 281C: jr z, $1C >
ld a,($d394)		
and a			
.DB $28 $06 ; < ['$28', '$06'] > < 0x65f2 > < bc65f2 BC 65F2 | 2806: jr z, $06 >
ld b,$bd		
ld hl,$7564		
rst $28			
ld l,e			
ld h,d			
ld bc,$0004		
ld a,$68		
cp l			
.DB $28 $06 ; < ['$28', '$06'] > < 0x6602 > < bc6602 BC 6602 | 2806: jr z, $06 >
.DB $38 $04 ; < ['$38', '$04'] > < 0x6604 > < bc6604 BC 6604 | 3804: jr c, $04 >
ld (hl),b		
add hl,bc		
.DB $18 $f7 ; < ['$18', '$f7'] > < 0x6608 > < bc6608 BC 6608 | 18F7: jr $F7 >
ret			
.incbin "data/bc_660B.data"
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
ret			
.incbin "data/bc_6620.data"
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
add $08			
ld d,a			
ld a,c			
ldi (hl),a		
inc c			
inc c			
ld a,b			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
add $08			
ld d,a			
ld a,c			
ldi (hl),a		
inc c			
inc c			
ld a,b			
ldi (hl),a		
ld a,e			
ldi (hl),a		
add $10			
ld e,a			
ld a,d			
ldi (hl),a		
sub $10			
ld d,a			
ld a,c			
ldi (hl),a		
inc c			
inc c			
ld a,b			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
add $08			
ld d,a			
ld a,c			
ldi (hl),a		
inc c			
inc c			
ld a,b			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
add $08			
ld d,a			
ld a,c			
ldi (hl),a		
inc c			
inc c			
ld a,b			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld a,c			
ldi (hl),a		
ld a,b			
ldi (hl),a		
ret			
ld a,e			
ldi (hl),a		
ld a,d			
add $10			
ld d,a			
ldi (hl),a		
ld a,c			
ldi (hl),a		
inc c			
inc c			
ld a,b			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld a,d			
sub $08			
ld d,a			
ldi (hl),a		
ld a,c			
ldi (hl),a		
inc c			
inc c			
ld a,b			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld a,d			
sub $08			
ld d,a			
ldi (hl),a		
ld a,c			
ldi (hl),a		
inc c			
inc c			
ld a,b			
ldi (hl),a		
ld a,e			
add $10			
ld e,a			
ldi (hl),a		
ld a,d			
add $10			
ld d,a			
ldi (hl),a		
ld a,c			
ldi (hl),a		
inc c			
inc c			
ld a,b			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld a,d			
sub $08			
ld d,a			
ldi (hl),a		
ld a,c			
ldi (hl),a		
inc c			
inc c			
ld a,b			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld a,d			
sub $08			
ldi (hl),a		
ld a,c			
ldi (hl),a		
ld a,b			
ldi (hl),a		
ret			
rlabel_BC_66E5:
bit 7,a			
jp z,$045d		
add e			
cp e			
ld e,a			
ret c			
ret z			
dec d			
ret			
.incbin "data/bc_66F1.data"
rlabel_BC_7B8E:
ld hl,$d351		
ldi a,(hl)		
ld d,(hl)		
ld e,a			
ld a,($d359)		
and a			
.DB $28 $42 ; < ['$28', '$42'] > < 0x7b98 > < bc7b98 BC 7B98 | 2842: jr z, $42 >
ld c,a			
ld hl,$d35a		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
cp e			
.DB $20 $04 ; < ['$20', '$04'] > < 0x7ba2 > < bc7ba2 BC 7BA2 | 2004: jr nz, $04 >
ld a,h			
cp d			
.DB $28 $20 ; < ['$28', '$20'] > < 0x7ba6 > < bc7ba6 BC 7BA6 | 2820: jr z, $20 >
ld a,c			
call  rlabel_BC_66E5 
bit 7,c			
.DB $20 $0c ; < ['$20', '$0c'] > < 0x7bae > < bc7bae BC 7BAE | 200C: jr nz, $0C >
ld a,h			
cp d			
.DB $38 $04 ; < ['$38', '$04'] > < 0x7bb2 > < bc7bb2 BC 7BB2 | 3804: jr c, $04 >
.DB $20 $02 ; < ['$20', '$02'] > < 0x7bb4 > < bc7bb4 BC 7BB4 | 2002: jr nz, $02 >
ld a,l			
cp e			
.DB $38 $0e ; < ['$38', '$0e'] > < 0x7bb8 > < bc7bb8 BC 7BB8 | 380E: jr c, $0E >
.DB $18 $18 ; < ['$18', '$18'] > < 0x7bba > < bc7bba BC 7BBA | 1818: jr $18 >
ld a,d			
cp h			
.DB $38 $04 ; < ['$38', '$04'] > < 0x7bbe > < bc7bbe BC 7BBE | 3804: jr c, $04 >
.DB $20 $02 ; < ['$20', '$02'] > < 0x7bc0 > < bc7bc0 BC 7BC0 | 2002: jr nz, $02 >
ld a,e			
cp l			
.DB $38 $02 ; < ['$38', '$02'] > < 0x7bc4 > < bc7bc4 BC 7BC4 | 3802: jr c, $02 >
.DB $18 $0c ; < ['$18', '$0c'] > < 0x7bc6 > < bc7bc6 BC 7BC6 | 180C: jr $0C >
ld e,l			
ld d,h			
xor a			
ld ($d359),a		
ld ($d353),a		
ld ($d354),a		
ld hl,$d351		
ld a,e			
ldi (hl),a		
ld (hl),d		
.DB $18 $12 ; < ['$18', '$12'] > < 0x7bda > < bc7bda BC 7BDA | 1812: jr $12 >
ld a,($d353)		
and a			
.DB $20 $06 ; < ['$20', '$06'] > < 0x7be0 > < bc7be0 BC 7BE0 | 2006: jr nz, $06 >
ld a,($d354)		
and a			
.DB $28 $06 ; < ['$28', '$06'] > < 0x7be6 > < bc7be6 BC 7BE6 | 2806: jr z, $06 >
call  rlabel_BC_66E5 
ld a,d			
ldd (hl),a		
ld (hl),e		
ld a,($d35d)		
and a			
.DB $28 $20 ; < ['$28', '$20'] > < 0x7bf2 > < bc7bf2 BC 7BF2 | 2820: jr z, $20 >
ld hl,$d43a		
push hl			
ldi a,(hl)		
cpl			
ld c,a			
ld a,(hl)		
cpl			
ld b,a			
inc bc			
ld l,e			
ld h,d			
add hl,bc		
bit 7,h			
pop hl			
.DB $20 $0d ; < ['$20', '$0d'] > < 0x7c05 > < bc7c05 BC 7C05 | 200D: jr nz, $0D >
.incbin "data/bc_7C07.data"
ld b,$bd		
ld hl,$748f		
rst $28			
ret			
rlabel_BC_7C1B:
ld hl,$d356		
ld a,($d358)		
and a			
.DB $20 $2d ; < ['$20', '$2d'] > < 0x7c22 > < bc7c22 BC 7C22 | 202D: jr nz, $2D >
ld a,($d34b)		
sub $02			
.DB $30 $01 ; < ['$30', '$01'] > < 0x7c29 > < bc7c29 BC 7C29 | 3001: jr nc, $01 >
xor a			
.DB $20 $1c ; < ['$20', '$1c'] > < 0x7c2c > < bc7c2c BC 7C2C | 201C: jr nz, $1C >
bit 7,(hl)		
.DB $28 $0c ; < ['$28', '$0c'] > < 0x7c30 > < bc7c30 BC 7C30 | 280C: jr z, $0C >
.incbin "data/bc_7C32.data"
ld a,(hl)		
and a			
.DB $28 $08 ; < ['$28', '$08'] > < 0x7c40 > < bc7c40 BC 7C40 | 2808: jr z, $08 >
.incbin "data/bc_7C42.data"
cp $10			
.DB $38 $02 ; < ['$38', '$02'] > < 0x7c4c > < bc7c4c BC 7C4C | 3802: jr c, $02 >
.incbin "data/bc_7C4E.data"
ld (hl),a		
ld b,a			
inc hl			
ld a,(hl)		
sub b			
ld (hl),a		
ld b,a			
ld hl,$d363		
ld a,($d351)		
add b			
ld b,a			
srl a			
bit 1,(hl)		
.DB $28 $03 ; < ['$28', '$03'] > < 0x7c63 > < bc7c63 BC 7C63 | 2803: jr z, $03 >
ld ($d32b),a		
srl a			
add b			
bit 2,(hl)		
.DB $28 $03 ; < ['$28', '$03'] > < 0x7c6d > < bc7c6d BC 7C6D | 2803: jr z, $03 >
ld ($d32f),a		
ret			
rlabel_BC_7C73:
ld a,($ff00+$44)	
cp $58			
.DB $30 $42 ; < ['$30', '$42'] > < 0x7c77 > < bc7c77 BC 7C77 | 3042: jr nc, $42 >
cp $38			
.DB $30 $2e ; < ['$30', '$2e'] > < 0x7c7b > < bc7c7b BC 7C7B | 302E: jr nc, $2E >
cp $20			
.DB $30 $18 ; < ['$30', '$18'] > < 0x7c7f > < bc7c7f BC 7C7F | 3018: jr nc, $18 >
cp $03			
.DB $30 $07 ; < ['$30', '$07'] > < 0x7c83 > < bc7c83 BC 7C83 | 3007: jr nc, $07 >
ld a,$1d		
ld ($ff00+$45),a	
jp $7cdc		
ld a,($d32b)		
call  rlabel_BC_7CC7 
ld a,$35		
ld ($ff00+$45),a	
jp $7cef		
ld a,($d32c)		
call  rlabel_BC_7CC7 
ld a,($d32e)		
ld ($ff00+$42),a	
ld a,$55		
ld ($ff00+$45),a	
jp $7d0d		
ld a,($d32f)		
call  rlabel_BC_7CC7 
xor a			
ld ($ff00+$42),a	
ld a,$65		
ld ($ff00+$45),a	
jp $7d44		
ld a,($ff00+$a1)	
call  rlabel_BC_7CC7 
ld a,$00		
ld ($ff00+$9a),a	
jp $7d5b		
rlabel_BC_7CC7:
ld h,a			
ld a,($ff00+$45)	
add $02			
ld l,a			
ld a,($ff00+$44)	
cp l			
.DB $38 $fb ; < ['$38', '$fb'] > < 0x7cd0 > < bc7cd0 BC 7CD0 | 38FB: jr c, $FB >
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x7cd6 > < bc7cd6 BC 7CD6 | 20FA: jr nz, $FA >
ld a,h			
ld ($ff00+$43),a	
ret			
ld hl,$d362		
ld a,(hl)		
and a			
.DB $20 $0b ; < ['$20', '$0b'] > < 0x7ce1 > < bc7ce1 BC 7CE1 | 200B: jr nz, $0B >
ld a,$80		
ld (hl),a		
call  rlabel_BC_7DBA 
ld a,$01		
ld ($d362),a		
ret			
ld hl,$d362		
ld a,(hl)		
dec a			
.DB $20 $0e ; < ['$20', '$0e'] > < 0x7cf4 > < bc7cf4 BC 7CF4 | 200E: jr nz, $0E >
ld a,$80		
ld (hl),a		
ld b,$bd		
ld hl,$7137		
rst $28			
ld a,$02		
ld ($d362),a		
ld a,($d362)		
inc a			
ret z			
call  rlabel_BC_7B8E 
ret			
ld hl,$d362		
ld a,(hl)		
cp $02			
.DB $20 $12 ; < ['$20', '$12'] > < 0x7d13 > < bc7d13 BC 7D13 | 2012: jr nz, $12 >
ld a,$80		
ld (hl),a		
call  rlabel_BC_7E05 
ld a,($d363)		
rra			
call c,$63ce		
ld a,$03		
ld ($d362),a		
ld a,($d362)		
inc a			
.DB $28 $16 ; < ['$28', '$16'] > < 0x7d2b > < bc7d2b BC 7D2B | 2816: jr z, $16 >
di			
ld a,($ff00+$b5)	
ld c,a			
ld a,($ff00+$b4)	
ld b,a			
push bc			
ld a,($d363)		
rra			
call c,$652e		
pop bc			
ld a,c			
ld ($ff00+$b5),a	
ld a,b			
ld ($ff00+$b4),a	
ret			
ld hl,$d362		
ld a,(hl)		
cp $03			
.DB $20 $08 ; < ['$20', '$08'] > < 0x7d4a > < bc7d4a BC 7D4A | 2008: jr nz, $08 >
ld a,$80		
ld (hl),a		
ld a,$04		
ld ($d362),a		
ld b,$bd		
ld hl,$722d		
rst $28			
ret			
ld hl,$d362		
ld a,(hl)		
cp $04			
.DB $20 $23 ; < ['$20', '$23'] > < 0x7d61 > < bc7d61 BC 7D61 | 2023: jr nz, $23 >
ld a,$80		
ld (hl),a		
ld hl,$d462		
bit 0,(hl)		
call nz,$4242		
call  rlabel_BC_42B9 
ld a,($d363)		
rra			
call c,$64c4		
call  rlabel_BC_4131 
ld hl,$d361		
inc (hl)		
di			
xor a			
ld ($d362),a		
.DB $18 $07 ; < ['$18', '$07'] > < 0x7d84 > < bc7d84 BC 7D84 | 1807: jr $07 >
ld a,($d362)		
inc a			
call nz,$42b9		
ld a,($d338)		
and a			
call nz,$7f46		
ld a,($d33a)		
and a			
call nz,$7da7		
ld a,($d362)		
inc a			
ret z			
call  rlabel_BC_7C1B 
call  rlabel_BC_7F4D 
ret			
.incbin "data/bc_7DA7.data"
rlabel_BC_7DBA:
ld a,($d41e)		
and a			
ret z			
ld a,($d361)		
and $03			
.DB $20 $17 ; < ['$20', '$17'] > < 0x7dc4 > < bc7dc4 BC 7DC4 | 2017: jr nz, $17 >
ld hl,$d420		
ldd a,(hl)		
ld d,a			
ldd a,(hl)		
ld e,a			
ldd a,(hl)		
ld b,a			
ldd a,(hl)		
ld l,(hl)		
ld h,a			
ld a,$10		
call  rlabel_00_09C9 
ld a,c			
ld ($d421),a		
.DB $18 $1b ; < ['$18', '$1b'] > < 0x7ddb > < bc7ddb BC 7DDB | 181B: jr $1B >
ld hl,$d421		
ldd a,(hl)		
ld c,a			
ldd a,(hl)		
ld d,a			
ldd a,(hl)		
ld e,a			
ldd a,(hl)		
ld b,a			
ldd a,(hl)		
ld l,(hl)		
ld h,a			
ld a,b			
ld b,$10		
call  rlabel_00_099F 
ld a,($d361)		
cpl			
and $03			
ret z			
ld a,l			
ld b,h			
ld hl,$d41c		
ldi (hl),a		
ld a,b			
ldi (hl),a		
inc hl			
ld a,e			
ldi (hl),a		
ld (hl),d		
ret			
rlabel_BC_7E05:
ld a,($d41e)		
and a			
ret z			
ld a,($d361)		
cpl			
and $03			
ret nz			
ld ($d41e),a		
ei			
call  rlabel_BC_4031 
ld a,($d426)		
ld b,a			
ld hl,$d430		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,h			
and a			
call nz,$33a5		
ld hl,$d429		
ldi a,(hl)		
and a			
.DB $28 $17 ; < ['$28', '$17'] > < 0x7e2c > < bc7e2c BC 7E2C | 2817: jr z, $17 >
ld b,a			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,($d425)		
ld c,a			
ld de,$d453		
call  rlabel_00_336F 
ld l,c			
ld h,b			
ld a,($d429)		
ld b,a			
call  rlabel_00_33A5 
ld hl,$d462		
set 0,(hl)		
ret			
.incbin "data/bc_7E4B.data"
ld b,$bd		
ld hl,$4001		
rst $28			
ret			
rlabel_BC_7F4D:
ld a,($d352)		
cp $50			
.DB $30 $0c ; < ['$30', '$0c'] > < 0x7f52 > < bc7f52 BC 7F52 | 300C: jr nc, $0C >
cp $30			
ret nc			
.incbin "data/bc_7F57.data"
