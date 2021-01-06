.BANK $0d SLOT 1
.ORG 0
.incbin "data/0d_4000.data"
ld hl,$d5aa		
inc (hl)		
ld hl,$d5b6		
inc (hl)		
ld a,(hl)		
sub $3c			
.DB $38 $0c ; < ['$38', '$0c'] > < 0x400c > < d400c 0D 400C | 380C: jr c, $0C >
ldi (hl),a		
inc (hl)		
ld a,(hl)		
sub $3c			
.DB $38 $05 ; < ['$38', '$05'] > < 0x4013 > < d4013 0D 4013 | 3805: jr c, $05 >
.incbin "data/0d_4015.data"
call  rlabel_0D_4567 
jp $43c3		
ld a,($d4d5)		
or a			
ret nz			
call  rlabel_0D_56B0 
call  rlabel_0D_59F8 
call  rlabel_0D_5A5D 
ld hl,$d5a4		
ld a,(hl)		
or a			
.DB $28 $09 ; < ['$28', '$09'] > < 0x4033 > < d4033 0D 4033 | 2809: jr z, $09 >
.incbin "data/0d_4035.data"
jp $6bd6		
call  rlabel_00_05AA 
ld b,$03		
ld hl,$4048		
rst $28			
ld de,$9000		
ld a,$ff		
ld bc,$0010		
call  rlabel_00_2AD8 
ld de,$9010		
ld a,$00		
ld bc,$0010		
call  rlabel_00_2AD8 
ld de,$9020		
ld bc,$0014		
ld hl,$7301		
ld a,$3d		
call  rlabel_00_06FD 
ld de,$90e0		
ld bc,$0004		
ld hl,$6f9b		
ld a,$b0		
call  rlabel_00_06FD 
ld de,$9460		
ld bc,$0012		
ld hl,$6fbb		
ld a,$b0		
call  rlabel_00_06FD 
ld b,$0a		
ld hl,$4a24		
rst $28			
xor a			
ld ($d4dd),a		
ld b,$b0		
ld hl,$4ae7		
rst $28			
ld b,$b0		
ld hl,$4b52		
rst $28			
ld a,($d4dd)		
inc a			
ld ($d4dd),a		
cp $03			
.DB $20 $e9 ; < ['$20', '$e9'] > < 0x40a9 > < d40a9 0D 40A9 | 20E9: jr nz, $E9 >
call  rlabel_0D_4127 
ld b,$af		
ld hl,$7df9		
rst $28			
call  rlabel_0D_414D 
ld b,$b0		
ld hl,$6642		
rst $28			
call  rlabel_0D_467E 
ld a,$0f		
ld ($d5ca),a		
jp $6c0a		
call  rlabel_0D_4127 
call  rlabel_0D_40EA 
xor a			
ld ($d4dd),a		
ld b,$b0		
ld hl,$4001		
rst $28			
call  rlabel_0D_4275 
call  rlabel_0D_427D 
ld a,($d4dd)		
inc a			
ld ($d4dd),a		
cp $03			
.DB $20 $e9 ; < ['$20', '$e9'] > < 0x40e7 > < d40e7 0D 40E7 | 20E9: jr nz, $E9 >
ret			
rlabel_0D_40EA:
ld de,$90c0		
ld bc,$0004		
ld hl,$4181		
ld a,$3d		
call  rlabel_00_06FD 
ld a,$0c		
call  rlabel_00_1B17 
ld ($9823),a		
ei			
call  rlabel_00_1B17 
ld ($9829),a		
ei			
call  rlabel_00_1B17 
ld ($982f),a		
ei			
ld a,$0d		
call  rlabel_00_1B17 
ld ($9843),a		
ei			
call  rlabel_00_1B17 
ld ($9849),a		
ei			
call  rlabel_00_1B17 
ld ($984f),a		
ei			
ret			
rlabel_0D_4127:
ld hl,$0000		
ld de,$0313		
call  rlabel_00_224C 
ld de,$9814		
ld h,$04		
jp $415e		
call  rlabel_0D_414D 
ld a,($d5a6)		
or a			
jp z,$44c0		
.incbin "data/0d_4142.data"
rlabel_0D_414D:
ld hl,$0d00		
ld de,$1113		
call  rlabel_00_224C 
ld de,$99b4		
ld h,$05		
jp $415e		
ld a,($cbf2)		
or a			
jp z,$4175		
push de			
ld a,$01		
ld ($ff00+$4f),a	
ld bc,$000c		
xor a			
call  rlabel_00_2AD8 
xor a			
ld ($ff00+$4f),a	
pop de			
ld bc,$000c		
xor a			
call  rlabel_00_2AD8 
ld a,$14		
call  rlabel_00_045D 
dec h			
.DB $20 $da ; < ['$20', '$da'] > < 0x4182 > < d4182 0D 4182 | 20DA: jr nz, $DA >
ret			
ld hl,$cfd5		
xor a			
ld ($d4dd),a		
push hl			
ld d,h			
ld e,l			
ld a,$24		
call  rlabel_00_0462 
ld a,$e0		
call  rlabel_00_045D 
ld c,$04		
call  rlabel_00_04CB 
ld bc,$0004		
add hl,bc		
xor a			
ldi (hl),a		
dec a			
ldi (hl),a		
xor a			
ldi (hl),a		
push hl			
ld bc,$ffe9		
add hl,bc		
ldi a,(hl)		
ld b,(hl)		
pop hl			
srl b			
rr a			
srl b			
rr a			
ldi (hl),a		
ld bc,$0060		
add hl,bc		
ld bc,$fff5		
call  rlabel_00_347C 
ld c,$08		
call  rlabel_0D_4221 
ld c,$07		
call  rlabel_00_04E2 
ld bc,$ffc1		
add hl,bc		
ld bc,$ff43		
call  rlabel_00_347C 
ld c,$0c		
call  rlabel_00_04CB 
call  rlabel_0D_4233 
ld a,($d54a)		
and $04			
.DB $28 $05 ; < ['$28', '$05'] > < 0x41e4 > < d41e4 0D 41E4 | 2805: jr z, $05 >
.incbin "data/0d_41E6.data"
ld a,($d54a)		
and $08			
.DB $28 $05 ; < ['$28', '$05'] > < 0x41f0 > < d41f0 0D 41F0 | 2805: jr z, $05 >
.incbin "data/0d_41F2.data"
ld a,($d54a)		
and $10			
.DB $28 $05 ; < ['$28', '$05'] > < 0x41fc > < d41fc 0D 41FC | 2805: jr z, $05 >
.incbin "data/0d_41FE.data"
call  rlabel_00_3453 
ld a,$ef		
call  rlabel_00_0462 
ld a,(hl)		
and $e3			
ld (hl),a		
call  rlabel_0D_4248 
pop hl			
inc h			
ld a,($d4dd)		
inc a			
ld ($d4dd),a		
cp $03			
jp nz,$418c		
ret			
rlabel_0D_4221:
ld a,(de)		
ld b,a			
inc de			
swap a			
and $0f			
ldi (hl),a		
dec c			
ret z			
ld a,b			
and $0f			
ldi (hl),a		
dec c			
.DB $20 $ef ; < ['$20', '$ef'] > < 0x4230 > < d4230 0D 4230 | 20EF: jr nz, $EF >
ret			
rlabel_0D_4233:
call  rlabel_00_3453 
push hl			
ld a,$eb		
call  rlabel_00_0462 
ld d,h			
ld e,l			
ld hl,$d546		
ld c,$05		
call  rlabel_00_04CB 
pop hl			
ret			
rlabel_0D_4248:
call  rlabel_00_3453 
push hl			
ld a,$b8		
call  rlabel_00_0462 
ld bc,$000d		
ldi a,(hl)		
ld d,a			
and $0f			
add b			
ld b,a			
dec c			
.DB $28 $0a ; < ['$28', '$0a'] > < 0x425b > < d425b 0D 425B | 280A: jr z, $0A >
ld a,d			
swap a			
and $0f			
add b			
ld b,a			
dec c			
.DB $20 $ed ; < ['$20', '$ed'] > < 0x4265 > < d4265 0D 4265 | 20ED: jr nz, $ED >
sla b			
.DB $30 $02 ; < ['$30', '$02'] > < 0x4269 > < d4269 0D 4269 | 3002: jr nc, $02 >
.incbin "data/0d_426B.data"
pop hl			
ld a,$30		
call  rlabel_00_0462 
ld (hl),b		
ret			
rlabel_0D_4275:
ld de,$0008		
ld b,$01		
jp $4285		
rlabel_0D_427D:
ld de,$000c		
ld b,$02		
jp $4285		
ld a,($d4dd)		
ld c,a			
call  rlabel_00_3456 
add hl,de		
ldi a,(hl)		
ld e,a			
ld d,(hl)		
ld a,c			
add a			
ld c,a			
add a			
add c			
add $04			
ld c,a			
call  rlabel_00_2F50 
jp $429e		
ld a,$0a		
call  rlabel_00_039F 
add $02			
ld c,a			
ld d,e			
ld e,$0a		
call  rlabel_00_038B 
add $02			
ld b,a			
ld a,d			
or a			
.DB $28 $05 ; < ['$28', '$05'] > < 0x42b1 > < d42b1 0D 42B1 | 2805: jr z, $05 >
.incbin "data/0d_42B3.data"
ld d,$00		
ld a,b			
cp $02			
.DB $20 $02 ; < ['$20', '$02'] > < 0x42bd > < d42bd 0D 42BD | 2002: jr nz, $02 >
ld b,$00		
call  rlabel_00_1B17 
ld a,d			
ldi (hl),a		
ei			
call  rlabel_00_1B17 
ld a,b			
ldi (hl),a		
ei			
call  rlabel_00_1B17 
ld (hl),c		
ei			
ret			
.incbin "data/0d_42D3.data"
rlabel_0D_438D:
.DB $d5 ; < ['$d5'] > < 0x438d > < d438d 0D 438D | D5: push de >
call  rlabel_0D_448A 
ld a,($d5a3)		
cp $ff			
.DB $28 $10 ; < ['$28', '$10'] > < 0x4396 > < d4396 0D 4396 | 2810: jr z, $10 >
ld ($d4dd),a		
ld b,$b0		
ld hl,$4345		
rst $28			
ld bc,$0f05		
ld d,$2d		
.DB $18 $0a ; < ['$18', '$0a'] > < 0x43a6 > < d43a6 0D 43A6 | 180A: jr $0A >
ld e,$07		
call  rlabel_0D_46EE 
ld bc,$0e01		
ld d,$24		
ld hl,$d59d		
ld a,c			
ldi (hl),a		
ld a,b			
ldi (hl),a		
ld a,$01		
ldi (hl),a		
xor a			
ldi (hl),a		
ld a,d			
ldi (hl),a		
pop de			
ld (hl),d		
ret			
ld hl,$d59f		
ld a,(hl)		
or a			
ret z			
dec (hl)		
ret nz			
ld hl,$d569		
ld a,($d5a0)		
call  rlabel_00_0462 
ld a,($d5a1)		
ld d,a			
ld a,($d5a0)		
inc a			
ld ($d5a0),a		
ldi a,(hl)		
cp $01			
.DB $20 $0c ; < ['$20', '$0c'] > < 0x43e2 > < d43e2 0D 43E2 | 200C: jr nz, $0C >
ld a,$01		
ld ($d59d),a		
ld a,$10		
ld ($d59e),a		
.DB $18 $e8 ; < ['$18', '$e8'] > < 0x43ee > < d43ee 0D 43EE | 18E8: jr $E8 >
cp $00			
.DB $20 $05 ; < ['$20', '$05'] > < 0x43f2 > < d43f2 0D 43F2 | 2005: jr nz, $05 >
xor a			
ld ($d59c),a		
ret			
cp $20			
.DB $20 $04 ; < ['$20', '$04'] > < 0x43fb > < d43fb 0D 43FB | 2004: jr nz, $04 >
ld d,$00		
.DB $28 $44 ; < ['$28', '$44'] > < 0x43ff > < d43ff 0D 43FF | 2844: jr z, $44 >
cp $5e			
.DB $20 $0d ; < ['$20', '$0d'] > < 0x4403 > < d4403 0D 4403 | 200D: jr nz, $0D >
.incbin "data/0d_4405.data"
cp $5f			
.DB $20 $0d ; < ['$20', '$0d'] > < 0x4414 > < d4414 0D 4414 | 200D: jr nz, $0D >
.incbin "data/0d_4416.data"
ld hl,$4001		
push de			
ld b,h			
ld c,l			
ld h,$00		
ld l,a			
add hl,hl		
add hl,hl		
add hl,hl		
add hl,hl		
add hl,bc		
ld a,d			
call  rlabel_00_2B8B 
ld bc,$0002		
ld a,$3d		
call  rlabel_00_06FD 
ld a,($d5a1)		
inc a			
ld ($d5a1),a		
pop de			
ld a,($d59d)		
ld c,a			
ld a,($d59e)		
ld b,a			
call  rlabel_00_2F50 
call  rlabel_00_1B17 
ld (hl),d		
ei			
ld a,($d59d)		
inc a			
ld ($d59d),a		
ld a,($d59c)		
or a			
jp nz,$43cb		
ld a,($d5a2)		
ld ($d59f),a		
ret			
rlabel_0D_446A:
ld hl,$d569		
ld c,$00		
.DB $18 $0a ; < ['$18', '$0a'] > < 0x446f > < d446f 0D 446F | 180A: jr $0A >
rlabel_0D_4471:
ld hl,$d569		
ld a,($d59b)		
ld c,a			
call  rlabel_00_0462 
ld a,(de)		
ldi (hl),a		
inc de			
cp $00			
.DB $28 $03 ; < ['$28', '$03'] > < 0x4480 > < d4480 0D 4480 | 2803: jr z, $03 >
inc c			
.DB $18 $f6 ; < ['$18', '$f6'] > < 0x4483 > < d4483 0D 4483 | 18F6: jr $F6 >
ld a,c			
ld ($d59b),a		
ret			
rlabel_0D_448A:
ld hl,$99c1		
ld b,$03		
ld a,$00		
ld c,$12		
call  rlabel_00_1B17 
ldi (hl),a		
ei			
dec c			
.DB $20 $f8 ; < ['$20', '$f8'] > < 0x4499 > < d4499 0D 4499 | 20F8: jr nz, $F8 >
ld a,$0e		
call  rlabel_00_0462 
dec b			
.DB $20 $ec ; < ['$20', '$ec'] > < 0x44a1 > < d44a1 0D 44A1 | 20EC: jr nz, $EC >
ret			
.incbin "data/0d_44A4.data"
xor a			
ld ($d5a6),a		
call  rlabel_0D_448A 
ld b,$0a		
ld hl,$4a63		
rst $28			
ld de,$4f03		
call  rlabel_0D_46CA 
ld de,$d508		
ld c,$00		
ld a,c			
call  rlabel_0D_46B5 
ld a,(de)		
inc a			
.DB $28 $28 ; < ['$28', '$28'] > < 0x44da > < d44da 0D 44DA | 2828: jr z, $28 >
push de			
ld a,$07		
call  rlabel_00_045D 
ld a,(de)		
bit 7,a			
pop de			
.DB $20 $1c ; < ['$20', '$1c'] > < 0x44e6 > < d44e6 0D 44E6 | 201C: jr nz, $1C >
dec hl			
call  rlabel_00_1B17 
ld a,$0e		
ldd (hl),a		
ei			
ld a,$41		
add c			
call  rlabel_00_1B17 
ld (hl),a		
ei			
ld a,$04		
call  rlabel_00_0462 
call  rlabel_00_1B17 
ld a,$0f		
ld (hl),a		
ei			
ld a,$09		
call  rlabel_00_045D 
inc c			
ld a,c			
cp $05			
.DB $20 $c5 ; < ['$20', '$c5'] > < 0x450d > < d450d 0D 450D | 20C5: jr nz, $C5 >
jp $45b0		
rlabel_0D_4512:
call  rlabel_00_345C 
ldi a,(hl)		
inc a			
ret z			
push hl			
ld hl,$d5a4		
ld a,(hl)		
or a			
.DB $28 $14 ; < ['$28', '$14'] > < 0x451e > < d451e 0D 451E | 2814: jr z, $14 >
.incbin "data/0d_4520.data"
pop hl			
ldi a,(hl)		
ld b,a			
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld d,a			
ldi a,(hl)		
ld e,a			
or d			
ld a,$00		
.DB $28 $1f ; < ['$28', '$1f'] > < 0x4540 > < d4540 0D 4540 | 281F: jr z, $1F >
sla e			
rl d			
sla e			
rl d			
sla e			
rl d			
sla e			
rl d			
ld a,e			
or d			
.DB $20 $02 ; < ['$20', '$02'] > < 0x4554 > < d4554 0D 4554 | 2002: jr nz, $02 >
.incbin "data/0d_4556.data"
call nz,$03cf		
ld a,e			
cp $10			
.DB $28 $01 ; < ['$28', '$01'] > < 0x455e > < d455e 0D 455E | 2801: jr z, $01 >
inc a			
ld bc,$0003		
add hl,bc		
ld (hl),a		
ret			
rlabel_0D_4567:
ld a,($d5a6)		
or a			
ret nz			
ld a,($d5a4)		
or a			
ret nz			
ld hl,$d508		
xor a			
ld ($d4dc),a		
ld a,(hl)		
ld de,$0007		
add hl,de		
inc a			
.DB $28 $1f ; < ['$28', '$1f'] > < 0x457e > < d457e 0D 457E | 281F: jr z, $1F >
ld a,(hl)		
bit 7,a			
.DB $28 $05 ; < ['$28', '$05'] > < 0x4583 > < d4583 0D 4583 | 2805: jr z, $05 >
call  rlabel_0D_45F4 
.DB $18 $15 ; < ['$18', '$15'] > < 0x4588 > < d4588 0D 4588 | 1815: jr $15 >
inc hl			
cp (hl)			
dec hl			
.DB $28 $10 ; < ['$28', '$10'] > < 0x458d > < d458d 0D 458D | 2810: jr z, $10 >
.DB $30 $03 ; < ['$30', '$03'] > < 0x458f > < d458f 0D 458F | 3003: jr nc, $03 >
.incbin "data/0d_4591.data"
dec (hl)		
.DB $20 $02 ; < ['$20', '$02'] > < 0x4595 > < d4595 0D 4595 | 2002: jr nz, $02 >
set 7,(hl)		
ld a,(hl)		
and $7f			
call  rlabel_0D_45D2 
ld a,$02		
call  rlabel_00_0462 
ld a,($d4dc)		
inc a			
ld ($d4dc),a		
cp $05			
.DB $20 $c9 ; < ['$20', '$c9'] > < 0x45ad > < d45ad 0D 45AD | 20C9: jr nz, $C9 >
ret			
ld hl,$d508		
xor a			
ld ($d4dc),a		
ld a,(hl)		
ld de,$0007		
add hl,de		
inc a			
ld a,(hl)		
call nz,$45d2		
ld a,$02		
call  rlabel_00_0462 
ld a,($d4dc)		
inc a			
ld ($d4dc),a		
cp $05			
.DB $20 $e6 ; < ['$20', '$e6'] > < 0x45cf > < d45cf 0D 45CF | 20E6: jr nz, $E6 >
ret			
rlabel_0D_45D2:
push hl			
ld d,a			
call  rlabel_0D_46B2 
ld a,d			
add $46			
cp $4f			
push af			
.DB $38 $02 ; < ['$38', '$02'] > < 0x45dd > < d45dd 0D 45DD | 3802: jr c, $02 >
ld a,$4e		
call  rlabel_00_1B17 
ldi (hl),a		
ei			
pop af			
.DB $30 $02 ; < ['$30', '$02'] > < 0x45e7 > < d45e7 0D 45E7 | 3002: jr nc, $02 >
ld a,$4e		
sub $08			
call  rlabel_00_1B17 
ldi (hl),a		
ei			
pop hl			
ret			
rlabel_0D_45F4:
inc (hl)		
ld a,(hl)		
ld b,a			
and $07			
ret nz			
push hl			
call  rlabel_0D_46B2 
ld d,h			
ld e,l			
ld a,b			
and $7f			
srl a			
srl a			
srl a			
dec a			
add a			
ld hl,$4627		
call  rlabel_00_0462 
ldi a,(hl)		
cp $ff			
.DB $20 $08 ; < ['$20', '$08'] > < 0x4614 > < d4614 0D 4614 | 2008: jr nz, $08 >
call  rlabel_00_345C 
ld a,$ff		
ld (hl),a		
.DB $18 $07 ; < ['$18', '$07'] > < 0x461c > < d461c 0D 461C | 1807: jr $07 >
ld l,(hl)		
ld h,a			
ld bc,$4625		
push bc			
jp hl			
pop hl			
ret			
.incbin "data/0d_4627.data"
inc de			
call  rlabel_0D_466D 
ret			
ld h,d			
ld l,e			
xor a			
call  rlabel_00_1B17 
ldd (hl),a		
ei			
call  rlabel_00_1B17 
ldd (hl),a		
ei			
call  rlabel_00_1B17 
ldd (hl),a		
ei			
ret			
ld h,d			
ld l,e			
call  rlabel_00_1B17 
ld a,$0f		
ldd (hl),a		
ei			
call  rlabel_00_1B17 
ld a,$0e		
ldd (hl),a		
ei			
ld a,($d4dc)		
add $41			
call  rlabel_00_1B17 
ld (hl),a		
ei			
ret			
rlabel_0D_466D:
ld h,d			
ld l,e			
inc hl			
call  rlabel_00_1B17 
ld a,(hl)		
ld (de),a		
ei			
call  rlabel_00_1B17 
ld a,$00		
ld (hl),a		
ei			
ret			
rlabel_0D_467E:
ld de,$9410		
ld hl,$d508		
ld c,$05		
push bc			
ld a,(hl)		
push hl			
cp $ff			
.DB $20 $05 ; < ['$20', '$05'] > < 0x468b > < d468b 0D 468B | 2005: jr nz, $05 >
ld hl,$9000		
.DB $18 $0d ; < ['$18', '$0d'] > < 0x4690 > < d4690 0D 4690 | 180D: jr $0D >
and $7f			
add a			
add a			
add a			
ld h,$00		
ld l,a			
add hl,hl		
ld bc,$704b		
add hl,bc		
ld bc,$0002		
ld a,$b0		
call  rlabel_00_06FD 
pop hl			
ld a,$09		
call  rlabel_00_0462 
pop bc			
dec c			
.DB $20 $d5 ; < ['$20', '$d5'] > < 0x46af > < d46af 0D 46AF | 20D5: jr nz, $D5 >
ret			
rlabel_0D_46B2:
ld a,($d4dc)		
rlabel_0D_46B5:
ld hl,$46c0		
add a			
call  rlabel_00_0462 
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ret			
.incbin "data/0d_46C0.data"
rlabel_0D_46CA:
ld b,$01		
ld hl,$99c1		
ld a,d			
ld c,$03		
call  rlabel_00_1B17 
ldi (hl),a		
ei			
add b			
call  rlabel_00_1B17 
ldi (hl),a		
ei			
add b			
call  rlabel_00_1B17 
ldi (hl),a		
ei			
add b			
ld d,a			
ld a,$1d		
call  rlabel_00_0462 
ld a,d			
dec c			
.DB $20 $e4 ; < ['$20', '$e4'] > < 0x46ec > < d46ec 0D 46EC | 20E4: jr nz, $E4 >
rlabel_0D_46EE:
ld a,($cbf2)		
or a			
ret z			
ld a,$01		
ld ($ff00+$4f),a	
ld hl,$99c1		
ld a,e			
ld c,$03		
call  rlabel_00_1B17 
ldi (hl),a		
ei			
call  rlabel_00_1B17 
ldi (hl),a		
ei			
call  rlabel_00_1B17 
ldi (hl),a		
ei			
ld e,a			
ld a,$1d		
call  rlabel_00_0462 
ld a,e			
dec c			
.DB $20 $e7 ; < ['$20', '$e7'] > < 0x4714 > < d4714 0D 4714 | 20E7: jr nz, $E7 >
xor a			
ld ($ff00+$4f),a	
ret			
rlabel_0D_471A:
ld hl,$d508		
ld c,$05		
bit 7,(hl)		
.DB $28 $02 ; < ['$28', '$02'] > < 0x4721 > < d4721 0D 4721 | 2802: jr z, $02 >
ld (hl),$ff		
ld a,$09		
call  rlabel_00_0462 
dec c			
.DB $20 $f2 ; < ['$20', '$f2'] > < 0x472b > < d472b 0D 472B | 20F2: jr nz, $F2 >
ret			
ld b,$0a		
ld hl,$6285		
rst $28			
call  rlabel_0D_4233 
ld a,$35		
call  rlabel_00_3484 
ld a,$00		
.DB $28 $02 ; < ['$28', '$02'] > < 0x473e > < d473e 0D 473E | 2802: jr z, $02 >
.incbin "data/0d_4740.data"
ld ($ff00+$8a),a	
ld hl,$d508		
ld bc,$0005		
bit 7,(hl)		
ld de,$0005		
add hl,de		
.DB $20 $0c ; < ['$20', '$0c'] > < 0x4750 > < d4750 0D 4750 | 200C: jr nz, $0C >
ldi a,(hl)		
or a			
ld a,($ff00+$8a)	
.DB $20 $01 ; < ['$20', '$01'] > < 0x4756 > < d4756 0D 4756 | 2001: jr nz, $01 >
xor a			
ld d,(hl)		
dec hl			
add b			
add d			
ld b,a			
ld a,$04		
call  rlabel_00_0462 
dec c			
.DB $20 $e4 ; < ['$20', '$e4'] > < 0x4764 > < d4764 0D 4764 | 20E4: jr nz, $E4 >
ld a,b			
or a			
ret z			
call  rlabel_00_2836 
ld b,a			
ld c,$00		
ld hl,$d508		
xor a			
ld ($d4dc),a		
bit 7,(hl)		
ld de,$0005		
add hl,de		
.DB $20 $0f ; < ['$20', '$0f'] > < 0x477c > < d477c 0D 477C | 200F: jr nz, $0F >
ldi a,(hl)		
or a			
ld a,($ff00+$8a)	
.DB $20 $01 ; < ['$20', '$01'] > < 0x4782 > < d4782 0D 4782 | 2001: jr nz, $01 >
xor a			
ld d,(hl)		
dec hl			
add c			
add d			
ld c,a			
cp b			
.DB $30 $0e ; < ['$30', '$0e'] > < 0x478b > < d478b 0D 478B | 300E: jr nc, $0E >
ld a,$04		
call  rlabel_00_0462 
ld a,($d4dc)		
inc a			
ld ($d4dc),a		
.DB $18 $db ; < ['$18', '$db'] > < 0x4799 > < d4799 0D 4799 | 18DB: jr $DB >
call  rlabel_00_3453 
push hl			
ld a,$3c		
call  rlabel_00_0462 
ld a,(hl)		
ld ($ff00+$8a),a	
ld bc,$ffe4		
add hl,bc		
ldi a,(hl)		
ld e,a			
ld d,(hl)		
push de			
ld a,($d548)		
and $04			
call nz,$4a9e		
ld bc,$0003		
add hl,bc		
ld a,(hl)		
call  rlabel_0D_492F 
call  rlabel_00_0409 
ld bc,$0002		
add hl,bc		
ld b,(hl)		
ld h,a			
ld l,d			
ld a,($d538)		
ld d,a			
ld a,($d539)		
srl a			
srl b			
add b			
call  rlabel_0D_492F 
ld e,a			
call  rlabel_00_03F7 
ld b,d			
pop de			
ld a,($ff00+$8a)	
cp $00			
.DB $28 $06 ; < ['$28', '$06'] > < 0x47e2 > < d47e2 0D 47E2 | 2806: jr z, $06 >
ld a,b			
call  rlabel_00_0462 
.DB $18 $12 ; < ['$18', '$12'] > < 0x47e8 > < d47e8 0D 47E8 | 1812: jr $12 >
ld a,$64		
call  rlabel_00_045D 
push hl			
ld a,b			
call  rlabel_00_0409 
ld l,a			
ld a,$64		
call  rlabel_00_03BA 
pop hl			
add hl,de		
ld a,($d4eb)		
ld d,a			
ld a,($d4ec)		
call  rlabel_0D_492F 
ld e,a			
call  rlabel_00_03F7 
ld c,d			
ld b,$00		
sla c			
rl b			
call  rlabel_00_04B3 
add hl,bc		
call  rlabel_0D_4B6F 
pop de			
ld a,$d8		
call  rlabel_00_045D 
ld a,($d53a)		
or a			
.DB $20 $01 ; < ['$20', '$01'] > < 0x4822 > < d4822 0D 4822 | 2001: jr nz, $01 >
ld a,(de)		
call  rlabel_0D_4946 
call  rlabel_0D_49F4 
call  rlabel_0D_4A3C 
call  rlabel_00_0F09 
and $03			
call  rlabel_00_0462 
ld a,$31		
call  rlabel_00_3484 
.DB $28 $11 ; < ['$28', '$11'] > < 0x483b > < d483b 0D 483B | 2811: jr z, $11 >
.incbin "data/0d_483D.data"
ld a,($d537)		
jp $4854		
ld ($ff00+$8a),a	
xor a			
.DB $18 $04 ; < ['$18', '$04'] > < 0x4857 > < d4857 0D 4857 | 1804: jr $04 >
ld ($ff00+$8a),a	
ld a,$01		
ld ($d5a8),a		
ld a,($d5b9)		
or a			
ret nz			
xor a			
ld ($d5a9),a		
ld a,($ff00+$8a)	
cp $00			
.DB $20 $16 ; < ['$20', '$16'] > < 0x486d > < d486d 0D 486D | 2016: jr nz, $16 >
ld a,$01		
ld ($d5a8),a		
ld ($d5bb),a		
push hl			
ld hl,$492a		
ld a,($d4dc)		
call  rlabel_00_0462 
ld a,(hl)		
ld ($ff00+$8a),a	
pop hl			
xor a			
ld ($d503),a		
ld a,($d5a7)		
or a			
.DB $20 $12 ; < ['$20', '$12'] > < 0x488d > < d488d 0D 488D | 2012: jr nz, $12 >
ld a,($d2dd)		
or a			
.DB $28 $0c ; < ['$28', '$0c'] > < 0x4893 > < d4893 0D 4893 | 280C: jr z, $0C >
srl h			
rr l			
srl h			
rr l			
srl h			
rr l			
xor a			
ld ($d5a7),a		
ld d,h			
ld e,l			
ld hl,$d544		
ld a,e			
ldi (hl),a		
ld (hl),d		
call  rlabel_00_345C 
xor a			
ld ($d5d1),a		
bit 7,(hl)		
.DB $20 $41 ; < ['$20', '$41'] > < 0x48b6 > < d48b6 0D 48B6 | 2041: jr nz, $41 >
ld a,($d5a9)		
inc a			
ld ($d5a9),a		
push de			
ld a,$03		
call  rlabel_00_0462 
push hl			
ldi a,(hl)		
ld l,(hl)		
ld h,a			
call  rlabel_00_2BB1 
add hl,de		
call  rlabel_0D_4B6F 
ld a,h			
ld d,l			
pop hl			
ldi (hl),a		
ld (hl),d		
or d			
.DB $20 $17 ; < ['$20', '$17'] > < 0x48d6 > < d48d6 0D 48D6 | 2017: jr nz, $17 >
ld bc,$fffc		
add hl,bc		
ld a,(hl)		
or $80			
ld (hl),a		
ld bc,$0005		
add hl,bc		
ld a,(hl)		
or a			
ld (hl),$ff		
.DB $28 $05 ; < ['$28', '$05'] > < 0x48e8 > < d48e8 0D 48E8 | 2805: jr z, $05 >
call  rlabel_0D_4ACD 
pop af			
ret			
call  rlabel_0D_4512 
pop de			
ld a,($d5bb)		
or a			
.DB $20 $07 ; < ['$20', '$07'] > < 0x48f7 > < d48f7 0D 48F7 | 2007: jr nz, $07 >
ld a,($ff00+$8a)	
call  rlabel_0D_4B01 
.DB $20 $b4 ; < ['$20', '$b4'] > < 0x48fe > < d48fe 0D 48FE | 20B4: jr nz, $B4 >
xor a			
ld ($d5bb),a		
ld a,($d5a9)		
or a			
.DB $20 $0d ; < ['$20', '$0d'] > < 0x4908 > < d4908 0D 4908 | 200D: jr nz, $0D >
.incbin "data/0d_490A.data"
ld hl,$d508		
ld c,$05		
bit 7,(hl)		
ret z			
.incbin "data/0d_491F.data"
rlabel_0D_492F:
.DB $c5 ; < ['$c5'] > < 0x492f > < d492f 0D 492F | C5: push bc >
.DB $d5 ; < ['$d5'] > < 0x4930 > < d4930 0D 4930 | D5: push de >
ld b,a			
ld a,$ff		
sub b			
ld e,a			
ld a,$ff		
.DB $28 $09 ; < ['$28', '$09'] > < 0x4938 > < d4938 0D 4938 | 2809: jr z, $09 >
call  rlabel_00_0F09 
ld d,a			
call  rlabel_00_03F7 
ld a,b			
add d			
pop de			
pop bc			
ret			
rlabel_0D_4946:
or a			
ret z			
ld b,a			
push hl			
ld a,($d4ee)		
dec a			
add a			
ld hl,$49d6		
call  rlabel_00_0462 
ldi a,(hl)		
ld l,(hl)		
ld h,a			
ld de,$0008		
ld c,$00		
srl h			
rr c			
srl h			
rr c			
ld a,c			
rlca			
rlca			
rrc b			
.DB $30 $07 ; < ['$30', '$07'] > < 0x496a > < d496a 0D 496A | 3007: jr nc, $07 >
cp $01			
.DB $28 $03 ; < ['$28', '$03'] > < 0x496e > < d496e 0D 496E | 2803: jr z, $03 >
dec a			
add d			
ld d,a			
ld a,e			
cp $05			
.DB $20 $01 ; < ['$20', '$01'] > < 0x4976 > < d4976 0D 4976 | 2001: jr nz, $01 >
ld h,l			
dec e			
.DB $20 $df ; < ['$20', '$df'] > < 0x497a > < d497a 0D 497A | 20DF: jr nz, $DF >
ld a,($d5a7)		
or a			
ld a,d			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x4981 > < d4981 0D 4981 | 280B: jr z, $0B >
sla a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x4985 > < d4985 0D 4985 | 2807: jr z, $07 >
ccf			
ld a,$00		
adc a			
add a			
dec a			
add d			
ld hl,$49e6		
add $03			
add a			
call  rlabel_00_0462 
ldi a,(hl)		
ld e,a			
ld d,(hl)		
pop hl			
call  rlabel_00_0433 
ld h,l			
ld l,d			
ld a,($d546)		
and b			
ld b,a			
ld c,a			
ld a,$07		
srl c			
.DB $30 $01 ; < ['$30', '$01'] > < 0x49aa > < d49aa 0D 49AA | 3001: jr nc, $01 >
.incbin "data/0d_49AC.data"
dec a			
.DB $20 $f8 ; < ['$20', '$f8'] > < 0x49ae > < d49ae 0D 49AE | 20F8: jr nz, $F8 >
ld c,$00		
bit 0,b			
.DB $28 $09 ; < ['$28', '$09'] > < 0x49b4 > < d49b4 0D 49B4 | 2809: jr z, $09 >
.incbin "data/0d_49B6.data"
bit 3,b			
.DB $28 $09 ; < ['$28', '$09'] > < 0x49c1 > < d49c1 0D 49C1 | 2809: jr z, $09 >
.incbin "data/0d_49C3.data"
ld d,h			
ld e,l			
ld a,c			
call  rlabel_00_0409 
ld e,d			
ld d,a			
add hl,de		
ret			
.incbin "data/0d_49D6.data"
rlabel_0D_49F4:
ld a,($d53b)		
or a			
ret z			
dec a			
ld b,a			
push hl			
ld hl,$4a2d		
ld a,($d4ef)		
call  rlabel_00_0462 
ld c,(hl)		
ld a,b			
add a			
.DB $28 $05 ; < ['$28', '$05'] > < 0x4a08 > < d4a08 0D 4A08 | 2805: jr z, $05 >
srl c			
dec a			
.DB $20 $fb ; < ['$20', '$fb'] > < 0x4a0d > < d4a0d 0D 4A0D | 20FB: jr nz, $FB >
ld a,c			
and $03			
ld hl,$4a30		
ld b,a			
add a			
add b			
call  rlabel_00_0462 
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
ld a,(hl)		
call  rlabel_00_2836 
call  rlabel_00_045D 
pop hl			
call  rlabel_00_0433 
ld h,l			
ld l,d			
ret			
.incbin "data/0d_4A2D.data"
rlabel_0D_4A3C:
call  rlabel_0D_4A93 
ld a,($d549)		
and $10			
.DB $28 $1b ; < ['$28', '$1b'] > < 0x4a44 > < d4a44 0D 4A44 | 281B: jr z, $1B >
.incbin "data/0d_4A46.data"
ld a,($d549)		
and $20			
.DB $28 $08 ; < ['$28', '$08'] > < 0x4a66 > < d4a66 0D 4A66 | 2808: jr z, $08 >
.incbin "data/0d_4A68.data"
ld a,($d54a)		
and $20			
ret z			
.incbin "data/0d_4A76.data"
rlabel_0D_4A93:
ld a,($d548)		
and $40			
ret z			
.incbin "data/0d_4A99.data"
rlabel_0D_4ACD:
ld hl,$d508		
xor a			
ld ($d4dc),a		
ld a,(hl)		
or $80			
ld (hl),a		
ld bc,$0003		
add hl,bc		
xor a			
ldi (hl),a		
ldi (hl),a		
ld a,$04		
call  rlabel_00_0462 
push hl			
call  rlabel_0D_4512 
pop hl			
ld a,($d4dc)		
inc a			
ld ($d4dc),a		
cp $05			
.DB $20 $e0 ; < ['$20', '$e0'] > < 0x4af2 > < d4af2 0D 4AF2 | 20E0: jr nz, $E0 >
jp $4af7		
ld a,$01		
ld ($d5b9),a		
xor a			
ld ($d2dd),a		
ret			
rlabel_0D_4B01:
add a			
ld b,a			
ld hl,$4b45		
ld a,b			
call  rlabel_00_0462 
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,($d4dc)		
call  rlabel_00_0462 
ld a,(hl)		
cp $ff			
ret z			
ld ($d4dc),a		
call  rlabel_00_345F 
bit 7,(hl)		
.DB $20 $e2 ; < ['$20', '$e2'] > < 0x4b1f > < d4b1f 0D 4B1F | 20E2: jr nz, $E2 >
ld a,($d5a8)		
or a			
.DB $20 $1a ; < ['$20', '$1a'] > < 0x4b25 > < d4b25 0D 4B25 | 201A: jr nz, $1A >
.incbin "data/0d_4B27.data"
ld a,$01		
or a			
ret			
.incbin "data/0d_4B45.data"
rlabel_0D_4B6F:
bit 7,h			
ret z			
ld hl,$0000		
ret			
ld hl,$d551		
ld a,$ff		
ldi (hl),a		
ldi (hl),a		
xor a			
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ret			
ld a,($d53e)		
or a			
jp nz,$4d8d		
call  rlabel_0D_4F06 
ld a,($d4dd)		
ld d,a			
ld e,$29		
call  rlabel_00_03F7 
ld hl,$d3b3		
add hl,de		
ld a,(hl)		
cp $03			
ld a,$01		
.DB $28 $0b ; < ['$28', '$0b'] > < 0x4b9e > < d4b9e 0D 4B9E | 280B: jr z, $0B >
call  rlabel_00_3453 
ld a,$2d		
call  rlabel_00_0462 
ld (hl),$ff		
xor a			
ld ($d5d2),a		
call  rlabel_0D_4233 
ld a,($d542)		
or a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x4bb5 > < d4bb5 0D 4BB5 | 2807: jr z, $07 >
.incbin "data/0d_4BB7.data"
call  rlabel_00_34A2 
bit 2,(hl)		
call nz,$5844		
ld de,$4bd4		
push de			
ld a,($d53d)		
or a			
jp nz,$4ca3		
jp $4c46		
call  rlabel_0D_4CD2 
call  rlabel_0D_4D19 
call  rlabel_0D_4CFA 
.DB $28 $03 ; < ['$28', '$03'] > < 0x4bdd > < d4bdd 0D 4BDD | 2803: jr z, $03 >
.incbin "data/0d_4BDF.data"
ld a,($d5d2)		
or a			
.DB $28 $0e ; < ['$28', '$0e'] > < 0x4be6 > < d4be6 0D 4BE6 | 280E: jr z, $0E >
srl h			
rr l			
srl h			
rr l			
srl h			
rr l			
.DB $18 $13 ; < ['$18', '$13'] > < 0x4bf4 > < d4bf4 0D 4BF4 | 1813: jr $13 >
ld a,($d542)		
or a			
.DB $28 $0d ; < ['$28', '$0d'] > < 0x4bfa > < d4bfa 0D 4BFA | 280D: jr z, $0D >
.incbin "data/0d_4BFC.data"
jp $4c10		
.incbin "data/0d_4C0C.data"
ld d,h			
ld e,l			
ld hl,$d544		
ld a,e			
ldi (hl),a		
ld (hl),d		
call  rlabel_00_3453 
ld a,$08		
call  rlabel_00_0462 
push hl			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
call  rlabel_00_2BB1 
add hl,de		
ld a,h			
or l			
.DB $28 $04 ; < ['$28', '$04'] > < 0x4c2a > < d4c2a 0D 4C2A | 2804: jr z, $04 >
bit 7,h			
.DB $28 $0a ; < ['$28', '$0a'] > < 0x4c2e > < d4c2e 0D 4C2E | 280A: jr z, $0A >
ld hl,$0000		
ld a,($d5d2)		
or a			
.DB $28 $01 ; < ['$28', '$01'] > < 0x4c37 > < d4c37 0D 4C37 | 2801: jr z, $01 >
.incbin "data/0d_4C39.data"
ld d,h			
ld a,l			
pop hl			
ldi (hl),a		
ld (hl),d		
or d			
call z,$4ef0		
jp $4275		
call  rlabel_0D_4C8A 
push hl			
call  rlabel_00_3453 
ld a,$22		
call  rlabel_00_0462 
ldi a,(hl)		
ld e,a			
ld d,(hl)		
ld a,($d548)		
and $08			
call nz,$4a9e		
ld bc,$0002		
add hl,bc		
ld a,(hl)		
srl a			
ld bc,$0002		
add hl,bc		
ld h,(hl)		
srl h			
add h			
call  rlabel_0D_492F 
call  rlabel_00_0409 
ld e,d			
ld d,a			
pop hl			
call  rlabel_00_2BB1 
add hl,de		
call  rlabel_0D_4B6F 
call  rlabel_0D_4D3A 
ld a,($d549)		
and $02			
ret z			
.incbin "data/0d_4C85.data"
rlabel_0D_4C8A:
ld a,($d540)		
ld d,a			
ld a,($d541)		
call  rlabel_0D_492F 
ld e,a			
call  rlabel_00_03F7 
ld h,$00		
ld l,d			
ld a,($d4ea)		
call  rlabel_00_0462 
add hl,hl		
ret			
.incbin "data/0d_4CA3.data"
rlabel_0D_4CD2:
call  rlabel_0D_4A93 
ld a,($d549)		
and $08			
ld a,$05		
call nz,$4cc8		
ld a,($d54a)		
and $08			
.DB $28 $04 ; < ['$28', '$04'] > < 0x4ce4 > < d4ce4 0D 4CE4 | 2804: jr z, $04 >
.incbin "data/0d_4CE6.data"
ld a,($d549)		
and $80			
.DB $28 $08 ; < ['$28', '$08'] > < 0x4cef > < d4cef 0D 4CEF | 2808: jr z, $08 >
.incbin "data/0d_4CF1.data"
ret			
rlabel_0D_4CFA:
ld a,($d548)		
and $01			
.DB $20 $14 ; < ['$20', '$14'] > < 0x4cff > < d4cff 0D 4CFF | 2014: jr nz, $14 >
ld a,($d548)		
and $02			
ret z			
.incbin "data/0d_4D07.data"
rlabel_0D_4D19:
ld c,$01		
ld a,($d4ea)		
cp $1e			
.DB $38 $10 ; < ['$38', '$10'] > < 0x4d20 > < d4d20 0D 4D20 | 3810: jr c, $10 >
.incbin "data/0d_4D22.data"
ld a,c			
inc a			
call  rlabel_00_2836 
jp $0462		
rlabel_0D_4D3A:
ld a,($d53f)		
or a			
ret z			
.incbin "data/0d_4D3F.data"
call  rlabel_00_34A2 
set 7,(hl)		
call  rlabel_00_3453 
ld a,$ef		
call  rlabel_00_0462 
ld a,(hl)		
and $e3			
ld (hl),a		
ld a,$7f		
jp $52ab		
rlabel_0D_4F06:
push hl			
call  rlabel_00_34A2 
ld a,(hl)		
and $90			
pop hl			
ret z			
.incbin "data/0d_4F0F.data"
ld a,($d4df)		
ld c,a			
ld b,$03		
ld hl,$4b78		
rst $28			
call  rlabel_0D_4233 
ld a,($d54a)		
and $04			
.DB $28 $06 ; < ['$28', '$06'] > < 0x4f23 > < d4f23 0D 4F23 | 2806: jr z, $06 >
.incbin "data/0d_4F25.data"
ld e,$64		
ld a,($d547)		
and $01			
.DB $28 $04 ; < ['$28', '$04'] > < 0x4f32 > < d4f32 0D 4F32 | 2804: jr z, $04 >
.incbin "data/0d_4F34.data"
ld a,($d546)		
and $80			
.DB $28 $02 ; < ['$28', '$02'] > < 0x4f3d > < d4f3d 0D 4F3D | 2802: jr z, $02 >
.incbin "data/0d_4F3F.data"
ld a,$36		
call  rlabel_00_3484 
.DB $28 $04 ; < ['$28', '$04'] > < 0x4f46 > < d4f46 0D 4F46 | 2804: jr z, $04 >
.incbin "data/0d_4F48.data"
ld hl,$cb66		
ld d,(hl)		
call  rlabel_00_03F7 
ld a,$64		
call  rlabel_00_039F 
ld (hl),e		
ld a,e			
or a			
.DB $20 $02 ; < ['$20', '$02'] > < 0x4f5b > < d4f5b 0D 4F5B | 2002: jr nz, $02 >
.incbin "data/0d_4F5D.data"
ld a,($d4df)		
cp $a0			
ret c			
call  rlabel_00_3453 
ld a,$18		
call  rlabel_00_0462 
ldi a,(hl)		
ld e,a			
ld d,(hl)		
ld a,$08		
call  rlabel_00_039F 
ld a,$3a		
call  rlabel_00_3484 
.DB $28 $04 ; < ['$28', '$04'] > < 0x4f7a > < d4f7a 0D 4F7A | 2804: jr z, $04 >
.incbin "data/0d_4F7C.data"
ld hl,$cb6a		
ld d,(hl)		
call  rlabel_00_03F7 
ld a,(hl)		
sub d			
ld (hl),a		
ld a,$3b		
call  rlabel_00_3484 
ret z			
.incbin "data/0d_4F90.data"
rlabel_0D_4FA1:
cp $05			
ret nz			
.incbin "data/0d_4FA4.data"
ld de,$cb26		
call  rlabel_0D_446A 
ld de,$4ff1		
call  rlabel_0D_4471 
ld a,($d4dd)		
ld ($d5a3),a		
ld d,$01		
call  rlabel_0D_438D 
ld a,$01		
ld ($d5a6),a		
call  rlabel_0D_471A 
ld hl,$d556		
ld a,(hl)		
ld (hl),$00		
or a			
ret nz			
ld a,($cb66)		
ld c,a			
or a			
call nz,$50c5		
ld a,($cb6e)		
jp $59df		
.incbin "data/0d_4FF1.data"
ld a,($cb6b)		
cp $00			
.DB $28 $22 ; < ['$28', '$22'] > < 0x4ff9 > < d4ff9 0D 4FF9 | 2822: jr z, $22 >
.incbin "data/0d_4FFB.data"
ld b,$0a		
ld hl,$6285		
rst $28			
ld a,($cb6b)		
or a			
jp nz,$5116		
ld a,($d4dd)		
ld b,a			
ld a,($d330)		
cp b			
.DB $20 $05 ; < ['$20', '$05'] > < 0x5032 > < d5032 0D 5032 | 2005: jr nz, $05 >
ld a,$01		
ld ($d54f),a		
call  rlabel_0D_4233 
ld a,($cb6c)		
call  rlabel_0D_4FA1 
ld ($d4dc),a		
ld de,$5054		
push de			
ld a,($d4df)		
cp $a0			
jp nc,$5068		
jp $5089		
ld a,$01		
ld ($d5a7),a		
ld a,($cb69)		
call  rlabel_0D_4946 
call  rlabel_0D_50AB 
ld a,($cb6d)		
jp $4859		
call  rlabel_00_3453 
ld a,$28		
call  rlabel_00_0462 
ldi a,(hl)		
ld e,a			
ld d,(hl)		
call  rlabel_0D_5104 
ld b,a			
call  rlabel_00_0409 
ld l,a			
ld a,$64		
call  rlabel_00_03BA 
ld a,b			
call  rlabel_00_045D 
ld h,d			
ld l,e			
jp $50e2		
call  rlabel_00_3453 
ld a,$28		
call  rlabel_00_0462 
ldi a,(hl)		
ld e,a			
ld d,(hl)		
call  rlabel_0D_5104 
ld h,$00		
ld l,a			
add hl,hl		
push hl			
call  rlabel_00_0433 
ld h,$c8		
call  rlabel_00_03BB 
ld h,d			
ld l,e			
pop de			
add hl,de		
jp $50e2		
rlabel_0D_50AB:
call  rlabel_0D_4A93 
ld a,($d548)		
and $80			
.DB $28 $07 ; < ['$28', '$07'] > < 0x50b3 > < d50b3 0D 50B3 | 2807: jr z, $07 >
.incbin "data/0d_50B5.data"
ld a,($d549)		
and $01			
.DB $28 $01 ; < ['$28', '$01'] > < 0x50c1 > < d50c1 0D 50C1 | 2801: jr z, $01 >
.incbin "data/0d_50C3.data"
ret			
ld b,$00		
call  rlabel_00_3453 
ld a,$0c		
call  rlabel_00_0462 
push hl			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
call  rlabel_00_04B3 
add hl,bc		
call  rlabel_0D_4B6F 
ld d,h			
ld a,l			
pop hl			
ldi (hl),a		
ld (hl),d		
jp $427d		
ld d,h			
ld e,l			
ld a,($d4fe)		
cp $35			
ld a,$19		
.DB $20 $02 ; < ['$20', '$02'] > < 0x50eb > < d50eb 0D 50EB | 2002: jr nz, $02 >
.incbin "data/0d_50ED.data"
call  rlabel_00_2836 
ld b,a			
ld a,($d4ed)		
sub b			
.DB $30 $01 ; < ['$30', '$01'] > < 0x50f7 > < d50f7 0D 50F7 | 3001: jr nc, $01 >
xor a			
ld b,a			
ld a,$ff		
sub b			
call  rlabel_00_0409 
ld h,a			
ld l,d			
ret			
rlabel_0D_5104:
push de			
ld a,($cb67)		
ld d,a			
ld a,($cb68)		
call  rlabel_0D_492F 
ld e,a			
call  rlabel_00_03F7 
ld a,d			
pop de			
ret			
.incbin "data/0d_5116.data"
rlabel_0D_51F3:
ld hl,$d508		
ld de,$0005		
ld a,(hl)		
ld bc,$0008		
add hl,bc		
bit 7,a			
.DB $20 $03 ; < ['$20', '$03'] > < 0x5200 > < d5200 0D 5200 | 2003: jr nz, $03 >
ld a,(hl)		
add d			
ld d,a			
ld a,$01		
call  rlabel_00_0462 
dec e			
.DB $20 $ec ; < ['$20', '$ec'] > < 0x520b > < d520b 0D 520B | 20EC: jr nz, $EC >
ld a,($d507)		
swap a			
call  rlabel_00_039F 
ld a,d			
or e			
ret z			
dec de			
ret			
.incbin "data/0d_521A.data"
rlabel_0D_526A:
ldd a,(hl)		
ld d,a			
ldd a,(hl)		
ld e,a			
ldd a,(hl)		
push hl			
ld l,(hl)		
ld h,a			
add hl,bc		
ld a,h			
cp d			
.DB $38 $08 ; < ['$38', '$08'] > < 0x5275 > < d5275 0D 5275 | 3808: jr c, $08 >
.DB $20 $04 ; < ['$20', '$04'] > < 0x5277 > < d5277 0D 5277 | 2004: jr nz, $04 >
ld a,l			
cp e			
.DB $38 $02 ; < ['$38', '$02'] > < 0x527b > < d527b 0D 527B | 3802: jr c, $02 >
ld h,d			
ld l,e			
ld d,h			
ld a,l			
pop hl			
ldi (hl),a		
ld (hl),d		
ret			
.incbin "data/0d_5285.data"
ld b,a			
ld c,$07		
rrc b			
.DB $30 $13 ; < ['$30', '$13'] > < 0x52b0 > < d52b0 0D 52B0 | 3013: jr nc, $13 >
push bc			
ld hl,$52c4		
push hl			
ld a,c			
dec a			
add a			
ld hl,$52d1		
call  rlabel_00_0462 
ldi a,(hl)		
ld h,(hl)		
ld l,a			
jp hl			
pop bc			
dec c			
.DB $20 $e6 ; < ['$20', '$e6'] > < 0x52c6 > < d52c6 0D 52C6 | 20E6: jr nz, $E6 >
rrc b			
ld a,b			
cp $7f			
jp z,$52df		
.incbin "data/0d_52D0.data"
call  rlabel_00_3453 
ld a,$60		
call  rlabel_00_0462 
ld d,h			
ld e,l			
call  rlabel_00_3453 
ld a,$20		
call  rlabel_00_0462 
ld c,$0c		
jp $04cb		
.incbin "data/0d_52F6.data"
rlabel_0D_56B0:
ld a,($d5aa)		
and $3f			
ret nz			
ld hl,$cfdd		
xor a			
ld ($d4dd),a		
ldi a,(hl)		
ld b,a			
ldd a,(hl)		
or b			
.DB $28 $45 ; < ['$28', '$45'] > < 0x56c1 > < d56c1 0D 56C1 | 2845: jr z, $45 >
push hl			
ld bc,$0090		
add hl,bc		
ld a,(hl)		
or a			
.DB $28 $05 ; < ['$28', '$05'] > < 0x56ca > < d56ca 0D 56CA | 2805: jr z, $05 >
.incbin "data/0d_56CC.data"
inc hl			
ld a,(hl)		
or a			
.DB $28 $05 ; < ['$28', '$05'] > < 0x56d4 > < d56d4 0D 56D4 | 2805: jr z, $05 >
.incbin "data/0d_56D6.data"
inc hl			
ld a,(hl)		
or a			
.DB $28 $05 ; < ['$28', '$05'] > < 0x56de > < d56de 0D 56DE | 2805: jr z, $05 >
.incbin "data/0d_56E0.data"
inc hl			
ld a,(hl)		
or a			
.DB $28 $05 ; < ['$28', '$05'] > < 0x56e8 > < d56e8 0D 56E8 | 2805: jr z, $05 >
.incbin "data/0d_56EA.data"
inc hl			
inc hl			
ld a,(hl)		
or a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x56f3 > < d56f3 0D 56F3 | 2807: jr z, $07 >
.incbin "data/0d_56F5.data"
inc hl			
ld a,(hl)		
or a			
.DB $28 $06 ; < ['$28', '$06'] > < 0x56ff > < d56ff 0D 56FF | 2806: jr z, $06 >
.incbin "data/0d_5701.data"
pop hl			
inc h			
ld a,($d4dd)		
inc a			
ld ($d4dd),a		
cp $03			
.DB $20 $a9 ; < ['$20', '$a9'] > < 0x5712 > < d5712 0D 5712 | 20A9: jr nz, $A9 >
ld hl,$d503		
ld a,(hl)		
or a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x5719 > < d5719 0D 5719 | 2802: jr z, $02 >
.incbin "data/0d_571B.data"
inc hl			
ld a,(hl)		
or a			
ret z			
.incbin "data/0d_5721.data"
push hl			
call  rlabel_00_3453 
ld a,$98		
call  rlabel_00_0462 
ld (hl),$00		
call  rlabel_00_34A2 
res 0,(hl)		
pop hl			
ret			
push hl			
call  rlabel_00_3453 
ld a,$99		
call  rlabel_00_0462 
ld (hl),$00		
call  rlabel_00_34A2 
res 1,(hl)		
call  rlabel_0D_6C1D 
pop hl			
ret			
push hl			
call  rlabel_00_3453 
ld a,$9a		
call  rlabel_00_0462 
ld (hl),$00		
call  rlabel_00_34A2 
res 2,(hl)		
call  rlabel_0D_6C1D 
pop hl			
ret			
push hl			
call  rlabel_00_3453 
ld a,$9b		
call  rlabel_00_0462 
ld (hl),$00		
call  rlabel_00_34A2 
res 3,(hl)		
pop hl			
ret			
push hl			
call  rlabel_00_3453 
ld a,$9c		
call  rlabel_00_0462 
ld (hl),$00		
call  rlabel_00_34A2 
res 4,(hl)		
call  rlabel_0D_6C1D 
call  rlabel_0D_58AD 
pop hl			
ret			
push hl			
call  rlabel_00_3453 
ld a,$9d		
call  rlabel_00_0462 
ld (hl),$00		
call  rlabel_00_34A2 
res 5,(hl)		
call  rlabel_0D_58AD 
pop hl			
ret			
push hl			
call  rlabel_00_3453 
ld a,$9e		
call  rlabel_00_0462 
ld (hl),$00		
call  rlabel_00_34A2 
res 6,(hl)		
call  rlabel_0D_58AD 
pop hl			
ret			
rlabel_0D_58AD:
ld b,$b0		
ld hl,$4b52		
rst $28			
ld b,$b0		
ld hl,$4ae7		
rst $28			
call  rlabel_00_3453 
ld a,$9c		
call  rlabel_00_0462 
ldi a,(hl)		
or a			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x58c3 > < d58c3 0D 58C3 | 280B: jr z, $0B >
.incbin "data/0d_58C5.data"
ldi a,(hl)		
or a			
.DB $28 $08 ; < ['$28', '$08'] > < 0x58d2 > < d58d2 0D 58D2 | 2808: jr z, $08 >
.incbin "data/0d_58D4.data"
ld a,(hl)		
or a			
.DB $28 $06 ; < ['$28', '$06'] > < 0x58de > < d58de 0D 58DE | 2806: jr z, $06 >
.incbin "data/0d_58E0.data"
ld a,($cad8)		
or a			
ret nz			
ld hl,$c9c8		
call  rlabel_0D_59D3 
call  rlabel_00_0E88 
ld hl,$c988		
call  rlabel_0D_59D3 
jp $0e49		
.incbin "data/0d_58FD.data"
rlabel_0D_59D3:
ld a,($d4dd)		
ld b,a			
add a			
add a			
add a			
call  rlabel_00_0462 
ld a,b			
ret			
ld c,a			
ld d,c			
call  rlabel_00_3453 
ld a,$1e		
call  rlabel_00_0462 
ld e,(hl)		
call  rlabel_00_03F7 
ld bc,$000f		
add hl,bc		
ld a,(hl)		
sub d			
.DB $30 $01 ; < ['$30', '$01'] > < 0x59f3 > < d59f3 0D 59F3 | 3001: jr nc, $01 >
.incbin "data/0d_59F5.data"
ld (hl),a		
ret			
rlabel_0D_59F8:
ld hl,$d001		
xor a			
ld ($d4dd),a		
ld a,$32		
call  rlabel_00_3484 
ld a,$14		
.DB $28 $02 ; < ['$28', '$02'] > < 0x5a06 > < d5a06 0D 5A06 | 2802: jr z, $02 >
.incbin "data/0d_5A08.data"
inc (hl)		
cp (hl)			
.DB $20 $15 ; < ['$20', '$15'] > < 0x5a0c > < d5a0c 0D 5A0C | 2015: jr nz, $15 >
xor a			
ldi (hl),a		
ld a,(hl)		
cp $65			
.DB $20 $09 ; < ['$20', '$09'] > < 0x5a13 > < d5a13 0D 5A13 | 2009: jr nz, $09 >
.incbin "data/0d_5A15.data"
inc a			
.DB $28 $01 ; < ['$28', '$01'] > < 0x5a1f > < d5a1f 0D 5A1F | 2801: jr z, $01 >
ld (hl),a		
dec hl			
inc hl			
inc hl			
ld a,(hl)		
or a			
.DB $28 $14 ; < ['$28', '$14'] > < 0x5a27 > < d5a27 0D 5A27 | 2814: jr z, $14 >
ld c,$07		
push hl			
call  rlabel_00_34A2 
bit 0,(hl)		
pop hl			
.DB $20 $02 ; < ['$20', '$02'] > < 0x5a32 > < d5a32 0D 5A32 | 2002: jr nz, $02 >
srl c			
ld a,($d5aa)		
and c			
.DB $20 $01 ; < ['$20', '$01'] > < 0x5a3a > < d5a3a 0D 5A3A | 2001: jr nz, $01 >
dec (hl)		
dec hl			
dec hl			
inc h			
ld a,($d4dd)		
inc a			
ld ($d4dd),a		
cp $03			
.DB $20 $b4 ; < ['$20', '$b4'] > < 0x5a49 > < d5a49 0D 5A49 | 20B4: jr nz, $B4 >
ret			
.incbin "data/0d_5A4C.data"
rlabel_0D_5A5D:
ld hl,$d5ad		
ld a,(hl)		
inc a			
cp $3c			
.DB $20 $01 ; < ['$20', '$01'] > < 0x5a64 > < d5a64 0D 5A64 | 2001: jr nz, $01 >
xor a			
ld (hl),a		
ld hl,$d5ae		
ld a,(hl)		
inc a			
cp $02			
.DB $20 $01 ; < ['$20', '$01'] > < 0x5a6f > < d5a6f 0D 5A6F | 2001: jr nz, $01 >
xor a			
ld (hl),a		
xor a			
ld ($d4dd),a		
call  rlabel_0D_4233 
ld a,$9c		
call  rlabel_00_0462 
ld a,(hl)		
or a			
.DB $20 $0e ; < ['$20', '$0e'] > < 0x5a81 > < d5a81 0D 5A81 | 200E: jr nz, $0E >
ld a,($d5ad)		
or a			
call z,$5a9d		
ld a,($d5ae)		
or a			
call z,$5abd		
ld a,($d4dd)		
inc a			
ld ($d4dd),a		
cp $03			
.DB $20 $db ; < ['$20', '$db'] > < 0x5a9a > < d5a9a 0D 5A9A | 20DB: jr nz, $DB >
ret			
ld a,($d547)		
and $40			
.DB $20 $07 ; < ['$20', '$07'] > < 0x5aa2 > < d5aa2 0D 5AA2 | 2007: jr nz, $07 >
ld a,($d54a)		
and $10			
.DB $28 $06 ; < ['$28', '$06'] > < 0x5aa9 > < d5aa9 0D 5AA9 | 2806: jr z, $06 >
.incbin "data/0d_5AAB.data"
ld a,($d547)		
and $80			
ld bc,$0001		
jp nz,$5259		
ret			
ld a,($d548)		
and $01			
ld hl,$0001		
call nz,$4c0c		
ld a,($d548)		
and $02			
ld c,$01		
jp nz,$50c5		
ret			
ld a,($cfd2)		
cp $04			
jp nz,$5b3d		
ld hl,$cff1		
ld c,$03		
push bc			
push hl			
ldi a,(hl)		
ld d,(hl)		
ld e,a			
ld a,$14		
call  rlabel_00_039F 
ld a,e			
call  rlabel_00_2836 
inc a			
ld b,$00		
ld c,a			
push bc			
ld de,$ffee		
add hl,de		
call  rlabel_0D_526A 
pop bc			
ld de,$0006		
add hl,de		
call  rlabel_0D_526A 
pop hl			
inc h			
pop bc			
dec c			
.DB $20 $d8 ; < ['$20', '$d8'] > < 0x5b06 > < d5b06 0D 5B06 | 20D8: jr nz, $D8 >
ld hl,$d4f4		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,($d5b3)		
or a			
.DB $28 $01 ; < ['$28', '$01'] > < 0x5b12 > < d5b12 0D 5B12 | 2801: jr z, $01 >
.incbin "data/0d_5B14.data"
ld d,h			
ld e,l			
ld hl,$c362		
push hl			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
add hl,de		
.DB $30 $03 ; < ['$30', '$03'] > < 0x5b1f > < d5b1f 0D 5B1F | 3003: jr nc, $03 >
.incbin "data/0d_5B21.data"
ld d,h			
ld a,l			
pop hl			
ldi (hl),a		
ld (hl),d		
ld hl,$d4f8		
ldi a,(hl)		
ld d,a			
ld e,(hl)		
inc a			
.DB $28 $08 ; < ['$28', '$08'] > < 0x5b30 > < d5b30 0D 5B30 | 2808: jr z, $08 >
ld c,$01		
ld b,$03		
ld hl,$51b4		
rst $28			
jp $5b3d		
ld hl,$d6f5		
ld de,$cfdd		
ld c,$02		
call  rlabel_00_04CB 
ld de,$cfe1		
ld c,$02		
call  rlabel_00_04CB 
ld de,$d0dd		
ld c,$02		
call  rlabel_00_04CB 
ld de,$d0e1		
ld c,$02		
call  rlabel_00_04CB 
ld de,$d1dd		
ld c,$02		
call  rlabel_00_04CB 
ld de,$d1e1		
ld c,$02		
call  rlabel_00_04CB 
ld de,$d015		
ld c,$20		
call  rlabel_00_04CB 
ld de,$d115		
ld c,$20		
call  rlabel_00_04CB 
ld de,$d215		
ld c,$20		
call  rlabel_00_04CB 
ld a,($d010)		
ldi (hl),a		
ld a,($d110)		
ldi (hl),a		
ld a,($d210)		
ldi (hl),a		
ld de,$d0a9		
ld c,$04		
call  rlabel_00_04CB 
ld de,$d1a9		
ld c,$04		
call  rlabel_00_04CB 
ld de,$d2a9		
ld c,$04		
jp $04cb		
.incbin "data/0d_5BAC.data"
ld hl,$61e1		
ld bc,$0109		
ld de,$8007		
call  rlabel_00_0F47 
ld hl,$d4e0		
ld d,$00		
inc d			
ldi a,(hl)		
cp $00			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x61c4 > < d61c4 0D 61C4 | 20FA: jr nz, $FA >
dec d			
ld a,d			
inc a			
srl a			
ld c,a			
ld a,$0a		
sub c			
ld c,a			
ld b,$02		
ld a,d			
ld de,$8207		
bit 0,a			
ld hl,$d4e0		
jp z,$0f47		
jp $2bd8		
.incbin "data/0d_61E1.data"
ld a,$03		
call  rlabel_00_2836 
ld ($d5a3),a		
ld ($d4dd),a		
call  rlabel_00_3449 
ld ($ff00+$8a),a	
ld hl,$6252		
push hl			
ld a,($d4f2)		
cp $01			
.DB $20 $04 ; < ['$20', '$04'] > < 0x61fd > < d61fd 0D 61FD | 2004: jr nz, $04 >
.incbin "data/0d_61FF.data"
cp $02			
.DB $20 $04 ; < ['$20', '$04'] > < 0x6205 > < d6205 0D 6205 | 2004: jr nz, $04 >
.incbin "data/0d_6207.data"
cp $03			
.DB $20 $04 ; < ['$20', '$04'] > < 0x620d > < d620d 0D 620D | 2004: jr nz, $04 >
.incbin "data/0d_620F.data"
cp $04			
.DB $20 $04 ; < ['$20', '$04'] > < 0x6215 > < d6215 0D 6215 | 2004: jr nz, $04 >
.incbin "data/0d_6217.data"
ld a,($cfd2)		
cp $02			
.DB $20 $04 ; < ['$20', '$04'] > < 0x6220 > < d6220 0D 6220 | 2004: jr nz, $04 >
.incbin "data/0d_6222.data"
ld a,($d4dd)		
call  rlabel_0D_6D59 
cp $4c			
.DB $30 $04 ; < ['$30', '$04'] > < 0x622e > < d622e 0D 622E | 3004: jr nc, $04 >
ld hl,$5d94		
ret			
call  rlabel_00_3453 
ld a,$0c		
call  rlabel_00_0462 
ldi a,(hl)		
ld b,(hl)		
or b			
.DB $20 $04 ; < ['$20', '$04'] > < 0x623f > < d623f 0D 623F | 2004: jr nz, $04 >
.incbin "data/0d_6241.data"
call  rlabel_00_0F09 
ld hl,$5bac		
bit 0,a			
ret z			
ld hl,$5c44		
ret			
ld a,($ff00+$8a)	
add a			
call  rlabel_00_0462 
ldi a,(hl)		
ld e,a			
ld d,(hl)		
call  rlabel_0D_446A 
ld d,$02		
jp $438d		
.incbin "data/0d_6263.data"
ld a,($d5b4)		
or a			
call z,$6404		
ld a,($d59f)		
or a			
.DB $28 $06 ; < ['$28', '$06'] > < 0x6304 > < d6304 0D 6304 | 2806: jr z, $06 >
ld a,$01		
ld ($d59c),a		
ret			
ld hl,$d5b4		
ld a,(hl)		
inc (hl)		
ld hl,$6331		
add a			
call  rlabel_00_0462 
ldi a,(hl)		
ld b,a			
ld c,(hl)		
ld hl,$d5b5		
ld (hl),$01		
cp $ff			
ret z			
ld (hl),$00		
call  rlabel_00_1B17 
ld a,$15		
ld ($9a32),a		
ei			
ld h,b			
ld l,c			
jp hl			
.incbin "data/0d_6331.data"
ld de,$d4e0		
call  rlabel_0D_446A 
ld de,$634c		
call  rlabel_0D_4471 
ld d,$06		
ld a,$ff		
ld ($d5a3),a		
jp $438d		
.incbin "data/0d_634C.data"
.DB $11 $bf $63 ; < ['$11', '$bf', '$63'] > < 0x6354 > < d6354 0D 6354 | 11BF63: ld de, $63BF >
call  rlabel_0D_446A 
ld hl,$d4f4		
ldi a,(hl)		
ld e,a			
ld d,(hl)		
ld a,($d5b3)		
or a			
.DB $28 $04 ; < ['$28', '$04'] > < 0x6364 > < d6364 0D 6364 | 2804: jr z, $04 >
.incbin "data/0d_6366.data"
call  rlabel_00_287D 
ld de,$ff92		
inc de			
ld a,(de)		
cp $20			
.DB $28 $fa ; < ['$28', '$fa'] > < 0x6374 > < d6374 0D 6374 | 28FA: jr z, $FA >
call  rlabel_0D_4471 
ld de,$63c7		
call  rlabel_0D_4471 
ld hl,$d4f6		
ldi a,(hl)		
ld e,a			
ld d,(hl)		
ld ($ff00+$b3),a	
ld a,$82		
ld ($ff00+$b0),a	
ld a,$4c		
ld ($ff00+$b1),a	
ld a,$b0		
call  rlabel_00_0244 
ld a,d			
inc a			
.DB $20 $05 ; < ['$20', '$05'] > < 0x6396 > < d6396 0D 6396 | 2005: jr nz, $05 >
ld de,$63d2		
.DB $18 $15 ; < ['$18', '$15'] > < 0x639b > < d639b 0D 639B | 1815: jr $15 >
ld b,$03		
ld hl,$4f0c		
rst $28			
ld de,$63ce		
call  rlabel_0D_4471 
ld de,$cb26		
call  rlabel_0D_4471 
ld de,$63c7		
call  rlabel_0D_4471 
ld d,$06		
ld a,$ff		
ld ($d5a3),a		
jp $438d		
.incbin "data/0d_63BF.data"
ld de,$8800		
ld bc,$0008		
ld hl,$448f		
ld a,$0e		
call  rlabel_00_06FD 
ret			
ld a,($d5aa)		
ld b,a			
and $07			
ret nz			
ld a,b			
srl a			
srl a			
srl a			
and $03			
add $80			
call  rlabel_00_1B17 
ld ($9a32),a		
ei			
ret			
call  rlabel_0D_65F8 
ld a,($d5ac)		
or a			
ret z			
dec hl			
ld de,$644f		
ld a,($d5d7)		
call  rlabel_00_045D 
ld a,(de)		
ld b,a			
call  rlabel_00_0F09 
cp b			
.DB $38 $04 ; < ['$38', '$04'] > < 0x6445 > < d6445 0D 6445 | 3804: jr c, $04 >
call  rlabel_0D_6D39 
.incbin "data/0d_644A.data"
call  rlabel_0D_6D39 
.incbin "data/0d_644E.data"
ld a,$10		
ld ($d33e),a		
ld a,($d5ac)		
or a			
ret nz			
ld (hl),$ff		
ret			
ld a,$80		
ld ($d33e),a		
ld a,($d5ac)		
or a			
ret nz			
ld a,($d5d7)		
cp $02			
.DB $20 $04 ; < ['$20', '$04'] > < 0x646f > < d646f 0D 646F | 2004: jr nz, $04 >
.incbin "data/0d_6471.data"
ld (hl),$ff		
ret			
call  rlabel_0D_65F8 
inc hl			
ldi a,(hl)		
add $0a			
ld b,a			
ld a,($d5da)		
cp b			
ret nc			
ld a,$10		
ld ($d33e),a		
ret			
ld a,$20		
ld ($d33e),a		
ld a,($d5d8)		
cp $02			
.DB $30 $26 ; < ['$30', '$26'] > < 0x6495 > < d6495 0D 6495 | 3026: jr nc, $26 >
push hl			
ld bc,$0005		
add hl,bc		
dec (hl)		
.DB $20 $1d ; < ['$20', '$1d'] > < 0x649d > < d649d 0D 649D | 201D: jr nz, $1D >
ld de,$64dc		
ld a,$33		
call  rlabel_00_3484 
call  rlabel_00_045D 
ld a,(de)		
ld (hl),a		
ld a,($d5d7)		
cp $00			
ld a,$4c		
.DB $28 $04 ; < ['$28', '$04'] > < 0x64b3 > < d64b3 0D 64B3 | 2804: jr z, $04 >
.incbin "data/0d_64B5.data"
call  rlabel_0D_6669 
pop hl			
inc hl			
ld a,($d5d9)		
cp $07			
call z,$65ff		
call  rlabel_0D_6D3F 
cp $cc			
call nc,$65ff		
inc hl			
ld a,($d5da)		
cp (hl)			
ret nc			
inc hl			
ld a,(hl)		
ld bc,$fffd		
add hl,bc		
ld (hl),a		
ret			
.incbin "data/0d_64DC.data"
ld a,$10		
ld ($d33e),a		
call  rlabel_0D_65F8 
ld a,($d5d8)		
cp $02			
.DB $30 $08 ; < ['$30', '$08'] > < 0x64f3 > < d64f3 0D 64F3 | 3008: jr nc, $08 >
call  rlabel_0D_6D3F 
cp $33			
call c,$65ff		
inc hl			
ld a,($d5da)		
cp (hl)			
ret c			
inc hl			
ld a,(hl)		
ld bc,$fffd		
add hl,bc		
ld (hl),a		
ret			
.incbin "data/0d_650B.data"
inc hl			
inc hl			
ld a,($d5da)		
sub (hl)		
ld b,a			
ld a,$10		
.DB $38 $02 ; < ['$38', '$02'] > < 0x655f > < d655f 0D 655F | 3802: jr c, $02 >
ld a,$20		
ld ($d33e),a		
dec hl			
call  rlabel_0D_65F9 
ld a,b			
bit 7,a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x656d > < d656d 0D 656D | 2802: jr z, $02 >
.incbin "data/0d_656F.data"
cp $0a			
ret nc			
inc hl			
inc hl			
ld a,(hl)		
ld bc,$fffd		
add hl,bc		
ld (hl),a		
ret			
.incbin "data/0d_657D.data"
ld a,$01		
ld ($d33e),a		
call  rlabel_0D_6D39 
.incbin "data/0d_659F.data"
push hl			
call  rlabel_0D_6761 
pop hl			
call  rlabel_0D_6D39 
.incbin "data/0d_65C2.data"
rlabel_0D_65F8:
inc hl			
rlabel_0D_65F9:
ld a,(hl)		
or a			
ret z			
dec a			
ld (hl),a		
ret nz			
dec hl			
ld (hl),$ff		
pop af			
ret			
call  rlabel_0D_6CD0 
ld a,($d5de)		
or a			
.DB $28 $0e ; < ['$28', '$0e'] > < 0x660b > < d660b 0D 660B | 280E: jr z, $0E >
.incbin "data/0d_660D.data"
ld a,($d5d8)		
cp $02			
ret nc			
ld a,($d5d7)		
cp $02			
.DB $20 $0e ; < ['$20', '$0e'] > < 0x6626 > < d6626 0D 6626 | 200E: jr nz, $0E >
.incbin "data/0d_6628.data"
add a			
add $04			
ld b,a			
ld a,($d553)		
cp b			
ret z			
call  rlabel_00_3453 
ld a,$30		
call  rlabel_00_0462 
call  rlabel_00_0F09 
cp (hl)			
ret nc			
.incbin "data/0d_664C.data"
rlabel_0D_6669:
ld b,a			
call  rlabel_00_0F09 
cp b			
ret nc			
ld a,($d5d7)		
cp $02			
ret nc			
xor a			
ld ($ff00+$8b),a	
ld a,($d448)		
cp $60			
.DB $38 $03 ; < ['$38', '$03'] > < 0x667d > < d667d 0D 667D | 3803: jr c, $03 >
.incbin "data/0d_667F.data"
call  rlabel_0D_6752 
ld ($ff00+$8a),a	
ld b,$04		
call  rlabel_00_0F09 
and $03			
ld c,a			
call  rlabel_00_3453 
ld a,c			
add $d4			
call  rlabel_00_0462 
ld a,(hl)		
cp $ff			
.DB $28 $37 ; < ['$28', '$37'] > < 0x669b > < d669b 0D 669B | 2837: jr z, $37 >
sub $60			
ld e,a			
ld a,$f8		
call  rlabel_00_2B62 
ld a,e			
ld e,(hl)		
ld hl,$66da		
add a			
call  rlabel_00_0462 
ld a,(hl)		
inc a			
ld a,($ff00+$8b)	
.DB $20 $03 ; < ['$20', '$03'] > < 0x66b2 > < d66b2 0D 66B2 | 2003: jr nz, $03 >
.incbin "data/0d_66B4.data"
or a			
.DB $20 $1a ; < ['$20', '$1a'] > < 0x66b8 > < d66b8 0D 66B8 | 201A: jr nz, $1A >
ld a,($d5da)		
cp (hl)			
.DB $38 $14 ; < ['$38', '$14'] > < 0x66be > < d66be 0D 66BE | 3814: jr c, $14 >
inc hl			
cp (hl)			
.DB $30 $10 ; < ['$30', '$10'] > < 0x66c2 > < d66c2 0D 66C2 | 3010: jr nc, $10 >
ld a,($ff00+$8a)	
cp e			
.DB $38 $0b ; < ['$38', '$0b'] > < 0x66c7 > < d66c7 0D 66C7 | 380B: jr c, $0B >
ld hl,$674e		
ld b,$00		
add hl,bc		
ld a,(hl)		
ld ($d33e),a		
ret			
ld a,c			
inc a			
dec b			
.DB $20 $b3 ; < ['$20', '$b3'] > < 0x66d7 > < d66d7 0D 66D7 | 20B3: jr nz, $B3 >
ret			
.incbin "data/0d_66DA.data"
rlabel_0D_6752:
call  rlabel_00_3453 
ld a,$0d		
call  rlabel_00_0462 
ldd a,(hl)		
or a			
ld a,$ff		
ret nz			
ld a,(hl)		
ret			
rlabel_0D_6761:
ld a,($d5dc)		
cp $01			
call z,$67c0		
ld a,($d5d8)		
cp $02			
call z,$6825		
ld a,($d5d8)		
cp $02			
call z,$67dc		
ld a,($d5dc)		
cp $01			
call z,$685d		
ld a,($d5d7)		
cp $01			
ld b,$3f		
.DB $20 $02 ; < ['$20', '$02'] > < 0x6788 > < d6788 0D 6788 | 2002: jr nz, $02 >
ld b,$26		
call  rlabel_00_0F09 
cp b			
ret nc			
call  rlabel_0D_67A5 
call  rlabel_0D_6843 
call  rlabel_0D_68A1 
ld a,($d5dc)		
cp $07			
call  rlabel_0D_6905 
jp $691f		
rlabel_0D_67A5:
call  rlabel_0D_69E0 
call  rlabel_00_3453 
ld a,$0c		
call  rlabel_00_0462 
ldi a,(hl)		
ld e,a			
or a			
ret nz			
.incbin "data/0d_67B4.data"
rlabel_0D_6843:
ld b,$b0		
ld hl,$7b56		
rst $28			
ld a,c			
or a			
ret z			
.incbin "data/0d_684C.data"
rlabel_0D_68A1:
call  rlabel_0D_69E0 
call  rlabel_00_3453 
ld a,$2f		
call  rlabel_00_0462 
ld b,$19		
cp $4b			
.DB $38 $2d ; < ['$38', '$2d'] > < 0x68b0 > < d68b0 0D 68B0 | 382D: jr c, $2D >
.incbin "data/0d_68B2.data"
call  rlabel_00_0F09 
cp b			
ret nc			
ld d,$06		
call  rlabel_0D_6937 
ret z			
.incbin "data/0d_68EA.data"
rlabel_0D_6905:
call  rlabel_0D_69E0 
ld a,($d4dd)		
call  rlabel_0D_6D59 
cp $ff			
ret z			
.incbin "data/0d_6911.data"
call  rlabel_0D_69E0 
call  rlabel_0D_51F3 
srl e			
ld a,($d4ed)		
srl a			
add e			
swap a			
and $0f			
ld e,a			
ld d,$01		
jp $6939		
rlabel_0D_6937:
ld e,$00		
call  rlabel_0D_6752 
ld hl,$ff8a		
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld a,$ff		
ldi (hl),a		
ld (hl),a		
ld b,$04		
call  rlabel_00_0F09 
and $03			
ld c,a			
call  rlabel_00_3453 
ld a,c			
add $d4			
call  rlabel_00_0462 
ld a,(hl)		
cp $ff			
.DB $28 $31 ; < ['$28', '$31'] > < 0x695a > < d695a 0D 695A | 2831: jr z, $31 >
sub $a0			
ld e,a			
ld a,$f8		
call  rlabel_00_2B62 
ld a,e			
ld e,(hl)		
ld hl,$69a3		
call  rlabel_00_0462 
ld a,(hl)		
ld h,a			
and $0f			
cp d			
.DB $20 $1a ; < ['$20', '$1a'] > < 0x6971 > < d6971 0D 6971 | 201A: jr nz, $1A >
ld a,($ff00+$8a)	
cp e			
.DB $38 $15 ; < ['$38', '$15'] > < 0x6976 > < d6976 0D 6976 | 3815: jr c, $15 >
ld a,h			
swap a			
and $0f			
ld h,a			
ld a,($ff00+$8b)	
sub h			
.DB $38 $0a ; < ['$38', '$0a'] > < 0x6981 > < d6981 0D 6981 | 380A: jr c, $0A >
ld hl,$ff8c		
cp (hl)			
.DB $30 $04 ; < ['$30', '$04'] > < 0x6987 > < d6987 0D 6987 | 3004: jr nc, $04 >
ld (hl),a		
ld a,c			
ld ($ff00+$8d),a	
ld a,c			
inc a			
dec b			
.DB $20 $b9 ; < ['$20', '$b9'] > < 0x6990 > < d6990 0D 6990 | 20B9: jr nz, $B9 >
ld a,($ff00+$8d)	
cp $ff			
ret z			
ld hl,$674e		
call  rlabel_00_0462 
ld a,(hl)		
ld ($d33e),a		
or a			
ret			
.incbin "data/0d_69A3.data"
rlabel_0D_69E0:
ld a,($d4fe)		
cp $0e			
ret nz			
.incbin "data/0d_69E6.data"
call  rlabel_0D_6D56 
cp $33			
jp c,$6a43		
call  rlabel_0D_6D3F 
cp $99			
jp c,$6a43		
cp $99			
.DB $38 $0e ; < ['$38', '$0e'] > < 0x6a04 > < d6a04 0D 6A04 | 380E: jr c, $0E >
ld a,($d5da)		
cp $3c			
.DB $30 $07 ; < ['$30', '$07'] > < 0x6a0b > < d6a0b 0D 6A0B | 3007: jr nc, $07 >
call  rlabel_0D_6D39 
.incbin "data/0d_6A10.data"
ld a,($d5dc)		
cp $00			
.DB $20 $0e ; < ['$20', '$0e'] > < 0x6a19 > < d6a19 0D 6A19 | 200E: jr nz, $0E >
.incbin "data/0d_6A1B.data"
ld a,($d5da)		
ld b,$3c		
call  rlabel_0D_6DAA 
cp $0a			
.DB $38 $07 ; < ['$38', '$07'] > < 0x6a33 > < d6a33 0D 6A33 | 3807: jr c, $07 >
call  rlabel_0D_6D39 
.incbin "data/0d_6A38.data"
call  rlabel_0D_6D39 
.incbin "data/0d_6A3F.data"
ld a,$01		
ldi (hl),a		
inc hl			
ld a,($d5db)		
call  rlabel_00_2836 
inc a			
ldi (hl),a		
ld (hl),$09		
ret			
.incbin "data/0d_6A52.data"
ld a,($d5da)		
cp $0a			
.DB $30 $07 ; < ['$30', '$07'] > < 0x6ad5 > < d6ad5 0D 6AD5 | 3007: jr nc, $07 >
.incbin "data/0d_6AD7.data"
ld a,($d5da)		
cp $64			
.DB $30 $07 ; < ['$30', '$07'] > < 0x6ae3 > < d6ae3 0D 6AE3 | 3007: jr nc, $07 >
call  rlabel_0D_6D39 
.incbin "data/0d_6AE8.data"
call  rlabel_0D_6D39 
.incbin "data/0d_6AEF.data"
ld hl,$d54b		
ld a,($d33c)		
bit 7,a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x6bde > < d6bde 0D 6BDE | 2802: jr z, $02 >
and $cf			
bit 5,a			
.DB $28 $01 ; < ['$28', '$01'] > < 0x6be4 > < d6be4 0D 6BE4 | 2801: jr z, $01 >
inc (hl)		
inc hl			
inc hl			
bit 4,a			
.DB $28 $01 ; < ['$28', '$01'] > < 0x6beb > < d6beb 0D 6BEB | 2801: jr z, $01 >
inc (hl)		
inc hl			
inc hl			
bit 0,a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x6bf2 > < d6bf2 0D 6BF2 | 2802: jr z, $02 >
ld (hl),$01		
ld a,($d5aa)		
and $0f			
ret nz			
ld hl,$d54b		
ld c,$03		
ld a,(hl)		
ld (hl),$00		
inc hl			
ldi (hl),a		
dec c			
.DB $20 $f8 ; < ['$20', '$f8'] > < 0x6c07 > < d6c07 0D 6C07 | 20F8: jr nz, $F8 >
ret			
xor a			
ld ($d4dd),a		
call  rlabel_0D_6C1D 
ld a,($d4dd)		
inc a			
ld ($d4dd),a		
cp $03			
.DB $20 $f2 ; < ['$20', '$f2'] > < 0x6c1a > < d6c1a 0D 6C1A | 20F2: jr nz, $F2 >
ret			
rlabel_0D_6C1D:
call  rlabel_0D_6C2E 
ld de,$6c28		
ld c,$06		
jp $04cb		
.incbin "data/0d_6C28.data"
rlabel_0D_6C2E:
.DB $fa $dd $d4 ; < ['$fa', '$dd', '$d4'] > < 0x6c2e > < d6c2e 0D 6C2E | FADDD4: ld a, [$D4DD] >
.DB $21 $57 $d5 ; < ['$21', '$57', '$d5'] > < 0x6c31 > < d6c31 0D 6C31 | 2157D5: ld hl, $D557 >
ld d,a			
ld e,$06		
call  rlabel_00_03F7 
add hl,de		
ret			
ld a,($c203)		
ld ($d4dd),a		
call  rlabel_0D_6CD0 
call  rlabel_0D_6C2E 
ld a,(hl)		
inc a			
push hl			
.DB $20 $2b ; < ['$20', '$2b'] > < 0x6c4b > < d6c4b 0D 6C4B | 202B: jr nz, $2B >
ld d,h			
ld e,l			
ld hl,$6c78		
push hl			
sla c			
sla c			
ld a,b			
add c			
add a			
ld hl,$6c88		
call  rlabel_00_0462 
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,($d347)		
bit 3,a			
.DB $28 $03 ; < ['$28', '$03'] > < 0x6c68 > < d6c68 0D 6C68 | 2803: jr z, $03 >
.incbin "data/0d_6C6A.data"
bit 5,a			
.DB $28 $03 ; < ['$28', '$03'] > < 0x6c6f > < d6c6f 0D 6C6F | 2803: jr z, $03 >
.incbin "data/0d_6C71.data"
push hl			
ld h,d			
ld l,e			
ret			
pop de			
ld a,(de)		
ld hl,$6cb0		
add a			
call  rlabel_00_0462 
ldi a,(hl)		
ld c,a			
ld b,(hl)		
push bc			
ld h,d			
ld l,e			
ret			
.incbin "data/0d_6C88.data"
rlabel_0D_6CD0:
call  rlabel_00_3453 
ld a,$3b		
call  rlabel_00_0462 
ldi a,(hl)		
ld b,a			
ld ($d5d7),a		
ld a,(hl)		
and $7f			
ld c,a			
ld ($d5d8),a		
xor a			
bit 7,(hl)		
.DB $28 $04 ; < ['$28', '$04'] > < 0x6ce7 > < d6ce7 0D 6CE7 | 2804: jr z, $04 >
.incbin "data/0d_6CE9.data"
ld ($d5de),a		
ld d,$18		
call  rlabel_0D_6D96 
ld ($d5d9),a		
call  rlabel_00_3446 
ld ($d5dc),a		
ld hl,$d416		
ld a,($d4dd)		
add a			
call  rlabel_00_0462 
ldi a,(hl)		
bit 7,(hl)		
.DB $28 $01 ; < ['$28', '$01'] > < 0x6d0b > < d6d0b 0D 6D0B | 2801: jr z, $01 >
xor a			
ld ($d5da),a		
ld hl,$6d2d		
ld a,($d4dd)		
call  rlabel_00_0462 
ld a,(hl)		
ld ($d5db),a		
ld hl,$d416		
ld a,($d330)		
add a			
call  rlabel_00_0462 
ld a,(hl)		
ld ($d5dd),a		
ret			
.incbin "data/0d_6D2D.data"
rlabel_0D_6D39:
pop de			
ld c,$05		
jp $04cb		
rlabel_0D_6D3F:
ld a,($d550)		
or a			
.DB $20 $0e ; < ['$20', '$0e'] > < 0x6d43 > < d6d43 0D 6D43 | 200E: jr nz, $0E >
ld a,($d54e)		
ld b,a			
ld a,($d54c)		
add $10			
sub b			
add a			
add a			
add a			
ret nc			
ld a,$ff		
ret			
rlabel_0D_6D56:
ld a,($d330)		
rlabel_0D_6D59:
ld bc,$0008		
jp $6d68		
.incbin "data/0d_6D5F.data"
push de			
push hl			
call  rlabel_00_3456 
add hl,bc		
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
srl a			
rr e			
srl a			
rr e			
ld d,e			
ld e,$00		
.DB $20 $01 ; < ['$20', '$01'] > < 0x6d7c > < d6d7c 0D 6D7C | 2001: jr nz, $01 >
inc e			
ldi a,(hl)		
ld h,(hl)		
srl h			
rr a			
srl h			
rr a			
call  rlabel_00_039F 
ld a,e			
bit 0,d			
.DB $28 $02 ; < ['$28', '$02'] > < 0x6d8f > < d6d8f 0D 6D8F | 2802: jr z, $02 >
ld a,$ff		
pop hl			
pop de			
ret			
rlabel_0D_6D96:
push bc			
ld a,($c203)		
add a			
ld c,a			
ld b,$00		
ld hl,$3440		
add hl,bc		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld c,d			
add hl,bc		
pop bc			
ld a,(hl)		
ret			
rlabel_0D_6DAA:
sub b			
ret nc			
.incbin "data/0d_6DAC.data"
