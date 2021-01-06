.BANK $01 SLOT 1
.ORG 0
.incbin "data/01_4000.data"
.DB $cd $ee $0e ; < ['$cd', '$ee', '$0e'] > < 0x4001 > < 14001 01 4001 | CDEE0E: call $EEE >
.DB $fa $a9 $c1 ; < ['$fa', '$a9', '$c1'] > < 0x4004 > < 14004 01 4004 | FAA9C1: ld a, [$C1A9] >
ld b,a			
ld a,($c1a8)		
cp b			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x400c > < 1400c 01 400C | 280B: jr z, $0B >
ld a,($c1a8)		
ld ($c1a9),a		
ld a,$02		
ld ($c346),a		
ld hl,$4026		
ld a,($c346)		
call  rlabel_00_05D3 
call  rlabel_00_027C 
ret			
.incbin "data/01_4026.data"
call  rlabel_01_404C 
call  rlabel_01_40BF 
call  rlabel_01_40DD 
ld a,$01		
ld ($c346),a		
ret			
call  rlabel_01_404C 
call  rlabel_01_4373 
call  rlabel_01_4379 
ld a,$01		
ld ($c346),a		
ret			
rlabel_01_404C:
di			
ld hl,$c1a0		
ld de,$0287		
call  rlabel_00_0231 
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ei			
call  rlabel_00_035B 
call  rlabel_00_0369 
call  rlabel_00_11A6 
ld hl,$c988		
ld b,$40		
xor a			
ldi (hl),a		
dec b			
.DB $20 $fb ; < ['$20', '$fb'] > < 0x4071 > < 14071 01 4071 | 20FB: jr nz, $FB >
ld hl,$c988		
call  rlabel_00_0E2C 
ld hl,$c9c8		
ld b,$40		
xor a			
ldi (hl),a		
dec b			
.DB $20 $fb ; < ['$20', '$fb'] > < 0x4081 > < 14081 01 4081 | 20FB: jr nz, $FB >
ld hl,$c9c8		
call  rlabel_00_0E6B 
xor a			
ld ($cbd5),a		
ld ($cbd6),a		
ld ($cbd7),a		
ld ($cbd8),a		
xor a			
ld ($cadd),a		
ld ($cade),a		
xor a			
ld ($c987),a		
ld a,$01		
ld ($cbcd),a		
ld b,$0e		
ld hl,$4001		
rst $28			
ret			
ld hl,$40b7		
ld a,($c969)		
call  rlabel_00_05D3 
ret			
.incbin "data/01_40B7.data"
rlabel_01_40BF:
xor a			
ld ($c96a),a		
ld a,$00		
ld ($c969),a		
ret			
ld a,($c96a)		
inc a			
ld ($c96a),a		
cp $30			
ret c			
call  rlabel_01_413B 
call  rlabel_01_427C 
call  rlabel_01_45C7 
ret			
rlabel_01_40DD:
ld c,$08		
ld de,$0000		
call  rlabel_00_1311 
ld hl,$644f		
ld de,$9000		
ld bc,$0100		
ld a,$88		
call  rlabel_00_0D83 
ld hl,$654f		
ld de,$c988		
ld bc,$0008		
ld a,$88		
call  rlabel_00_0D50 
ld d,$00		
ld e,$00		
call  rlabel_00_0EDE 
call  rlabel_00_05AA 
call  rlabel_00_136B 
ld d,$00		
ld e,$00		
xor a			
ld b,a			
xor a			
ld c,a			
push bc			
push hl			
ld a,b			
add $07			
ld b,a			
ld a,c			
add $08			
ld c,a			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc d			
pop hl			
pop bc			
inc c			
ld a,c			
cp $04			
.DB $38 $e7 ; < ['$38', '$e7'] > < 0x412d > < 1412d 01 412D | 38E7: jr c, $E7 >
inc b			
ld a,b			
cp $04			
.DB $38 $df ; < ['$38', '$df'] > < 0x4133 > < 14133 01 4133 | 38DF: jr c, $DF >
ld c,$04		
call  rlabel_00_132B 
ret			
rlabel_01_413B:
xor a			
ld ($c96a),a		
ld a,$01		
ld ($c969),a		
ret			
ld a,($c96a)		
cp $41			
.DB $30 $0e ; < ['$30', '$0e'] > < 0x414a > < 1414a 01 414A | 300E: jr nc, $0E >
call  rlabel_01_4194 
ld a,($ff00+$a4)	
and $0f			
.DB $28 $2d ; < ['$28', '$2d'] > < 0x4153 > < 14153 01 4153 | 282D: jr z, $2D >
.incbin "data/01_4155.data"
call  rlabel_01_45EA 
ld hl,$c988		
call  rlabel_00_0E2C 
ld a,($c96a)		
cp $41			
.DB $20 $0a ; < ['$20', '$0a'] > < 0x4168 > < 14168 01 4168 | 200A: jr nz, $0A >
ld a,$04		
call  rlabel_00_3071 
call  rlabel_01_4220 
.DB $18 $0e ; < ['$18', '$0e'] > < 0x4172 > < 14172 01 4172 | 180E: jr $0E >
ld a,($c96a)		
cp $61			
.DB $20 $07 ; < ['$20', '$07'] > < 0x4179 > < 14179 01 4179 | 2007: jr nz, $07 >
call  rlabel_01_4373 
call  rlabel_01_4379 
ret			
ld a,($c96a)		
inc a			
ld ($c96a),a		
ld a,($ff00+$a4)	
and $0f			
ret z			
.incbin "data/01_418E.data"
rlabel_01_4194:
ld b,$41		
ld c,$f1		
ld a,($c96a)		
srl a			
add $20			
ld d,a			
ld e,$30		
call  rlabel_01_41D7 
ld e,$00		
call  rlabel_01_42D4 
ld b,$65		
ld c,$49		
ld a,($c96a)		
srl a			
add $08			
ld d,a			
ld e,$30		
call  rlabel_01_41D7 
ld e,$01		
call  rlabel_01_42D4 
ld b,$26		
ld c,$51		
ld a,($c96a)		
srl a			
add $38			
ld d,a			
ld e,$30		
call  rlabel_01_41D7 
ld e,$02		
call  rlabel_01_42D4 
ret			
rlabel_01_41D7:
ld a,e			
add a			
ld e,a			
ld a,d			
and $3f			
ld hl,$4615		
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x41e3 > < 141e3 01 41E3 | 3001: jr nc, $01 >
.incbin "data/01_41E5.data"
push de			
ldi a,(hl)		
cp $80			
.DB $30 $09 ; < ['$30', '$09'] > < 0x41ea > < 141ea 01 41EA | 3009: jr nc, $09 >
ld d,a			
call  rlabel_00_03F7 
ld a,b			
add d			
ld b,a			
.DB $18 $09 ; < ['$18', '$09'] > < 0x41f3 > < 141f3 01 41F3 | 1809: jr $09 >
cpl			
inc a			
ld d,a			
call  rlabel_00_03F7 
ld a,b			
sub d			
ld b,a			
pop de			
ldi a,(hl)		
cp $80			
.DB $30 $09 ; < ['$30', '$09'] > < 0x4202 > < 14202 01 4202 | 3009: jr nc, $09 >
ld d,a			
call  rlabel_00_03F7 
ld a,c			
add d			
ld c,a			
.DB $18 $09 ; < ['$18', '$09'] > < 0x420b > < 1420b 01 420B | 1809: jr $09 >
cpl			
inc a			
ld d,a			
call  rlabel_00_03F7 
ld a,c			
sub d			
ld c,a			
ret			
.incbin "data/01_4217.data"
rlabel_01_4220:
ld c,$10		
ld de,$7fff		
call  rlabel_00_1311 
ld b,$41		
ld c,$20		
ld d,$00		
ld e,$00		
call  rlabel_01_42D4 
ld b,$44		
ld c,$28		
ld d,$00		
ld e,$01		
call  rlabel_01_42D4 
ld b,$47		
ld c,$30		
ld d,$00		
ld e,$02		
call  rlabel_01_42D4 
ld d,$00		
ld e,$00		
xor a			
ld b,a			
xor a			
ld c,a			
push bc			
ld a,b			
add $07			
ld b,a			
ld a,c			
add $08			
ld c,a			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
pop bc			
inc d			
inc c			
ld a,c			
cp $08			
.DB $38 $e9 ; < ['$38', '$e9'] > < 0x4266 > < 14266 01 4266 | 38E9: jr c, $E9 >
inc b			
ld a,b			
cp $03			
.DB $38 $e1 ; < ['$38', '$e1'] > < 0x426c > < 1426c 01 426C | 38E1: jr c, $E1 >
ld c,$01		
ld a,($ff00+$a4)	
and $0f			
.DB $28 $02 ; < ['$28', '$02'] > < 0x4274 > < 14274 01 4274 | 2802: jr z, $02 >
.incbin "data/01_4276.data"
call  rlabel_00_132B 
ret			
rlabel_01_427C:
ld c,$04		
ld de,$0000		
call  rlabel_00_1311 
ld hl,$6557		
ld de,$8000		
ld bc,$0c00		
ld a,$88		
call  rlabel_00_0D83 
ld hl,$6e57		
ld de,$9000		
ld bc,$0240		
ld a,$88		
call  rlabel_00_0D83 
ld hl,$6fdf		
ld de,$c988		
ld bc,$0008		
ld a,$88		
call  rlabel_00_0D50 
ld hl,$6fd7		
ld de,$c9c8		
ld bc,$0008		
ld a,$88		
call  rlabel_00_0D50 
ld d,$01		
ld e,$00		
call  rlabel_00_0EDE 
call  rlabel_00_05AA 
call  rlabel_00_136B 
ld a,$20		
ld ($c96b),a		
ld c,$08		
call  rlabel_00_132B 
ret			
rlabel_01_42D4:
ld a,($c96a)		
and $0f			
srl a			
add a			
ld hl,$4361		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x42e1 > < 142e1 01 42E1 | 3001: jr nc, $01 >
.incbin "data/01_42E3.data"
ldi a,(hl)		
add b			
ld b,a			
ldi a,(hl)		
add c			
ld c,a			
ld a,e			
swap a			
add a			
ld hl,$c000		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x42f3 > < 142f3 01 42F3 | 3001: jr nc, $01 >
.incbin "data/01_42F5.data"
ld a,($c96a)		
and $07			
srl a			
add a			
add a			
ld d,a			
add a			
add d			
ld d,a			
ld a,e			
swap a			
ld e,a			
add a			
add e			
add d			
ld d,a			
ld e,$00		
ld a,($c96a)		
and $08			
.DB $28 $0a ; < ['$28', '$0a'] > < 0x4312 > < 14312 01 4312 | 280A: jr z, $0A >
ld e,$60		
ld a,b			
add $10			
ld b,a			
ld a,c			
add $10			
ld c,a			
xor a			
push af			
ld a,b			
ldi (hl),a		
ld a,c			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld a,e			
ldi (hl),a		
pop af			
push af			
cp $02			
.DB $20 $19 ; < ['$20', '$19'] > < 0x432c > < 1432c 01 432C | 2019: jr nz, $19 >
ld a,($c96a)		
and $08			
.DB $28 $0a ; < ['$28', '$0a'] > < 0x4333 > < 14333 01 4333 | 280A: jr z, $0A >
ld a,b			
sub $10			
ld b,a			
ld a,c			
add $18			
ld c,a			
.DB $18 $08 ; < ['$18', '$08'] > < 0x433d > < 1433d 01 433D | 1808: jr $08 >
ld a,b			
add $10			
ld b,a			
ld a,c			
sub $18			
ld c,a			
ld a,($c96a)		
and $08			
.DB $28 $06 ; < ['$28', '$06'] > < 0x434c > < 1434c 01 434C | 2806: jr z, $06 >
ld a,c			
sub $08			
ld c,a			
.DB $18 $04 ; < ['$18', '$04'] > < 0x4352 > < 14352 01 4352 | 1804: jr $04 >
ld a,c			
add $08			
ld c,a			
inc d			
inc d			
pop af			
inc a			
cp $06			
.DB $38 $bf ; < ['$38', '$bf'] > < 0x435e > < 1435e 01 435E | 38BF: jr c, $BF >
ret			
.incbin "data/01_4361.data"
rlabel_01_4373:
ld a,$02		
ld ($c969),a		
ret			
rlabel_01_4379:
ld c,$04		
ld de,$0000		
call  rlabel_00_1311 
xor a			
ld d,a			
ld e,a			
call  rlabel_00_0EDE 
call  rlabel_00_05AA 
ret			
ld b,$01		
ld hl,$796f		
rst $28			
ld a,c			
and a			
.DB $28 $08 ; < ['$28', '$08'] > < 0x4393 > < 14393 01 4393 | 2808: jr z, $08 >
.incbin "data/01_4395.data"
ld b,$01		
ld hl,$787f		
rst $28			
ld a,c			
and a			
jp nz,$4459		
ld a,($ff00+$8e)	
and a			
jp nz,$448c		
ld c,$07		
xor a			
ld ($cc97),a		
ld a,$80		
ld ($c96b),a		
ld b,$01		
ld hl,$5345		
rst $28			
xor a			
ld ($c96b),a		
push bc			
ld de,$9000		
ld c,$01		
call  rlabel_00_1280 
ld d,$00		
ld e,$07		
call  rlabel_00_0EDE 
pop bc			
ld a,c			
cp $00			
.DB $28 $09 ; < ['$28', '$09'] > < 0x43d7 > < 143d7 01 43D7 | 2809: jr z, $09 >
cp $01			
.DB $28 $2d ; < ['$28', '$2d'] > < 0x43db > < 143db 01 43DB | 282D: jr z, $2D >
cp $02			
jp z,$444a		
xor a			
ld ($cbd9),a		
ld b,$01		
ld hl,$47fa		
rst $28			
ld a,($c34f)		
ld ($c225),a		
di			
ld hl,$c348		
ld de,$ffab		
ld bc,$0004		
call  rlabel_00_04BC 
ei			
xor a			
ld ($c346),a		
ld b,$01		
call  rlabel_00_0214 
ret			
ld a,$1b		
call  rlabel_00_305E 
ld b,$0e		
ld hl,$4001		
rst $28			
xor a			
ld ($cbd9),a		
ld hl,$c34c		
ld a,$08		
ldi (hl),a		
ld a,$06		
ldi (hl),a		
ld a,$07		
ldi (hl),a		
call  rlabel_01_4695 
ld b,$01		
ld hl,$4cf0		
rst $28			
call  rlabel_01_474E 
ld b,$02		
ld hl,$6c9a		
rst $28			
ld de,$0400		
ld b,$0e		
ld hl,$42f8		
rst $28			
xor a			
ld ($c346),a		
ld b,$01		
call  rlabel_00_0214 
ret			
ld a,$01		
ld ($cbd9),a		
xor a			
ld ($c346),a		
ld b,$05		
call  rlabel_00_0214 
ret			
.incbin "data/01_4459.data"
rlabel_01_45C7:
call  rlabel_01_45EE 
call  rlabel_00_13B1 
di			
ld hl,$c1a3		
ld de,$1434		
call  rlabel_00_0231 
xor a			
ld ($ff00+$9a),a	
ld ($ff00+$45),a	
ld a,$08		
ld ($ff00+$41),a	
ld a,($ff00+$ff)	
or $02			
ld ($ff00+$9c),a	
ld ($ff00+$ff),a	
ei			
ret			
rlabel_01_45EA:
call  rlabel_00_13E5 
ret			
rlabel_01_45EE:
ld hl,$d5d5		
ld b,$40		
xor a			
ldi (hl),a		
ld a,b			
dec a			
and $fe			
add a			
ldi (hl),a		
dec b			
.DB $20 $f5 ; < ['$20', '$f5'] > < 0x45fc > < 145fc 01 45FC | 20F5: jr nz, $F5 >
ld b,$10		
xor a			
ldi (hl),a		
ldi (hl),a		
dec b			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x4604 > < 14604 01 4604 | 20FA: jr nz, $FA >
ld b,$40		
xor a			
ldi (hl),a		
ld a,$40		
sub b			
and $fe			
add a			
ldi (hl),a		
dec b			
.DB $20 $f4 ; < ['$20', '$f4'] > < 0x4612 > < 14612 01 4612 | 20F4: jr nz, $F4 >
ret			
.incbin "data/01_4615.data"
rlabel_01_4695:
ld a,$0a		
ld ($0000),a		
xor a			
ld ($4000),a		
ld hl,$b000		
ld bc,$1000		
xor a			
ldi (hl),a		
dec bc			
ld a,b			
or c			
.DB $20 $f9 ; < ['$20', '$f9'] > < 0x46a9 > < 146a9 01 46A9 | 20F9: jr nz, $F9 >
xor a			
ld ($0000),a		
ld hl,$a000		
ld de,$4001		
xor a			
push af			
push de			
push hl			
ld h,d			
ld l,e			
ld de,$cfd5		
ld bc,$0100		
ld a,$88		
call  rlabel_00_0D50 
call  rlabel_01_4723 
call  rlabel_01_4724 
pop hl			
ld de,$cfd5		
ld bc,$00fe		
ld a,$00		
call  rlabel_00_1C23 
pop de			
inc d			
pop af			
inc a			
cp $0c			
.DB $38 $d6 ; < ['$38', '$d6'] > < 0x46de > < 146de 01 46DE | 38D6: jr c, $D6 >
ld hl,$c35f		
ld a,$00		
ldi (hl),a		
ld a,$00		
ldi (hl),a		
ld a,$00		
ldi (hl),a		
ld hl,$c365		
ld bc,$0200		
xor a			
ldi (hl),a		
dec bc			
ld a,b			
or c			
.DB $20 $f9 ; < ['$20', '$f9'] > < 0x46f7 > < 146f7 01 46F7 | 20F9: jr nz, $F9 >
ld c,$01		
ld de,$0000		
ld b,$03		
ld hl,$51b4		
rst $28			
ld c,$01		
ld de,$0002		
ld b,$03		
ld hl,$51b4		
rst $28			
ld b,$01		
ld hl,$47fa		
rst $28			
ld hl,$c362		
ld a,$00		
ldi (hl),a		
ld a,$00		
ldi (hl),a		
xor a			
ld ($cbcc),a		
ret			
rlabel_01_4723:
ret			
rlabel_01_4724:
call  rlabel_00_0F09 
ld d,a			
ld e,$5a		
call  rlabel_00_03F7 
ld a,d			
ld hl,$d014		
ld (hl),a		
ld de,$01d9		
call  rlabel_00_045D 
ld b,$03		
ld hl,$4f0c		
rst $28			
ld a,($cb72)		
cp $88			
.DB $28 $df ; < ['$28', '$df'] > < 0x4743 > < 14743 01 4743 | 28DF: jr z, $DF >
cp $8a			
.DB $28 $db ; < ['$28', '$db'] > < 0x4747 > < 14747 01 4747 | 28DB: jr z, $DB >
cp $86			
.DB $28 $d7 ; < ['$28', '$d7'] > < 0x474b > < 1474b 01 474B | 28D7: jr z, $D7 >
ret			
rlabel_01_474E:
ld hl,$c351		
ld de,$ffff		
ld a,e			
ldi (hl),a		
ld (hl),d		
ld a,$ff		
ld ($c96d),a		
ld a,$ff		
ld ($c358),a		
ld a,$ff		
ld ($c35b),a		
ret			
.incbin "data/01_4767.data"
push bc			
push de			
call  rlabel_01_479A 
pop de			
pop bc			
ld a,c			
ld hl,$c34c		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4783 > < 14783 01 4783 | 3001: jr nc, $01 >
.incbin "data/01_4785.data"
ld a,d			
ld (hl),a		
ld a,($c34f)		
cp d			
.DB $20 $07 ; < ['$20', '$07'] > < 0x478c > < 1478c 01 478C | 2007: jr nz, $07 >
.incbin "data/01_478E.data"
ld a,c			
call  rlabel_01_47B8 
ret			
rlabel_01_479A:
ld a,c			
ld h,a			
ld l,$00		
ld de,$cfd5		
add hl,de		
push hl			
ld a,c			
call  rlabel_00_12DD 
ld h,a			
ld l,$00		
ld de,$a000		
add hl,de		
pop de			
ld bc,$00fe		
ld a,$00		
call  rlabel_00_1C23 
ret			
rlabel_01_47B8:
ld a,c			
push af			
call  rlabel_00_12DD 
ld h,a			
ld l,$00		
ld de,$a000		
add hl,de		
push hl			
ld a,c			
ld h,a			
ld l,$00		
ld de,$cfd5		
add hl,de		
pop de			
ld bc,$00fe		
ld a,$00		
call  rlabel_00_1C63 
pop af			
ld b,a			
ld c,$00		
ld hl,$cfdd		
add hl,bc		
ldi a,(hl)		
ld d,a			
and a			
ret nz			
.incbin "data/01_47E2.data"
rlabel_01_47EA:
ld c,$00		
call  rlabel_01_479A 
ld c,$01		
call  rlabel_01_479A 
ld c,$02		
call  rlabel_01_479A 
ret			
rlabel_01_47FA:
ld c,$00		
call  rlabel_01_47B8 
ld c,$01		
call  rlabel_01_47B8 
ld c,$02		
call  rlabel_01_47B8 
ret			
.incbin "data/01_480A.data"
ld bc,$d6f5		
xor a			
ld ($cafb),a		
ld de,$0008		
call  rlabel_00_12EA 
ld a,(bc)		
ld e,a			
inc bc			
ld a,(bc)		
ld d,a			
inc bc			
and a			
.DB $20 $06 ; < ['$20', '$06'] > < 0x4890 > < 14890 01 4890 | 2006: jr nz, $06 >
ld a,e			
and a			
.DB $20 $02 ; < ['$20', '$02'] > < 0x4894 > < 14894 01 4894 | 2002: jr nz, $02 >
.incbin "data/01_4896.data"
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld de,$000c		
call  rlabel_00_12EA 
ld a,(bc)		
inc bc			
ldi (hl),a		
ld a,(bc)		
inc bc			
ldi (hl),a		
ld a,($cafb)		
inc a			
ld ($cafb),a		
cp $03			
.DB $38 $d0 ; < ['$38', '$d0'] > < 0x48b1 > < 148b1 01 48B1 | 38D0: jr c, $D0 >
ld d,b			
ld e,c			
xor a			
ld ($cafb),a		
push de			
ld de,$0040		
call  rlabel_00_12EA 
pop de			
ld c,$20		
call  rlabel_00_04CB 
ld a,($cafb)		
inc a			
ld ($cafb),a		
cp $03			
.DB $38 $e8 ; < ['$38', '$e8'] > < 0x48cf > < 148cf 01 48CF | 38E8: jr c, $E8 >
ld b,d			
ld c,e			
xor a			
ld ($cafb),a		
ld de,$003b		
call  rlabel_00_12EA 
ld a,(bc)		
ld (hl),a		
inc bc			
ld a,($cafb)		
inc a			
ld ($cafb),a		
cp $03			
.DB $38 $ec ; < ['$38', '$ec'] > < 0x48e9 > < 148e9 01 48E9 | 38EC: jr c, $EC >
xor a			
ld ($cafb),a		
ld de,$00d4		
call  rlabel_00_12EA 
ld a,(bc)		
ldi (hl),a		
inc bc			
ld a,(bc)		
ldi (hl),a		
inc bc			
ld a,(bc)		
ldi (hl),a		
inc bc			
ld a,(bc)		
ldi (hl),a		
inc bc			
ld a,($cafb)		
inc a			
ld ($cafb),a		
cp $03			
.DB $38 $e3 ; < ['$38', '$e3'] > < 0x490a > < 1490a 01 490A | 38E3: jr c, $E3 >
ret			
.incbin "data/01_490D.data"
rlabel_01_4A17:
ld de,$002c		
call  rlabel_00_12EA 
ldi a,(hl)		
ld d,(hl)		
ld e,a			
ld b,$03		
ld hl,$4f0c		
rst $28			
ld b,$01		
ld hl,$4fe0		
rst $28			
ld b,$01		
ld hl,$502e		
rst $28			
ld hl,$cb6e		
ldi a,(hl)		
ld d,(hl)		
ld e,a			
ld a,$ff		
call  rlabel_00_0409 
ld l,a			
ld h,$64		
call  rlabel_00_03BB 
push de			
ld de,$00e2		
call  rlabel_00_12EA 
pop de			
ld (hl),e		
ret			
rlabel_01_4A4D:
call  rlabel_01_4A65 
ld a,$ff		
call  rlabel_00_0409 
ld l,a			
ld h,$64		
call  rlabel_00_03BB 
push de			
ld de,$00e3		
call  rlabel_00_12EA 
pop de			
ld (hl),e		
ret			
rlabel_01_4A65:
ld a,$04		
ld ($cb76),a		
xor a			
ld h,a			
ld l,a			
push af			
push hl			
ld de,$002e		
add a			
call  rlabel_00_045D 
call  rlabel_00_12EA 
ldi a,(hl)		
ld d,(hl)		
ld e,a			
ld a,d			
cp $80			
.DB $20 $07 ; < ['$20', '$07'] > < 0x4a7f > < 14a7f 01 4A7F | 2007: jr nz, $07 >
ld a,($cb76)		
dec a			
ld ($cb76),a		
ld b,$03		
ld hl,$4f0c		
rst $28			
ld hl,$cb6e		
ldi a,(hl)		
ld d,(hl)		
ld e,a			
pop hl			
add hl,de		
pop af			
inc a			
cp $04			
.DB $38 $d1 ; < ['$38', '$d1'] > < 0x4a9a > < 14a9a 01 4A9A | 38D1: jr c, $D1 >
ld a,($cb76)		
and a			
.DB $20 $03 ; < ['$20', '$03'] > < 0x4aa0 > < 14aa0 01 4AA0 | 2003: jr nz, $03 >
.incbin "data/01_4AA2.data"
ld d,h			
ld e,l			
call  rlabel_00_039F 
ret			
rlabel_01_4AAB:
ld de,$0010		
call  rlabel_00_12EA 
ldi a,(hl)		
ld b,(hl)		
ld c,a			
ld de,$0014		
call  rlabel_00_12EA 
ldi a,(hl)		
ld d,(hl)		
ld e,a			
call  rlabel_01_4AE9 
push af			
ld de,$00e0		
call  rlabel_00_12EA 
pop af			
ld (hl),a		
ret			
rlabel_01_4ACA:
ld de,$0012		
call  rlabel_00_12EA 
ldi a,(hl)		
ld b,(hl)		
ld c,a			
ld de,$0016		
call  rlabel_00_12EA 
ldi a,(hl)		
ld d,(hl)		
ld e,a			
call  rlabel_01_4AE9 
push af			
ld de,$00e1		
call  rlabel_00_12EA 
pop af			
ld (hl),a		
ret			
rlabel_01_4AE9:
ld a,b			
cp d			
.DB $38 $08 ; < ['$38', '$08'] > < 0x4aeb > < 14aeb 01 4AEB | 3808: jr c, $08 >
.DB $20 $09 ; < ['$20', '$09'] > < 0x4aed > < 14aed 01 4AED | 2009: jr nz, $09 >
ld a,c			
cp e			
.DB $38 $02 ; < ['$38', '$02'] > < 0x4af1 > < 14af1 01 4AF1 | 3802: jr c, $02 >
.DB $20 $03 ; < ['$20', '$03'] > < 0x4af3 > < 14af3 01 4AF3 | 2003: jr nz, $03 >
ld a,$ff		
ret			
ld a,$40		
call  rlabel_00_0409 
call  rlabel_00_03CF 
ld d,$04		
call  rlabel_00_03F7 
ld a,e			
ret			
rlabel_01_4B07:
ld de,$0012		
call  rlabel_00_12EA 
ldi a,(hl)		
ld d,(hl)		
ld e,a			
ld a,$03		
call  rlabel_00_0409 
push de			
ld de,$001c		
call  rlabel_00_12EA 
ldi a,(hl)		
ld d,(hl)		
ld e,a			
ld a,$07		
call  rlabel_00_0409 
pop hl			
add hl,de		
ld d,h			
ld e,l			
ld a,$50		
call  rlabel_00_039F 
ld a,$ff		
sub e			
ld b,a			
ld de,$001e		
call  rlabel_00_12EA 
ld (hl),b		
ret			
rlabel_01_4B39:
xor a			
push af			
ld de,$00d4		
call  rlabel_00_045D 
call  rlabel_00_12EA 
ld a,(hl)		
ld c,$ff		
cp $ff			
.DB $28 $07 ; < ['$28', '$07'] > < 0x4b49 > < 14b49 01 4B49 | 2807: jr z, $07 >
ld c,a			
ld b,$0c		
ld hl,$5322		
rst $28			
pop af			
push af			
ld de,$00cc		
call  rlabel_00_045D 
call  rlabel_00_12EA 
ld (hl),c		
pop af			
inc a			
cp $04			
.DB $38 $d6 ; < ['$38', '$d6'] > < 0x4b62 > < 14b62 01 4B62 | 38D6: jr c, $D6 >
ret			
rlabel_01_4B65:
ld de,$002c		
call  rlabel_00_12EA 
ldi a,(hl)		
ld d,(hl)		
ld e,a			
ld b,$03		
ld hl,$4f0c		
rst $28			
ld de,$00d8		
call  rlabel_00_12EA 
ld a,($cb74)		
ld (hl),a		
ret			
rlabel_01_4B7F:
ld hl,$cb76		
ld b,$08		
ld a,$07		
ldi (hl),a		
dec b			
.DB $20 $fc ; < ['$20', '$fc'] > < 0x4b88 > < 14b88 01 4B88 | 20FC: jr nz, $FC >
xor a			
push af			
ld de,$002e		
add a			
call  rlabel_00_045D 
call  rlabel_00_12EA 
ldi a,(hl)		
ld d,(hl)		
ld e,a			
ld b,$03		
ld hl,$4f0c		
rst $28			
ld hl,$4bf3		
ld a,($cb74)		
add a			
call  rlabel_00_0462 
ld de,$cb76		
ld c,$01		
ld a,(hl)		
and c			
.DB $28 $03 ; < ['$28', '$03'] > < 0x4bb0 > < 14bb0 01 4BB0 | 2803: jr z, $03 >
.incbin "data/01_4BB2.data"
inc de			
sla c			
.DB $30 $f4 ; < ['$30', '$f4'] > < 0x4bb8 > < 14bb8 01 4BB8 | 30F4: jr nc, $F4 >
inc hl			
ld de,$cb76		
ld c,$01		
ld a,(hl)		
and c			
.DB $28 $03 ; < ['$28', '$03'] > < 0x4bc2 > < 14bc2 01 4BC2 | 2803: jr z, $03 >
.incbin "data/01_4BC4.data"
inc de			
sla c			
.DB $30 $f4 ; < ['$30', '$f4'] > < 0x4bca > < 14bca 01 4BCA | 30F4: jr nc, $F4 >
pop af			
inc a			
cp $06			
.DB $38 $b9 ; < ['$38', '$b9'] > < 0x4bd0 > < 14bd0 01 4BD0 | 38B9: jr c, $B9 >
ld de,$00d9		
call  rlabel_00_12EA 
ld de,$cb76		
ld b,$04		
ld a,(de)		
swap a			
ld c,a			
inc de			
ld a,(hl)		
and $0f			
or c			
ld (hl),a		
ld a,(de)		
ld c,a			
inc de			
ld a,(hl)		
and $f0			
or c			
ldi (hl),a		
dec b			
.DB $20 $eb ; < ['$20', '$eb'] > < 0x4bf0 > < 14bf0 01 4BF0 | 20EB: jr nz, $EB >
ret			
.incbin "data/01_4BF3.data"
ld a,($cb74)		
add a			
ld de,$4bf3		
call  rlabel_00_045D 
ld a,(de)		
push af			
inc de			
ld a,(de)		
ld e,a			
pop af			
ld d,a			
ret			
rlabel_01_4C4F:
xor a			
push af			
ld de,$002c		
add a			
call  rlabel_00_045D 
call  rlabel_00_12EA 
ldi a,(hl)		
ld d,(hl)		
ld e,a			
ld b,$03		
ld hl,$4f0c		
rst $28			
pop af			
push af			
ld de,$00e4		
call  rlabel_00_045D 
call  rlabel_00_12EA 
ld a,($cb72)		
ld (hl),a		
pop af			
inc a			
cp $07			
.DB $38 $d7 ; < ['$38', '$d7'] > < 0x4c77 > < 14c77 01 4C77 | 38D7: jr c, $D7 >
ld de,$00eb		
call  rlabel_00_12EA 
ld b,$05		
xor a			
ldi (hl),a		
dec b			
.DB $20 $fc ; < ['$20', '$fc'] > < 0x4c84 > < 14c84 01 4C84 | 20FC: jr nz, $FC >
xor a			
push af			
ld de,$00e4		
call  rlabel_00_045D 
call  rlabel_00_12EA 
ld a,(hl)		
cp $10			
call z,$4ca6		
cp $14			
call z,$4ca6		
call  rlabel_01_4CAE 
pop af			
inc a			
cp $07			
.DB $38 $e2 ; < ['$38', '$e2'] > < 0x4ca3 > < 14ca3 01 4CA3 | 38E2: jr c, $E2 >
ret			
.incbin "data/01_4CA6.data"
rlabel_01_4CAE:
and a			
ret z			
.incbin "data/01_4CB0.data"
ld a,($cafb)		
push af			
xor a			
ld ($cafb),a		
call  rlabel_01_4D1E 
ld a,($cafb)		
inc a			
ld ($cafb),a		
cp $03			
.DB $38 $f2 ; < ['$38', '$f2'] > < 0x4ce9 > < 14ce9 01 4CE9 | 38F2: jr c, $F2 >
pop af			
ld ($cafb),a		
ret			
call  rlabel_01_47EA 
ld a,($c34c)		
push af			
xor a			
ld ($cafb),a		
ld ($c34c),a		
xor a			
ld c,a			
call  rlabel_01_47B8 
call  rlabel_01_4D1E 
xor a			
ld c,a			
call  rlabel_01_479A 
ld a,($c34c)		
inc a			
ld ($c34c),a		
cp $0c			
.DB $38 $e8 ; < ['$38', '$e8'] > < 0x4d14 > < 14d14 01 4D14 | 38E8: jr c, $E8 >
pop af			
ld ($c34c),a		
call  rlabel_01_47FA 
ret			
rlabel_01_4D1E:
call  rlabel_01_4EE8 
call  rlabel_01_4AAB 
call  rlabel_01_4ACA 
call  rlabel_01_4A17 
call  rlabel_01_4A4D 
call  rlabel_01_4B65 
call  rlabel_01_4B7F 
call  rlabel_01_4B07 
call  rlabel_01_4B39 
ret			
rlabel_01_4D3A:
call  rlabel_01_4C4F 
ld hl,$000a		
ld de,$0090		
ld bc,$0002		
call  rlabel_01_4DB7 
ld hl,$000e		
ld de,$0092		
ld bc,$0002		
call  rlabel_01_4DB7 
ld hl,$0010		
ld de,$0094		
ld bc,$000c		
call  rlabel_01_4DB7 
ld hl,$cb76		
ld c,$10		
call  rlabel_00_04E2 
xor a			
push af			
ld de,$00e4		
call  rlabel_00_045D 
call  rlabel_00_12EA 
ld a,(hl)		
cp $30			
.DB $38 $1a ; < ['$38', '$1a'] > < 0x4d77 > < 14d77 01 4D77 | 381A: jr c, $1A >
.incbin "data/01_4D79.data"
pop af			
inc a			
cp $07			
.DB $38 $d1 ; < ['$38', '$d1'] > < 0x4d97 > < 14d97 01 4D97 | 38D1: jr c, $D1 >
xor a			
push af			
ld b,a			
ld hl,$cb76		
call  rlabel_00_0462 
ld a,(hl)		
and a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x4da4 > < 14da4 01 4DA4 | 2807: jr z, $07 >
.incbin "data/01_4DA6.data"
pop af			
inc a			
cp $10			
.DB $38 $e7 ; < ['$38', '$e7'] > < 0x4db1 > < 14db1 01 4DB1 | 38E7: jr c, $E7 >
call  rlabel_01_4EBC 
ret			
rlabel_01_4DB7:
push bc			
push de			
ld d,h			
ld e,l			
call  rlabel_00_12EA 
ld b,h			
ld c,l			
pop de			
call  rlabel_00_12EA 
ld d,b			
ld e,c			
pop bc			
call  rlabel_00_04BC 
ret			
.incbin "data/01_4DCB.data"
rlabel_01_4EBC:
ld hl,$0008		
ld de,$000a		
call  rlabel_01_4ECF 
ld hl,$000c		
ld de,$000e		
call  rlabel_01_4ECF 
ret			
rlabel_01_4ECF:
push hl			
call  rlabel_00_12EA 
ldi a,(hl)		
ld b,(hl)		
ld c,a			
pop de			
call  rlabel_00_12EA 
ldi a,(hl)		
ld e,a			
ldd a,(hl)		
cp b			
ret c			
.DB $20 $03 ; < ['$20', '$03'] > < 0x4edf > < 14edf 01 4EDF | 2003: jr nz, $03 >
ld a,e			
cp c			
ret c			
ld a,c			
ldi (hl),a		
ld (hl),b		
ret			
rlabel_01_4EE8:
call  rlabel_01_4D3A 
ld a,($cafd)		
push af			
ld a,$00		
ld bc,$0010		
ld de,$0046		
ld hl,$0020		
call  rlabel_01_4F67 
ld a,$00		
ld bc,$0014		
ld de,$0048		
ld hl,$0024		
call  rlabel_01_4F67 
ld a,$00		
ld bc,$0018		
ld de,$004a		
ld hl,$0028		
call  rlabel_01_4F67 
ld a,$01		
ld bc,$0012		
ld de,$0046		
ld hl,$0022		
call  rlabel_01_4F67 
ld a,$01		
ld bc,$001a		
ld de,$004a		
ld hl,$002a		
call  rlabel_01_4F67 
ld a,$02		
call  rlabel_01_4F4C 
ld a,$03		
call  rlabel_01_4F4C 
ld a,$04		
call  rlabel_01_4F4C 
call  rlabel_01_4FC6 
pop af			
ld ($cafd),a		
ret			
rlabel_01_4F4C:
push af			
ld bc,$0022		
ld de,$0046		
ld hl,$0022		
call  rlabel_01_4F67 
pop af			
ld bc,$002a		
ld de,$004a		
ld hl,$002a		
call  rlabel_01_4F67 
ret			
rlabel_01_4F67:
call  rlabel_00_1297 
ld a,($ff00+$8c)	
ld d,a			
ld a,($ff00+$8d)	
ld e,a			
call  rlabel_00_12EA 
ldi a,(hl)		
ld d,(hl)		
ld e,a			
push de			
ld a,($ff00+$8b)	
ld ($cafd),a		
ld b,$03		
ld hl,$5add		
rst $28			
ld b,$03		
ld hl,$4f0c		
rst $28			
ld b,$01		
ld hl,$4fe0		
rst $28			
ld b,$01		
ld hl,$502e		
rst $28			
ld a,($ff00+$8e)	
ld d,a			
ld a,($ff00+$8f)	
ld e,a			
ld hl,$cb26		
add hl,de		
ldi a,(hl)		
ld b,(hl)		
ld c,a			
push bc			
ld a,($ff00+$90)	
ld d,a			
ld a,($ff00+$91)	
ld e,a			
call  rlabel_00_12EA 
pop bc			
pop de			
rlabel_01_4FAD:
ld a,e			
add c			
ld e,a			
ld a,d			
adc b			
ld d,a			
ld a,d			
cp $03			
.DB $38 $0a ; < ['$38', '$0a'] > < 0x4fb6 > < 14fb6 01 4FB6 | 380A: jr c, $0A >
.incbin "data/01_4FB8.data"
ld a,e			
ldi (hl),a		
ld (hl),d		
ret			
rlabel_01_4FC6:
call  rlabel_01_4A65 
push de			
ld de,$0016		
call  rlabel_00_12EA 
ldi a,(hl)		
ld b,(hl)		
ld c,a			
push bc			
ld de,$0026		
call  rlabel_00_12EA 
pop de			
pop bc			
call  rlabel_01_4FAD 
ret			
call  rlabel_00_12DA 
ld b,a			
ld a,($cb72)		
cp $40			
ret c			
.incbin "data/01_4FEA.data"
ld a,($cb72)		
cp $50			
ret c			
.incbin "data/01_5034.data"
ld hl,$d5ea		
inc (hl)		
ld hl,$d5e9		
ld a,($ff00+$a5)	
and $f0			
.DB $28 $04 ; < ['$28', '$04'] > < 0x519d > < 1519d 01 519D | 2804: jr z, $04 >
ld b,a			
xor a			
.DB $18 $11 ; < ['$18', '$11'] > < 0x51a1 > < 151a1 01 51A1 | 1811: jr $11 >
ld a,($ff00+$a4)	
and $f0			
ld b,a			
ld a,(hl)		
inc a			
cp $18			
.DB $28 $04 ; < ['$28', '$04'] > < 0x51ac > < 151ac 01 51AC | 2804: jr z, $04 >
ld b,$00		
.DB $18 $02 ; < ['$18', '$02'] > < 0x51b0 > < 151b0 01 51B0 | 1802: jr $02 >
ld a,$10		
ld (hl),a		
ld a,b			
ld ($d5e8),a		
call  rlabel_00_1347 
jp $1340		
ld a,($ff00+$41)	
and $02			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x51c3 > < 151c3 01 51C3 | 20FA: jr nz, $FA >
ld a,$c3		
ld ($ff00+$40),a	
ret			
rlabel_01_51CA:
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ld a,$c9		
ld ($c1aa),a		
xor a			
ld ($d5eb),a		
ld ($ff00+$a1),a	
ld ($ff00+$a0),a	
call  rlabel_00_037E 
call  rlabel_00_0370 
call  rlabel_00_05AA 
ld hl,$560c		
ld de,$8000		
ld bc,$01b0		
ld a,$01		
call  rlabel_00_06FD 
ld hl,$7454		
ld de,$9530		
ld bc,$0008		
ld a,$01		
call  rlabel_00_06FD 
ld a,($cbf2)		
and a			
ld hl,$638c		
.DB $28 $03 ; < ['$28', '$03'] > < 0x520c > < 1520c 01 520C | 2803: jr z, $03 >
ld hl,$672c		
ld de,$9000		
ld bc,$0074		
ld a,$01		
call  rlabel_00_06FD 
ld hl,$6acc		
ld de,$8dc0		
ld bc,$0024		
ld a,$01		
call  rlabel_00_06FD 
ld hl,$6acc		
ld bc,$0024		
ld a,$01		
push de			
call  rlabel_00_06FD 
pop hl			
ld a,$0c		
call  rlabel_00_0462 
ld c,$12		
xor a			
call  rlabel_00_0518 
inc hl			
xor a			
call  rlabel_00_0519 
inc hl			
xor a			
call  rlabel_00_0518 
inc hl			
xor a			
call  rlabel_00_0519 
ld a,$0d		
call  rlabel_00_0462 
dec c			
.DB $20 $e5 ; < ['$20', '$e5'] > < 0x5257 > < 15257 01 5257 | 20E5: jr nz, $E5 >
ld hl,$73b4		
ld de,$9490		
ld bc,$0014		
ld a,$01		
call  rlabel_00_06FD 
ld hl,$52e5		
call  rlabel_01_559E 
ld a,$01		
ld ($ff00+$4f),a	
ld a,($cbf2)		
and a			
ld hl,$52f2		
call nz,$559e		
xor a			
ld ($ff00+$4f),a	
call  rlabel_01_555B 
ld hl,$9847		
ld d,$00		
ld bc,$0606		
call  rlabel_00_0533 
ld a,($cbf2)		
and a			
.DB $28 $37 ; < ['$28', '$37'] > < 0x5290 > < 15290 01 5290 | 2837: jr z, $37 >
ld hl,$0000		
ld bc,$0102		
ld de,$6c24		
push hl			
push bc			
call  rlabel_00_0897 
pop bc			
pop hl			
inc h			
inc l			
dec c			
.DB $20 $f1 ; < ['$20', '$f1'] > < 0x52a5 > < 152a5 01 52A5 | 20F1: jr nz, $F1 >
ld hl,$0000		
ld bc,$0107		
ld de,$6bec		
push hl			
push bc			
call  rlabel_00_089F 
pop bc			
pop hl			
inc h			
inc l			
dec c			
.DB $20 $f1 ; < ['$20', '$f1'] > < 0x52ba > < 152ba 01 52BA | 20F1: jr nz, $F1 >
ld a,$01		
ld ($ff00+$4f),a	
ld hl,$52ff		
call  rlabel_01_559E 
xor a			
ld ($ff00+$4f),a	
ld hl,$5330		
call  rlabel_01_55A2 
ld hl,$9980		
ld e,$07		
push hl			
ld d,$3a		
ld bc,$0503		
call  rlabel_00_0540 
pop hl			
inc hl			
inc hl			
inc hl			
dec e			
.DB $20 $f0 ; < ['$20', '$f0'] > < 0x52e2 > < 152e2 01 52E2 | 20F0: jr nz, $F0 >
ret			
.incbin "data/01_52E5.data"
ld a,c			
ld ($d5d7),a		
ld c,$04		
ld de,$0000		
call  rlabel_00_1311 
call  rlabel_01_51CA 
ld a,$00		
ld ($d5d5),a		
ld de,$540e		
ld hl,$d5d8		
ld c,$0f		
call  rlabel_00_04CB 
ld a,$07		
ld ($d5e7),a		
call  rlabel_01_5470 
call  rlabel_01_5515 
call  rlabel_00_0369 
xor a			
ld ($d5ea),a		
ld hl,$c1aa		
ld de,$5192		
call  rlabel_00_0231 
ld a,$01		
ld (hl),a		
ld a,$40		
ld ($ff00+$9a),a	
ld de,$51bf		
ld hl,$c1b5		
call  rlabel_00_0231 
ld a,$01		
ld (hl),a		
ld hl,$c1a3		
ld de,$0ccc		
call  rlabel_00_0231 
xor a			
ld ($ff00+$0f),a	
ld a,($ff00+$41)	
or $40			
ld ($ff00+$41),a	
ld a,($ff00+$9c)	
or $03			
ld ($ff00+$9c),a	
call  rlabel_00_027C 
ld a,$19		
call  rlabel_00_305E 
call  rlabel_01_54F5 
ld a,$80		
ld ($c96b),a		
ld c,$01		
call  rlabel_00_1332 
call  rlabel_01_5442 
call  rlabel_01_55BF 
jp nz,$5345		
ld hl,$53da		
push hl			
ld a,($d5e8)		
bit 6,a			
jp nz,$546c		
bit 7,a			
jp nz,$5470		
ret			
ld a,($ff00+$a5)	
bit 0,a			
jp nz,$53e8		
bit 3,a			
jp nz,$53e8		
.DB $18 $d7 ; < ['$18', '$d7'] > < 0x53e6 > < 153e6 01 53E6 | 18D7: jr $D7 >
call  rlabel_01_5442 
ld a,($cadc)		
cp $20			
.DB $38 $f6 ; < ['$38', '$f6'] > < 0x53f0 > < 153f0 01 53F0 | 38F6: jr c, $F6 >
call  rlabel_00_027C 
ld c,$04		
ld de,$0000		
call  rlabel_00_1318 
call  rlabel_01_5442 
ld a,($cad7)		
and a			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x5404 > < 15404 01 5404 | 20F7: jr nz, $F7 >
call  rlabel_01_5451 
ld a,($d5e7)		
ld c,a			
ret			
.incbin "data/01_540E.data"
rlabel_01_541D:
ld a,($d5d7)		
ld c,a			
ld b,$03		
ld de,$d5d9		
ld hl,$d5dc		
srl c			
.DB $30 $07 ; < ['$30', '$07'] > < 0x542b > < 1542b 01 542B | 3007: jr nc, $07 >
ld a,(de)		
cp $40			
.DB $28 $02 ; < ['$28', '$02'] > < 0x5430 > < 15430 01 5430 | 2802: jr z, $02 >
add (hl)		
ld (de),a		
ld a,$05		
call  rlabel_00_0462 
ld a,$05		
call  rlabel_00_045D 
dec b			
.DB $20 $e8 ; < ['$20', '$e8'] > < 0x543f > < 1543f 01 543F | 20E8: jr nz, $E8 >
ret			
rlabel_01_5442:
call  rlabel_00_027C 
call  rlabel_01_54F0 
call  rlabel_01_5515 
call  rlabel_01_541D 
jp $54b8		
rlabel_01_5451:
call  rlabel_00_027C 
call  rlabel_00_05AA 
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ld a,$c9		
ld ($c1aa),a		
ld a,($ff00+$9b)	
or $04			
ld ($ff00+$9b),a	
ret			
ld b,$ff		
.DB $18 $02 ; < ['$18', '$02'] > < 0x546e > < 1546e 01 546E | 1802: jr $02 >
rlabel_01_5470:
ld b,$01		
ld a,($d5d7)		
ld e,a			
ld a,($d5e7)		
ld c,a			
ld a,c			
add b			
and $07			
ld c,a			
ld hl,$05cb		
call  rlabel_00_0462 
ld a,(hl)		
and e			
.DB $28 $f1 ; < ['$28', '$f1'] > < 0x5487 > < 15487 01 5487 | 28F1: jr z, $F1 >
jp $548c		
ld a,c			
ld ($d5e7),a		
ld hl,$d5da		
ld e,$ee		
ld b,$00		
ld d,$03		
ld a,b			
cp c			
ld a,e			
push af			
.DB $20 $02 ; < ['$20', '$02'] > < 0x549d > < 1549d 01 549D | 2002: jr nz, $02 >
sub $12			
ldi (hl),a		
pop af			
ld a,$01		
.DB $20 $02 ; < ['$20', '$02'] > < 0x54a5 > < 154a5 01 54A5 | 2002: jr nz, $02 >
ld a,$11		
ldd (hl),a		
ld a,e			
add $06			
ld e,a			
ld a,$05		
call  rlabel_00_0462 
inc b			
dec d			
.DB $20 $e2 ; < ['$20', '$e2'] > < 0x54b5 > < 154b5 01 54B5 | 20E2: jr nz, $E2 >
ret			
ld hl,$d5d8		
ld de,$c048		
ld a,$03		
push af			
push hl			
call  rlabel_01_54D2 
ld e,l			
ld d,h			
pop hl			
ld a,$05		
call  rlabel_00_0462 
pop af			
dec a			
.DB $20 $ef ; < ['$20', '$ef'] > < 0x54cf > < 154cf 01 54CF | 20EF: jr nz, $EF >
ret			
rlabel_01_54D2:
push de			
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld b,a			
pop hl			
ld a,$06		
push af			
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
add $08			
ld d,a			
ld a,c			
ldi (hl),a		
inc c			
ld a,b			
ldi (hl),a		
pop af			
dec a			
.DB $20 $ef ; < ['$20', '$ef'] > < 0x54ed > < 154ed 01 54ED | 20EF: jr nz, $EF >
ret			
rlabel_01_54F0:
ld a,($ff00+$a6)	
and $07			
ret nz			
rlabel_01_54F5:
ld a,($ff00+$a6)	
srl a			
srl a			
srl a			
and $07			
ld e,a			
ld d,$f0		
call  rlabel_00_03F7 
ld hl,$6c34		
add hl,de		
ld de,$93a0		
ld bc,$001e		
ld a,$01		
call  rlabel_00_06FD 
ret			
rlabel_01_5515:
ld hl,$d5d5		
ld a,($d5ea)		
cp $10			
.DB $38 $0e ; < ['$38', '$0e'] > < 0x551d > < 1551d 01 551D | 380E: jr c, $0E >
xor a			
ld ($d5ea),a		
ld a,(hl)		
add $24			
cp $d8			
.DB $20 $02 ; < ['$20', '$02'] > < 0x5528 > < 15528 01 5528 | 2002: jr nz, $02 >
ld a,$00		
ld (hl),a		
ld c,(hl)		
ld de,$401d		
call  rlabel_01_5535 
ret			
rlabel_01_5535:
ld hl,$c000		
ld a,$03		
push af			
ld b,$06		
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
ld a,$90		
ldi (hl),a		
dec b			
.DB $20 $ef ; < ['$20', '$ef'] > < 0x554c > < 1554c 01 554C | 20EF: jr nz, $EF >
ld a,d			
sub $30			
ld d,a			
ld a,e			
add $10			
ld e,a			
pop af			
dec a			
.DB $20 $e0 ; < ['$20', '$e0'] > < 0x5558 > < 15558 01 5558 | 20E0: jr nz, $E0 >
ret			
rlabel_01_555B:
ld a,$0b		
ld ($ff00+$8a),a	
ld a,$01		
ld ($ff00+$8b),a	
ld a,$64		
push af			
ld a,$0b		
call  rlabel_01_5589 
ld b,a			
ld a,$14		
call  rlabel_01_5589 
ld c,a			
call  rlabel_00_0CF4 
push hl			
ld a,$04		
call  rlabel_01_5589 
add $53			
ld d,a			
ld e,$05		
pop hl			
call  rlabel_00_0D0D 
pop af			
dec a			
.DB $20 $dd ; < ['$20', '$dd'] > < 0x5586 > < 15586 01 5586 | 20DD: jr nz, $DD >
ret			
rlabel_01_5589:
ld l,a			
ld a,($ff00+$8a)	
swap a			
rlca			
ld h,a			
ld a,($ff00+$8b)	
inc a			
ld ($ff00+$8b),a	
add h			
ld ($ff00+$8a),a	
ld h,a			
call  rlabel_00_3019 
ld a,h			
ret			
rlabel_01_559E:
ld d,$00		
.DB $18 $02 ; < ['$18', '$02'] > < 0x55a0 > < 155a0 01 55A0 | 1802: jr $02 >
rlabel_01_55A2:
ld d,$01		
ldi a,(hl)		
and a			
.DB $28 $16 ; < ['$28', '$16'] > < 0x55a6 > < 155a6 01 55A6 | 2816: jr z, $16 >
ld c,a			
ldi a,(hl)		
ld b,a			
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
push hl			
ld l,e			
ld h,a			
call  rlabel_00_0519 
inc hl			
ld a,b			
add d			
ld b,a			
dec c			
.DB $20 $f6 ; < ['$20', '$f6'] > < 0x55b9 > < 155b9 01 55B9 | 20F6: jr nz, $F6 >
pop hl			
.DB $18 $e6 ; < ['$18', '$e6'] > < 0x55bc > < 155bc 01 55BC | 18E6: jr $E6 >
ret			
rlabel_01_55BF:
ld a,($ff00+$a6)	
and $3f			
.DB $20 $26 ; < ['$20', '$26'] > < 0x55c3 > < 155c3 01 55C3 | 2026: jr nz, $26 >
ld hl,$d5eb		
inc (hl)		
ld a,(hl)		
cp $14			
.DB $38 $1d ; < ['$38', '$1d'] > < 0x55cc > < 155cc 01 55CC | 381D: jr c, $1D >
.incbin "data/01_55CE.data"
xor a			
ret			
.incbin "data/01_55ED.data"
xor a			
ld ($ff00+$8e),a	
ld a,$01		
ld ($ff00+$91),a	
call  rlabel_01_78A1 
and a			
.DB $28 $12 ; < ['$28', '$12'] > < 0x788a > < 1788a 01 788A | 2812: jr z, $12 >
.incbin "data/01_788C.data"
xor a			
ld c,a			
ret			
rlabel_01_78A1:
ld a,$0a		
ld ($0000),a		
ld a,($ff00+$91)	
ld ($4000),a		
call  rlabel_01_7959 
ld hl,$bf00		
ld a,e			
cp (hl)			
.DB $20 $07 ; < ['$20', '$07'] > < 0x78b3 > < 178b3 01 78B3 | 2007: jr nz, $07 >
inc hl			
ld a,d			
cp (hl)			
.DB $20 $02 ; < ['$20', '$02'] > < 0x78b8 > < 178b8 01 78B8 | 2002: jr nz, $02 >
.DB $18 $08 ; < ['$18', '$08'] > < 0x78ba > < 178ba 01 78BA | 1808: jr $08 >
.incbin "data/01_78BC.data"
ld hl,$b000		
ld de,$cb76		
ld bc,$0010		
call  rlabel_00_04BC 
call  rlabel_01_7913 
ld hl,$b100		
ld de,$c348		
ld bc,$0020		
call  rlabel_00_04BC 
ld hl,$b200		
ld de,$c365		
ld bc,$0200		
call  rlabel_00_04BC 
ld hl,$b400		
ld de,$cdbf		
ld bc,$0180		
call  rlabel_00_04BC 
ld hl,$b800		
ld de,$c565		
ld bc,$0400		
call  rlabel_00_04BC 
ld de,$b600		
ld b,$02		
ld hl,$6c89		
rst $28			
xor a			
ld ($0000),a		
xor a			
ld c,a			
ret			
rlabel_01_7913:
ld a,($ff00+$91)	
ld d,a			
ld e,$00		
call  rlabel_01_7921 
ld a,($ff00+$91)	
ld ($4000),a		
ret			
rlabel_01_7921:
ld hl,$a000		
ld a,$0c		
push af			
ld bc,$0100		
push bc			
ld a,d			
ld ($4000),a		
ld b,(hl)		
ld a,e			
ld ($4000),a		
ld (hl),b		
inc hl			
pop bc			
dec bc			
ld a,b			
or c			
.DB $20 $ee ; < ['$20', '$ee'] > < 0x793a > < 1793a 01 793A | 20EE: jr nz, $EE >
pop af			
dec a			
.DB $20 $e6 ; < ['$20', '$e6'] > < 0x793e > < 1793e 01 793E | 20E6: jr nz, $E6 >
ld hl,$bc00		
ld bc,$0100		
push bc			
ld a,d			
ld ($4000),a		
ld b,(hl)		
ld a,e			
ld ($4000),a		
ld (hl),b		
inc hl			
pop bc			
dec bc			
ld a,b			
or c			
.DB $20 $ee ; < ['$20', '$ee'] > < 0x7956 > < 17956 01 7956 | 20EE: jr nz, $EE >
ret			
rlabel_01_7959:
xor a			
ld d,a			
ld e,a			
ld hl,$a000		
ld bc,$1e00		
ld a,(hl)		
add e			
ld e,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x7965 > < 17965 01 7965 | 3001: jr nc, $01 >
inc d			
inc hl			
dec bc			
ld a,b			
or c			
.DB $20 $f4 ; < ['$20', '$f4'] > < 0x796c > < 1796c 01 796C | 20F4: jr nz, $F4 >
ret			
ld a,$0a		
ld ($0000),a		
ld a,$01		
ld ($4000),a		
ld hl,$b000		
ld de,$cb76		
ld bc,$0010		
call  rlabel_00_04BC 
call  rlabel_01_79B7 
and a			
.DB $20 $07 ; < ['$20', '$07'] > < 0x7989 > < 17989 01 7989 | 2007: jr nz, $07 >
xor a			
ld ($0000),a		
ld c,$00		
ret			
.incbin "data/01_7992.data"
rlabel_01_79B7:
ld hl,$cb76		
ld de,$7861		
ld b,$0e		
ldi a,(hl)		
ld c,a			
ld a,(de)		
inc de			
cp c			
.DB $20 $05 ; < ['$20', '$05'] > < 0x79c4 > < 179c4 01 79C4 | 2005: jr nz, $05 >
dec b			
.DB $20 $f6 ; < ['$20', '$f6'] > < 0x79c7 > < 179c7 01 79C7 | 20F6: jr nz, $F6 >
xor a			
ret			
.incbin "data/01_79CB.data"
