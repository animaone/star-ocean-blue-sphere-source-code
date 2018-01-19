.BANK $09 SLOT 1
.ORG 0
.incbin "data/09_4000.data"
ld a,($c1a8)		
ld ($c1a9),a		
ld de,$cd9a		
call  rlabel_00_08F6 
or a			
.DB $20 $36 ; < ['$20', '$36'] > < 0x400e > < 9400e 09 400E | 2036: jr nz, $36 >
ld hl,$c1a0		
ld de,$1b28		
call  rlabel_00_0231 
ld a,($ff00+$ff)	
or $08			
ld ($ff00+$9c),a	
ld ($ff00+$ff),a	
xor a			
ld ($cbf0),a		
ld ($ccd9),a		
ld ($cbf1),a		
ld ($ccf6),a		
ld a,$ff		
ld ($ccd3),a		
xor a			
ld ($ff00+$02),a	
ld ($ff00+$01),a	
ld ($cce5),a		
call  rlabel_00_05AA 
ld a,$18		
call  rlabel_00_305E 
call  rlabel_09_4094 
ld a,($ff00+$ff)	
and $f7			
ld ($ff00+$9c),a	
ld ($ff00+$ff),a	
ld c,$04		
ld de,$0000		
call  rlabel_00_1318 
call  rlabel_09_405E 
ld b,$00		
jp $0214		
rlabel_09_405E:
ld a,($cad7)		
or a			
ret z			
call  rlabel_00_1340 
call  rlabel_00_1AE5 
.DB $18 $f3 ; < ['$18', '$f3'] > < 0x4069 > < 94069 09 4069 | 18F3: jr $F3 >
rlabel_09_406B:
call  rlabel_00_1AE5 
call  rlabel_00_1EA8 
ld a,($cc7d)		
or a			
.DB $20 $f4 ; < ['$20', '$f4'] > < 0x4075 > < 94075 09 4075 | 20F4: jr nz, $F4 >
ret			
rlabel_09_4078:
call  rlabel_00_207C 
call  rlabel_00_1AE5 
call  rlabel_00_208D 
ld a,($cc7d)		
or a			
.DB $20 $f4 ; < ['$20', '$f4'] > < 0x4085 > < 94085 09 4085 | 20F4: jr nz, $F4 >
ret			
.incbin "data/09_4088.data"
rlabel_09_4094:
ld b,$03		
ld hl,$40af		
rst $28			
xor a			
ld ($cd7b),a		
ld ($cd7c),a		
ld ($ff00+$a1),a	
ld ($ff00+$a0),a	
call  rlabel_09_4C30 
ld hl,$cbf8		
ld de,$a000		
ld bc,$000b		
ld a,$03		
call  rlabel_00_1C63 
.DB $28 $05 ; < ['$28', '$05'] > < 0x40b6 > < 940b6 09 40B6 | 2805: jr z, $05 >
call  rlabel_09_4564 
.DB $18 $42 ; < ['$18', '$42'] > < 0x40bb > < 940bb 09 40BB | 1842: jr $42 >
ld a,($cbf8)		
or a			
.DB $28 $f5 ; < ['$28', '$f5'] > < 0x40c1 > < 940c1 09 40C1 | 28F5: jr z, $F5 >
.incbin "data/09_40C3.data"
call  rlabel_09_41F4 
ld a,$01		
ld ($cc9c),a		
ld ($cca7),a		
call  rlabel_00_237B 
ld a,$04		
ld ($cc1b),a		
ld a,$28		
ld ($cc1c),a		
ld a,$18		
ld ($cc1d),a		
ld a,$ff		
ld ($cc1e),a		
ld hl,$cc1f		
ld c,$0f		
call  rlabel_00_04E2 
ld a,$01		
ld ($cc2a),a		
ld a,$01		
ld ($cc22),a		
ld a,$50		
ld ($cc29),a		
call  rlabel_00_1AE5 
call  rlabel_00_05AA 
ld b,$00		
call  rlabel_09_4364 
ld hl,$41a6		
call  rlabel_00_2C78 
ld a,($cccd)		
and $02			
jp z,$4158		
.incbin "data/09_4151.data"
ld a,($cccd)		
and $01			
jp z,$4138		
call  rlabel_09_427A 
call  rlabel_00_2521 
ld b,$1b		
call  rlabel_00_2CDF 
ld a,($cc1f)		
call  rlabel_00_3005 
.incbin "data/09_4171.data"
ret			
.incbin "data/09_41A6.data"
rlabel_09_41F4:
ld hl,$0203		
ld de,$0c10		
ld c,$02		
call  rlabel_00_1E43 
call  rlabel_00_24F4 
ld hl,$0d02		
ld de,$1011		
ld c,$02		
call  rlabel_00_1E43 
call  rlabel_00_24FA 
ld hl,$421a		
ld de,$4222		
ld bc,$0000		
ret			
ld d,$40		
ld hl,$4230		
jp $2c5b		
ld a,$01		
ld ($cc2a),a		
xor a			
ld ($cc1f),a		
ld b,$00		
jp $4364		
.incbin "data/09_4230.data"
rlabel_09_427A:
ld a,($cc28)		
ld b,a			
ld a,($cc1c)		
add b			
call  rlabel_00_2BA1 
ld a,h			
ld ($cc6d),a		
ld a,l			
ld ($cc6e),a		
ld a,($cc29)		
ld c,a			
ld a,($cc1c)		
sub b			
add c			
call  rlabel_00_2BA1 
ld a,h			
ld ($cc6f),a		
ld a,l			
ld ($cc70),a		
ld a,($cc1d)		
call  rlabel_00_2BA1 
ld a,h			
ld ($cc71),a		
ld a,l			
ld ($cc72),a		
ret			
.incbin "data/09_42B0.data"
rlabel_09_4364:
ld a,($cc2a)		
or a			
ret z			
ld a,($cc1f)		
add b			
add a			
ld hl,$4397		
call  rlabel_00_0462 
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld d,$80		
ld e,$07		
ld bc,$0e03		
xor a			
call  rlabel_00_0F47 
push hl			
push de			
push bc			
ld e,$11		
call  rlabel_00_1128 
pop bc			
pop de			
pop hl			
ld a,$ff		
call  rlabel_00_0F47 
ld e,$11		
jp $1128		
.incbin "data/09_4397.data"
rlabel_09_450B:
ld a,$03		
ld ($4000),a		
ld a,$0a		
ld ($0000),a		
ld hl,$a000		
inc (hl)		
xor a			
ld ($0000),a		
ret			
rlabel_09_451E:
push bc			
ld hl,$cd7b		
ld de,$cd7d		
ld b,$02		
call  rlabel_00_1C19 
xor a			
ld ($cd7b),a		
ld ($cd7c),a		
call  rlabel_00_1AE5 
pop bc			
push bc			
ld d,$08		
ld hl,$5308		
ld ($ff00+$b3),a	
ld a,$01		
ld ($ff00+$b0),a	
ld a,$40		
ld ($ff00+$b1),a	
ld a,$3a		
call  rlabel_00_0244 
ld a,($cccd)		
and $03			
jp z,$4531		
ld hl,$cd7b		
ld de,$cd7d		
ld b,$02		
call  rlabel_00_1C19 
ld b,$1b		
call  rlabel_00_2CDF 
pop bc			
ret			
rlabel_09_4564:
call  rlabel_09_450B 
ld a,$01		
ld ($cc97),a		
call  rlabel_00_1D56 
ld hl,$0101		
ld de,$0912		
ld c,$02		
call  rlabel_00_1E43 
call  rlabel_00_24F4 
ld hl,$46e0		
call  rlabel_00_237B 
ld hl,$0b04		
ld de,$100f		
ld c,$01		
call  rlabel_00_1E43 
call  rlabel_09_406B 
ld hl,$4716		
ld d,$61		
call  rlabel_00_2C5B 
ld a,$01		
ld ($cc1b),a		
ld a,$40		
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
ld a,$20		
ld ($cc29),a		
call  rlabel_00_1AE5 
call  rlabel_00_05AA 
ld hl,$4732		
call  rlabel_00_2C78 
ld a,($cccd)		
and $01			
jp z,$45bf		
ld a,($cc1f)		
cp $01			
.DB $20 $08 ; < ['$20', '$08'] > < 0x45d8 > < 945d8 09 45D8 | 2008: jr nz, $08 >
.incbin "data/09_45DA.data"
call  rlabel_00_05AA 
ld hl,$0101		
ld de,$0312		
ld c,$01		
call  rlabel_00_1E43 
call  rlabel_00_24F4 
ld hl,$0401		
ld de,$1012		
ld c,$01		
call  rlabel_00_1E43 
call  rlabel_00_24FA 
ld hl,$4734		
ld de,$474a		
call  rlabel_00_237B 
xor a			
ld ($cc97),a		
ld a,$01		
ld ($cc95),a		
ld hl,$0603		
ld de,$0c10		
ld c,$01		
call  rlabel_00_1E43 
call  rlabel_09_406B 
ld hl,$4757		
ld de,$4007		
ld bc,$0805		
xor a			
call  rlabel_00_0F47 
ld bc,$5878		
call  rlabel_09_451E 
call  rlabel_00_05AA 
call  rlabel_09_4078 
ld a,$05		
ld ($cc1b),a		
ld a,$18		
ld ($cc1c),a		
ld a,$28		
ld ($cc1d),a		
ld a,$ff		
ld ($cc1e),a		
ld hl,$cc1f		
ld c,$0f		
call  rlabel_00_04E2 
ld a,$01		
ld ($cc2a),a		
ld a,$01		
ld ($cc22),a		
xor a			
ld ($cd7b),a		
ld ($cd7c),a		
ld ($cc2b),a		
ld ($cc2c),a		
ld ($cc1e),a		
ld ($cc55),a		
ld ($cc6b),a		
ld ($cc6c),a		
call  rlabel_00_1AE5 
call  rlabel_00_05AA 
call  rlabel_00_2558 
call  rlabel_09_4AFB 
ld a,($cc6c)		
ld c,a			
ld a,($cc1c)		
add c			
ld c,a			
ld a,($cc1d)		
ld b,a			
ld d,$00		
ld hl,$5334		
ld ($ff00+$b3),a	
ld a,$01		
ld ($ff00+$b0),a	
ld a,$40		
ld ($ff00+$b1),a	
ld a,$3a		
call  rlabel_00_0244 
ld a,($cc55)		
add a			
add a			
add a			
add $34			
ld c,a			
ld b,$10		
ld a,($cc55)		
cp $08			
.DB $38 $02 ; < ['$38', '$02'] > < 0x46b6 > < 946b6 09 46B6 | 3802: jr c, $02 >
.incbin "data/09_46B8.data"
ld d,$26		
ld hl,$5334		
ld e,$39		
ld ($ff00+$b3),a	
ld a,$01		
ld ($ff00+$b0),a	
ld a,$40		
ld ($ff00+$b1),a	
ld a,$3a		
call  rlabel_00_0244 
call  rlabel_09_476D 
.DB $28 $a4 ; < ['$28', '$a4'] > < 0x46d3 > < 946d3 09 46D3 | 28A4: jr z, $A4 >
call  rlabel_00_05AA 
call  rlabel_00_1DFD 
ld b,$03		
jp $2449		
ld bc,$0303		
ld de,$4007		
ld hl,$46ed		
xor a			
jp $0f47		
.incbin "data/09_46ED.data"
ld hl,$cc56		
ld c,$08		
ld a,$1a		
call  rlabel_00_04E3 
ld a,$00		
ld ($cc5e),a		
xor a			
ld ($cc55),a		
jp $4927		
ld bc,$0503		
ld de,$8a07		
ld hl,$6387		
xor a			
jp $0f47		
.incbin "data/09_4757.data"
rlabel_09_476D:
call  rlabel_09_496B 
ld a,b			
cp $20			
.DB $28 $17 ; < ['$28', '$17'] > < 0x4773 > < 94773 09 4773 | 2817: jr z, $17 >
cp $02			
.DB $28 $08 ; < ['$28', '$08'] > < 0x4777 > < 94777 09 4777 | 2808: jr z, $08 >
cp $04			
.DB $28 $04 ; < ['$28', '$04'] > < 0x477b > < 9477b 09 477B | 2804: jr z, $04 >
cp $06			
.DB $20 $07 ; < ['$20', '$07'] > < 0x477f > < 9477f 09 477F | 2007: jr nz, $07 >
ld a,$04		
ld ($cc6c),a		
.DB $18 $04 ; < ['$18', '$04'] > < 0x4786 > < 94786 09 4786 | 1804: jr $04 >
xor a			
ld ($cc6c),a		
ld de,$cc56		
ld a,($cc55)		
call  rlabel_00_045D 
ld a,b			
ld a,($cccd)		
and $02			
jp nz,$48f2		
ld a,($cccd)		
and $08			
jp nz,$4908		
ld a,($cccd)		
and $01			
jp z,$4925		
ld a,$1b		
call  rlabel_00_2CCC 
ld a,b			
cp $0b			
jp nz,$4856		
.incbin "data/09_47B9.data"
cp $0c			
.DB $20 $4a ; < ['$20', '$4a'] > < 0x4858 > < 94858 09 4858 | 204A: jr nz, $4A >
.incbin "data/09_485A.data"
cp $02			
.DB $20 $14 ; < ['$20', '$14'] > < 0x48a6 > < 948a6 09 48A6 | 2014: jr nz, $14 >
.incbin "data/09_48A8.data"
cp $04			
.DB $20 $15 ; < ['$20', '$15'] > < 0x48be > < 948be 09 48BE | 2015: jr nz, $15 >
.incbin "data/09_48C0.data"
cp $06			
.DB $20 $15 ; < ['$20', '$15'] > < 0x48d7 > < 948d7 09 48D7 | 2015: jr nz, $15 >
.incbin "data/09_48D9.data"
cp $08			
.DB $20 $12 ; < ['$20', '$12'] > < 0x48f0 > < 948f0 09 48F0 | 2012: jr nz, $12 >
ld a,($cc55)		
or a			
jp z,$4925		
dec a			
ld ($cc55),a		
dec de			
ld a,$1a		
ld (de),a		
jp $4922		
cp $0a			
.DB $20 $0a ; < ['$20', '$0a'] > < 0x4906 > < 94906 09 4906 | 200A: jr nz, $0A >
call  rlabel_09_49C7 
jp z,$4925		
ld a,$01		
or a			
ret			
ld a,($cc55)		
cp $08			
.DB $30 $09 ; < ['$30', '$09'] > < 0x4917 > < 94917 09 4917 | 3009: jr nc, $09 >
ld a,b			
ld (de),a		
ld a,($cc55)		
inc a			
ld ($cc55),a		
call  rlabel_09_4927 
xor a			
ret			
rlabel_09_4927:
ld de,$cc56		
ld hl,$cc5f		
ld a,($cc55)		
or a			
.DB $28 $04 ; < ['$28', '$04'] > < 0x4931 > < 94931 09 4931 | 2804: jr z, $04 >
ld c,a			
call  rlabel_00_04CB 
ld a,$00		
ldi (hl),a		
ld a,(de)		
ldi (hl),a		
ld b,a			
inc de			
ld a,$00		
ldi (hl),a		
ld a,b			
cp $00			
.DB $28 $0a ; < ['$28', '$0a'] > < 0x4944 > < 94944 09 4944 | 280A: jr z, $0A >
ld a,(de)		
cp $00			
.DB $28 $05 ; < ['$28', '$05'] > < 0x4949 > < 94949 09 4949 | 2805: jr z, $05 >
ld a,(de)		
ldi (hl),a		
inc de			
.DB $18 $f6 ; < ['$18', '$f6'] > < 0x494e > < 9494e 09 494E | 18F6: jr $F6 >
ld a,$00		
ld (hl),a		
ld hl,$cc5f		
ld d,$80		
ld e,$07		
ld bc,$0206		
xor a			
call  rlabel_00_0F47 
call  rlabel_00_2BD8 
ld e,$07		
ld a,$ff		
jp $0f47		
rlabel_09_496B:
ld a,($cc1c)		
add $04			
ld c,a			
ld a,($cc1d)		
add $04			
ld b,a			
ld de,$9800		
ld ($ff00+$b3),a	
ld a,$ea		
ld ($ff00+$b0),a	
ld a,$41		
ld ($ff00+$b1),a	
ld a,$0f		
call  rlabel_00_0244 
call  rlabel_00_1B17 
ld a,(hl)		
ei			
or a			
.DB $20 $03 ; < ['$20', '$03'] > < 0x498f > < 9498f 09 498F | 2003: jr nz, $03 >
ld b,$20		
ret			
sub $8a			
ld b,a			
ld hl,$49c1		
ld a,($cc6b)		
add a			
call  rlabel_00_0462 
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,b			
or a			
.DB $28 $17 ; < ['$28', '$17'] > < 0x49a6 > < 949a6 09 49A6 | 2817: jr z, $17 >
dec b			
inc hl			
ld a,(hl)		
cp $20			
.DB $28 $fa ; < ['$28', '$fa'] > < 0x49ad > < 949ad 09 49AD | 28FA: jr z, $FA >
cp $01			
.DB $28 $f6 ; < ['$28', '$f6'] > < 0x49b1 > < 949b1 09 49B1 | 28F6: jr z, $F6 >
cp $5e			
.DB $28 $f2 ; < ['$28', '$f2'] > < 0x49b5 > < 949b5 09 49B5 | 28F2: jr z, $F2 >
cp $5f			
.DB $28 $ee ; < ['$28', '$ee'] > < 0x49b9 > < 949b9 09 49B9 | 28EE: jr z, $EE >
ld a,b			
or a			
.DB $20 $e9 ; < ['$20', '$e9'] > < 0x49bd > < 949bd 09 49BD | 20E9: jr nz, $E9 >
ld b,(hl)		
ret			
.incbin "data/09_49C1.data"
rlabel_09_49C7:
call  rlabel_00_2BA9 
xor a			
ld ($cd7b),a		
ld ($cd7c),a		
ld a,($cc55)		
or a			
.DB $20 $30 ; < ['$20', '$30'] > < 0x49d5 > < 949d5 09 49D5 | 2030: jr nz, $30 >
ld hl,$0603		
ld de,$0c10		
ld c,$01		
call  rlabel_00_1E43 
call  rlabel_09_406B 
ld hl,$4757		
ld de,$4007		
ld bc,$0805		
xor a			
call  rlabel_00_0F47 
ld bc,$5878		
call  rlabel_09_451E 
call  rlabel_00_2BA9 
call  rlabel_09_4078 
xor a			
ld ($cd7b),a		
ld ($cd7c),a		
xor a			
ret			
call  rlabel_00_05AA 
ld hl,$0602		
ld de,$0e11		
ld c,$01		
call  rlabel_00_1E43 
call  rlabel_09_406B 
ld hl,$4ac8		
ld d,$40		
call  rlabel_00_2C5B 
call  rlabel_00_2521 
ld a,$01		
ld ($cc1b),a		
ld a,$40		
ld ($cc1c),a		
ld a,$58		
ld ($cc1d),a		
ld a,$ff		
ld ($cc1e),a		
ld hl,$cc1f		
ld c,$0f		
call  rlabel_00_04E2 
ld a,$01		
ld ($cc2a),a		
ld a,$20		
ld ($cc29),a		
call  rlabel_00_1AE5 
call  rlabel_00_2BA9 
ld hl,$4af9		
call  rlabel_00_2C78 
ld a,($cccd)		
and $02			
jp z,$4a64		
.incbin "data/09_4A5D.data"
ld a,($cccd)		
and $01			
jp z,$4a49		
ld a,($cc1f)		
or a			
push af			
.DB $20 $41 ; < ['$20', '$41'] > < 0x4a71 > < 94a71 09 4A71 | 2041: jr nz, $41 >
ld hl,$cc56		
ld de,$cbf8		
ld b,$09		
ldi a,(hl)		
cp $1a			
.DB $20 $02 ; < ['$20', '$02'] > < 0x4a7e > < 94a7e 09 4A7E | 2002: jr nz, $02 >
ld a,$00		
ld (de),a		
inc de			
dec b			
.DB $20 $f4 ; < ['$20', '$f4'] > < 0x4a85 > < 94a85 09 4A85 | 20F4: jr nz, $F4 >
ld a,($ff00+$04)	
ld ($cc02),a		
ld hl,$a000		
ld de,$cbf8		
ld bc,$000b		
ld a,$03		
call  rlabel_00_1C23 
ld hl,$d2d5		
ld bc,$03c0		
xor a			
call  rlabel_00_04D2 
ld hl,$a00d		
ld de,$d2d5		
ld bc,$03c0		
ld a,$03		
call  rlabel_00_1C23 
.DB $18 $06 ; < ['$18', '$06'] > < 0x4ab2 > < 94ab2 09 4AB2 | 1806: jr $06 >
.incbin "data/09_4AB4.data"
call  rlabel_00_252A 
xor a			
ld ($cd7b),a		
ld ($cd7c),a		
pop af			
xor $01			
ret			
.incbin "data/09_4AC8.data"
rlabel_09_4AFB:
ld a,($cc2b)		
or a			
jp nz,$4c00		
ld a,($cccd)		
and $20			
jp z,$4b7e		
ld b,$10		
call  rlabel_00_2CDF 
ld a,($cc1e)		
or a			
.DB $20 $2f ; < ['$20', '$2f'] > < 0x4b13 > < 94b13 09 4B13 | 202F: jr nz, $2F >
.incbin "data/09_4B15.data"
ld a,($cc1e)		
cp $06			
.DB $28 $0e ; < ['$28', '$0e'] > < 0x4b49 > < 94b49 09 4B49 | 280E: jr z, $0E >
ld a,($cc1e)		
cp $0c			
.DB $28 $07 ; < ['$28', '$07'] > < 0x4b50 > < 94b50 09 4B50 | 2807: jr z, $07 >
ld a,($cc1e)		
cp $0e			
.DB $20 $14 ; < ['$20', '$14'] > < 0x4b57 > < 94b57 09 4B57 | 2014: jr nz, $14 >
ld a,$f0		
ld ($cc2b),a		
ld a,$04		
ld ($cc2c),a		
ld a,($cc1e)		
sub $02			
ld ($cc1e),a		
.DB $18 $11 ; < ['$18', '$11'] > < 0x4b6b > < 94b6b 09 4B6B | 1811: jr $11 >
.incbin "data/09_4B6D.data"
ld a,($cccd)		
and $10			
jp z,$4c00		
ld b,$10		
call  rlabel_00_2CDF 
ld a,($cc1e)		
cp $0e			
.DB $20 $10 ; < ['$20', '$10'] > < 0x4b90 > < 94b90 09 4B90 | 2010: jr nz, $10 >
.incbin "data/09_4B92.data"
ld a,($cc1e)		
cp $0c			
.DB $20 $1d ; < ['$20', '$1d'] > < 0x4ba7 > < 94ba7 09 4BA7 | 201D: jr nz, $1D >
ld a,($cc1f)		
or a			
.DB $28 $17 ; < ['$28', '$17'] > < 0x4bad > < 94bad 09 4BAD | 2817: jr z, $17 >
ld a,($cc1f)		
cp $05			
.DB $28 $10 ; < ['$28', '$10'] > < 0x4bb4 > < 94bb4 09 4BB4 | 2810: jr z, $10 >
.incbin "data/09_4BB6.data"
ld a,($cc1e)		
cp $04			
.DB $28 $0e ; < ['$28', '$0e'] > < 0x4bcb > < 94bcb 09 4BCB | 280E: jr z, $0E >
ld a,($cc1e)		
cp $0a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x4bd2 > < 94bd2 09 4BD2 | 2807: jr z, $07 >
ld a,($cc1e)		
cp $0c			
.DB $20 $14 ; < ['$20', '$14'] > < 0x4bd9 > < 94bd9 09 4BD9 | 2014: jr nz, $14 >
ld a,$10		
ld ($cc2b),a		
ld a,$04		
ld ($cc2c),a		
ld a,($cc1e)		
add $02			
ld ($cc1e),a		
.DB $18 $11 ; < ['$18', '$11'] > < 0x4bed > < 94bed 09 4BED | 1811: jr $11 >
ld a,$08		
ld ($cc2b),a		
ld a,$02		
ld ($cc2c),a		
ld a,($cc1e)		
inc a			
ld ($cc1e),a		
ld a,($cc2b)		
or a			
.DB $28 $29 ; < ['$28', '$29'] > < 0x4c04 > < 94c04 09 4C04 | 2829: jr z, $29 >
ld a,($cc2c)		
ld b,a			
ld a,($cc2b)		
cp $80			
.DB $38 $10 ; < ['$38', '$10'] > < 0x4c0f > < 94c0f 09 4C0F | 3810: jr c, $10 >
ld a,($cc1c)		
sub b			
ld ($cc1c),a		
ld a,($cc2b)		
add b			
ld ($cc2b),a		
.DB $18 $0e ; < ['$18', '$0e'] > < 0x4c1f > < 94c1f 09 4C1F | 180E: jr $0E >
ld a,($cc1c)		
add b			
ld ($cc1c),a		
ld a,($cc2b)		
sub b			
ld ($cc2b),a		
ret			
rlabel_09_4C30:
ld de,$7472		
ld b,$39		
ld hl,$c9c8		
call  rlabel_00_2B09 
ld de,$8000		
ld bc,$0014		
ld hl,$7101		
ld a,$3d		
call  rlabel_00_06FD 
ld de,$80a0		
ld hl,$7071		
ld bc,$043b		
call  rlabel_00_1C05 
ld de,$8140		
ld bc,$0014		
ld hl,$70b1		
ld a,$3b		
call  rlabel_00_06FD 
ret			
.incbin "data/09_4C64.data"
di			
ld a,($ff00+$ff)	
and $00			
ld ($ff00+$9c),a	
ld ($ff00+$ff),a	
ld a,$03		
call  rlabel_00_2836 
ld b,a			
ld a,($cfd3)		
or a			
.DB $28 $09 ; < ['$28', '$09'] > < 0x6071 > < 96071 09 6071 | 2809: jr z, $09 >
ld a,($cfd2)		
cp $01			
.DB $20 $02 ; < ['$20', '$02'] > < 0x6078 > < 96078 09 6078 | 2002: jr nz, $02 >
ld b,$03		
ld hl,$6094		
ld a,b			
add a			
call  rlabel_00_0462 
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld de,$608c		
push de			
jp hl			
di			
ld a,$01		
ld ($ff00+$9c),a	
ld ($ff00+$ff),a	
ret			
.incbin "data/09_6094.data"
call  rlabel_09_6319 
ld hl,$c1a3		
ld de,$2ce9		
call  rlabel_00_0231 
ld hl,$c1a0		
ld de,$2d17		
call  rlabel_00_0231 
ld a,($ff00+$41)	
and $03			
or $08			
ld ($ff00+$41),a	
ld hl,$d5d5		
ld bc,$0120		
ld a,($ff00+$a1)	
call  rlabel_00_04D2 
ld a,$30		
ld ($ff00+$8a),a	
ld c,$04		
ld de,$0000		
call  rlabel_00_1318 
ld a,($ff00+$ff)	
or $03			
ld ($ff00+$9c),a	
ld ($ff00+$ff),a	
call  rlabel_00_1B0E 
ei			
call  rlabel_00_1340 
call  rlabel_00_1AF0 
ld a,($ff00+$8a)	
sub $03			
ld ($ff00+$8a),a	
call  rlabel_09_60F2 
ld a,($cad7)		
or a			
.DB $20 $eb ; < ['$20', '$eb'] > < 0x60ef > < 960ef 09 60EF | 20EB: jr nz, $EB >
ret			
rlabel_09_60F2:
ld hl,$d5d5		
ld de,$6131		
ld a,$90		
push af			
ld a,(de)		
cp $ff			
.DB $20 $0c ; < ['$20', '$0c'] > < 0x60fe > < 960fe 09 60FE | 200C: jr nz, $0C >
push hl			
ld a,$c0		
ld h,d			
ld l,e			
call  rlabel_00_2B62 
ld d,h			
ld e,l			
pop hl			
ld a,(de)		
inc de			
ld b,a			
push de			
bit 7,a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x6111 > < 96111 09 6111 | 2802: jr z, $02 >
cpl			
inc a			
ld d,a			
ld a,($ff00+$8a)	
cp d			
ld e,a			
ld a,$00		
.DB $30 $02 ; < ['$30', '$02'] > < 0x611c > < 9611c 09 611C | 3002: jr nc, $02 >
ld a,d			
sub e			
bit 7,b			
.DB $28 $02 ; < ['$28', '$02'] > < 0x6122 > < 96122 09 6122 | 2802: jr z, $02 >
cpl			
inc a			
ld b,a			
ld a,($ff00+$a1)	
add b			
ldi (hl),a		
pop de			
pop af			
dec a			
.DB $20 $ca ; < ['$20', '$ca'] > < 0x612e > < 9612e 09 612E | 20CA: jr nz, $CA >
ret			
.incbin "data/09_6131.data"
ld hl,$c1a0		
ld de,$2d54		
call  rlabel_00_0231 
ld a,$01		
ld ($ff00+$8c),a	
call  rlabel_09_61AA 
ld a,$02		
ld ($ff00+$8c),a	
call  rlabel_09_61AA 
ld c,$04		
ld de,$0000		
call  rlabel_00_1318 
ld a,($ff00+$ff)	
or $01			
ld ($ff00+$9c),a	
ld ($ff00+$ff),a	
ei			
ld a,$03		
ld ($ff00+$8c),a	
call  rlabel_09_61AA 
ld a,($cad7)		
or a			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x61a5 > < 961a5 09 61A5 | 20FA: jr nz, $FA >
jp $1347		
rlabel_09_61AA:
ld hl,$620d		
ld a,($ff00+$8c)	
call  rlabel_00_0462 
ld a,(hl)		
ld c,a			
ld de,$1000		
ld a,($ff00+$8c)	
srl d			
rr e			
dec a			
.DB $20 $f9 ; < ['$20', '$f9'] > < 0x61be > < 961be 09 61BE | 20F9: jr nz, $F9 >
ld a,($ff00+$8c)	
cp $03			
.DB $20 $04 ; < ['$20', '$04'] > < 0x61c4 > < 961c4 09 61C4 | 2004: jr nz, $04 >
ld a,$04		
ld ($ff00+$8c),a	
ld hl,$8800		
push de			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x61d2 > < 961d2 09 61D2 | 20FA: jr nz, $FA >
ldi a,(hl)		
ld d,a			
ldd a,(hl)		
ld e,a			
ld a,d			
and c			
ld d,a			
ld a,($ff00+$8c)	
ld b,a			
ld a,d			
add a			
dec b			
.DB $20 $fc ; < ['$20', '$fc'] > < 0x61e1 > < 961e1 09 61E1 | 20FC: jr nz, $FC >
ld b,a			
ld a,d			
or b			
ld d,a			
ld a,e			
and c			
ld e,a			
ld a,($ff00+$8c)	
ld b,a			
ld a,e			
add a			
dec b			
.DB $20 $fc ; < ['$20', '$fc'] > < 0x61f0 > < 961f0 09 61F0 | 20FC: jr nz, $FC >
ld b,a			
ld a,e			
or b			
ld e,a			
ld a,($ff00+$8c)	
ld b,a			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x61fd > < 961fd 09 61FD | 20FA: jr nz, $FA >
ld a,d			
ldi (hl),a		
ld a,e			
ldi (hl),a		
dec b			
.DB $20 $f3 ; < ['$20', '$f3'] > < 0x6204 > < 96204 09 6204 | 20F3: jr nz, $F3 >
pop de			
dec de			
ld a,d			
or e			
.DB $20 $c1 ; < ['$20', '$c1'] > < 0x620a > < 9620a 09 620A | 20C1: jr nz, $C1 >
ret			
.incbin "data/09_620D.data"
call  rlabel_09_6319 
ld hl,$c1a3		
ld de,$2ce9		
call  rlabel_00_0231 
ld hl,$c1a0		
ld de,$2d17		
call  rlabel_00_0231 
ld a,($ff00+$41)	
and $03			
or $08			
ld ($ff00+$41),a	
ld hl,$d5d5		
ld bc,$0120		
ld a,($ff00+$a1)	
call  rlabel_00_04D2 
xor a			
ld ($ff00+$8a),a	
ld c,$04		
ld de,$0000		
call  rlabel_00_1318 
ld a,($ff00+$ff)	
or $03			
ld ($ff00+$9c),a	
ld ($ff00+$ff),a	
call  rlabel_00_1B0E 
ei			
ld a,($ff00+$8a)	
cp $14			
call nc,$1340		
call  rlabel_00_1AF0 
ld a,($ff00+$8a)	
inc a			
ld ($ff00+$8a),a	
call  rlabel_09_6269 
ld a,($cad7)		
or a			
.DB $20 $e8 ; < ['$20', '$e8'] > < 0x6266 > < 96266 09 6266 | 20E8: jr nz, $E8 >
ret			
rlabel_09_6269:
ld a,($ff00+$8a)	
add a			
ld d,a			
add a			
ld d,a			
ld hl,$d5d5		
ld b,$49		
ld a,d			
bit 0,b			
.DB $28 $02 ; < ['$28', '$02'] > < 0x6277 > < 96277 09 6277 | 2802: jr z, $02 >
cpl			
inc a			
ld c,a			
ld a,($ff00+$a1)	
add c			
ldi (hl),a		
ld a,d			
or a			
.DB $28 $01 ; < ['$28', '$01'] > < 0x6282 > < 96282 09 6282 | 2801: jr z, $01 >
dec d			
dec b			
.DB $20 $ec ; < ['$20', '$ec'] > < 0x6286 > < 96286 09 6286 | 20EC: jr nz, $EC >
ld d,h			
ld e,l			
dec de			
ld b,$47		
dec de			
ld a,(de)		
ldi (hl),a		
dec b			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x6291 > < 96291 09 6291 | 20FA: jr nz, $FA >
ret			
ld hl,$c1a3		
ld de,$2d00		
call  rlabel_00_0231 
ld hl,$c1a0		
ld de,$2d17		
call  rlabel_00_0231 
ld a,($ff00+$41)	
and $03			
or $08			
ld ($ff00+$41),a	
ld hl,$d5d5		
ld c,$90		
ld a,($ff00+$a0)	
call  rlabel_00_04E3 
xor a			
ld ($ff00+$8a),a	
ld c,$04		
ld de,$7fff		
call  rlabel_00_1318 
ld a,($ff00+$ff)	
or $03			
ld ($ff00+$9c),a	
ld ($ff00+$ff),a	
call  rlabel_00_1B0E 
ei			
ld a,($ff00+$8a)	
cp $14			
call nc,$1340		
call  rlabel_00_1AF0 
ld a,($ff00+$8a)	
add $02			
ld ($ff00+$8a),a	
call  rlabel_09_62E9 
ld a,($cad7)		
or a			
.DB $20 $e7 ; < ['$20', '$e7'] > < 0x62e6 > < 962e6 09 62E6 | 20E7: jr nz, $E7 >
ret			
rlabel_09_62E9:
ld a,($ff00+$8a)	
ld b,a			
ld a,($ff00+$a0)	
ld d,a			
ld e,$00		
ld hl,$d5d5		
ld c,$00		
ld a,$48		
sub c			
cp b			
.DB $20 $03 ; < ['$20', '$03'] > < 0x62fa > < 962fa 09 62FA | 2003: jr nz, $03 >
ld e,c			
.DB $18 $0b ; < ['$18', '$0b'] > < 0x62fd > < 962fd 09 62FD | 180B: jr $0B >
bit 7,a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x6301 > < 96301 09 6301 | 2802: jr z, $02 >
cpl			
inc a			
cp b			
.DB $20 $02 ; < ['$20', '$02'] > < 0x6306 > < 96306 09 6306 | 2002: jr nz, $02 >
ld e,$00		
ld a,e			
or a			
ld a,d			
.DB $28 $02 ; < ['$28', '$02'] > < 0x630d > < 9630d 09 630D | 2802: jr z, $02 >
add e			
sub c			
ldi (hl),a		
inc c			
ld a,c			
cp $90			
.DB $20 $de ; < ['$20', '$de'] > < 0x6316 > < 96316 09 6316 | 20DE: jr nz, $DE >
ret			
rlabel_09_6319:
ld c,$14		
ld b,$12		
call  rlabel_00_2F5C 
ld c,$20		
ld b,$0c		
push hl			
xor a			
ld ($ff00+$4f),a	
call  rlabel_00_1B17 
ld (hl),a		
ei			
ld a,($cbf2)		
or a			
jp z,$633f		
ld a,$01		
ld ($ff00+$4f),a	
call  rlabel_00_1B17 
ld a,$07		
ld (hl),a		
ei			
call  rlabel_00_2F86 
dec b			
.DB $20 $e0 ; < ['$20', '$e0'] > < 0x6343 > < 96343 09 6343 | 20E0: jr nz, $E0 >
pop hl			
call  rlabel_00_2FAE 
dec c			
.DB $20 $d6 ; < ['$20', '$d6'] > < 0x634a > < 9634a 09 634A | 20D6: jr nz, $D6 >
xor a			
ld ($ff00+$4f),a	
ret			
.incbin "data/09_6350.data"
