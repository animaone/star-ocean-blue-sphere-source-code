.BANK $39 SLOT 1
.ORG 0
.incbin "data/39_4000.data"
ld c,$04		
ld de,$0000		
call  rlabel_00_1311 
call  rlabel_00_05AA 
xor a			
ld ($ff00+$a1),a	
ld ($ff00+$a0),a	
ld b,$03		
ld hl,$40af		
rst $28			
ld hl,$9973		
call  rlabel_00_1B17 
ldi a,(hl)		
ld b,a			
ei			
ld c,$06		
ld de,$0c01		
ld a,$01		
ld ($cd82),a		
call  rlabel_00_27B4 
ld hl,$cd06		
ld c,$3c		
call  rlabel_00_04E2 
ld b,$00		
ld a,($cbf2)		
or a			
jp nz,$605f		
.incbin "data/39_604A.data"
ld hl,$98e0		
ld c,$07		
ld d,$80		
call  rlabel_00_1CE2 
di			
xor a			
ld ($ff00+$45),a	
ld hl,$c1bd		
ld c,$40		
call  rlabel_00_04E2 
ld b,$06		
ld hl,$41b7		
rst $28			
xor a			
call  rlabel_00_0815 
ld a,$54		
ld ($c1bd),a		
ld a,$54		
ld ($c1bf),a		
ld a,$60		
ld ($c1c3),a		
ld c,$87		
ld de,$0100		
ld b,$06		
ld hl,$447d		
rst $28			
ld a,$34		
ld ($c1cf),a		
ld a,$2c		
ld ($c1cd),a		
ld a,$20		
ld ($c1d3),a		
ld a,$50		
ld ($c1df),a		
ld a,$2c		
ld ($c1dd),a		
ld a,$20		
ld ($c1e3),a		
ld a,$6c		
ld ($c1ef),a		
ld a,$2c		
ld ($c1ed),a		
ld a,$20		
ld ($c1f3),a		
ld hl,$c1a3		
ld de,$0729		
call  rlabel_00_0231 
ld a,($ff00+$ff)	
or $02			
ld ($ff00+$9c),a	
ld ($ff00+$ff),a	
ei			
ld a,$3c		
ld bc,$0008		
ld de,$c9b0		
ld hl,$41c1		
call  rlabel_00_0D50 
ld a,$3c		
ld bc,$0008		
ld de,$c9c8		
ld hl,$40c1		
call  rlabel_00_0D50 
ld de,$6cbf		
ld hl,$c9e8		
ld c,$10		
call  rlabel_00_04CB 
ld de,$8800		
ld bc,$0008		
ld hl,$44d1		
ld a,$3f		
call  rlabel_00_06FD 
ld de,$83c0		
ld hl,$43a1		
ld bc,$113f		
call  rlabel_00_1C05 
ld de,$85e0		
ld bc,$0004		
ld hl,$44b1		
ld a,$3f		
call  rlabel_00_06FD 
ld de,$8620		
ld bc,$0008		
ld hl,$7001		
ld a,$3d		
call  rlabel_00_06FD 
ld hl,$98a4		
call  rlabel_00_1B17 
ld a,$80		
ldi (hl),a		
ei			
call  rlabel_00_1B17 
ld a,$83		
ldi (hl),a		
ei			
call  rlabel_00_1B17 
ld a,$83		
ldi (hl),a		
ei			
inc hl			
call  rlabel_00_1B17 
ld a,$81		
ldi (hl),a		
ei			
call  rlabel_00_1B17 
ld a,$83		
ldi (hl),a		
ei			
call  rlabel_00_1B17 
ld a,$83		
ldi (hl),a		
ei			
inc hl			
call  rlabel_00_1B17 
ld a,$82		
ldi (hl),a		
ei			
call  rlabel_00_1B17 
ld a,$83		
ldi (hl),a		
ei			
call  rlabel_00_1B17 
ld a,$83		
ldi (hl),a		
ei			
inc hl			
call  rlabel_39_69A3 
ld a,$08		
ld ($cd06),a		
xor a			
ld ($cd30),a		
ld ($cd40),a		
ld ($cd41),a		
ld a,$04		
ld ($cd31),a		
ld hl,$cd34		
ld c,$0c		
call  rlabel_00_04E2 
ld a,$bc		
ld ($cd07),a		
ld a,$01		
ld ($cd99),a		
xor a			
ld ($cd98),a		
ld ($cbf3),a		
ld ($cd40),a		
ld hl,$c34c		
ld a,$ff		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ld hl,$c1aa		
ld de,$63dc		
call  rlabel_00_0231 
ld a,$39		
ld (hl),a		
ld a,$01		
ld ($cd33),a		
call  rlabel_00_027C 
ld hl,$0101		
ld de,$0312		
ld c,$02		
call  rlabel_00_1E43 
call  rlabel_00_24F4 
ld hl,$0c01		
ld de,$1012		
ld c,$02		
call  rlabel_00_1E43 
call  rlabel_00_24FA 
ld hl,$0000		
ld de,$635f		
ld bc,$0000		
call  rlabel_00_2375 
xor a			
ld ($cd33),a		
di			
ld hl,$c1a3		
ld de,$2de0		
call  rlabel_00_0231 
ei			
call  rlabel_00_2707 
call  rlabel_39_6CA2 
ld a,($cccd)		
and $20			
jp z,$6225		
ld a,($cd06)		
ld ($ff00+$94),a	
ld d,a			
call  rlabel_39_6394 
ld ($cd06),a		
ld a,$e0		
ld ($ff00+$92),a	
ld a,$fe		
ld ($ff00+$93),a	
call  rlabel_39_649B 
ld a,($cccd)		
and $10			
jp z,$6244		
ld a,($cd06)		
ld ($ff00+$94),a	
ld d,a			
call  rlabel_39_6380 
ld ($cd06),a		
ld a,$20		
ld ($ff00+$92),a	
ld a,$02		
ld ($ff00+$93),a	
call  rlabel_39_649B 
ld a,($cccd)		
and $01			
jp z,$6328		
ld b,$1b		
call  rlabel_00_2CDF 
ld a,($c34c)		
cp $ff			
.DB $20 $35 ; < ['$20', '$35'] > < 0x6256 > < 396256 39 6256 | 2035: jr nz, $35 >
ld a,$01		
call  rlabel_00_0815 
xor a			
call  rlabel_39_6CA6 
ld de,$4081		
ld a,($cd06)		
ld l,a			
ld h,$01		
call  rlabel_00_089B 
ld a,($cd06)		
add $7f			
ld c,a			
ld de,$0100		
ld b,$06		
ld hl,$447d		
rst $28			
ld a,($c1d3)		
or $40			
ld ($c1d3),a		
ld a,($cd06)		
ld ($c34c),a		
jp $6317		
ld a,($c34d)		
cp $ff			
.DB $20 $35 ; < ['$20', '$35'] > < 0x6292 > < 396292 39 6292 | 2035: jr nz, $35 >
ld a,$02		
call  rlabel_00_0815 
ld a,$01		
call  rlabel_39_6CA6 
ld de,$4081		
ld a,($cd06)		
ld l,a			
ld h,$02		
call  rlabel_00_089B 
ld a,($cd06)		
add $7f			
ld c,a			
ld de,$0100		
ld b,$06		
ld hl,$447d		
rst $28			
ld a,($c1e3)		
or $40			
ld ($c1e3),a		
ld a,($cd06)		
ld ($c34d),a		
.DB $18 $4e ; < ['$18', '$4e'] > < 0x62c7 > < 3962c7 39 62C7 | 184E: jr $4E >
ld a,$03		
call  rlabel_00_0815 
ld a,$02		
call  rlabel_39_6CA6 
ld de,$4081		
ld a,($cd06)		
ld l,a			
ld h,$03		
call  rlabel_00_089B 
ld a,($cd06)		
add $7f			
ld c,a			
ld de,$0100		
ld b,$06		
ld hl,$447d		
rst $28			
ld a,($c1f3)		
or $40			
ld ($c1f3),a		
ld a,($cd06)		
ld ($c34e),a		
ld hl,$c000		
ld c,$14		
call  rlabel_00_04E2 
ld hl,$c078		
ld c,$28		
call  rlabel_00_04E2 
call  rlabel_39_6CA2 
call  rlabel_39_6BAA 
jp nz,$633b		
.DB $18 $21 ; < ['$18', '$21'] > < 0x6315 > < 396315 39 6315 | 1821: jr $21 >
xor a			
call  rlabel_00_0815 
ld a,($cd06)		
ld d,a			
call  rlabel_39_6380 
ld ($cd06),a		
call  rlabel_39_663E 
ld a,($cccd)		
and $02			
jp z,$6338		
ld b,$1c		
call  rlabel_00_2CDF 
call  rlabel_39_66C4 
jp $6200		
ld a,$01		
ld ($cd33),a		
call  rlabel_00_027C 
ld c,$04		
ld de,$0000		
call  rlabel_00_1311 
ld a,$c9		
ld ($c1aa),a		
ld a,($ff00+$ff)	
and $fd			
ld ($ff00+$9c),a	
ld ($ff00+$ff),a	
ld b,$01		
ld hl,$47fa		
rst $28			
ret			
ld hl,$636f		
ld de,$4007		
ld bc,$0202		
xor a			
call  rlabel_00_0F47 
jp $6a2a		
.incbin "data/39_636F.data"
rlabel_39_6380:
ld b,$00		
ld a,d			
inc a			
cp $0c			
.DB $38 $04 ; < ['$38', '$04'] > < 0x6386 > < 396386 39 6386 | 3804: jr c, $04 >
sub $0c			
ld b,$01		
ld d,a			
call  rlabel_39_63A8 
.DB $20 $f0 ; < ['$20', '$f0'] > < 0x6390 > < 396390 39 6390 | 20F0: jr nz, $F0 >
ld a,d			
ret			
rlabel_39_6394:
ld b,$00		
ld a,d			
dec a			
bit 7,a			
.DB $28 $04 ; < ['$28', '$04'] > < 0x639a > < 39639a 39 639A | 2804: jr z, $04 >
add $0c			
ld b,$01		
ld d,a			
call  rlabel_39_63A8 
.DB $20 $f0 ; < ['$20', '$f0'] > < 0x63a4 > < 3963a4 39 63A4 | 20F0: jr nz, $F0 >
ld a,d			
ret			
rlabel_39_63A8:
push hl			
ld a,d			
or a			
.DB $28 $1d ; < ['$28', '$1d'] > < 0x63ab > < 3963ab 39 63AB | 281D: jr z, $1D >
cp $01			
.DB $28 $19 ; < ['$28', '$19'] > < 0x63af > < 3963af 39 63AF | 2819: jr z, $19 >
cp $03			
.DB $28 $15 ; < ['$28', '$15'] > < 0x63b3 > < 3963b3 39 63B3 | 2815: jr z, $15 >
cp $0a			
.DB $28 $11 ; < ['$28', '$11'] > < 0x63b7 > < 3963b7 39 63B7 | 2811: jr z, $11 >
ld hl,$c34c		
cp (hl)			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x63bd > < 3963bd 39 63BD | 280B: jr z, $0B >
inc hl			
cp (hl)			
.DB $28 $07 ; < ['$28', '$07'] > < 0x63c1 > < 3963c1 39 63C1 | 2807: jr z, $07 >
inc hl			
cp (hl)			
.DB $28 $03 ; < ['$28', '$03'] > < 0x63c5 > < 3963c5 39 63C5 | 2803: jr z, $03 >
pop hl			
xor a			
ret			
pop hl			
ld a,$01		
or a			
ret			
rlabel_39_63CF:
ld a,d			
add b			
bit 7,a			
.DB $28 $01 ; < ['$28', '$01'] > < 0x63d3 > < 3963d3 39 63D3 | 2801: jr z, $01 >
add c			
cp c			
.DB $38 $01 ; < ['$38', '$01'] > < 0x63d7 > < 3963d7 39 63D7 | 3801: jr c, $01 >
sub c			
ld d,a			
ret			
ld a,($cd41)		
or a			
ret nz			
ld bc,$0014		
ld d,$01		
call  rlabel_00_2BBA 
ld a,($cd98)		
srl a			
srl a			
push af			
ld b,a			
ld a,$40		
sub b			
ld c,a			
ld b,$48		
ld d,$00		
ld hl,$6d0d		
call  rlabel_00_275E 
pop af			
add $60			
ld c,a			
ld b,$48		
ld d,$01		
ld hl,$6d12		
call  rlabel_00_275E 
ld a,($cd07)		
ld c,a			
ld b,$59		
ld d,$1e		
ld a,($cd40)		
and $01			
.DB $20 $05 ; < ['$20', '$05'] > < 0x641b > < 39641b 39 641B | 2005: jr nz, $05 >
ld hl,$6ccf		
.DB $18 $03 ; < ['$18', '$03'] > < 0x6420 > < 396420 39 6420 | 1803: jr $03 >
ld hl,$6cf0		
call  rlabel_00_275E 
ld a,($cd07)		
cp $6e			
.DB $30 $07 ; < ['$30', '$07'] > < 0x642d > < 39642d 39 642D | 3007: jr nc, $07 >
ld a,($cd07)		
cp $32			
.DB $30 $0a ; < ['$30', '$0a'] > < 0x6434 > < 396434 39 6434 | 300A: jr nc, $0A >
ld a,($cd07)		
sub $02			
ld ($cd07),a		
.DB $18 $0e ; < ['$18', '$0e'] > < 0x643e > < 39643e 39 643E | 180E: jr $0E >
ld a,($cbf3)		
and $01			
.DB $20 $07 ; < ['$20', '$07'] > < 0x6445 > < 396445 39 6445 | 2007: jr nz, $07 >
ld a,($cd07)		
dec a			
ld ($cd07),a		
ld a,($cbf3)		
and $10			
.DB $20 $23 ; < ['$20', '$23'] > < 0x6453 > < 396453 39 6453 | 2023: jr nz, $23 >
ld a,($c34c)		
cp $ff			
.DB $20 $07 ; < ['$20', '$07'] > < 0x645a > < 39645a 39 645A | 2007: jr nz, $07 >
ld c,$20		
ld hl,$6d17		
.DB $18 $1f ; < ['$18', '$1f'] > < 0x6461 > < 396461 39 6461 | 181F: jr $1F >
ld a,($c34d)		
cp $ff			
.DB $20 $07 ; < ['$20', '$07'] > < 0x6468 > < 396468 39 6468 | 2007: jr nz, $07 >
ld c,$40		
ld hl,$6d24		
.DB $18 $11 ; < ['$18', '$11'] > < 0x646f > < 39646f 39 646F | 1811: jr $11 >
ld c,$60		
ld hl,$6d31		
.DB $18 $0a ; < ['$18', '$0a'] > < 0x6476 > < 396476 39 6476 | 180A: jr $0A >
ld hl,$c008		
ld c,$0c		
call  rlabel_00_04E2 
.DB $18 $07 ; < ['$18', '$07'] > < 0x6480 > < 396480 39 6480 | 1807: jr $07 >
ld b,$28		
ld d,$02		
call  rlabel_00_275E 
ld a,($cbf3)		
inc a			
ld ($cbf3),a		
ld a,($cd07)		
cp $bd			
ret nz			
ld hl,$cd40		
inc (hl)		
ret			
rlabel_39_649B:
ld b,$7f		
call  rlabel_00_2CDF 
xor a			
call  rlabel_39_6CA6 
ld a,($ff00+$93)	
and $80			
.DB $28 $2b ; < ['$28', '$2b'] > < 0x64a8 > < 3964a8 39 64A8 | 282B: jr z, $2B >
ld a,($cd06)		
ld d,a			
call  rlabel_39_6394 
call  rlabel_39_6394 
push af			
add $7f			
ld c,a			
ld b,$1d		
call  rlabel_39_6836 
pop bc			
ld a,($cd31)		
ld c,a			
call  rlabel_39_6902 
ld b,$ff		
ld c,$05		
ld a,($cd31)		
ld d,a			
call  rlabel_39_63CF 
ld ($cd31),a		
.DB $18 $29 ; < ['$18', '$29'] > < 0x64d3 > < 3964d3 39 64D3 | 1829: jr $29 >
ld a,($cd06)		
ld d,a			
call  rlabel_39_6380 
call  rlabel_39_6380 
push af			
add $7f			
ld c,a			
ld b,$15		
call  rlabel_39_6836 
pop bc			
ld a,($cd31)		
ld c,a			
call  rlabel_39_6902 
ld b,$01		
ld c,$05		
ld a,($cd31)		
ld d,a			
call  rlabel_39_63CF 
ld ($cd31),a		
ld a,($c1bf)		
ld b,a			
push bc			
ld a,($c1c3)		
and $df			
ld ($c1c3),a		
ld a,$10		
ld ($ff00+$92),a	
ld a,($ff00+$93)	
ld b,a			
ld a,($c1bf)		
sub b			
ld ($c1bf),a		
call  rlabel_39_6CA2 
ld a,($ff00+$93)	
ld b,a			
ld a,($cd30)		
add b			
ld ($cd30),a		
ld a,($ff00+$92)	
dec a			
ld ($ff00+$92),a	
.DB $20 $e2 ; < ['$20', '$e2'] > < 0x652b > < 39652b 39 652B | 20E2: jr nz, $E2 >
ld hl,$cd34		
ld a,($ff00+$94)	
call  rlabel_00_0462 
ld a,($c1c5)		
ld (hl),a		
ld a,$02		
call  rlabel_39_6CA6 
ld de,$4081		
ld a,($ff00+$94)	
ld l,a			
ld h,$03		
call  rlabel_00_089B 
ld de,$c1ed		
ld hl,$cd18		
ld c,$10		
call  rlabel_00_04CB 
ld de,$c1bd		
ld hl,$c1ed		
ld c,$10		
call  rlabel_00_04CB 
ld a,$03		
ld ($c1f1),a		
ld a,($c1c3)		
and $bf			
ld ($c1c3),a		
ld a,$03		
call  rlabel_39_6CA6 
ld de,$4081		
ld a,($cd06)		
ld l,a			
ld h,$00		
call  rlabel_00_089B 
ld a,($cd06)		
add $7f			
ld c,a			
ld de,$0100		
ld b,$06		
ld hl,$447d		
rst $28			
ld hl,$cd34		
ld a,($cd06)		
call  rlabel_00_0462 
ld a,(hl)		
ld ($c1c5),a		
pop bc			
ld a,b			
ld ($c1bf),a		
ld a,($c1c3)		
or $60			
ld ($c1c3),a		
ld c,$59		
call  rlabel_00_0385 
di			
ld hl,$c1a3		
ld de,$2de0		
call  rlabel_00_0231 
ld a,$02		
ld ($ff00+$0f),a	
ei			
nop			
di			
ld a,$37		
ld ($ff00+$45),a	
ld ($ff00+$9a),a	
ld hl,$c1a3		
ld de,$2d95		
call  rlabel_00_0231 
ld a,$01		
ld ($cd33),a		
ld a,($ff00+$0f)	
and $fe			
ld ($ff00+$0f),a	
ei			
ld b,$09		
call  rlabel_39_6937 
ld a,($ff00+$93)	
and $80			
.DB $28 $11 ; < ['$28', '$11'] > < 0x65e0 > < 3965e0 39 65E0 | 2811: jr z, $11 >
ld bc,$fe05		
ld a,($cd31)		
ld d,a			
call  rlabel_39_63CF 
ld ($cd32),a		
ld b,$0d		
.DB $18 $0f ; < ['$18', '$0f'] > < 0x65f1 > < 3965f1 39 65F1 | 180F: jr $0F >
ld bc,$fd05		
ld a,($cd31)		
ld d,a			
call  rlabel_39_63CF 
ld ($cd32),a		
ld b,$05		
push bc			
ld a,($ff00+$94)	
ld b,a			
ld a,($cd32)		
ld c,a			
call  rlabel_39_6902 
pop bc			
ld c,$59		
call  rlabel_00_08EE 
ld a,($ff00+$94)	
add $7f			
ld c,a			
ld a,($cd31)		
ld ($ff00+$95),a	
ld a,($cd32)		
ld ($cd31),a		
call  rlabel_39_6836 
ld a,($ff00+$95)	
ld ($cd31),a		
call  rlabel_39_6A2A 
ld de,$cd18		
ld hl,$c1ed		
ld c,$10		
call  rlabel_00_04CB 
xor a			
ld ($cd33),a		
ret			
rlabel_39_663E:
ld a,($cd31)		
ld ($ff00+$95),a	
ld a,($cd06)		
add $7f			
ld c,a			
ld de,$0100		
ld b,$06		
ld hl,$447d		
rst $28			
xor a			
call  rlabel_39_6CA6 
ld de,$4081		
ld a,($cd06)		
ld l,a			
ld h,$00		
call  rlabel_00_089B 
ld a,$01		
ld ($cd33),a		
call  rlabel_00_027C 
ld bc,$fe05		
ld a,($ff00+$95)	
ld d,a			
call  rlabel_39_63CF 
ld ($cd31),a		
ld a,($cd06)		
ld d,a			
call  rlabel_39_6380 
push af			
add $7f			
ld c,a			
ld b,$0d		
call  rlabel_39_6836 
pop bc			
ld a,($cd31)		
ld c,a			
call  rlabel_39_6902 
ld bc,$ff05		
ld a,($ff00+$95)	
ld d,a			
call  rlabel_39_63CF 
ld ($cd31),a		
ld a,($cd06)		
ld d,a			
call  rlabel_39_6380 
call  rlabel_39_6380 
push af			
add $7f			
ld c,a			
ld b,$11		
call  rlabel_39_6836 
pop bc			
ld a,($cd31)		
ld c,a			
call  rlabel_39_6902 
call  rlabel_39_6A2A 
ld a,($ff00+$95)	
ld ($cd31),a		
xor a			
ld ($cd33),a		
jp $6ca2		
rlabel_39_66C4:
ld a,($cd31)		
ld ($ff00+$95),a	
ld a,($c34c)		
inc a			
ret z			
ld a,($c34d)		
inc a			
.DB $20 $14 ; < ['$20', '$14'] > < 0x66d2 > < 3966d2 39 66D2 | 2014: jr nz, $14 >
ld a,($c1d3)		
and $bf			
ld ($c1d3),a		
ld a,($c34c)		
ld ($ff00+$96),a	
ld a,$ff		
ld ($c34c),a		
.DB $18 $2c ; < ['$18', '$2c'] > < 0x66e6 > < 3966e6 39 66E6 | 182C: jr $2C >
ld a,($c34e)		
inc a			
.DB $20 $14 ; < ['$20', '$14'] > < 0x66ec > < 3966ec 39 66EC | 2014: jr nz, $14 >
ld a,($c1e3)		
and $bf			
ld ($c1e3),a		
ld a,($c34d)		
ld ($ff00+$96),a	
ld a,$ff		
ld ($c34d),a		
.DB $18 $12 ; < ['$18', '$12'] > < 0x6700 > < 396700 39 6700 | 1812: jr $12 >
ld a,($c1f3)		
and $bf			
ld ($c1f3),a		
ld a,($c34e)		
ld ($ff00+$96),a	
ld a,$ff		
ld ($c34e),a		
ld a,$01		
ld ($cd33),a		
call  rlabel_00_027C 
ld a,($cd06)		
ld d,a			
call  rlabel_39_6394 
ld a,($ff00+$96)	
cp d			
.DB $20 $49 ; < ['$20', '$49'] > < 0x6726 > < 396726 39 6726 | 2049: jr nz, $49 >
ld bc,$0205		
ld a,($ff00+$95)	
ld d,a			
call  rlabel_39_63CF 
ld ($cd31),a		
ld a,($ff00+$96)	
push af			
add $7f			
ld c,a			
ld b,$05		
call  rlabel_39_6836 
pop bc			
ld a,($cd31)		
ld c,a			
call  rlabel_39_6902 
ld bc,$0105		
ld a,($ff00+$95)	
ld d,a			
call  rlabel_39_63CF 
ld ($cd31),a		
ld a,($cd06)		
ld d,a			
call  rlabel_39_6394 
call  rlabel_39_6394 
push af			
add $7f			
ld c,a			
ld b,$01		
call  rlabel_39_6836 
pop bc			
ld a,($cd31)		
ld c,a			
call  rlabel_39_6902 
jp $6827		
ld a,($cd06)		
ld d,a			
call  rlabel_39_6394 
call  rlabel_39_6394 
ld a,($ff00+$96)	
cp d			
.DB $20 $22 ; < ['$20', '$22'] > < 0x677e > < 39677e 39 677E | 2022: jr nz, $22 >
.incbin "data/39_6780.data"
ld a,($cd06)		
ld d,a			
call  rlabel_39_6380 
ld a,($ff00+$96)	
cp d			
.DB $20 $49 ; < ['$20', '$49'] > < 0x67ac > < 3967ac 39 67AC | 2049: jr nz, $49 >
.incbin "data/39_67AE.data"
ld a,($cd06)		
ld d,a			
call  rlabel_39_6380 
call  rlabel_39_6380 
ld a,($ff00+$96)	
cp d			
.DB $20 $21 ; < ['$20', '$21'] > < 0x6804 > < 396804 39 6804 | 2021: jr nz, $21 >
.incbin "data/39_6806.data"
call  rlabel_39_6A2A 
ld a,($ff00+$95)	
ld ($cd31),a		
xor a			
ld ($cd33),a		
jp $6ca2		
rlabel_39_6836:
push bc			
ld a,c			
ld ($ff00+$99),a	
ld de,$c1bd		
ld hl,$cd08		
ld c,$10		
call  rlabel_00_04CB 
xor a			
call  rlabel_00_0815 
ld a,($ff00+$99)	
ld c,a			
ld de,$0100		
ld b,$06		
ld hl,$447d		
rst $28			
ld hl,$cd34		
ld a,($ff00+$99)	
sub $7f			
call  rlabel_00_0462 
ld a,(hl)		
ld ($c1c5),a		
ld a,($cd31)		
swap a			
add a			
ld h,$00		
ld l,a			
add hl,hl		
ld d,h			
ld e,l			
add hl,hl		
add hl,de		
ld de,$8840		
add hl,de		
ld d,h			
ld e,l			
push de			
call  rlabel_39_6CA2 
ld c,$59		
call  rlabel_00_08EE 
pop de			
ld b,$06		
ld hl,$4066		
rst $28			
ld de,$cd08		
ld hl,$c1bd		
ld c,$10		
call  rlabel_00_04CB 
pop bc			
ld a,($cd30)		
srl a			
srl a			
srl a			
add b			
cp $20			
.DB $38 $02 ; < ['$38', '$02'] > < 0x689f > < 39689f 39 689F | 3802: jr c, $02 >
sub $20			
ld hl,$98e0		
call  rlabel_00_0462 
ld a,($cd31)		
add a			
add a			
ld b,a			
add a			
add b			
add $84			
ld b,a			
push hl			
ld c,$04		
ld a,b			
call  rlabel_00_1B17 
ldi (hl),a		
ei			
add $04			
call  rlabel_00_1B17 
ldi (hl),a		
ei			
add $04			
call  rlabel_00_1B17 
ld (hl),a		
ei			
sub $07			
ld b,a			
ld a,$1e		
call  rlabel_00_0462 
dec c			
.DB $20 $e1 ; < ['$20', '$e1'] > < 0x68d4 > < 3968d4 39 68D4 | 20E1: jr nz, $E1 >
pop hl			
ld a,($cbf2)		
or a			
ret z			
ld a,$01		
ld ($ff00+$4f),a	
ld c,$04		
ld a,($cd31)		
ld d,a			
ld a,d			
call  rlabel_00_1B17 
ldi (hl),a		
ei			
call  rlabel_00_1B17 
ldi (hl),a		
ei			
call  rlabel_00_1B17 
ld (hl),a		
ei			
ld a,$1e		
call  rlabel_00_0462 
dec c			
.DB $20 $e8 ; < ['$20', '$e8'] > < 0x68fc > < 3968fc 39 68FC | 20E8: jr nz, $E8 >
xor a			
ld ($ff00+$4f),a	
ret			
rlabel_39_6902:
push bc			
sla b			
sla b			
sla b			
ld h,$00		
ld l,b			
ld de,$4083		
add hl,de		
ld a,$3c		
ld bc,$0006		
ld de,$cd28		
call  rlabel_00_0D50 
pop bc			
sla c			
sla c			
sla c			
ld a,$82		
add c			
ld ($ff00+$68),a	
ld hl,$cd28		
ld b,$06		
call  rlabel_00_1B17 
ldi a,(hl)		
ld ($ff00+$69),a	
ei			
dec b			
.DB $20 $f6 ; < ['$20', '$f6'] > < 0x6934 > < 396934 39 6934 | 20F6: jr nz, $F6 >
ret			
rlabel_39_6937:
ld a,($cd30)		
srl a			
srl a			
srl a			
add b			
cp $20			
.DB $38 $02 ; < ['$38', '$02'] > < 0x6943 > < 396943 39 6943 | 3802: jr c, $02 >
sub $20			
ld hl,$98e0		
call  rlabel_00_0462 
push hl			
xor a			
ld ($ff00+$4f),a	
ld c,$04		
ld d,$00		
ld a,($cbf2)		
or a			
jp nz,$695e		
.incbin "data/39_695C.data"
call  rlabel_00_1B17 
ld a,d			
ldi (hl),a		
ei			
call  rlabel_00_1B17 
ld a,d			
ldi (hl),a		
ei			
call  rlabel_00_1B17 
ld (hl),d		
ei			
ld a,$1e		
call  rlabel_00_0462 
dec c			
.DB $20 $e7 ; < ['$20', '$e7'] > < 0x6975 > < 396975 39 6975 | 20E7: jr nz, $E7 >
pop hl			
ld a,($cbf2)		
or a			
ret z			
ld a,$01		
ld ($ff00+$4f),a	
ld c,$04		
ld a,$07		
ld d,a			
call  rlabel_00_1B17 
ld a,d			
ldi (hl),a		
ei			
call  rlabel_00_1B17 
ld a,d			
ldi (hl),a		
ei			
call  rlabel_00_1B17 
ld (hl),d		
ei			
ld a,$1e		
call  rlabel_00_0462 
dec c			
.DB $20 $e7 ; < ['$20', '$e7'] > < 0x699d > < 39699d 39 699D | 20E7: jr nz, $E7 >
xor a			
ld ($ff00+$4f),a	
ret			
rlabel_39_69A3:
ld bc,$0185		
xor a			
ld ($cd31),a		
call  rlabel_39_6836 
ld a,$3c		
ld bc,$0006		
ld de,$c98a		
ld hl,$40b3		
call  rlabel_00_0D50 
ld bc,$0586		
ld a,$01		
ld ($cd31),a		
call  rlabel_39_6836 
ld a,$3c		
ld bc,$0006		
ld de,$c992		
ld hl,$40bb		
call  rlabel_00_0D50 
ld bc,$0d88		
ld a,$02		
ld ($cd31),a		
call  rlabel_39_6836 
ld a,$3c		
ld bc,$0006		
ld de,$c99a		
ld hl,$40cb		
call  rlabel_00_0D50 
ld bc,$118a		
ld a,$03		
ld ($cd31),a		
call  rlabel_39_6836 
ld a,$3c		
ld bc,$0006		
ld de,$c9a2		
ld hl,$40db		
call  rlabel_00_0D50 
ld hl,$c9c6		
ldi a,(hl)		
ld ($c988),a		
ld ($c990),a		
ld ($c998),a		
ld ($c9a0),a		
ld ($c9a8),a		
ld a,(hl)		
ld ($c989),a		
ld ($c991),a		
ld ($c999),a		
ld ($c9a1),a		
ld ($c9a9),a		
ret			
rlabel_39_6A2A:
ld a,$50		
ld ($cae8),a		
ld hl,$6aa0		
ld a,($cd06)		
add a			
call  rlabel_00_0462 
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld bc,$0d06		
call  rlabel_00_0FDE 
push hl			
ld e,$12		
call  rlabel_00_113B 
pop hl			
ld bc,$0e06		
call  rlabel_00_0FDE 
push hl			
ld e,$12		
call  rlabel_00_113B 
pop hl			
ld bc,$0f06		
call  rlabel_00_0FDE 
ld e,$12		
call  rlabel_00_113B 
ld a,($cad7)		
or a			
.DB $20 $0c ; < ['$20', '$0c'] > < 0x6a65 > < 396a65 39 6A65 | 200C: jr nz, $0C >
ld de,$4181		
ld a,($cd06)		
ld l,a			
ld h,$05		
call  rlabel_00_089D 
ld a,($cd06)		
add a			
add a			
add a			
ld d,$00		
ld e,a			
add a			
ld h,$00		
ld l,a			
add hl,hl		
add hl,hl		
add hl,hl		
ld bc,$4001		
add hl,bc		
add hl,de		
add hl,de		
ld de,$9740		
ld bc,$0012		
ld a,$3e		
call  rlabel_00_06FD 
ld hl,$99a2		
ld bc,$7405		
ld de,$0303		
jp $27b4		
.incbin "data/39_6AA0.data"
rlabel_39_6BAA:
xor a			
call  rlabel_00_0815 
ld a,($cd06)		
ld d,a			
call  rlabel_39_6380 
ld ($cd06),a		
call  rlabel_39_663E 
ld a,$01		
ld ($cd41),a		
ld hl,$c000		
ld c,$14		
call  rlabel_00_04E2 
ld hl,$c078		
ld c,$28		
call  rlabel_00_04E2 
call  rlabel_39_6CA2 
ld a,$01		
ld ($cd33),a		
call  rlabel_00_027C 
xor a			
ld ($cc95),a		
ld hl,$0b03		
ld de,$1110		
ld c,$01		
call  rlabel_00_1E43 
xor a			
ld ($cd33),a		
call  rlabel_39_6CA2 
call  rlabel_00_1EA8 
ld a,($cc7d)		
or a			
.DB $20 $f4 ; < ['$20', '$f4'] > < 0x6bf8 > < 396bf8 39 6BF8 | 20F4: jr nz, $F4 >
call  rlabel_39_6CA2 
ld a,$01		
ld ($cd33),a		
call  rlabel_00_027C 
xor a			
ld ($cd33),a		
ld hl,$6c85		
ld d,$c0		
call  rlabel_00_2C5B 
ld a,$01		
ld ($cc1b),a		
ld a,$30		
ld ($cc1c),a		
ld a,$70		
ld ($cc1d),a		
ld a,$ff		
ld ($cc1e),a		
ld hl,$cc1f		
ld c,$0f		
call  rlabel_00_04E2 
ld a,$01		
ld ($cc2a),a		
ld a,$62		
ld ($cc25),a		
ld a,$04		
ld ($cc26),a		
call  rlabel_39_6CA2 
call  rlabel_00_2707 
call  rlabel_00_2555 
ld a,($cccd)		
and $02			
jp nz,$6c63		
ld a,($cccd)		
and $01			
jp z,$6c5d		
ld a,($cc1f)		
or a			
.DB $28 $04 ; < ['$28', '$04'] > < 0x6c59 > < 396c59 39 6C59 | 2804: jr z, $04 >
.incbin "data/39_6C5B.data"
.DB $18 $dd ; < ['$18', '$dd'] > < 0x6c5d > < 396c5d 39 6C5D | 18DD: jr $DD >
ld a,$01		
or a			
ret			
xor a			
ld ($c000),a		
ld ($c004),a		
call  rlabel_00_207C 
call  rlabel_39_6CA2 
call  rlabel_00_208D 
ld a,($cc7d)		
or a			
.DB $20 $f4 ; < ['$20', '$f4'] > < 0x6c77 > < 396c77 39 6C77 | 20F4: jr nz, $F4 >
xor a			
call  rlabel_00_0815 
call  rlabel_39_66C4 
xor a			
ld ($cd41),a		
ret			
.incbin "data/39_6C85.data"
rlabel_39_6CA2:
call  rlabel_00_027C 
ret			
rlabel_39_6CA6:
ld hl,$c1c3		
add a			
add a			
add a			
add a			
call  rlabel_00_0462 
ld a,(hl)		
and $f7			
ld (hl),a		
push hl			
call  rlabel_39_6CA2 
pop hl			
ld a,(hl)		
and $08			
.DB $28 $f6 ; < ['$28', '$f6'] > < 0x6cbc > < 396cbc 39 6CBC | 28F6: jr z, $F6 >
ret			
.incbin "data/39_6CBF.data"