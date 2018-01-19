.BANK $05 SLOT 1
.ORG 0
.incbin "data/05_4000.data"
rlabel_05_402B:
ld b,$40		
cp $05			
.DB $38 $05 ; < ['$38', '$05'] > < 0x402f > < 5402f 05 402F | 3805: jr c, $05 >
sub $05			
inc b			
.DB $18 $f7 ; < ['$18', '$f7'] > < 0x4034 > < 54034 05 4034 | 18F7: jr $F7 >
ld hl,$4001		
ld de,$0c40		
and a			
.DB $28 $04 ; < ['$28', '$04'] > < 0x403d > < 5403d 05 403D | 2804: jr z, $04 >
add hl,de		
dec a			
.DB $18 $f9 ; < ['$18', '$f9'] > < 0x4041 > < 54041 05 4041 | 18F9: jr $F9 >
ld a,b			
ret			
rlabel_05_4045:
ld b,$56		
cp $10			
.DB $38 $05 ; < ['$38', '$05'] > < 0x4049 > < 54049 05 4049 | 3805: jr c, $05 >
sub $10			
inc b			
.DB $18 $f7 ; < ['$18', '$f7'] > < 0x404e > < 5404e 05 404E | 18F7: jr $F7 >
ld hl,$4000		
ld de,$0400		
and a			
.DB $28 $04 ; < ['$28', '$04'] > < 0x4057 > < 54057 05 4057 | 2804: jr z, $04 >
add hl,de		
dec a			
.DB $18 $f9 ; < ['$18', '$f9'] > < 0x405b > < 5405b 05 405B | 18F9: jr $F9 >
ld a,b			
ret			
call  rlabel_05_4829 
push de			
call  rlabel_05_49DF 
pop de			
ld a,($c351)		
ld ($c353),a		
ld a,($c352)		
ld ($c354),a		
ld a,e			
ld ($c351),a		
ld a,d			
ld ($c352),a		
call  rlabel_00_0AA7 
ld a,($c358)		
ld ($c359),a		
ld a,($db35)		
ld ($c358),a		
ld a,($c35b)		
ld ($c35c),a		
ld a,($db85)		
ld ($c35b),a		
call  rlabel_05_4121 
ld a,$ff		
ld ($c35a),a		
ld b,$02		
ld hl,$455d		
rst $28			
ld a,($c96d)		
ld ($c96e),a		
ld a,($d85c)		
ld ($c96d),a		
ld a,($c96e)		
ld b,a			
ld a,($c96d)		
cp b			
.DB $28 $03 ; < ['$28', '$03'] > < 0x40b8 > < 540b8 05 40B8 | 2803: jr z, $03 >
call  rlabel_05_40ED 
call  rlabel_05_417B 
call  rlabel_05_4838 
ld a,($c353)		
ld b,a			
ld a,($c351)		
cp b			
.DB $20 $0b ; < ['$20', '$0b'] > < 0x40cb > < 540cb 05 40CB | 200B: jr nz, $0B >
ld a,($c354)		
ld b,a			
ld a,($c352)		
cp b			
.DB $20 $01 ; < ['$20', '$01'] > < 0x40d5 > < 540d5 05 40D5 | 2001: jr nz, $01 >
ret			
call  rlabel_05_64D6 
ld hl,$c35d		
ld a,(hl)		
add $01			
ldi (hl),a		
ret nc			
.incbin "data/05_40E3.data"
rlabel_05_40ED:
ld a,($c96d)		
call  rlabel_05_402B 
push af			
ld de,$8c00		
ld bc,$0c00		
call  rlabel_00_0D83 
pop af			
ld de,$c988		
ld bc,$0030		
call  rlabel_00_0D50 
ld hl,$4001		
ld de,$9000		
ld b,$3d		
call  rlabel_00_06DD 
ld hl,$4a19		
ld de,$8bc0		
ld bc,$0008		
ld a,$05		
call  rlabel_00_06FD 
ret			
rlabel_05_4121:
ld a,($c359)		
ld b,a			
ld a,($c358)		
cp b			
ret z			
ld hl,$c565		
ld bc,$0400		
xor a			
ldi (hl),a		
dec bc			
ld a,b			
or c			
.DB $20 $f9 ; < ['$20', '$f9'] > < 0x4135 > < 54135 05 4135 | 20F9: jr nz, $F9 >
ld a,($c358)		
call  rlabel_05_4045 
ld de,$c565		
ld bc,$0400		
ld ($ff00+$b3),a	
ld a,$59		
ld ($ff00+$b0),a	
ld a,$0a		
ld ($ff00+$b1),a	
ld a,$00		
call  rlabel_00_0244 
call  rlabel_00_0D50 
ld hl,$c565		
inc hl			
inc hl			
xor a			
push af			
ld a,(hl)		
and $4f			
cp $07			
.DB $20 $0a ; < ['$20', '$0a'] > < 0x4161 > < 54161 05 4161 | 200A: jr nz, $0A >
call  rlabel_00_0F09 
cp $40			
.DB $38 $03 ; < ['$38', '$03'] > < 0x4168 > < 54168 05 4168 | 3803: jr c, $03 >
ld a,(hl)		
xor a			
ld (hl),a		
ld a,$08		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4171 > < 54171 05 4171 | 3001: jr nc, $01 >
inc h			
pop af			
inc a			
cp $80			
.DB $38 $e1 ; < ['$38', '$e1'] > < 0x4178 > < 54178 05 4178 | 38E1: jr c, $E1 >
ret			
rlabel_05_417B:
ld hl,$d6f5		
ld b,$12		
ld c,$14		
xor a			
ldi (hl),a		
dec c			
.DB $20 $fb ; < ['$20', '$fb'] > < 0x4185 > < 54185 05 4185 | 20FB: jr nz, $FB >
dec b			
.DB $20 $f6 ; < ['$20', '$f6'] > < 0x4188 > < 54188 05 4188 | 20F6: jr nz, $F6 >
ld hl,$c351		
ldi a,(hl)		
ld d,(hl)		
ld e,a			
xor a			
push af			
ld c,a			
call  rlabel_05_43C3 
ld a,($c96f)		
cp e			
.DB $20 $35 ; < ['$20', '$35'] > < 0x419a > < 5419a 05 419A | 2035: jr nz, $35 >
ld a,($c970)		
cp d			
.DB $20 $2f ; < ['$20', '$2f'] > < 0x41a0 > < 541a0 05 41A0 | 202F: jr nz, $2F >
ld a,($c975)		
and a			
.DB $28 $29 ; < ['$28', '$29'] > < 0x41a6 > < 541a6 05 41A6 | 2829: jr z, $29 >
ld a,($c975)		
and $4f			
cp $05			
.DB $28 $06 ; < ['$28', '$06'] > < 0x41af > < 541af 05 41AF | 2806: jr z, $06 >
cp $04			
.DB $28 $02 ; < ['$28', '$02'] > < 0x41b3 > < 541b3 05 41B3 | 2802: jr z, $02 >
.DB $18 $0a ; < ['$18', '$0a'] > < 0x41b5 > < 541b5 05 41B5 | 180A: jr $0A >
push de			
ld b,$02		
ld hl,$7092		
rst $28			
pop de			
.DB $18 $10 ; < ['$18', '$10'] > < 0x41bf > < 541bf 05 41BF | 1810: jr $10 >
ld a,($c978)		
and $80			
.DB $20 $09 ; < ['$20', '$09'] > < 0x41c6 > < 541c6 05 41C6 | 2009: jr nz, $09 >
push de			
ld a,($c97a)		
ld c,a			
call  rlabel_05_41D8 
pop de			
pop af			
inc a			
cp $80			
.DB $38 $ba ; < ['$38', '$ba'] > < 0x41d5 > < 541d5 05 41D5 | 38BA: jr c, $BA >
ret			
rlabel_05_41D8:
call  rlabel_05_43C3 
xor a			
ld b,a			
xor a			
ld c,a			
ld a,($c971)		
add b			
ld h,$00		
ld l,a			
add hl,hl		
add hl,hl		
ld e,l			
ld d,h			
add hl,hl		
add hl,hl		
add hl,de		
ld a,($c972)		
add c			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x41f3 > < 541f3 05 41F3 | 3001: jr nc, $01 >
inc h			
ld de,$d6f5		
add hl,de		
ld a,($c97a)		
ld (hl),a		
ld a,($c974)		
ld e,a			
inc c			
ld a,c			
cp e			
.DB $20 $d8 ; < ['$20', '$d8'] > < 0x4205 > < 54205 05 4205 | 20D8: jr nz, $D8 >
ld a,($c973)		
ld d,a			
inc b			
ld a,b			
cp d			
.DB $20 $cd ; < ['$20', '$cd'] > < 0x420e > < 5420e 05 420E | 20CD: jr nz, $CD >
ld hl,$c565		
ld de,$0008		
ld a,($c97a)		
add hl,de		
dec a			
.DB $20 $fc ; < ['$20', '$fc'] > < 0x421b > < 5421b 05 421B | 20FC: jr nz, $FC >
inc hl			
inc hl			
ld a,$80		
xor $ff			
ld b,a			
ld a,(hl)		
and b			
ld (hl),a		
ld a,($c97a)		
ld c,a			
call  rlabel_05_428F 
ret			
rlabel_05_422F:
call  rlabel_05_43C3 
xor a			
ld b,a			
xor a			
ld c,a			
ld a,($c971)		
add b			
ld h,$00		
ld l,a			
add hl,hl		
add hl,hl		
ld e,l			
ld d,h			
add hl,hl		
add hl,hl		
add hl,de		
ld a,($c972)		
add c			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x424a > < 5424a 05 424A | 3001: jr nc, $01 >
inc h			
ld de,$d6f5		
add hl,de		
xor a			
ld (hl),a		
ld a,($c974)		
ld e,a			
inc c			
ld a,c			
cp e			
.DB $20 $da ; < ['$20', '$da'] > < 0x425a > < 5425a 05 425A | 20DA: jr nz, $DA >
ld a,($c973)		
ld d,a			
inc b			
ld a,b			
cp d			
.DB $20 $cf ; < ['$20', '$cf'] > < 0x4263 > < 54263 05 4263 | 20CF: jr nz, $CF >
ld hl,$c565		
ld de,$0008		
ld a,($c97a)		
add hl,de		
dec a			
.DB $20 $fc ; < ['$20', '$fc'] > < 0x4270 > < 54270 05 4270 | 20FC: jr nz, $FC >
inc hl			
inc hl			
ld a,(hl)		
or $80			
ld (hl),a		
ld a,($c975)		
cp $0b			
ret z			
cp $0c			
ret z			
cp $0d			
ret z			
cp $0e			
ret z			
ld a,($c97a)		
ld c,a			
call  rlabel_05_4374 
ret			
rlabel_05_428F:
call  rlabel_05_43C3 
ld a,($c975)		
and $4f			
cp $0b			
ret z			
cp $0c			
ret z			
cp $0d			
ret z			
cp $0e			
ret z			
xor a			
ld b,a			
xor a			
ld c,a			
push bc			
ld a,($c971)		
add b			
ld l,a			
ld h,$00		
add hl,hl		
add hl,hl		
ld e,l			
ld d,h			
add hl,hl		
add hl,hl		
add hl,de		
ld a,($c972)		
add c			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x42bc > < 542bc 05 42BC | 3001: jr nc, $01 >
inc h			
ld e,l			
ld d,h			
ld a,($c975)		
and $40			
.DB $28 $11 ; < ['$28', '$11'] > < 0x42c6 > < 542c6 05 42C6 | 2811: jr z, $11 >
ld a,($c975)		
and $08			
.DB $28 $0a ; < ['$28', '$0a'] > < 0x42cd > < 542cd 05 42CD | 280A: jr z, $0A >
.incbin "data/05_42CF.data"
push de			
ld d,b			
ld a,($c974)		
ld e,a			
call  rlabel_00_03F7 
ld a,($c976)		
add e			
pop de			
add c			
ld ($ff00+$91),a	
ld a,($c975)		
and $4f			
cp $02			
.DB $20 $2a ; < ['$20', '$2a'] > < 0x42f1 > < 542f1 05 42F1 | 202A: jr nz, $2A >
push de			
push bc			
ld a,($c979)		
and $0f			
add $04			
ld d,a			
ld a,($c97c)		
ld e,a			
ld b,$0e		
ld hl,$4315		
rst $28			
ld a,c			
and a			
.DB $28 $10 ; < ['$28', '$10'] > < 0x4309 > < 54309 05 4309 | 2810: jr z, $10 >
ld a,($c974)		
ld d,a			
ld a,($c973)		
ld e,a			
call  rlabel_00_03F7 
ld a,($ff00+$91)	
add e			
ld ($ff00+$91),a	
pop bc			
pop de			
ld a,($ff00+$91)	
ld hl,$d85d		
add hl,de		
ld (hl),a		
ld a,($c975)		
and $4f			
cp $06			
.DB $28 $13 ; < ['$28', '$13'] > < 0x432b > < 5432b 05 432B | 2813: jr z, $13 >
cp $07			
.DB $28 $1a ; < ['$28', '$1a'] > < 0x432f > < 5432f 05 432F | 281A: jr z, $1A >
cp $09			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x4333 > < 54333 05 4333 | 280B: jr z, $0B >
ld a,($c977)		
swap a			
or $0f			
swap a			
.DB $18 $14 ; < ['$18', '$14'] > < 0x433e > < 5433e 05 433E | 1814: jr $14 >
.incbin "data/05_4340.data"
ld hl,$d9c5		
add hl,de		
ld b,a			
ld a,(hl)		
and $08			
or b			
ld (hl),a		
pop bc			
ld a,($c974)		
ld e,a			
inc c			
ld a,c			
cp e			
jp c,$42a7		
ld a,($c973)		
ld d,a			
inc b			
ld a,b			
cp d			
jp c,$42a5		
ret			
rlabel_05_4374:
call  rlabel_05_43C3 
ld a,($c972)		
ld e,a			
ld a,($c971)		
ld d,a			
call  rlabel_00_2F1C 
ld hl,$fa78		
add hl,de		
ld a,($c974)		
ld b,a			
ld a,$14		
sub b			
ld ($d5d5),a		
ld a,$02		
push af			
push de			
push hl			
ld a,($c973)		
ld b,a			
ld a,($c974)		
ld c,a			
ldi a,(hl)		
ld (de),a		
inc de			
dec c			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x43a1 > < 543a1 05 43A1 | 20FA: jr nz, $FA >
ld a,($d5d5)		
add e			
ld e,a			
ld a,c			
adc d			
ld d,a			
ld hl,$fa78		
add hl,de		
dec b			
.DB $20 $e7 ; < ['$20', '$e7'] > < 0x43b0 > < 543b0 05 43B0 | 20E7: jr nz, $E7 >
pop hl			
pop de			
ld hl,$0168		
add hl,de		
ld e,l			
ld d,h			
ld hl,$fa78		
add hl,de		
pop af			
dec a			
.DB $20 $d0 ; < ['$20', '$d0'] > < 0x43c0 > < 543c0 05 43C0 | 20D0: jr nz, $D0 >
ret			
rlabel_05_43C3:
ld a,c			
ld ($c97a),a		
ld l,a			
xor a			
ld h,a			
add hl,hl		
add hl,hl		
add hl,hl		
ld bc,$c565		
add hl,bc		
ldi a,(hl)		
ld ($c96f),a		
ld a,(hl)		
and $07			
ld ($c970),a		
ldi a,(hl)		
srl a			
srl a			
srl a			
ld ($c97b),a		
ld a,(hl)		
and $80			
ld ($c978),a		
ldi a,(hl)		
and $7f			
ld ($c975),a		
ld a,(hl)		
and $0f			
ld ($c979),a		
ldi a,(hl)		
swap a			
and $07			
ld ($c977),a		
ldi a,(hl)		
ld ($c97c),a		
ld a,($c975)		
and $4f			
cp $04			
.DB $28 $26 ; < ['$28', '$26'] > < 0x440a > < 5440a 05 440A | 2826: jr z, $26 >
cp $05			
.DB $28 $22 ; < ['$28', '$22'] > < 0x440e > < 5440e 05 440E | 2822: jr z, $22 >
ld a,(hl)		
swap a			
srl a			
and $07			
ld ($c974),a		
ldi a,(hl)		
and $1f			
ld ($c972),a		
ld a,(hl)		
swap a			
srl a			
and $07			
ld ($c973),a		
ldi a,(hl)		
and $1f			
ld ($c971),a		
.DB $18 $08 ; < ['$18', '$08'] > < 0x4430 > < 54430 05 4430 | 1808: jr $08 >
ldi a,(hl)		
ld ($c972),a		
ldi a,(hl)		
ld ($c971),a		
ldi a,(hl)		
ld ($c976),a		
ret			
.incbin "data/05_443F.data"
call  rlabel_05_422F 
ld a,($c971)		
ld b,a			
ld a,($c972)		
ld c,a			
ld a,($c973)		
ld d,a			
ld a,($c974)		
ld e,a			
call  rlabel_05_4489 
ret			
xor a			
ld b,a			
xor a			
ld c,a			
push bc			
call  rlabel_05_46CC 
pop bc			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
ld a,c			
cp $14			
.DB $38 $ef ; < ['$38', '$ef'] > < 0x4480 > < 54480 05 4480 | 38EF: jr c, $EF >
inc b			
ld a,b			
cp $12			
.DB $38 $e7 ; < ['$38', '$e7'] > < 0x4486 > < 54486 05 4486 | 38E7: jr c, $E7 >
ret			
rlabel_05_4489:
ld a,b			
ld ($cb76),a		
ld a,c			
ld ($cb77),a		
ld a,d			
ld ($cb78),a		
ld a,e			
ld ($cb79),a		
xor a			
ld b,a			
xor a			
ld c,a			
push bc			
ld a,($cb76)		
add b			
ld b,a			
ld a,($cb77)		
add c			
ld c,a			
push bc			
call  rlabel_05_46CC 
pop bc			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
pop bc			
ld a,($cb79)		
ld e,a			
inc c			
ld a,c			
cp e			
.DB $38 $e0 ; < ['$38', '$e0'] > < 0x44bb > < 544bb 05 44BB | 38E0: jr c, $E0 >
ld a,($cb78)		
ld d,a			
inc b			
ld a,b			
cp d			
.DB $38 $d5 ; < ['$38', '$d5'] > < 0x44c4 > < 544c4 05 44C4 | 38D5: jr c, $D5 >
ret			
ld a,c			
ld ($c981),a		
cp $01			
.DB $20 $12 ; < ['$20', '$12'] > < 0x44cd > < 544cd 05 44CD | 2012: jr nz, $12 >
ld hl,$db2d		
ldi a,(hl)		
ld d,(hl)		
ld e,a			
ld a,$90		
ld ($c980),a		
ld a,$11		
ld ($c984),a		
.DB $18 $47 ; < ['$18', '$47'] > < 0x44df > < 544df 05 44DF | 1847: jr $47 >
cp $02			
.DB $20 $17 ; < ['$20', '$17'] > < 0x44e3 > < 544e3 05 44E3 | 2017: jr nz, $17 >
ld hl,$db31		
ldi a,(hl)		
ld d,(hl)		
ld e,a			
ld a,$90		
ld ($c980),a		
ld a,$00		
ld ($c984),a		
ld a,$04		
ld ($c986),a		
.DB $18 $2c ; < ['$18', '$2c'] > < 0x44fa > < 544fa 05 44FA | 182C: jr $2C >
cp $03			
.DB $20 $12 ; < ['$20', '$12'] > < 0x44fe > < 544fe 05 44FE | 2012: jr nz, $12 >
ld hl,$db33		
ldi a,(hl)		
ld d,(hl)		
ld e,a			
ld a,$a0		
ld ($c980),a		
ld a,$13		
ld ($c985),a		
.DB $18 $16 ; < ['$18', '$16'] > < 0x4510 > < 54510 05 4510 | 1816: jr $16 >
cp $04			
.DB $20 $12 ; < ['$20', '$12'] > < 0x4514 > < 54514 05 4514 | 2012: jr nz, $12 >
ld hl,$db2f		
ldi a,(hl)		
ld d,(hl)		
ld e,a			
ld a,$a0		
ld ($c980),a		
ld a,$00		
ld ($c985),a		
.DB $18 $00 ; < ['$18', '$00'] > < 0x4526 > < 54526 05 4526 | 1800: jr , $00 >
ld a,d			
cp $ff			
.DB $20 $03 ; < ['$20', '$03'] > < 0x452b > < 5452b 05 452B | 2003: jr nz, $03 >
ld c,$00		
ret			
push de			
call  rlabel_05_49DF 
pop de			
ld a,d			
cp $80			
.DB $38 $09 ; < ['$38', '$09'] > < 0x4538 > < 54538 05 4538 | 3809: jr c, $09 >
.incbin "data/05_453A.data"
push de			
call  rlabel_00_0B02 
call  rlabel_00_0603 
pop de			
ld a,($c96d)		
cp b			
.DB $20 $0d ; < ['$20', '$0d'] > < 0x454f > < 5454f 05 454F | 200D: jr nz, $0D >
ld a,$04		
ld ($c986),a		
ld a,$01		
ld ($c97f),a		
ld c,$01		
ret			
ld c,$02		
ret			
ld a,($c97f)		
and a			
ret z			
ld a,($c981)		
cp $01			
.DB $20 $09 ; < ['$20', '$09'] > < 0x456b > < 5456b 05 456B | 2009: jr nz, $09 >
call  rlabel_05_45B7 
ld a,($ff00+$a0)	
sub $04			
ld ($ff00+$a0),a	
ld a,($c981)		
cp $02			
.DB $20 $09 ; < ['$20', '$09'] > < 0x457b > < 5457b 05 457B | 2009: jr nz, $09 >
call  rlabel_05_45F7 
ld a,($ff00+$a0)	
add $04			
ld ($ff00+$a0),a	
ld a,($c981)		
cp $03			
.DB $20 $09 ; < ['$20', '$09'] > < 0x458b > < 5458b 05 458B | 2009: jr nz, $09 >
.incbin "data/05_458D.data"
ld a,($c981)		
cp $04			
.DB $20 $09 ; < ['$20', '$09'] > < 0x459b > < 5459b 05 459B | 2009: jr nz, $09 >
call  rlabel_05_4677 
ld a,($ff00+$a1)	
add $04			
ld ($ff00+$a1),a	
ld a,($c986)		
ld b,a			
ld a,($c980)		
sub b			
ld ($c980),a		
ret nz			
xor a			
ld ($c97f),a		
ret			
rlabel_05_45B7:
ld a,($c980)		
and $07			
ret nz			
xor a			
ld ($c985),a		
ld a,$ff		
ld ($c982),a		
xor a			
ld ($c983),a		
ld b,$14		
push bc			
ld a,($c984)		
ld b,a			
ld a,($c985)		
ld c,a			
call  rlabel_05_46CC 
ld a,($c982)		
ld b,a			
ld a,($c983)		
ld c,a			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
ld hl,$c985		
inc (hl)		
ld hl,$c983		
inc (hl)		
pop bc			
dec b			
.DB $20 $da ; < ['$20', '$da'] > < 0x45f0 > < 545f0 05 45F0 | 20DA: jr nz, $DA >
ld hl,$c984		
dec (hl)		
ret			
rlabel_05_45F7:
ld a,($c980)		
and $07			
ret nz			
xor a			
ld ($c985),a		
ld a,$12		
ld ($c982),a		
xor a			
ld ($c983),a		
ld b,$14		
push bc			
ld a,($c984)		
ld b,a			
ld a,($c985)		
ld c,a			
call  rlabel_05_46CC 
ld a,($c982)		
ld b,a			
ld a,($c983)		
ld c,a			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
ld hl,$c985		
inc (hl)		
ld hl,$c983		
inc (hl)		
pop bc			
dec b			
.DB $20 $da ; < ['$20', '$da'] > < 0x4630 > < 54630 05 4630 | 20DA: jr nz, $DA >
ld hl,$c984		
inc (hl)		
ret			
.incbin "data/05_4637.data"
rlabel_05_4677:
ld a,($c980)		
and $07			
ret nz			
xor a			
ld ($c984),a		
xor a			
ld ($c982),a		
ld a,$14		
ld ($c983),a		
ld b,$12		
push bc			
ld a,($c984)		
ld b,a			
ld a,($c985)		
ld c,a			
call  rlabel_05_46CC 
ld a,($c982)		
ld b,a			
ld a,($c983)		
ld c,a			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
ld hl,$c984		
inc (hl)		
ld hl,$c982		
inc (hl)		
pop bc			
dec b			
.DB $20 $da ; < ['$20', '$da'] > < 0x46b0 > < 546b0 05 46B0 | 20DA: jr nz, $DA >
ld hl,$c985		
inc (hl)		
ret			
.incbin "data/05_46B7.data"
rlabel_05_46CC:
ld h,$00		
ld l,b			
add hl,hl		
add hl,hl		
ld e,l			
ld d,h			
add hl,hl		
add hl,hl		
add hl,de		
ld a,l			
add c			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x46d9 > < 546d9 05 46D9 | 3001: jr nc, $01 >
inc h			
ld c,l			
ld b,h			
ld hl,$d85d		
add hl,bc		
ld d,(hl)		
ld hl,$d9c5		
add hl,bc		
ld e,(hl)		
ret			
.incbin "data/05_46E9.data"
ld a,($c987)		
and a			
ret z			
ld hl,$db8d		
xor a			
push af			
ldi a,(hl)		
and a			
.DB $28 $30 ; < ['$28', '$30'] > < 0x4780 > < 54780 05 4780 | 2830: jr z, $30 >
ldi a,(hl)		
ld b,a			
ld a,(hl)		
inc a			
ld (hl),a		
cp b			
.DB $38 $29 ; < ['$38', '$29'] > < 0x4788 > < 54788 05 4788 | 3829: jr c, $29 >
xor a			
ldi (hl),a		
ldi a,(hl)		
ld d,a			
ldi a,(hl)		
ld e,a			
cp d			
.DB $38 $0a ; < ['$38', '$0a'] > < 0x4791 > < 54791 05 4791 | 380A: jr c, $0A >
ld a,(hl)		
cp e			
.DB $20 $03 ; < ['$20', '$03'] > < 0x4795 > < 54795 05 4795 | 2003: jr nz, $03 >
ld a,d			
.DB $18 $0b ; < ['$18', '$0b'] > < 0x4798 > < 54798 05 4798 | 180B: jr $0B >
inc a			
.DB $18 $08 ; < ['$18', '$08'] > < 0x479b > < 5479b 05 479B | 1808: jr $08 >
.incbin "data/05_479D.data"
ldi (hl),a		
ld d,a			
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld b,a			
ld a,b			
cp $20			
.DB $30 $10 ; < ['$30', '$10'] > < 0x47ae > < 547ae 05 47AE | 3010: jr nc, $10 >
.DB $18 $2b ; < ['$18', '$2b'] > < 0x47b0 > < 547b0 05 47B0 | 182B: jr $2B >
inc hl			
inc hl			
inc hl			
inc hl			
inc hl			
inc hl			
inc hl			
pop af			
inc a			
cp $10			
.DB $38 $be ; < ['$38', '$be'] > < 0x47bd > < 547bd 05 47BD | 38BE: jr c, $BE >
ret			
push hl			
push bc			
ld a,d			
xor $80			
swap a			
ld l,a			
and $0f			
ld h,a			
ld a,l			
and $f0			
ld l,a			
ld bc,$8800		
add hl,bc		
pop de			
call  rlabel_00_0654 
call  rlabel_00_0658 
pop hl			
.DB $18 $dc ; < ['$18', '$dc'] > < 0x47db > < 547db 05 47DB | 18DC: jr $DC >
push hl			
push bc			
ld a,b			
swap a			
ld l,a			
and $0f			
ld h,a			
ld a,l			
and $f0			
ld l,a			
ld a,b			
add a			
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x47ef > < 547ef 05 47EF | 3001: jr nc, $01 >
inc h			
ld a,c			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x47f5 > < 547f5 05 47F5 | 3001: jr nc, $01 >
.incbin "data/05_47F7.data"
ld bc,$d85d		
add hl,bc		
pop bc			
ld a,($c97f)		
and a			
.DB $20 $23 ; < ['$20', '$23'] > < 0x4801 > < 54801 05 4801 | 2023: jr nz, $23 >
ld a,($cdad)		
and a			
.DB $28 $12 ; < ['$28', '$12'] > < 0x4807 > < 54807 05 4807 | 2812: jr z, $12 >
.incbin "data/05_4809.data"
ld (hl),d		
call  rlabel_00_0CF4 
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x4823 > < 54823 05 4823 | 20FA: jr nz, $FA >
ld (hl),d		
pop hl			
.DB $18 $90 ; < ['$18', '$90'] > < 0x4827 > < 54827 05 4827 | 1890: jr $90 >
rlabel_05_4829:
ld hl,$db8d		
ld b,$80		
xor a			
ldi (hl),a		
dec b			
.DB $20 $fb ; < ['$20', '$fb'] > < 0x4831 > < 54831 05 4831 | 20FB: jr nz, $FB >
xor a			
ld ($c987),a		
ret			
rlabel_05_4838:
ld a,($c353)		
ld b,a			
ld a,($c351)		
cp b			
.DB $20 $0b ; < ['$20', '$0b'] > < 0x4840 > < 54840 05 4840 | 200B: jr nz, $0B >
ld a,($c354)		
ld b,a			
ld a,($c352)		
cp b			
.DB $20 $01 ; < ['$20', '$01'] > < 0x484a > < 5484a 05 484A | 2001: jr nz, $01 >
ret			
ld a,($c35a)		
cp $fe			
ret z			
cp $fc			
.DB $28 $1b ; < ['$28', '$1b'] > < 0x4855 > < 54855 05 4855 | 281B: jr z, $1B >
cp $ff			
.DB $28 $06 ; < ['$28', '$06'] > < 0x4859 > < 54859 05 4859 | 2806: jr z, $06 >
.incbin "data/05_485B.data"
ld a,($c359)		
ld b,a			
ld a,($c358)		
cp b			
ret z			
ld a,($c97f)		
and a			
ret nz			
call  rlabel_05_49F8 
ld a,$01		
ld de,$c9c0		
call  rlabel_00_0E10 
ld a,$60		
ld ($c97d),a		
ld a,$11		
ld ($c97e),a		
xor a			
call  rlabel_00_0815 
ld b,$00		
call  rlabel_00_0832 
cp $70			
.DB $38 $04 ; < ['$38', '$04'] > < 0x488f > < 5488f 05 488F | 3804: jr c, $04 >
xor a			
ld ($c97e),a		
ld hl,$48fa		
ld de,$8a00		
ld bc,$0010		
ld a,$05		
call  rlabel_00_0D83 
ld de,$8a10		
ld h,d			
ld l,e			
ld b,$90		
ld d,$ff		
call  rlabel_00_0D25 
inc hl			
ld d,$ff		
call  rlabel_00_0D25 
inc hl			
dec b			
.DB $20 $f1 ; < ['$20', '$f1'] > < 0x48b7 > < 548b7 05 48B7 | 20F1: jr nz, $F1 >
ld hl,$490a		
ld de,$8b30		
ld bc,$0010		
ld a,$05		
call  rlabel_00_0D83 
ld hl,$cafe		
ld d,$a1		
call  rlabel_00_10CD 
ld de,$8a10		
ld h,d			
ld l,e			
ld b,$12		
ld c,$08		
ld a,c			
cp $08			
.DB $20 $09 ; < ['$20', '$09'] > < 0x48db > < 548db 05 48DB | 2009: jr nz, $09 >
inc hl			
ld d,$00		
call  rlabel_00_0D25 
dec hl			
.DB $18 $0b ; < ['$18', '$0b'] > < 0x48e4 > < 548e4 05 48E4 | 180B: jr $0B >
cp $01			
.DB $28 $07 ; < ['$28', '$07'] > < 0x48e8 > < 548e8 05 48E8 | 2807: jr z, $07 >
ld d,$00		
call  rlabel_00_0D25 
.DB $18 $00 ; < ['$18', '$00'] > < 0x48ef > < 548ef 05 48EF | 1800: jr , $00 >
inc hl			
inc hl			
dec c			
.DB $20 $e2 ; < ['$20', '$e2'] > < 0x48f4 > < 548f4 05 48F4 | 20E2: jr nz, $E2 >
dec b			
.DB $20 $dd ; < ['$20', '$dd'] > < 0x48f7 > < 548f7 05 48F7 | 20DD: jr nz, $DD >
ret			
.incbin "data/05_48FA.data"
ld a,($cdad)		
and a			
.DB $20 $0c ; < ['$20', '$0c'] > < 0x4920 > < 54920 05 4920 | 200C: jr nz, $0C >
call  rlabel_05_4932 
ld a,($c97d)		
dec a			
ld ($c97d),a		
and a			
ret nz			
call  rlabel_05_49DF 
ret			
rlabel_05_4932:
ld a,($c97d)		
cp $60			
.DB $38 $1a ; < ['$38', '$1a'] > < 0x4937 > < 54937 05 4937 | 381A: jr c, $1A >
ld a,($c97e)		
ld b,a			
ld c,$09		
ld d,$a0		
ld e,$07		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
ld d,$b3		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
ret			
cp $57			
.DB $38 $34 ; < ['$38', '$34'] > < 0x4955 > < 54955 05 4955 | 3834: jr c, $34 >
ld c,a			
ld a,($c97e)		
ld b,a			
push bc			
ld a,c			
sub $57			
ld c,a			
ld d,$a0		
ld e,$07		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
ld d,$b2		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
pop bc			
ld a,$69		
sub c			
ld c,a			
ld d,$b2		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
ld d,$b3		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
ret			
cp $47			
.DB $38 $15 ; < ['$38', '$15'] > < 0x498d > < 5498d 05 498D | 3815: jr c, $15 >
ld c,a			
ld a,($c97e)		
ld b,a			
ld a,$56		
sub c			
ld c,a			
add $a0			
ld d,a			
ld e,$07		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
ret			
cp $0b			
.DB $38 $01 ; < ['$38', '$01'] > < 0x49a6 > < 549a6 05 49A6 | 3801: jr c, $01 >
ret			
and a			
ret z			
ld c,a			
ld a,($c97e)		
ld b,a			
push bc			
ld a,$0a		
sub c			
ld c,a			
ld d,$01		
ld e,$01		
push bc			
call  rlabel_05_4489 
pop bc			
inc c			
ld d,$a0		
ld e,$07		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
pop bc			
ld a,$08		
add c			
ld c,a			
ld d,$b3		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
ld d,$01		
ld e,$01		
call  rlabel_05_4489 
ret			
rlabel_05_49DF:
xor a			
ld ($c97d),a		
ld c,a			
push bc			
ld a,($c97e)		
ld b,a			
ld d,$01		
ld e,$01		
call  rlabel_05_4489 
pop bc			
inc c			
ld a,c			
cp $14			
.DB $38 $ed ; < ['$38', '$ed'] > < 0x49f5 > < 549f5 05 49F5 | 38ED: jr c, $ED >
ret			
rlabel_05_49F8:
ld a,($c358)		
ld c,a			
ld hl,$4a59		
ldi a,(hl)		
cp $ff			
ret z			
cp c			
.DB $28 $09 ; < ['$28', '$09'] > < 0x4a04 > < 54a04 05 4A04 | 2809: jr z, $09 >
ld a,l			
add $10			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4a0a > < 54a0a 05 4A0A | 3001: jr nc, $01 >
inc h			
.DB $18 $f0 ; < ['$18', '$f0'] > < 0x4a0d > < 54a0d 05 4A0D | 18F0: jr $F0 >
ld de,$cafe		
ld bc,$0010		
call  rlabel_00_04BC 
ret			
.incbin "data/05_4A19.data"
ld a,($cad8)		
and a			
ret nz			
call  rlabel_05_5441 
call  rlabel_05_5506 
ld a,($cad7)		
and a			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x543e > < 5543e 05 543E | 20F7: jr nz, $F7 >
ret			
rlabel_05_5441:
push de			
call  rlabel_05_549F 
ld hl,$c988		
ld de,$ca08		
ld b,$40		
ldi a,(hl)		
ld (de),a		
inc de			
dec b			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x5451 > < 55451 05 5451 | 20FA: jr nz, $FA >
ld hl,$c9c8		
ld de,$ca48		
ld b,$40		
ldi a,(hl)		
ld (de),a		
inc de			
dec b			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x545f > < 5545f 05 545F | 20FA: jr nz, $FA >
pop de			
ld hl,$ca88		
ld b,$20		
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
dec b			
.DB $20 $f9 ; < ['$20', '$f9'] > < 0x546c > < 5546c 05 546C | 20F9: jr nz, $F9 >
ld a,d			
and a			
.DB $20 $0f ; < ['$20', '$0f'] > < 0x5470 > < 55470 05 5470 | 200F: jr nz, $0F >
ld a,e			
and a			
.DB $28 $04 ; < ['$28', '$04'] > < 0x5474 > < 55474 05 5474 | 2804: jr z, $04 >
.incbin "data/05_5476.data"
ld a,$ff		
ld ($cad6),a		
.DB $18 $05 ; < ['$18', '$05'] > < 0x547f > < 5547f 05 547F | 1805: jr $05 >
ld a,$00		
ld ($cad6),a		
ld a,c			
ld ($cadb),a		
ld a,$01		
ld ($cad9),a		
ld a,$01		
ld ($cad7),a		
ld ($cad8),a		
xor a			
ld ($cada),a		
ld ($cadc),a		
ret			
rlabel_05_549F:
ld hl,$ff68		
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x54a6 > < 554a6 05 54A6 | 20FA: jr nz, $FA >
xor a			
ld (hl),a		
ld de,$c988		
ld b,$40		
di			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x54b4 > < 554b4 05 54B4 | 20FA: jr nz, $FA >
ld a,($ff00+$69)	
ld (de),a		
inc de			
inc (hl)		
ei			
dec b			
.DB $20 $f0 ; < ['$20', '$f0'] > < 0x54bd > < 554bd 05 54BD | 20F0: jr nz, $F0 >
ld hl,$ff6a		
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x54c6 > < 554c6 05 54C6 | 20FA: jr nz, $FA >
xor a			
ld (hl),a		
ld de,$c9c8		
ld b,$40		
di			
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x54d4 > < 554d4 05 54D4 | 20FA: jr nz, $FA >
ld a,($ff00+$6b)	
ld (de),a		
inc de			
inc (hl)		
ei			
dec b			
.DB $20 $f0 ; < ['$20', '$f0'] > < 0x54dd > < 554dd 05 54DD | 20F0: jr nz, $F0 >
ret			
call  rlabel_05_54ED 
call  rlabel_05_5506 
ld a,($cad7)		
and a			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x54ea > < 554ea 05 54EA | 20F7: jr nz, $F7 >
ret			
rlabel_05_54ED:
ld a,c			
ld ($cadb),a		
ld a,$02		
ld ($cad9),a		
ld a,$01		
ld ($cad7),a		
xor a			
ld ($cad8),a		
ld ($cada),a		
ld ($cadc),a		
ret			
rlabel_05_5506:
ld a,($cad7)		
and a			
ret z			
call  rlabel_05_5515 
call  rlabel_00_027C 
call  rlabel_05_559A 
ret			
rlabel_05_5515:
ld a,($cad7)		
and a			
ret z			
call  rlabel_00_0EEE 
ld a,($cada)		
and a			
.DB $20 $2b ; < ['$20', '$2b'] > < 0x5521 > < 55521 05 5521 | 202B: jr nz, $2B >
ld a,($cad9)		
cp $01			
.DB $20 $12 ; < ['$20', '$12'] > < 0x5528 > < 55528 05 5528 | 2012: jr nz, $12 >
ld hl,$ca08		
ld de,$ca88		
ld a,($cadd)		
and a			
.DB $28 $03 ; < ['$28', '$03'] > < 0x5534 > < 55534 05 5534 | 2803: jr z, $03 >
.incbin "data/05_5536.data"
call  rlabel_05_55AE 
ld a,($cad9)		
cp $02			
.DB $20 $09 ; < ['$20', '$09'] > < 0x5541 > < 55541 05 5541 | 2009: jr nz, $09 >
ld hl,$ca08		
ld de,$c988		
call  rlabel_05_55AE 
.DB $18 $29 ; < ['$18', '$29'] > < 0x554c > < 5554c 05 554C | 1829: jr $29 >
ld a,($cad9)		
cp $01			
.DB $20 $12 ; < ['$20', '$12'] > < 0x5553 > < 55553 05 5553 | 2012: jr nz, $12 >
ld hl,$ca48		
ld de,$ca88		
ld a,($cade)		
and a			
.DB $28 $03 ; < ['$28', '$03'] > < 0x555f > < 5555f 05 555F | 2803: jr z, $03 >
.incbin "data/05_5561.data"
call  rlabel_05_55AE 
ld a,($cad9)		
cp $02			
.DB $20 $09 ; < ['$20', '$09'] > < 0x556c > < 5556c 05 556C | 2009: jr nz, $09 >
ld hl,$ca48		
ld de,$c9c8		
call  rlabel_05_55AE 
ld a,($cada)		
cpl			
ld ($cada),a		
call  rlabel_05_569D 
ld a,($cadb)		
ld b,a			
ld a,($cadc)		
add b			
ld ($cadc),a		
cp $40			
ret c			
ret z			
ld a,($cada)		
and a			
ret nz			
xor a			
ld ($cad7),a		
ret			
rlabel_05_559A:
ld a,($cada)		
and a			
.DB $20 $07 ; < ['$20', '$07'] > < 0x559e > < 5559e 05 559E | 2007: jr nz, $07 >
ld hl,$ca08		
call  rlabel_00_0E2C 
ret			
ld hl,$ca48		
call  rlabel_00_0E6B 
ret			
rlabel_05_55AE:
ld b,$20		
ld a,($cade)		
and $80			
.DB $28 $15 ; < ['$28', '$15'] > < 0x55b5 > < 555b5 05 55B5 | 2815: jr z, $15 >
.incbin "data/05_55B7.data"
push bc			
ld a,(de)		
inc de			
ld c,a			
ld a,(de)		
inc de			
push de			
ld d,a			
ld e,c			
call  rlabel_05_565D 
ld a,($cad3)		
ld ($cad0),a		
ld a,($cad4)		
ld ($cad1),a		
ld a,($cad5)		
ld ($cad2),a		
ldi a,(hl)		
ld e,a			
ldd a,(hl)		
ld d,a			
call  rlabel_05_565D 
ld a,($cadb)		
ld c,a			
ld a,($cad0)		
ld b,a			
ld a,($cad3)		
cp b			
.DB $28 $14 ; < ['$28', '$14'] > < 0x55fd > < 555fd 05 55FD | 2814: jr z, $14 >
.DB $30 $07 ; < ['$30', '$07'] > < 0x55ff > < 555ff 05 55FF | 3007: jr nc, $07 >
add c			
cp b			
.DB $38 $01 ; < ['$38', '$01'] > < 0x5603 > < 55603 05 5603 | 3801: jr c, $01 >
ld a,b			
.DB $18 $08 ; < ['$18', '$08'] > < 0x5606 > < 55606 05 5606 | 1808: jr $08 >
sub c			
.DB $30 $01 ; < ['$30', '$01'] > < 0x5609 > < 55609 05 5609 | 3001: jr nc, $01 >
xor a			
cp b			
.DB $30 $01 ; < ['$30', '$01'] > < 0x560d > < 5560d 05 560D | 3001: jr nc, $01 >
ld a,b			
ld ($cad3),a		
ld a,($cad1)		
ld b,a			
ld a,($cad4)		
cp b			
.DB $28 $14 ; < ['$28', '$14'] > < 0x561b > < 5561b 05 561B | 2814: jr z, $14 >
.DB $30 $07 ; < ['$30', '$07'] > < 0x561d > < 5561d 05 561D | 3007: jr nc, $07 >
add c			
cp b			
.DB $38 $01 ; < ['$38', '$01'] > < 0x5621 > < 55621 05 5621 | 3801: jr c, $01 >
ld a,b			
.DB $18 $08 ; < ['$18', '$08'] > < 0x5624 > < 55624 05 5624 | 1808: jr $08 >
sub c			
.DB $30 $01 ; < ['$30', '$01'] > < 0x5627 > < 55627 05 5627 | 3001: jr nc, $01 >
xor a			
cp b			
.DB $30 $01 ; < ['$30', '$01'] > < 0x562b > < 5562b 05 562B | 3001: jr nc, $01 >
ld a,b			
ld ($cad4),a		
ld a,($cad2)		
ld b,a			
ld a,($cad5)		
cp b			
.DB $28 $14 ; < ['$28', '$14'] > < 0x5639 > < 55639 05 5639 | 2814: jr z, $14 >
.DB $30 $07 ; < ['$30', '$07'] > < 0x563b > < 5563b 05 563B | 3007: jr nc, $07 >
add c			
cp b			
.DB $38 $01 ; < ['$38', '$01'] > < 0x563f > < 5563f 05 563F | 3801: jr c, $01 >
ld a,b			
.DB $18 $08 ; < ['$18', '$08'] > < 0x5642 > < 55642 05 5642 | 1808: jr $08 >
sub c			
.DB $30 $01 ; < ['$30', '$01'] > < 0x5645 > < 55645 05 5645 | 3001: jr nc, $01 >
xor a			
cp b			
.DB $30 $01 ; < ['$30', '$01'] > < 0x5649 > < 55649 05 5649 | 3001: jr nc, $01 >
ld a,b			
ld ($cad5),a		
call  rlabel_05_567D 
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
pop de			
pop bc			
dec b			
jp nz,$55b0		
ret			
rlabel_05_565D:
ld a,d			
srl a			
srl a			
ld ($cad5),a		
ld a,d			
and $03			
swap a			
ld d,a			
ld a,e			
and $e0			
swap a			
add d			
srl a			
ld ($cad4),a		
ld a,e			
and $1f			
ld ($cad3),a		
ret			
rlabel_05_567D:
ld a,($cad5)		
add a			
add a			
ld d,a			
ld a,($cad4)		
srl a			
srl a			
srl a			
add d			
ld d,a			
ld a,($cad4)		
add a			
add a			
add a			
add a			
add a			
ld e,a			
ld a,($cad3)		
add e			
ld e,a			
ret			
rlabel_05_569D:
ld a,($cadc)		
srl a			
srl a			
srl a			
ld b,a			
cp $08			
.DB $38 $02 ; < ['$38', '$02'] > < 0x56a9 > < 556a9 05 56A9 | 3802: jr c, $02 >
ld b,$07		
ld a,($cad9)		
cp $01			
.DB $20 $03 ; < ['$20', '$03'] > < 0x56b2 > < 556b2 05 56B2 | 2003: jr nz, $03 >
ld a,b			
.DB $18 $03 ; < ['$18', '$03'] > < 0x56b5 > < 556b5 05 56B5 | 1803: jr $03 >
ld a,$07		
sub b			
ld c,a			
add a			
ld b,a			
ld a,($c96b)		
cp $a0			
.DB $38 $03 ; < ['$38', '$03'] > < 0x56c2 > < 556c2 05 56C2 | 3803: jr c, $03 >
.incbin "data/05_56C4.data"
ld a,($cad6)		
cp $ff			
.DB $28 $0f ; < ['$28', '$0f'] > < 0x56cc > < 556cc 05 56CC | 280F: jr z, $0F >
ld a,$10		
add b			
ld b,a			
ld a,($c96b)		
cp $a0			
.DB $38 $04 ; < ['$38', '$04'] > < 0x56d7 > < 556d7 05 56D7 | 3804: jr c, $04 >
.incbin "data/05_56D9.data"
ld a,($c96b)		
add b			
ld hl,$5707		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x56e6 > < 556e6 05 56E6 | 3001: jr nc, $01 >
.incbin "data/05_56E8.data"
ld a,($cadd)		
and a			
.DB $20 $03 ; < ['$20', '$03'] > < 0x56ed > < 556ed 05 56ED | 2003: jr nz, $03 >
ld a,(hl)		
ld ($ff00+$9d),a	
ld a,($cade)		
and a			
.DB $20 $0e ; < ['$20', '$0e'] > < 0x56f6 > < 556f6 05 56F6 | 200E: jr nz, $0E >
ld a,($c96b)		
cp $a0			
.DB $38 $01 ; < ['$38', '$01'] > < 0x56fd > < 556fd 05 56FD | 3801: jr c, $01 >
.incbin "data/05_56FF.data"
ldi a,(hl)		
ld ($ff00+$9f),a	
ldi a,(hl)		
ld ($ff00+$9e),a	
ret			
.incbin "data/05_5707.data"
ld a,b			
ld ($cae1),a		
ld a,c			
ld ($cae2),a		
ld a,d			
ld ($cae3),a		
ld a,e			
ld ($cae4),a		
ld d,$10		
ld e,$07		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
ld a,($cae4)		
and a			
.DB $28 $0e ; < ['$28', '$0e'] > < 0x585c > < 5585c 05 585C | 280E: jr z, $0E >
push af			
ld d,$11		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
pop af			
dec a			
.DB $20 $ef ; < ['$20', '$ef'] > < 0x586a > < 5586a 05 586A | 20EF: jr nz, $EF >
ld d,$12		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
ld a,($cae2)		
ld c,a			
inc b			
ld a,($cae3)		
and a			
.DB $28 $2f ; < ['$28', '$2f'] > < 0x587d > < 5587d 05 587D | 282F: jr z, $2F >
push af			
ld d,$17		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
ld a,($cae4)		
and a			
.DB $28 $0e ; < ['$28', '$0e'] > < 0x588d > < 5588d 05 588D | 280E: jr z, $0E >
push af			
ld d,$00		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
pop af			
dec a			
.DB $20 $ef ; < ['$20', '$ef'] > < 0x589b > < 5589b 05 589B | 20EF: jr nz, $EF >
ld d,$13		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
ld a,($cae2)		
ld c,a			
inc b			
pop af			
dec a			
.DB $20 $ce ; < ['$20', '$ce'] > < 0x58ac > < 558ac 05 58AC | 20CE: jr nz, $CE >
ld d,$16		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
ld a,($cae4)		
and a			
.DB $28 $0e ; < ['$28', '$0e'] > < 0x58bb > < 558bb 05 58BB | 280E: jr z, $0E >
push af			
ld d,$15		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
pop af			
dec a			
.DB $20 $ef ; < ['$20', '$ef'] > < 0x58c9 > < 558c9 05 58C9 | 20EF: jr nz, $EF >
ld d,$14		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
ret			
push hl			
push bc			
push hl			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
inc d			
pop hl			
dec l			
.DB $20 $f3 ; < ['$20', '$f3'] > < 0x58e1 > < 558e1 05 58E1 | 20F3: jr nz, $F3 >
pop bc			
inc b			
pop hl			
dec h			
.DB $20 $eb ; < ['$20', '$eb'] > < 0x58e7 > < 558e7 05 58E7 | 20EB: jr nz, $EB >
ret			
push hl			
push bc			
push hl			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
pop hl			
dec l			
.DB $20 $f4 ; < ['$20', '$f4'] > < 0x58f6 > < 558f6 05 58F6 | 20F4: jr nz, $F4 >
pop bc			
inc b			
pop hl			
dec h			
.DB $20 $ec ; < ['$20', '$ec'] > < 0x58fc > < 558fc 05 58FC | 20EC: jr nz, $EC >
ret			
ld h,d			
ld l,e			
ld a,c			
swap a			
and $0f			
ld b,a			
ld a,c			
swap a			
and $f0			
ld c,a			
ld d,$ff		
call  rlabel_00_0D25 
inc hl			
dec bc			
ld a,b			
or c			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x5916 > < 55916 05 5916 | 20F7: jr nz, $F7 >
ret			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
inc d			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc b			
dec c			
inc d			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
inc d			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
dec b			
inc c			
inc d			
ret			
call  rlabel_05_5943 
call  rlabel_05_59F3 
ret			
rlabel_05_5943:
ld a,c			
ld ($cb98),a		
ld a,$18		
call  rlabel_00_305E 
ld de,$0000		
ld c,$04		
call  rlabel_00_1311 
call  rlabel_00_05AA 
call  rlabel_00_136B 
ld b,$03		
ld hl,$40af		
rst $28			
ld b,$03		
ld hl,$44c6		
rst $28			
ld b,$04		
ld c,$00		
ld d,$05		
ld e,$05		
call  rlabel_00_0F33 
call  rlabel_05_5990 
ld c,$08		
call  rlabel_00_132B 
call  rlabel_05_59CF 
ld b,$03		
ld hl,$41aa		
rst $28			
xor a			
ld ($cafb),a		
ld a,$03		
ld ($caf1),a		
xor a			
ld ($cbd9),a		
ret			
rlabel_05_5990:
ld a,($c34f)		
ld ($c350),a		
ld a,($cb98)		
ld ($c34f),a		
ld c,$03		
ld b,$01		
ld hl,$47b8		
rst $28			
ld c,$03		
ld d,$04		
ld e,$00		
ld b,$04		
ld hl,$59d9		
rst $28			
ld c,$03		
ld d,$38		
ld e,$18		
ld b,$04		
ld hl,$590d		
rst $28			
ld c,$03		
ld d,$08		
ld e,$01		
ld b,$04		
ld hl,$595a		
rst $28			
ld a,($c350)		
ld ($c34f),a		
ret			
rlabel_05_59CF:
ld b,$04		
ld hl,$5cb0		
rst $28			
ld b,$0f		
ld c,$01		
ld d,$d7		
ld e,$07		
ld hl,$59e4		
call  rlabel_00_0F47 
ret			
.incbin "data/05_59E4.data"
rlabel_05_59F3:
ld b,$03		
ld hl,$458b		
rst $28			
call  rlabel_00_0EEE 
call  rlabel_00_2555 
ld a,($ff00+$a5)	
and $01			
.DB $28 $08 ; < ['$28', '$08'] > < 0x5a03 > < 55a03 05 5A03 | 2808: jr z, $08 >
ld a,$1b		
call  rlabel_00_3071 
call  rlabel_05_5A2D 
ld a,($ff00+$a5)	
and $02			
.DB $28 $07 ; < ['$28', '$07'] > < 0x5a11 > < 55a11 05 5A11 | 2807: jr z, $07 >
ld a,$1c		
call  rlabel_00_3071 
.DB $18 $3b ; < ['$18', '$3b'] > < 0x5a18 > < 55a18 05 5A18 | 183B: jr $3B >
ld a,($ff00+$a5)	
and $08			
.DB $28 $02 ; < ['$28', '$02'] > < 0x5a1e > < 55a1e 05 5A1E | 2802: jr z, $02 >
.incbin "data/05_5A20.data"
ld a,($ff00+$a5)	
and $04			
.DB $28 $00 ; < ['$28', '$00'] > < 0x5a26 > < 55a26 05 5A26 | 2800: jr z, $00 >
call  rlabel_00_027C 
.DB $18 $cc ; < ['$18', '$cc'] > < 0x5a2b > < 55a2b 05 5A2B | 18CC: jr $CC >
rlabel_05_5A2D:
ld a,($cc1f)		
ld c,a			
call  rlabel_00_12DD 
push af			
ld a,($cb98)		
ld d,a			
ld b,$01		
ld hl,$4776		
rst $28			
ld a,($cc1f)		
ld c,a			
ld d,$02		
ld e,$06		
ld b,$04		
ld hl,$58b1		
rst $28			
pop af			
ld ($cb98),a		
call  rlabel_05_5990 
ret			
ld a,($cc1f)		
ld ($cafb),a		
xor a			
ld ($cc95),a		
ld hl,$0e00		
ld de,$1113		
ld c,$01		
call  rlabel_00_1E43 
ld b,$04		
ld hl,$6417		
rst $28			
ld b,$0f		
ld c,$01		
ld d,$e9		
ld e,$07		
ld hl,$5b45		
call  rlabel_00_0F47 
ld b,$10		
ld c,$04		
ld d,$90		
ld e,$07		
ld hl,$5b55		
call  rlabel_00_0F47 
ld c,$0c		
ld hl,$5b58		
call  rlabel_00_0F47 
xor a			
ld ($caf4),a		
ld ($c970),a		
ld ($c974),a		
ld a,$10		
ld ($c972),a		
call  rlabel_00_0EEE 
ld a,($c970)		
and a			
.DB $20 $14 ; < ['$20', '$14'] > < 0x5aaa > < 55aaa 05 5AAA | 2014: jr nz, $14 >
ld a,($cbd6)		
and $20			
.DB $28 $03 ; < ['$28', '$03'] > < 0x5ab1 > < 55ab1 05 5AB1 | 2803: jr z, $03 >
call  rlabel_05_5B00 
ld a,($cbd6)		
and $10			
.DB $28 $03 ; < ['$28', '$03'] > < 0x5abb > < 55abb 05 5ABB | 2803: jr z, $03 >
call  rlabel_05_5B00 
ld a,($ff00+$a5)	
and $01			
.DB $28 $08 ; < ['$28', '$08'] > < 0x5ac4 > < 55ac4 05 5AC4 | 2808: jr z, $08 >
ld a,($caf4)		
and a			
.DB $28 $12 ; < ['$28', '$12'] > < 0x5aca > < 55aca 05 5ACA | 2812: jr z, $12 >
.DB $18 $1a ; < ['$18', '$1a'] > < 0x5acc > < 55acc 05 5ACC | 181A: jr $1A >
ld a,($ff00+$a5)	
and $02			
.DB $28 $02 ; < ['$28', '$02'] > < 0x5ad2 > < 55ad2 05 5AD2 | 2802: jr z, $02 >
.DB $18 $12 ; < ['$18', '$12'] > < 0x5ad4 > < 55ad4 05 5AD4 | 1812: jr $12 >
call  rlabel_05_5B26 
call  rlabel_00_027C 
.DB $18 $c5 ; < ['$18', '$c5'] > < 0x5adc > < 55adc 05 5ADC | 18C5: jr $C5 >
ld a,$1b		
call  rlabel_00_3071 
ld a,($cb98)		
ld c,a			
ret			
ld a,$1c		
call  rlabel_00_3071 
ld a,$00		
ld c,$18		
call  rlabel_00_05B1 
call  rlabel_00_207C 
ld b,$04		
ld hl,$6435		
rst $28			
jp $59f3		
rlabel_05_5B00:
ld a,$10		
call  rlabel_00_3071 
ld a,($caf4)		
and a			
.DB $20 $0c ; < ['$20', '$0c'] > < 0x5b09 > < 55b09 05 5B09 | 200C: jr nz, $0C >
ld a,$01		
ld ($caf4),a		
ld a,$10		
ld ($c974),a		
.DB $18 $09 ; < ['$18', '$09'] > < 0x5b15 > < 55b15 05 5B15 | 1809: jr $09 >
xor a			
ld ($caf4),a		
ld a,$f0		
ld ($c974),a		
ld a,$04		
ld ($c970),a		
ret			
rlabel_05_5B26:
ld a,($c972)		
ld e,a			
ld a,($c970)		
and a			
.DB $28 $0c ; < ['$28', '$0c'] > < 0x5b2e > < 55b2e 05 5B2E | 280C: jr z, $0C >
dec a			
ld ($c970),a		
ld a,($c974)		
add e			
ld ($c972),a		
ld e,a			
ld d,$80		
ld b,$03		
ld hl,$4326		
rst $28			
ret			
.incbin "data/05_5B45.data"
ld a,$ff		
ld ($c349),a		
call  rlabel_05_5B95 
ld hl,$5da0		
ld de,$8c80		
ld bc,$0060		
ld a,$05		
call  rlabel_00_0D83 
ld b,$0c		
ld d,$c8		
call  rlabel_05_5B83 
ld b,$0d		
ld d,$c0		
call  rlabel_05_5B83 
ret			
rlabel_05_5B83:
ld c,$00		
ld e,$02		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc d			
inc c			
ld a,c			
cp $06			
.DB $38 $f3 ; < ['$38', '$f3'] > < 0x5b92 > < 55b92 05 5B92 | 38F3: jr c, $F3 >
ret			
rlabel_05_5B95:
ld a,($c349)		
ld b,a			
di			
ld de,$ffab		
ld hl,$c348		
ld c,$04		
call  rlabel_00_04CB 
ei			
ld a,($c349)		
cp b			
ret z			
ld hl,$d5d5		
ld c,$60		
call  rlabel_00_04E2 
ld a,($c34b)		
ld d,a			
ld e,$64		
call  rlabel_00_038B 
ld a,d			
and a			
.DB $28 $01 ; < ['$28', '$01'] > < 0x5bbe > < 55bbe 05 5BBE | 2801: jr z, $01 >
.incbin "data/05_5BC0.data"
ld a,$00		
ld b,d			
ld c,$06		
call  rlabel_05_5C67 
ld a,($c34b)		
ld d,a			
ld e,$0a		
call  rlabel_00_038B 
ld a,d			
and a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x5bd4 > < 55bd4 05 5BD4 | 2807: jr z, $07 >
.incbin "data/05_5BD6.data"
ld a,$00		
ld b,d			
ld c,$04		
call  rlabel_05_5C67 
ld a,($c34b)		
ld d,a			
ld e,$0a		
call  rlabel_00_038B 
inc e			
ld a,$01		
ld b,e			
ld c,$02		
call  rlabel_05_5C67 
ld a,$02		
ld b,$0b		
ld c,$30		
call  rlabel_05_5C67 
ld a,($c34a)		
ld d,a			
ld e,$0a		
call  rlabel_00_038B 
inc d			
ld a,$02		
ld b,d			
ld c,$02		
call  rlabel_05_5C67 
ld a,($c34a)		
ld d,a			
ld e,$0a		
call  rlabel_00_038B 
inc e			
ld a,$03		
ld b,e			
ld c,$3f		
call  rlabel_05_5C67 
ld a,$04		
ld b,$0b		
ld c,$c0		
call  rlabel_05_5C67 
ld a,($c349)		
ld d,a			
ld e,$0a		
call  rlabel_00_038B 
inc d			
ld a,$04		
ld b,d			
ld c,$3f		
call  rlabel_05_5C67 
ld a,($c349)		
ld d,a			
ld e,$0a		
call  rlabel_00_038B 
inc e			
ld a,$05		
ld b,e			
ld c,$06		
call  rlabel_05_5C67 
ld a,$05		
ld b,$00		
ld c,$03		
call  rlabel_05_5C67 
ld hl,$d5d5		
ld de,$8c00		
ld bc,$0060		
call  rlabel_00_0D83 
ret			
rlabel_05_5C67:
swap a			
ld hl,$d5d5		
call  rlabel_00_0462 
xor a			
push af			
ld de,$5ce0		
call  rlabel_00_045D 
ld a,b			
swap a			
call  rlabel_00_045D 
ld a,(de)		
ld d,a			
xor a			
ld e,a			
ld a,c			
cp $02			
call z,$5cba		
cp $04			
call z,$5cc8		
cp $06			
call z,$5cd5		
cp $30			
call z,$5cdb		
cp $c0			
call z,$5cdb		
cp $03			
call z,$5cdb		
cp $3f			
call z,$5cdb		
push hl			
ld a,(hl)		
or d			
ld (hl),a		
ld a,$10		
call  rlabel_00_0462 
ld a,(hl)		
or e			
ld (hl),a		
pop hl			
inc hl			
pop af			
inc a			
cp $10			
.DB $38 $b7 ; < ['$38', '$b7'] > < 0x5cb7 > < 55cb7 05 5CB7 | 38B7: jr c, $B7 >
ret			
rlabel_05_5CBA:
ld a,d			
and $3f			
ld d,a			
srl d			
rr e			
srl d			
rr e			
xor a			
ret			
call  rlabel_05_5CBA 
srl d			
rr e			
srl d			
rr e			
xor a			
ret			
sla d			
sla d			
xor a			
ret			
ld a,d			
and c			
ld d,a			
xor a			
ret			
.incbin "data/05_5CE0.data"
rlabel_05_64D6:
call  rlabel_05_6556 
ld hl,$c35b		
ldi a,(hl)		
cp (hl)			
ret z			
cp $ff			
.DB $28 $12 ; < ['$28', '$12'] > < 0x64e1 > < 564e1 05 64E1 | 2812: jr z, $12 >
cp $64			
.DB $38 $02 ; < ['$38', '$02'] > < 0x64e5 > < 564e5 05 64E5 | 3802: jr c, $02 >
sub $64			
ld de,$0190		
call  rlabel_00_045D 
ld b,$0e		
ld hl,$42f8		
rst $28			
call  rlabel_00_097C 
ld hl,$c310		
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld a,($c219)		
ldi (hl),a		
ld a,($c21d)		
ldi (hl),a		
ret			
ld de,$0680		
ld a,c			
call  rlabel_00_045D 
ld c,$01		
jp $655b		
.incbin "data/05_6514.data"
rlabel_05_6556:
call  rlabel_00_097C 
ld c,$01		
call  rlabel_05_65A0 
ld b,c			
call  rlabel_05_6582 
ld a,c			
cpl			
ld e,a			
ld a,(hl)		
and e			
dec b			
.DB $20 $01 ; < ['$20', '$01'] > < 0x6568 > < 56568 05 6568 | 2001: jr nz, $01 >
or c			
ld (hl),a		
jp $65aa		
.incbin "data/05_656F.data"
rlabel_05_6582:
ld a,e			
srl d			
rr e			
srl d			
rr e			
srl d			
rr e			
ld hl,$bc00		
add hl,de		
ld de,$05cb		
and $07			
call  rlabel_00_045D 
ld a,(de)		
ld c,a			
ld e,l			
ld d,h			
ret			
rlabel_05_65A0:
ld a,$0a		
ld ($0000),a		
xor a			
ld ($4000),a		
ret			
xor a			
ld ($0000),a		
ret			
.incbin "data/05_65AF.data"
