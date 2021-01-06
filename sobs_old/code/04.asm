.BANK $04 SLOT 1
.ORG 0
.incbin "data/04_4000.data"
call  rlabel_04_403E 
call  rlabel_00_0EEE 
call  rlabel_04_4AB0 
call  rlabel_00_027C 
ld a,($c346)		
and a			
.DB $20 $f1 ; < ['$20', '$f1'] > < 0x403b > < 4403b 04 403B | 20F1: jr nz, $F1 >
ret			
rlabel_04_403E:
call  rlabel_00_13B1 
di			
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ei			
ld b,$03		
ld hl,$41aa		
rst $28			
ld a,$00		
ld ($caf9),a		
xor a			
ld ($cb25),a		
ld ($cafc),a		
ld hl,$c35f		
ld de,$cb9e		
ld bc,$0003		
call  rlabel_00_04BC 
ld hl,$c35f		
ld bc,$0003		
call  rlabel_00_04BC 
xor a			
ld hl,$cba4		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ld hl,$cbaa		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ld hl,$c35f		
ld de,$cbb0		
ld bc,$0003		
call  rlabel_00_04BC 
ld hl,$c35f		
ld bc,$0003		
call  rlabel_00_04BC 
xor a			
ld ($cbc8),a		
ld a,$10		
ld ($cbc9),a		
ld a,($cb9c)		
and a			
.DB $28 $13 ; < ['$28', '$13'] > < 0x40a8 > < 440a8 04 40A8 | 2813: jr z, $13 >
inc a			
.DB $28 $10 ; < ['$28', '$10'] > < 0x40ab > < 440ab 04 40AB | 2810: jr z, $10 >
dec a			
ld d,a			
ld e,$ff		
call  rlabel_00_03F7 
ld a,$64		
call  rlabel_00_039F 
ld a,e			
ld ($cb9c),a		
call  rlabel_04_539B 
call  rlabel_04_5701 
xor a			
ld ($cbca),a		
xor a			
ld ($cb90),a		
xor a			
ld ($cbce),a		
call  rlabel_04_41EA 
call  rlabel_04_479D 
xor a			
ld ($cb99),a		
ld a,$01		
ld ($c346),a		
ld a,$18		
call  rlabel_00_305E 
call  rlabel_04_4AA7 
ld a,$01		
ld ($cbcd),a		
ld a,$80		
ld ($cadf),a		
ret			
rlabel_04_40F1:
ld b,$03		
ld hl,$4048		
rst $28			
ld hl,$7001		
ld de,$8800		
ld bc,$00c0		
ld a,$3d		
call  rlabel_00_0D83 
ld hl,$70c1		
ld de,$88c0		
ld bc,$0030		
ld a,$3d		
call  rlabel_00_0D83 
ld hl,$7301		
ld de,$9010		
ld bc,$00a0		
ld a,$3d		
call  rlabel_00_0D83 
ld hl,$7401		
ld de,$9300		
ld bc,$00a0		
ld a,$3d		
call  rlabel_00_0DA7 
ld hl,$7401		
ld de,$9400		
ld bc,$0100		
ld a,$3d		
call  rlabel_00_0D83 
ld hl,$4271		
ld de,$90e0		
ld bc,$0010		
ld a,$3d		
call  rlabel_00_0D83 
ld hl,$7ac9		
ld de,$9580		
ld bc,$0080		
ld a,$33		
call  rlabel_00_0D83 
ld hl,$7949		
ld de,$9600		
ld bc,$00c0		
ld a,$33		
call  rlabel_00_0D83 
ld hl,$7d29		
ld de,$96c0		
ld bc,$0040		
ld a,$33		
call  rlabel_00_0D83 
ld hl,$6501		
ld de,$9700		
ld bc,$00c0		
ld a,$3d		
call  rlabel_00_0D83 
ld hl,$7d69		
ld de,$8400		
ld bc,$00e0		
ld a,$33		
call  rlabel_00_0D83 
ld hl,$7b49		
ld de,$8500		
ld bc,$01e0		
ld a,$33		
call  rlabel_00_0D83 
ld hl,$7e49		
ld de,$8200		
ld bc,$0060		
ld a,$33		
call  rlabel_00_0D83 
ld a,$01		
ld de,$c9c0		
call  rlabel_00_0E10 
ld a,$02		
ld de,$c9a8		
call  rlabel_00_0E10 
ld hl,$7ea9		
ld de,$c990		
ld bc,$0010		
ld a,$33		
call  rlabel_00_0D50 
ld hl,$7eb9		
ld de,$c9d0		
ld bc,$0010		
ld a,$33		
call  rlabel_00_0D50 
ld a,$04		
ld de,$ca00		
call  rlabel_00_0E10 
ld a,$01		
ld de,$c9f8		
call  rlabel_00_0E10 
ret			
rlabel_04_41EA:
ld c,$04		
ld de,$0000		
call  rlabel_00_1311 
call  rlabel_00_11A6 
call  rlabel_04_40F1 
call  rlabel_04_4204 
call  rlabel_04_48B8 
ld c,$04		
call  rlabel_00_132B 
ret			
rlabel_04_4204:
call  rlabel_00_05AA 
call  rlabel_00_136B 
ld b,$03		
ld hl,$40ce		
rst $28			
call  rlabel_04_42E3 
ld b,$02		
ld c,$00		
ld d,$0d		
ld e,$12		
call  rlabel_00_0F33 
ld b,$00		
ld c,$08		
ld d,$06		
ld e,$0a		
call  rlabel_00_0F33 
ld b,$01		
ld c,$09		
ld d,$50		
ld e,$04		
ld hl,$42cb		
call  rlabel_00_0F47 
call  rlabel_04_45D0 
ld b,$05		
ld c,$09		
ld d,$5f		
ld e,$07		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
ld a,c			
cp $13			
.DB $38 $f4 ; < ['$38', '$f4'] > < 0x424c > < 4424c 04 424C | 38F4: jr c, $F4 >
call  rlabel_04_42F6 
ld b,$08		
ld c,$01		
ld d,$5b		
ld e,$07		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
ld a,c			
cp $0a			
.DB $38 $f4 ; < ['$38', '$f4'] > < 0x4263 > < 44263 04 4263 | 38F4: jr c, $F4 >
inc d			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
ld b,$08		
ld c,$0b		
ld d,$58		
ld e,$07		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
inc d			
ld a,c			
cp $12			
.DB $38 $f3 ; < ['$38', '$f3'] > < 0x427f > < 4427f 04 427F | 38F3: jr c, $F3 >
ld hl,$c01a		
ld a,$48		
ldi (hl),a		
ld a,$01		
ldi (hl),a		
ld hl,$c01e		
ld a,$48		
ldi (hl),a		
ld a,$21		
ldi (hl),a		
call  rlabel_04_4505 
xor a			
ld ($cc95),a		
ld ($cc97),a		
ld hl,$0900		
ld de,$0f13		
ld c,$01		
call  rlabel_00_1E43 
call  rlabel_00_1EA8 
ld a,($cc7d)		
cp $01			
.DB $28 $f6 ; < ['$28', '$f6'] > < 0x42b0 > < 442b0 04 42B0 | 28F6: jr z, $F6 >
ld b,$09		
ld c,$00		
ld d,$6c		
ld e,$04		
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
inc c			
inc d			
dec e			
.DB $20 $f5 ; < ['$20', '$f5'] > < 0x42c3 > < 442c3 04 42C3 | 20F5: jr nz, $F5 >
ld a,$01		
ld ($cb9d),a		
ret			
.incbin "data/04_42CB.data"
rlabel_04_42E3:
ld b,$00		
ld c,$00		
ld d,$1f		
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
inc c			
ld a,c			
cp $14			
.DB $38 $f4 ; < ['$38', '$f4'] > < 0x42f3 > < 442f3 04 42F3 | 38F4: jr c, $F4 >
ret			
rlabel_04_42F6:
ld hl,$7949		
ld a,($caf9)		
cp $00			
.DB $20 $03 ; < ['$20', '$03'] > < 0x42fe > < 442fe 04 42FE | 2003: jr nz, $03 >
ld hl,$7a09		
ld de,$9600		
ld bc,$0040		
ld a,$33		
call  rlabel_00_0D83 
ld hl,$7989		
ld a,($caf9)		
cp $01			
.DB $20 $03 ; < ['$20', '$03'] > < 0x4316 > < 44316 04 4316 | 2003: jr nz, $03 >
ld hl,$7a49		
ld de,$9640		
ld bc,$0040		
ld a,$33		
call  rlabel_00_0D83 
ld hl,$79c9		
ld a,($caf9)		
cp $02			
.DB $20 $03 ; < ['$20', '$03'] > < 0x432e > < 4432e 04 432E | 2003: jr nz, $03 >
ld hl,$7a89		
ld de,$9680		
ld bc,$0040		
ld a,$33		
call  rlabel_00_0D83 
ld b,$03		
ld c,$01		
ld a,($caf9)		
cp $00			
.DB $20 $04 ; < ['$20', '$04'] > < 0x4347 > < 44347 04 4347 | 2004: jr nz, $04 >
ld e,$01		
.DB $18 $02 ; < ['$18', '$02'] > < 0x434b > < 4434b 04 434B | 1802: jr $02 >
ld e,$07		
ld d,$60		
call  rlabel_00_1287 
ld a,($caf9)		
cp $01			
.DB $20 $04 ; < ['$20', '$04'] > < 0x4359 > < 44359 04 4359 | 2004: jr nz, $04 >
ld e,$02		
.DB $18 $02 ; < ['$18', '$02'] > < 0x435d > < 4435d 04 435D | 1802: jr $02 >
ld e,$07		
ld d,$64		
call  rlabel_00_1287 
ld a,($caf9)		
cp $02			
.DB $20 $04 ; < ['$20', '$04'] > < 0x436b > < 4436b 04 436B | 2004: jr nz, $04 >
ld e,$01		
.DB $18 $02 ; < ['$18', '$02'] > < 0x436f > < 4436f 04 436F | 1802: jr $02 >
ld e,$07		
ld d,$68		
call  rlabel_00_1287 
ld hl,$42d1		
ld de,$90f0		
ld bc,$0010		
ld a,($caf9)		
cp $02			
.DB $28 $06 ; < ['$28', '$06'] > < 0x4386 > < 44386 04 4386 | 2806: jr z, $06 >
ld a,$3d		
call  rlabel_00_0DA7 
ret			
ld a,$3d		
call  rlabel_00_0D83 
ret			
rlabel_04_4394:
ld a,($cbc8)		
inc a			
ld ($cbc8),a		
srl a			
srl a			
srl a			
and $03			
.DB $28 $02 ; < ['$28', '$02'] > < 0x43a3 > < 443a3 04 43A3 | 2802: jr z, $02 >
dec a			
dec a			
ld b,a			
ld a,($caf9)		
cp $00			
.DB $20 $14 ; < ['$20', '$14'] > < 0x43ad > < 443ad 04 43AD | 2014: jr nz, $14 >
ld hl,$c01d		
ld a,$21		
add b			
ld (hl),a		
ld hl,$c018		
ld a,$c0		
ld (hl),a		
ld hl,$c01c		
ld a,$28		
ld (hl),a		
ret			
ld a,($caf9)		
cp $01			
.DB $20 $1b ; < ['$20', '$1b'] > < 0x43c8 > < 443c8 04 43C8 | 201B: jr nz, $1B >
ld hl,$c019		
ld a,$17		
sub b			
ld (hl),a		
ld hl,$c01d		
ld a,$31		
add b			
ld (hl),a		
ld hl,$c018		
ld a,$28		
ld (hl),a		
ld hl,$c01c		
ld a,$28		
ld (hl),a		
ret			
ld a,($caf9)		
cp $02			
.DB $20 $14 ; < ['$20', '$14'] > < 0x43ea > < 443ea 04 43EA | 2014: jr nz, $14 >
ld hl,$c019		
ld a,$27		
sub b			
ld (hl),a		
ld hl,$c018		
ld a,$28		
ld (hl),a		
ld hl,$c01c		
ld a,$c0		
ld (hl),a		
ret			
.incbin "data/04_4400.data"
rlabel_04_4401:
ld hl,$c018		
ld a,$c0		
ld (hl),a		
ld hl,$c01c		
ld a,$c0		
ld (hl),a		
ret			
rlabel_04_440E:
ld b,$05		
ld c,$01		
ld d,$70		
ld e,$07		
xor a			
push af			
call  rlabel_00_1287 
pop af			
inc a			
cp $03			
.DB $38 $f6 ; < ['$38', '$f6'] > < 0x441f > < 4441f 04 441F | 38F6: jr c, $F6 >
ret			
rlabel_04_4422:
ld b,$05		
ld c,$01		
ld e,$07		
call  rlabel_00_1128 
inc b			
ld c,$01		
ld e,$07		
call  rlabel_00_1128 
ret			
rlabel_04_4434:
ld a,($caf3)		
ld h,a			
ld l,$00		
srl h			
rr l			
srl h			
rr l			
ld de,$7501		
add hl,de		
ld de,$9700		
xor a			
push af			
ld b,a			
ld a,($caf4)		
cp b			
.DB $20 $0a ; < ['$20', '$0a'] > < 0x4450 > < 44450 04 4450 | 200A: jr nz, $0A >
ld bc,$0040		
ld a,$3d		
call  rlabel_00_0DDA 
.DB $18 $08 ; < ['$18', '$08'] > < 0x445a > < 4445a 04 445A | 1808: jr $08 >
ld bc,$0040		
ld a,$3d		
call  rlabel_00_0D83 
pop af			
inc a			
cp $03			
.DB $38 $e0 ; < ['$38', '$e0'] > < 0x4468 > < 44468 04 4468 | 38E0: jr c, $E0 >
ret			
rlabel_04_446B:
ld a,($cbc8)		
inc a			
ld ($cbc8),a		
srl a			
srl a			
srl a			
and $03			
.DB $28 $02 ; < ['$28', '$02'] > < 0x447a > < 4447a 04 447A | 2802: jr z, $02 >
dec a			
dec a			
ld b,a			
ld hl,$c01d		
ld a,$41		
add b			
ld (hl),a		
ld hl,$c019		
ld a,$07		
sub b			
ld (hl),a		
ld a,($caf3)		
and a			
.DB $20 $0d ; < ['$20', '$0d'] > < 0x4491 > < 44491 04 4491 | 200D: jr nz, $0D >
ld hl,$c018		
ld a,$c0		
ld (hl),a		
ld hl,$c01c		
ld a,$38		
ld (hl),a		
ret			
.incbin "data/04_44A0.data"
rlabel_04_44C9:
ld a,($cbca)		
inc a			
ld ($cbca),a		
ld a,($cb99)		
cp $01			
.DB $20 $0b ; < ['$20', '$0b'] > < 0x44d5 > < 444d5 04 44D5 | 200B: jr nz, $0B >
ld a,($cbca)		
and $20			
.DB $20 $04 ; < ['$20', '$04'] > < 0x44dc > < 444dc 04 44DC | 2004: jr nz, $04 >
ld d,$48		
.DB $18 $02 ; < ['$18', '$02'] > < 0x44e0 > < 444e0 04 44E0 | 1802: jr $02 >
ld d,$c0		
ld hl,$c039		
ld a,($caf2)		
ld b,a			
ld a,($caf1)		
cp b			
.DB $30 $01 ; < ['$30', '$01'] > < 0x44ef > < 444ef 04 44EF | 3001: jr nc, $01 >
ld b,a			
ld a,b			
and a			
ret z			
ld a,d			
ld c,$03		
ldi (hl),a		
add $08			
inc hl			
inc hl			
inc hl			
dec c			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x44ff > < 444ff 04 44FF | 20F7: jr nz, $F7 >
dec b			
.DB $18 $ee ; < ['$18', '$ee'] > < 0x4502 > < 44502 04 4502 | 18EE: jr $EE >
.incbin "data/04_4504.data"
rlabel_04_4505:
xor a			
rlabel_04_4506:
ld b,a			
ld hl,$c038		
add a			
add a			
ld c,a			
add a			
add c			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4511 > < 44511 04 4511 | 3001: jr nc, $01 >
.incbin "data/04_4513.data"
ld a,$07		
sub b			
ld b,a			
ld a,b			
and a			
ret z			
ld d,$20		
ld c,$03		
ld a,$c0		
ldi (hl),a		
ld a,$c0		
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld a,$01		
ldi (hl),a		
inc d			
inc d			
dec c			
.DB $20 $f0 ; < ['$20', '$f0'] > < 0x452d > < 4452d 04 452D | 20F0: jr nz, $F0 >
dec b			
.DB $18 $e6 ; < ['$18', '$e6'] > < 0x4530 > < 44530 04 4530 | 18E6: jr $E6 >
.incbin "data/04_4532.data"
rlabel_04_4537:
ld hl,$7211		
ld de,$80c0		
ld bc,$0140		
ld a,$33		
call  rlabel_00_0D83 
call  rlabel_04_4566 
di			
ld hl,$c1a3		
ld de,$144f		
call  rlabel_00_0231 
ld a,$60		
ld ($ff00+$9a),a	
ld ($ff00+$45),a	
ld a,$40		
ld ($ff00+$41),a	
ld a,($ff00+$ff)	
or $02			
ld ($ff00+$9c),a	
ld ($ff00+$ff),a	
ei			
ret			
rlabel_04_4566:
ld hl,$d5d5		
ld a,$01		
ldi (hl),a		
ld a,$09		
ldi (hl),a		
ld de,$fe08		
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld c,$a0		
ld d,$0c		
ld b,$0a		
ld a,$98		
ldi (hl),a		
ld a,c			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld a,$07		
ldi (hl),a		
ld a,c			
add $08			
ld c,a			
inc d			
inc d			
dec b			
.DB $20 $ed ; < ['$20', '$ed'] > < 0x458d > < 4458d 04 458D | 20ED: jr nz, $ED >
ld a,$a0		
ld ($cbcb),a		
ret			
rlabel_04_4595:
ld hl,$d5d9		
ld a,($cbcb)		
ld b,a			
cp $32			
.DB $38 $0c ; < ['$38', '$0c'] > < 0x459e > < 4459e 04 459E | 380C: jr c, $0C >
cp $6e			
.DB $30 $08 ; < ['$30', '$08'] > < 0x45a2 > < 445a2 04 45A2 | 3008: jr nc, $08 >
ld a,($cbca)		
and $01			
.DB $20 $03 ; < ['$20', '$03'] > < 0x45a9 > < 445a9 04 45A9 | 2003: jr nz, $03 >
inc b			
dec b			
dec b			
ld a,b			
ld ($cbcb),a		
ld c,a			
ld b,$0a		
inc hl			
ld a,c			
ldi (hl),a		
inc hl			
inc hl			
add $08			
ld c,a			
dec b			
.DB $20 $f5 ; < ['$20', '$f5'] > < 0x45be > < 445be 04 45BE | 20F5: jr nz, $F5 >
ret			
rlabel_04_45C1:
ld hl,$d5d9		
ld b,$0a		
ld a,$c0		
ldi (hl),a		
inc hl			
inc hl			
inc hl			
dec b			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x45cd > < 445cd 04 45CD | 20F7: jr nz, $F7 >
ret			
rlabel_04_45D0:
ld a,$01		
ld ($cbce),a		
call  rlabel_04_45FB 
call  rlabel_04_4615 
call  rlabel_04_4638 
call  rlabel_04_465B 
xor a			
ld ($cbce),a		
ret			
rlabel_04_45E6:
call  rlabel_04_45F3 
call  rlabel_04_460D 
call  rlabel_04_4630 
call  rlabel_04_4653 
ret			
rlabel_04_45F3:
ld hl,$cb9e		
call  rlabel_04_4676 
and a			
ret z			
rlabel_04_45FB:
ld de,$cb9e		
call  rlabel_00_11B0 
ld b,$01		
ld c,$0b		
ld d,$40		
ld e,$07		
call  rlabel_00_1223 
ret			
rlabel_04_460D:
ld hl,$cba4		
call  rlabel_04_4676 
and a			
ret z			
rlabel_04_4615:
ld de,$cba4		
call  rlabel_00_11B0 
ld b,$03		
ld c,$0b		
ld d,$30		
ld e,$07		
ld a,($caf9)		
cp $00			
.DB $20 $02 ; < ['$20', '$02'] > < 0x4628 > < 44628 04 4628 | 2002: jr nz, $02 >
ld d,$40		
call  rlabel_00_1223 
ret			
rlabel_04_4630:
ld hl,$cbaa		
call  rlabel_04_4676 
and a			
ret z			
rlabel_04_4638:
ld de,$cbaa		
call  rlabel_00_11B0 
ld b,$04		
ld c,$0b		
ld d,$30		
ld e,$07		
ld a,($caf9)		
cp $01			
.DB $20 $02 ; < ['$20', '$02'] > < 0x464b > < 4464b 04 464B | 2002: jr nz, $02 >
ld d,$40		
call  rlabel_00_1223 
ret			
rlabel_04_4653:
ld hl,$cbb0		
call  rlabel_04_4676 
and a			
ret z			
rlabel_04_465B:
ld de,$cbb0		
call  rlabel_00_11B0 
ld b,$06		
ld c,$0b		
ld d,$30		
ld e,$07		
ld a,($caf9)		
cp $02			
.DB $20 $02 ; < ['$20', '$02'] > < 0x466e > < 4466e 04 466E | 2002: jr nz, $02 >
ld d,$40		
call  rlabel_00_1223 
ret			
rlabel_04_4676:
ld de,$ff8a		
push hl			
ld b,$06		
ldi a,(hl)		
ld (de),a		
inc de			
dec b			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x4680 > < 44680 04 4680 | 20FA: jr nz, $FA >
pop hl			
ld a,($ff00+$8a)	
add $60			
ld ($ff00+$8a),a	
ld a,($ff00+$8d)	
add $60			
ld ($ff00+$8d),a	
ld a,($ff00+$8a)	
ld b,a			
ld a,($ff00+$8d)	
cp b			
.DB $38 $18 ; < ['$38', '$18'] > < 0x4695 > < 44695 04 4695 | 3818: jr c, $18 >
.DB $20 $3f ; < ['$20', '$3f'] > < 0x4697 > < 44697 04 4697 | 203F: jr nz, $3F >
ld a,($ff00+$8b)	
ld b,a			
ld a,($ff00+$8e)	
cp b			
.DB $38 $0e ; < ['$38', '$0e'] > < 0x469f > < 4469f 04 469F | 380E: jr c, $0E >
.DB $20 $35 ; < ['$20', '$35'] > < 0x46a1 > < 446a1 04 46A1 | 2035: jr nz, $35 >
ld a,($ff00+$8c)	
ld b,a			
ld a,($ff00+$8f)	
cp b			
.DB $38 $04 ; < ['$38', '$04'] > < 0x46a9 > < 446a9 04 46A9 | 3804: jr c, $04 >
.DB $20 $2b ; < ['$20', '$2b'] > < 0x46ab > < 446ab 04 46AB | 202B: jr nz, $2B >
xor a			
ret			
ld a,($ff00+$8f)	
ld b,a			
ld a,($ff00+$8c)	
sub b			
ld e,a			
ld a,($ff00+$8e)	
ld b,a			
ld a,($ff00+$8b)	
sbc b			
ld d,a			
ld a,($ff00+$8d)	
ld b,a			
ld a,($ff00+$8a)	
sbc b			
ld c,a			
call  rlabel_04_4719 
ld a,($ff00+$8c)	
sub e			
ld ($ff00+$8c),a	
ld a,($ff00+$8b)	
sbc d			
ld ($ff00+$8b),a	
ld a,($ff00+$8a)	
sbc c			
ld ($ff00+$8a),a	
.DB $18 $27 ; < ['$18', '$27'] > < 0x46d6 > < 446d6 04 46D6 | 1827: jr $27 >
ld a,($ff00+$8c)	
ld b,a			
ld a,($ff00+$8f)	
sub b			
ld e,a			
ld a,($ff00+$8b)	
ld b,a			
ld a,($ff00+$8e)	
sbc b			
ld d,a			
ld a,($ff00+$8a)	
ld b,a			
ld a,($ff00+$8d)	
sbc b			
ld c,a			
call  rlabel_04_4719 
ld a,($ff00+$8c)	
add e			
ld ($ff00+$8c),a	
ld a,($ff00+$8b)	
adc d			
ld ($ff00+$8b),a	
ld a,($ff00+$8a)	
adc c			
ld ($ff00+$8a),a	
ld a,($ff00+$8a)	
sub $60			
ld ($ff00+$8a),a	
ld a,($ff00+$8d)	
sub $60			
ld ($ff00+$8d),a	
ld de,$ff8a		
ld b,$06		
ld a,(de)		
ldi (hl),a		
inc de			
dec b			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x4714 > < 44714 04 4714 | 20FA: jr nz, $FA >
xor a			
cpl			
ret			
rlabel_04_4719:
ld a,c			
and a			
.DB $20 $08 ; < ['$20', '$08'] > < 0x471b > < 4471b 04 471B | 2008: jr nz, $08 >
ld a,d			
and a			
.DB $20 $04 ; < ['$20', '$04'] > < 0x471f > < 4471f 04 471F | 2004: jr nz, $04 >
ld a,e			
cp $08			
ret c			
srl c			
rr d			
rr e			
srl c			
rr d			
rr e			
srl c			
rr d			
rr e			
ret			
.incbin "data/04_4738.data"
rlabel_04_4764:
ld a,($cba1)		
ld b,a			
ld a,($cba2)		
ld c,a			
ld a,($cba3)		
ld d,a			
ld a,($cba7)		
ld e,a			
ld a,($cba8)		
ld h,a			
ld a,($cba9)		
ld l,a			
call  rlabel_04_5889 
ld d,c			
ld c,b			
ld b,a			
ld a,($cbad)		
ld e,a			
ld a,($cbae)		
ld h,a			
ld a,($cbaf)		
ld l,a			
call  rlabel_04_587B 
ld ($cbb3),a		
ld a,b			
ld ($cbb4),a		
ld a,c			
ld ($cbb5),a		
ret			
rlabel_04_479D:
ld hl,$cbbe		
ld b,$00		
ld a,b			
add a			
add a			
add a			
add $20			
ld c,a			
ld a,$98		
sub c			
ldi (hl),a		
xor a			
ldi (hl),a		
inc b			
ld a,b			
cp $04			
.DB $38 $ed ; < ['$38', '$ed'] > < 0x47b3 > < 447b3 04 47B3 | 38ED: jr c, $ED >
ld hl,$c008		
ld de,$cbbe		
ld b,$00		
ld a,(de)		
xor $80			
ldi (hl),a		
inc de			
inc de			
ld a,b			
add $03			
add a			
add a			
add a			
ldi (hl),a		
ld a,b			
add a			
add $40			
ldi (hl),a		
ld a,b			
srl a			
add $01			
ldi (hl),a		
inc b			
ld a,b			
cp $04			
.DB $38 $e2 ; < ['$38', '$e2'] > < 0x47d9 > < 447d9 04 47D9 | 38E2: jr c, $E2 >
ret			
rlabel_04_47DC:
ld hl,$cbbe		
ld b,$04		
ldi a,(hl)		
ld d,a			
ldd a,(hl)		
ld e,a			
cp $80			
.DB $38 $0b ; < ['$38', '$0b'] > < 0x47e7 > < 447e7 04 47E7 | 380B: jr c, $0B >
cpl			
inc a			
srl a			
srl a			
ld c,a			
xor a			
sub c			
.DB $18 $04 ; < ['$18', '$04'] > < 0x47f2 > < 447f2 04 47F2 | 1804: jr $04 >
srl a			
srl a			
add d			
ld d,a			
inc e			
cp $98			
.DB $38 $04 ; < ['$38', '$04'] > < 0x47fd > < 447fd 04 47FD | 3804: jr c, $04 >
ld d,$98		
ld e,$f6		
ld a,d			
ldi (hl),a		
ld a,e			
ldi (hl),a		
dec b			
.DB $20 $d7 ; < ['$20', '$d7'] > < 0x4808 > < 44808 04 4808 | 20D7: jr nz, $D7 >
ld hl,$c008		
ld de,$cbbe		
ld b,$04		
ld a,(de)		
xor $80			
ldi (hl),a		
inc hl			
inc hl			
inc hl			
inc de			
inc de			
dec b			
.DB $20 $f4 ; < ['$20', '$f4'] > < 0x481c > < 4481c 04 481C | 20F4: jr nz, $F4 >
ret			
rlabel_04_481F:
ld a,($cb99)		
cp $03			
ret z			
ld a,($caf9)		
cp $00			
.DB $20 $0a ; < ['$20', '$0a'] > < 0x482a > < 4482a 04 482A | 200A: jr nz, $0A >
ld a,($cbc9)		
and a			
.DB $28 $04 ; < ['$28', '$04'] > < 0x4830 > < 44830 04 4830 | 2804: jr z, $04 >
dec a			
ld ($cbc9),a		
ld a,($caf9)		
cp $01			
.DB $20 $0b ; < ['$20', '$0b'] > < 0x483b > < 4483b 04 483B | 200B: jr nz, $0B >
ld a,($cbc9)		
cp $20			
.DB $30 $04 ; < ['$30', '$04'] > < 0x4842 > < 44842 04 4842 | 3004: jr nc, $04 >
inc a			
ld ($cbc9),a		
ld a,($caf9)		
cp $02			
.DB $20 $18 ; < ['$20', '$18'] > < 0x484d > < 4484d 04 484D | 2018: jr nz, $18 >
.incbin "data/04_484F.data"
ld a,($cbc9)		
srl a			
srl a			
srl a			
and a			
.DB $20 $06 ; < ['$20', '$06'] > < 0x4871 > < 44871 04 4871 | 2006: jr nz, $06 >
ld b,$48		
ld d,$50		
ld e,$01		
cp $01			
.DB $20 $06 ; < ['$20', '$06'] > < 0x487b > < 4487b 04 487B | 2006: jr nz, $06 >
ld b,$48		
ld d,$64		
ld e,$01		
cp $02			
.DB $20 $02 ; < ['$20', '$02'] > < 0x4885 > < 44885 04 4885 | 2002: jr nz, $02 >
ld b,$c0		
cp $03			
.DB $20 $06 ; < ['$20', '$06'] > < 0x488b > < 4488b 04 488B | 2006: jr nz, $06 >
ld b,$48		
ld d,$64		
ld e,$02		
cp $04			
.DB $20 $06 ; < ['$20', '$06'] > < 0x4895 > < 44895 04 4895 | 2006: jr nz, $06 >
ld b,$48		
ld d,$5a		
ld e,$02		
ld hl,$c020		
xor a			
ld c,a			
ld a,b			
ldi (hl),a		
ld a,c			
add a			
add a			
add a			
add $10			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld a,e			
ldi (hl),a		
inc d			
inc d			
inc c			
ld a,c			
cp $05			
.DB $38 $eb ; < ['$38', '$eb'] > < 0x48b5 > < 448b5 04 48B5 | 38EB: jr c, $EB >
ret			
rlabel_04_48B8:
xor a			
ld ($cc95),a		
ld hl,$48ea		
ld a,h			
ld ($cd4c),a		
ld a,l			
ld ($cd4d),a		
ld a,$90		
ld ($cd4e),a		
ld a,$05		
ld ($cd4a),a		
ld a,$50		
ld ($cd47),a		
ld a,$70		
ld ($cd49),a		
ld a,$01		
ld ($cd4f),a		
ld a,$86		
call  rlabel_00_289B 
ld a,$00		
ld ($ff00+$4f),a	
ret			
.incbin "data/04_48EA.data"
rlabel_04_4A7F:
ret			
ld a,($ff00+$4f)	
push af			
ld a,$00		
ld ($ff00+$4f),a	
call  rlabel_04_47DC 
ld a,($cbce)		
and a			
.DB $20 $03 ; < ['$20', '$03'] > < 0x4a8e > < 44a8e 04 4A8E | 2003: jr nz, $03 >
call  rlabel_04_45E6 
ld a,($cb99)		
cp $00			
.DB $28 $09 ; < ['$28', '$09'] > < 0x4a98 > < 44a98 04 4A98 | 2809: jr z, $09 >
call  rlabel_04_481F 
call  rlabel_04_44C9 
call  rlabel_04_4595 
pop af			
ld ($ff00+$4f),a	
ret			
rlabel_04_4AA7:
ld b,$04		
ld de,$4a80		
call  rlabel_00_14E5 
ret			
rlabel_04_4AB0:
ld a,($cb99)		
ld hl,$4aba		
call  rlabel_00_05D3 
ret			
.incbin "data/04_4ABA.data"
ld a,($cb9d)		
and a			
.DB $28 $03 ; < ['$28', '$03'] > < 0x4ac8 > < 44ac8 04 4AC8 | 2803: jr z, $03 >
call  rlabel_00_295A 
ld a,($cbd6)		
and $20			
.DB $28 $16 ; < ['$28', '$16'] > < 0x4ad2 > < 44ad2 04 4AD2 | 2816: jr z, $16 >
ld a,($caf9)		
cp $00			
.DB $28 $0f ; < ['$28', '$0f'] > < 0x4ad9 > < 44ad9 04 4AD9 | 280F: jr z, $0F >
dec a			
ld ($caf9),a		
call  rlabel_04_42F6 
call  rlabel_04_45D0 
ld a,$7f		
call  rlabel_00_3071 
ld a,($cbd6)		
and $10			
.DB $28 $16 ; < ['$28', '$16'] > < 0x4aef > < 44aef 04 4AEF | 2816: jr z, $16 >
ld a,($caf9)		
cp $02			
.DB $28 $0f ; < ['$28', '$0f'] > < 0x4af6 > < 44af6 04 4AF6 | 280F: jr z, $0F >
inc a			
ld ($caf9),a		
call  rlabel_04_42F6 
call  rlabel_04_45D0 
ld a,$7f		
call  rlabel_00_3071 
ld a,($ff00+$a5)	
and $01			
.DB $28 $53 ; < ['$28', '$53'] > < 0x4b0b > < 44b0b 04 4B0B | 2853: jr z, $53 >
ld a,$1b		
call  rlabel_00_3071 
ld a,($cb9d)		
and a			
.DB $28 $37 ; < ['$28', '$37'] > < 0x4b16 > < 44b16 04 4B16 | 2837: jr z, $37 >
di			
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ei			
call  rlabel_04_4537 
call  rlabel_04_45C1 
ld a,$24		
ld c,$10		
call  rlabel_00_05B1 
call  rlabel_00_207C 
call  rlabel_00_208D 
call  rlabel_04_4B7C 
call  rlabel_00_027C 
ld a,($cc7d)		
cp $01			
.DB $28 $f0 ; < ['$28', '$f0'] > < 0x4b41 > < 44b41 04 4B41 | 28F0: jr z, $F0 >
xor a			
ld ($cb9d),a		
ld de,$9700		
ld c,$0c		
call  rlabel_00_1280 
call  rlabel_04_4401 
ld a,($caf9)		
ld hl,$4baf		
call  rlabel_00_05D3 
xor a			
ld ($cb9a),a		
ret			
ld a,($ff00+$a5)	
and $02			
.DB $28 $16 ; < ['$28', '$16'] > < 0x4b64 > < 44b64 04 4B64 | 2816: jr z, $16 >
ld a,$1c		
call  rlabel_00_3071 
call  rlabel_00_13E5 
xor a			
ld ($cbcc),a		
xor a			
ld ($c346),a		
ld b,$01		
call  rlabel_00_0214 
ret			
rlabel_04_4B7C:
call  rlabel_04_4394 
call  rlabel_04_4A7F 
ret			
ld a,($cb90)		
push af			
ld b,$03		
ld hl,$41aa		
rst $28			
pop af			
ld ($cb90),a		
ld a,$01		
ld ($cb99),a		
ret			
ld a,($cb90)		
push af			
ld b,$03		
ld hl,$41aa		
rst $28			
pop af			
ld ($cb90),a		
ld a,$02		
ld ($cb99),a		
ret			
call  rlabel_04_50B7 
ret			
.incbin "data/04_4BAF.data"
ld a,($cb9a)		
ld hl,$4bc1		
call  rlabel_00_05D3 
ret			
.incbin "data/04_4BC1.data"
call  rlabel_04_4BCB 
ret			
rlabel_04_4BCB:
ld b,$03		
ld hl,$41aa		
rst $28			
ld a,$07		
ld ($caf2),a		
ld b,$b7		
ld hl,$6800		
rst $28			
call  rlabel_04_544E 
call  rlabel_04_55A8 
ld a,$06		
call  rlabel_04_5788 
call  rlabel_04_4566 
ld a,$01		
ld ($cb9a),a		
ret			
ld b,$03		
ld hl,$4202		
rst $28			
ld a,($caef)		
ld b,a			
ld a,($caed)		
cp b			
.DB $28 $03 ; < ['$28', '$03'] > < 0x4bfe > < 44bfe 04 4BFE | 2803: jr z, $03 >
.incbin "data/04_4C00.data"
ld a,($caef)		
ld b,a			
ld a,($caf0)		
add b			
ld c,a			
ld a,($caed)		
ld b,a			
ld a,($caee)		
add b			
cp c			
.DB $28 $06 ; < ['$28', '$06'] > < 0x4c15 > < 44c15 04 4C15 | 2806: jr z, $06 >
call  rlabel_04_55A8 
call  rlabel_04_55CD 
ld a,($caed)		
ld ($caef),a		
ld a,($caee)		
ld ($caf0),a		
xor a			
ld hl,$cb89		
ld (hl),a		
ld a,($caee)		
add (hl)		
ld (hl),a		
ld a,($cbd6)		
and $20			
.DB $28 $41 ; < ['$28', '$41'] > < 0x4c38 > < 44c38 04 4C38 | 2841: jr z, $41 >
ld b,$03		
ld hl,$5338		
rst $28			
push de			
call  rlabel_04_53B6 
pop de			
ld a,c			
and a			
.DB $28 $32 ; < ['$28', '$32'] > < 0x4c47 > < 44c47 04 4C47 | 2832: jr z, $32 >
push de			
ld c,$ff		
call  rlabel_04_53B8 
pop de			
call  rlabel_04_5800 
ld l,e			
ld h,d			
ld e,c			
ld a,($cba7)		
ld b,a			
ld a,($cba8)		
ld c,a			
ld a,($cba9)		
ld d,a			
call  rlabel_04_5889 
ld ($cba7),a		
ld a,b			
ld ($cba8),a		
ld a,c			
ld ($cba9),a		
call  rlabel_04_4764 
call  rlabel_04_5549 
ld a,$10		
call  rlabel_00_3071 
ld a,($cbd6)		
and $10			
.DB $28 $75 ; < ['$28', '$75'] > < 0x4c80 > < 44c80 04 4C80 | 2875: jr z, $75 >
ld b,$03		
ld hl,$5338		
rst $28			
ld a,d			
ld ($ff00+$91),a	
ld a,e			
ld ($ff00+$90),a	
call  rlabel_04_5800 
ld l,e			
ld h,d			
ld e,c			
ld a,($cbb3)		
ld b,a			
ld a,($cbb4)		
ld c,a			
ld a,($cbb5)		
ld d,a			
call  rlabel_04_5864 
and a			
.DB $28 $00 ; < ['$28', '$00'] > < 0x4ca4 > < 44ca4 04 4CA4 | 2800: jr z, $00 >
ld a,($ff00+$91)	
ld d,a			
ld a,($ff00+$90)	
ld e,a			
ld b,$03		
ld hl,$51b2		
rst $28			
push bc			
call  rlabel_04_53B6 
ld a,c			
pop bc			
add c			
cp $0f			
.DB $38 $02 ; < ['$38', '$02'] > < 0x4cbb > < 44cbb 04 4CBB | 3802: jr c, $02 >
.incbin "data/04_4CBD.data"
ld a,($ff00+$91)	
ld d,a			
ld a,($ff00+$90)	
ld e,a			
push de			
call  rlabel_04_5800 
ld l,e			
ld h,d			
ld e,c			
ld a,($cba7)		
ld b,a			
ld a,($cba8)		
ld c,a			
ld a,($cba9)		
ld d,a			
call  rlabel_04_587B 
ld ($cba7),a		
ld a,b			
ld ($cba8),a		
ld a,c			
ld ($cba9),a		
call  rlabel_04_4764 
pop de			
ld c,$01		
call  rlabel_04_53B8 
call  rlabel_04_5549 
ld a,$10		
call  rlabel_00_3071 
ld a,($ff00+$a5)	
and $01			
.DB $28 $0c ; < ['$28', '$0c'] > < 0x4cfb > < 44cfb 04 4CFB | 280C: jr z, $0C >
ld a,$1b		
call  rlabel_00_3071 
call  rlabel_04_50B7 
call  rlabel_04_544E 
ret			
ld a,($ff00+$a5)	
and $02			
.DB $28 $20 ; < ['$28', '$20'] > < 0x4d0d > < 44d0d 04 4D0D | 2820: jr z, $20 >
ld a,$1c		
call  rlabel_00_3071 
ld a,($cb25)		
and a			
.DB $28 $03 ; < ['$28', '$03'] > < 0x4d18 > < 44d18 04 4D18 | 2803: jr z, $03 >
.incbin "data/04_4D1A.data"
call  rlabel_04_42F6 
call  rlabel_04_4505 
call  rlabel_04_45C1 
call  rlabel_04_5319 
ld a,$00		
ld ($cb99),a		
ret			
ld a,($ff00+$a5)	
and $04			
.DB $28 $03 ; < ['$28', '$03'] > < 0x4d33 > < 44d33 04 4D33 | 2803: jr z, $03 >
.incbin "data/04_4D35.data"
call  rlabel_04_4A7F 
ret			
.incbin "data/04_4D3C.data"
rlabel_04_4D7C:
ld a,$01		
ld ($cc95),a		
ld hl,$0b02		
ld de,$0d11		
ld c,$01		
call  rlabel_00_1E43 
call  rlabel_00_027C 
call  rlabel_00_1EA8 
call  rlabel_04_4A7F 
ld a,($cc7d)		
cp $01			
.DB $28 $f0 ; < ['$28', '$f0'] > < 0x4d9a > < 44d9a 04 4D9A | 28F0: jr z, $F0 >
ret			
rlabel_04_4D9D:
ld a,($cb25)		
and a			
.DB $20 $04 ; < ['$20', '$04'] > < 0x4da1 > < 44da1 04 4DA1 | 2004: jr nz, $04 >
ld d,$d7		
.DB $18 $02 ; < ['$18', '$02'] > < 0x4da5 > < 44da5 04 4DA5 | 1802: jr $02 >
.incbin "data/04_4DA7.data"
ld b,$0c		
ld c,$03		
ld e,$07		
call  rlabel_00_0F47 
call  rlabel_00_027C 
call  rlabel_04_4A7F 
ld a,($ff00+$a5)	
and $03			
.DB $28 $f4 ; < ['$28', '$f4'] > < 0x4dbc > < 44dbc 04 4DBC | 28F4: jr z, $F4 >
ret			
rlabel_04_4DBF:
call  rlabel_00_207C 
call  rlabel_00_027C 
call  rlabel_00_208D 
call  rlabel_04_4A7F 
ld a,($cc7d)		
cp $01			
.DB $28 $f0 ; < ['$28', '$f0'] > < 0x4dd0 > < 44dd0 04 4DD0 | 28F0: jr z, $F0 >
ret			
ld a,($cb9a)		
ld hl,$4ddd		
call  rlabel_00_05D3 
ret			
.incbin "data/04_4DDD.data"
call  rlabel_04_4DE9 
ret			
rlabel_04_4DE9:
xor a			
ld ($caed),a		
ld ($caee),a		
ld a,$ff		
ld ($caef),a		
ld ($caf0),a		
ld a,$07		
ld ($caf2),a		
ld a,$03		
ld ($caf8),a		
ld a,$07		
ld ($caf7),a		
call  rlabel_04_4434 
call  rlabel_04_440E 
call  rlabel_04_5855 
ld a,($caf3)		
ld b,a			
ld a,($caf4)		
add b			
ld c,a			
call  rlabel_04_5321 
call  rlabel_04_544E 
call  rlabel_04_55A8 
ld a,$01		
ld ($cb9a),a		
ret			
ld a,($caf7)		
and a			
ret z			
ld a,($cbd6)		
cp $20			
.DB $20 $16 ; < ['$20', '$16'] > < 0x4e32 > < 44e32 04 4E32 | 2016: jr nz, $16 >
ld a,($caf4)		
and a			
.DB $28 $06 ; < ['$28', '$06'] > < 0x4e38 > < 44e38 04 4E38 | 2806: jr z, $06 >
dec a			
ld ($caf4),a		
.DB $18 $0a ; < ['$18', '$0a'] > < 0x4e3e > < 44e3e 04 4E3E | 180A: jr $0A >
.incbin "data/04_4E40.data"
ld a,($cbd6)		
cp $10			
.DB $20 $28 ; < ['$20', '$28'] > < 0x4e4f > < 44e4f 04 4E4F | 2028: jr nz, $28 >
ld a,($caf8)		
dec a			
ld b,a			
ld a,($caf4)		
cp b			
.DB $30 $06 ; < ['$30', '$06'] > < 0x4e5a > < 44e5a 04 4E5A | 3006: jr nc, $06 >
inc a			
ld ($caf4),a		
.DB $18 $17 ; < ['$18', '$17'] > < 0x4e60 > < 44e60 04 4E60 | 1817: jr $17 >
.incbin "data/04_4E62.data"
ld a,($caf5)		
ld b,a			
ld a,($caf6)		
add b			
ld c,a			
ld a,($caf3)		
ld b,a			
ld a,($caf4)		
add b			
cp c			
.DB $28 $3d ; < ['$28', '$3d'] > < 0x4e8b > < 44e8b 04 4E8B | 283D: jr z, $3D >
call  rlabel_04_4434 
xor a			
ld ($caed),a		
ld ($caee),a		
ld a,$ff		
ld ($caef),a		
ld ($caf0),a		
ld a,$07		
ld ($caf2),a		
call  rlabel_04_5855 
ld a,($caf3)		
ld b,a			
ld a,($caf4)		
add b			
ld c,a			
call  rlabel_04_5321 
call  rlabel_04_544E 
call  rlabel_04_55A8 
ld a,$7f		
call  rlabel_00_3071 
ld a,($caf3)		
ld ($caf5),a		
ld a,($caf4)		
ld ($caf6),a		
ld a,($ff00+$a5)	
and $01			
.DB $28 $0c ; < ['$28', '$0c'] > < 0x4ece > < 44ece 04 4ECE | 280C: jr z, $0C >
.incbin "data/04_4ED0.data"
ld a,($ff00+$a5)	
and $02			
.DB $28 $14 ; < ['$28', '$14'] > < 0x4ee0 > < 44ee0 04 4EE0 | 2814: jr z, $14 >
ld a,$1c		
call  rlabel_00_3071 
call  rlabel_04_42F6 
call  rlabel_04_4422 
call  rlabel_04_5319 
ld a,$00		
ld ($cb99),a		
ret			
call  rlabel_04_446B 
call  rlabel_04_4A7F 
ret			
.incbin "data/04_4EFD.data"
rlabel_04_50B7:
call  rlabel_04_4505 
ld hl,$cc1b		
ld de,$cc2e		
ld b,$13		
call  rlabel_00_1C19 
ld a,$01		
ld ($cc95),a		
ld hl,$0902		
ld de,$0f11		
ld c,$01		
call  rlabel_00_1E43 
call  rlabel_04_4A7F 
call  rlabel_00_027C 
call  rlabel_00_1EA8 
ld a,($cc7d)		
cp $01			
.DB $28 $f0 ; < ['$28', '$f0'] > < 0x50e3 > < 450e3 04 50E3 | 28F0: jr z, $F0 >
ld a,($cb25)		
and a			
.DB $20 $06 ; < ['$20', '$06'] > < 0x50e9 > < 450e9 04 50E9 | 2006: jr nz, $06 >
ld a,$d7		
ld ($ff00+$91),a	
.DB $18 $04 ; < ['$18', '$04'] > < 0x50ef > < 450ef 04 50EF | 1804: jr $04 >
.incbin "data/04_50F1.data"
ld b,$0a		
ld c,$03		
ld a,($ff00+$91)	
ld d,a			
ld e,$07		
ld hl,$51fb		
call  rlabel_00_0F47 
ld b,$0d		
ld c,$07		
ld a,($ff00+$91)	
add $10			
ld d,a			
ld e,$07		
ld hl,$520c		
call  rlabel_00_0F47 
ld a,$01		
ld ($cc1b),a		
ld a,$28		
ld ($cc1c),a		
ld a,$00		
ld ($cc24),a		
ld a,$80		
ld ($cc25),a		
ld a,$07		
ld ($cc26),a		
ld a,$00		
ld ($cc22),a		
ld a,$00		
ld ($cc23),a		
ld a,$00		
ld b,a			
ld a,$00		
ld ($cc1f),a		
add a			
add a			
add a			
inc b			
dec b			
.DB $28 $03 ; < ['$28', '$03'] > < 0x5145 > < 45145 04 5145 | 2803: jr z, $03 >
.incbin "data/04_5147.data"
add $68			
ld ($cc1d),a		
xor a			
ld ($cc20),a		
ld ($cc21),a		
ld ($cc27),a		
ld ($cc28),a		
ld ($cc2d),a		
ld a,$ff		
ld ($cc1e),a		
ld a,$01		
ld ($cc2a),a		
ld a,($ff00+$a6)	
ld ($cccb),a		
call  rlabel_00_2707 
call  rlabel_00_2555 
call  rlabel_04_4A7F 
call  rlabel_00_027C 
ld a,($ff00+$a5)	
and $01			
.DB $28 $2b ; < ['$28', '$2b'] > < 0x517e > < 4517e 04 517E | 282B: jr z, $2B >
ld a,($cc1f)		
and a			
.DB $28 $09 ; < ['$28', '$09'] > < 0x5184 > < 45184 04 5184 | 2809: jr z, $09 >
ld a,$1c		
call  rlabel_00_3071 
call  rlabel_04_51BA 
ret			
ld a,($cbb3)		
cp $a0			
.DB $38 $0c ; < ['$38', '$0c'] > < 0x5194 > < 45194 04 5194 | 380C: jr c, $0C >
ld a,$1f		
call  rlabel_00_3071 
call  rlabel_04_51BA 
call  rlabel_04_51EB 
ret			
.incbin "data/04_51A2.data"
ld a,($ff00+$a5)	
and $02			
.DB $28 $bd ; < ['$28', '$bd'] > < 0x51af > < 451af 04 51AF | 28BD: jr z, $BD >
.incbin "data/04_51B1.data"
rlabel_04_51BA:
call  rlabel_00_207C 
ld a,$00		
ld c,$08		
call  rlabel_00_05B1 
ld b,$03		
ld hl,$5177		
rst $28			
call  rlabel_04_4A7F 
call  rlabel_00_027C 
call  rlabel_00_208D 
ld a,($cc7d)		
cp $01			
.DB $28 $f0 ; < ['$28', '$f0'] > < 0x51d8 > < 451d8 04 51D8 | 28F0: jr z, $F0 >
ld a,($cc1f)		
push af			
ld hl,$cc1b		
ld de,$cc2e		
ld b,$13		
call  rlabel_00_1C19 
pop af			
ret			
rlabel_04_51EB:
call  rlabel_04_4505 
call  rlabel_04_4D7C 
ld hl,$5213		
call  rlabel_04_4D9D 
call  rlabel_04_4DBF 
ret			
.incbin "data/04_51FB.data"
rlabel_04_5319:
ld a,$00		
ld c,$08		
call  rlabel_00_05B1 
ret			
rlabel_04_5321:
ld hl,$d2d5		
xor a			
ld ($caf1),a		
ld a,c			
cp $00			
.DB $20 $08 ; < ['$20', '$08'] > < 0x532b > < 4532b 04 532B | 2008: jr nz, $08 >
ld de,$0064		
ld bc,$00f8		
.DB $18 $43 ; < ['$18', '$43'] > < 0x5333 > < 45333 04 5333 | 1843: jr $43 >
cp $01			
.DB $20 $08 ; < ['$20', '$08'] > < 0x5337 > < 45337 04 5337 | 2008: jr nz, $08 >
ld de,$00f8		
ld bc,$0150		
.DB $18 $37 ; < ['$18', '$37'] > < 0x533f > < 4533f 04 533F | 1837: jr $37 >
cp $02			
.DB $20 $08 ; < ['$20', '$08'] > < 0x5343 > < 45343 04 5343 | 2008: jr nz, $08 >
ld de,$0150		
ld bc,$01a4		
.DB $18 $2b ; < ['$18', '$2b'] > < 0x534b > < 4534b 04 534B | 182B: jr $2B >
.incbin "data/04_534D.data"
push bc			
push hl			
ld b,$03		
ld hl,$51b2		
rst $28			
pop hl			
ld a,c			
and a			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x5383 > < 45383 04 5383 | 280B: jr z, $0B >
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld a,($caf1)		
inc a			
ld ($caf1),a		
inc de			
pop bc			
ld a,d			
cp b			
.DB $38 $e2 ; < ['$38', '$e2'] > < 0x5394 > < 45394 04 5394 | 38E2: jr c, $E2 >
ld a,e			
cp c			
.DB $38 $de ; < ['$38', '$de'] > < 0x5398 > < 45398 04 5398 | 38DE: jr c, $DE >
ret			
rlabel_04_539B:
ld hl,$d415		
ld bc,$0040		
xor a			
ldi (hl),a		
dec bc			
ld a,b			
or c			
.DB $20 $f9 ; < ['$20', '$f9'] > < 0x53a6 > < 453a6 04 53A6 | 20F9: jr nz, $F9 >
ld hl,$d455		
ld bc,$0180		
xor a			
ldi (hl),a		
dec bc			
ld a,b			
or c			
.DB $20 $f9 ; < ['$20', '$f9'] > < 0x53b3 > < 453b3 04 53B3 | 20F9: jr nz, $F9 >
ret			
rlabel_04_53B6:
xor a			
ld c,a			
rlabel_04_53B8:
ld a,($caf9)		
cp $00			
.DB $20 $14 ; < ['$20', '$14'] > < 0x53bd > < 453bd 04 53BD | 2014: jr nz, $14 >
xor a			
ld d,a			
ld e,a			
ld a,($caed)		
call  rlabel_00_045D 
ld a,($cb89)		
call  rlabel_00_045D 
ld hl,$d415		
.DB $18 $0a ; < ['$18', '$0a'] > < 0x53d1 > < 453d1 04 53D1 | 180A: jr $0A >
ld a,($caf9)		
cp $01			
.DB $20 $03 ; < ['$20', '$03'] > < 0x53d8 > < 453d8 04 53D8 | 2003: jr nz, $03 >
ld hl,$d455		
srl d			
rr e			
.DB $38 $0e ; < ['$38', '$0e'] > < 0x53e1 > < 453e1 04 53E1 | 380E: jr c, $0E >
add hl,de		
ld a,(hl)		
ld b,a			
and $0f			
call  rlabel_04_5405 
ld a,b			
and $f0			
add c			
ld (hl),a		
ret			
add hl,de		
ld a,(hl)		
ld b,a			
and $f0			
swap a			
call  rlabel_04_5405 
ld a,b			
and $0f			
ld b,a			
ld a,c			
swap a			
add b			
ld (hl),a		
ret			
rlabel_04_5405:
ld d,a			
ld a,c			
cp $10			
.DB $30 $09 ; < ['$30', '$09'] > < 0x5409 > < 45409 04 5409 | 3009: jr nc, $09 >
add d			
cp $10			
.DB $38 $20 ; < ['$38', '$20'] > < 0x540e > < 4540e 04 540E | 3820: jr c, $20 >
.incbin "data/04_5410.data"
cp $f0			
.DB $38 $0b ; < ['$38', '$0b'] > < 0x5416 > < 45416 04 5416 | 380B: jr c, $0B >
xor $ff			
inc a			
ld c,a			
ld a,d			
sub c			
.DB $30 $10 ; < ['$30', '$10'] > < 0x541e > < 4541e 04 541E | 3010: jr nc, $10 >
.incbin "data/04_5420.data"
ld c,a			
ret			
.incbin "data/04_5432.data"
rlabel_04_544E:
ld a,$01		
ld ($cbce),a		
ld a,($caf2)		
call  rlabel_04_4506 
ld hl,$d2d5		
ld a,($caed)		
ld b,a			
call  rlabel_00_0462 
ld a,b			
call  rlabel_00_0462 
xor a			
ld ($cb89),a		
ld a,($cb89)		
add a			
ld c,a			
add a			
add a			
add c			
add $90			
ld ($cae8),a		
ld a,($caf1)		
ld c,a			
ld a,($caed)		
ld b,a			
ld a,($cb89)		
add b			
cp c			
.DB $38 $12 ; < ['$38', '$12'] > < 0x5485 > < 45485 04 5485 | 3812: jr c, $12 >
ld a,($cb89)		
add $09			
ld b,a			
ld c,$01		
ld e,$12		
push hl			
call  rlabel_00_113B 
pop hl			
jp $5535		
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
push hl			
push de			
ld b,$03		
ld hl,$4f0c		
rst $28			
ld a,($cb89)		
add $09			
ld b,a			
ld c,$01		
ld hl,$cb26		
call  rlabel_00_0FDE 
ld e,$0b		
call  rlabel_00_113B 
ld a,($cb89)		
ld b,a			
call  rlabel_04_580A 
ld hl,$cb76		
call  rlabel_00_11BB 
ld a,($cb89)		
add $09			
ld b,a			
ld c,$0b		
ld d,$40		
ld e,$07		
ld a,$05		
ld hl,$cb76		
call  rlabel_00_1228 
ld a,($cb89)		
add $09			
ld b,a			
ld c,$10		
ld d,$0e		
ld e,$07		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
pop de			
call  rlabel_04_53B6 
ld a,c			
add $40			
ld d,a			
ld a,($cb89)		
add $09			
ld b,a			
ld c,$11		
ld e,$07		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
ld a,($cb89)		
ld b,a			
add a			
add a			
ld c,a			
add a			
add c			
ld hl,$c038		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x5511 > < 45511 04 5511 | 3001: jr nc, $01 >
.incbin "data/04_5513.data"
push hl			
call  rlabel_04_5849 
pop hl			
and a			
.DB $28 $0a ; < ['$28', '$0a'] > < 0x551a > < 4551a 04 551A | 280A: jr z, $0A >
.incbin "data/04_551C.data"
ld a,$c0		
ldi (hl),a		
inc hl			
inc hl			
inc hl			
ldi (hl),a		
inc hl			
inc hl			
inc hl			
ldi (hl),a		
inc hl			
inc hl			
inc hl			
pop hl			
ld a,($caf2)		
ld b,a			
ld a,($cb89)		
inc a			
ld ($cb89),a		
cp b			
jp c,$546b		
xor a			
ld ($cbce),a		
ret			
rlabel_04_5549:
ld hl,$d2d5		
ld a,($caed)		
ld b,a			
call  rlabel_00_0462 
ld a,b			
call  rlabel_00_0462 
xor a			
ld ($cb89),a		
ld a,($caf1)		
ld c,a			
ld a,($caed)		
ld b,a			
ld a,($cb89)		
add b			
cp c			
.DB $38 $12 ; < ['$38', '$12'] > < 0x5568 > < 45568 04 5568 | 3812: jr c, $12 >
.incbin "data/04_556A.data"
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
push hl			
call  rlabel_04_53B6 
ld a,c			
add $40			
ld d,a			
ld a,($cb89)		
add $09			
ld b,a			
ld c,$11		
ld e,$07		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
pop hl			
ld a,($caf2)		
ld b,a			
ld a,($cb89)		
inc a			
ld ($cb89),a		
cp b			
.DB $38 $b4 ; < ['$38', '$b4'] > < 0x55a5 > < 455a5 04 55A5 | 38B4: jr c, $B4 >
ret			
rlabel_04_55A8:
ld d,$09		
ld e,$12		
ld b,$03		
ld hl,$4274		
rst $28			
ret			
.incbin "data/04_55B3.data"
rlabel_04_55CD:
ld a,($cb25)		
and a			
ret z			
.incbin "data/04_55D2.data"
rlabel_04_5701:
ld hl,$d6d5		
ld c,$20		
call  rlabel_00_04E2 
ld b,$b7		
ld hl,$682d		
rst $28			
ld b,c			
ld a,($cb9c)		
and a			
ret z			
inc a			
.DB $28 $08 ; < ['$28', '$08'] > < 0x5716 > < 45716 04 5716 | 2808: jr z, $08 >
dec a			
ld d,a			
xor a			
call  rlabel_04_5767 
cp d			
ret nc			
.incbin "data/04_5720.data"
rlabel_04_5767:
push hl			
push de			
push bc			
push af			
ld a,($c35d)		
ld e,a			
ld a,($c35e)		
ld d,a			
pop af			
call  rlabel_00_045D 
ld hl,$3039		
call  rlabel_00_0433 
call  rlabel_00_0433 
ld a,h			
add l			
add d			
add e			
pop bc			
pop de			
pop hl			
ret			
rlabel_04_5788:
ld d,a			
ld a,($caed)		
ld b,a			
ld a,($caf2)		
add b			
ld c,a			
ld a,($caf1)		
cp c			
.DB $30 $07 ; < ['$30', '$07'] > < 0x5796 > < 45796 04 5796 | 3007: jr nc, $07 >
.incbin "data/04_5798.data"
ld a,d			
ld a,a			
ld ($cc1b),a		
ld a,$00		
ld ($cc1c),a		
ld a,$00		
ld ($cc24),a		
ld a,$80		
ld ($cc25),a		
ld a,$07		
ld ($cc26),a		
ld a,$00		
ld ($cc22),a		
ld a,$01		
ld ($cc23),a		
ld a,$00		
ld b,a			
ld a,($caee)		
ld ($cc1f),a		
add a			
add a			
add a			
inc b			
dec b			
.DB $28 $03 ; < ['$28', '$03'] > < 0x57d0 > < 457d0 04 57D0 | 2803: jr z, $03 >
.incbin "data/04_57D2.data"
add $48			
ld ($cc1d),a		
xor a			
ld ($cc20),a		
ld ($cc21),a		
ld ($cc27),a		
ld ($cc28),a		
ld ($cc2d),a		
ld a,$ff		
ld ($cc1e),a		
ld a,$01		
ld ($cc2a),a		
ld a,($ff00+$a6)	
ld ($cccb),a		
ld b,$00		
ld hl,$26d5		
rst $28			
ret			
rlabel_04_5800:
ld b,$03		
ld hl,$4f0c		
rst $28			
ld a,($caee)		
ld b,a			
rlabel_04_580A:
ld a,($caf9)		
cp $00			
.DB $28 $04 ; < ['$28', '$04'] > < 0x580f > < 4580f 04 580F | 2804: jr z, $04 >
ld a,$80		
.DB $18 $17 ; < ['$18', '$17'] > < 0x5813 > < 45813 04 5813 | 1817: jr $17 >
call  rlabel_04_5849 
and a			
.DB $28 $0e ; < ['$28', '$0e'] > < 0x5819 > < 45819 04 5819 | 280E: jr z, $0E >
.incbin "data/04_581B.data"
ld a,($cbcc)		
ld hl,$cb69		
ld c,(hl)		
inc hl			
ld d,(hl)		
inc hl			
ld e,(hl)		
and a			
ret z			
ld h,a			
ld l,c			
call  rlabel_00_0421 
ld e,d			
ld d,l			
ld c,h			
ld a,c			
and a			
ret nz			
ld a,d			
and a			
ret nz			
ld a,e			
and a			
ret nz			
.incbin "data/04_5847.data"
rlabel_04_5849:
ld a,($caed)		
add b			
ld hl,$d6d5		
call  rlabel_00_0462 
ld a,(hl)		
ret			
rlabel_04_5855:
ld hl,$d2d5		
ld bc,$0140		
xor a			
cpl			
ldi (hl),a		
dec bc			
ld a,b			
or c			
.DB $20 $f8 ; < ['$20', '$f8'] > < 0x5861 > < 45861 04 5861 | 20F8: jr nz, $F8 >
ret			
rlabel_04_5864:
ld a,b			
cp e			
.DB $38 $10 ; < ['$38', '$10'] > < 0x5866 > < 45866 04 5866 | 3810: jr c, $10 >
.DB $20 $0c ; < ['$20', '$0c'] > < 0x5868 > < 45868 04 5868 | 200C: jr nz, $0C >
ld a,c			
cp h			
.DB $38 $0a ; < ['$38', '$0a'] > < 0x586c > < 4586c 04 586C | 380A: jr c, $0A >
.DB $20 $06 ; < ['$20', '$06'] > < 0x586e > < 4586e 04 586E | 2006: jr nz, $06 >
ld a,d			
cp l			
.DB $38 $04 ; < ['$38', '$04'] > < 0x5872 > < 45872 04 5872 | 3804: jr c, $04 >
.incbin "data/04_5874.data"
ld a,$01		
ret			
rlabel_04_587B:
ld a,d			
add l			
ld l,a			
ld a,c			
adc h			
ld h,a			
ld a,b			
adc e			
ld b,h			
ld c,l			
call  rlabel_04_5894 
ret			
rlabel_04_5889:
ld a,d			
sub l			
ld l,a			
ld a,c			
sbc h			
ld h,a			
ld a,b			
sbc e			
ld b,h			
ld c,l			
ret			
rlabel_04_5894:
ld e,a			
ld d,$00		
cp $cc			
.DB $30 $14 ; < ['$30', '$14'] > < 0x5899 > < 45899 04 5899 | 3014: jr nc, $14 >
cp $98			
.DB $38 $10 ; < ['$38', '$10'] > < 0x589d > < 4589d 04 589D | 3810: jr c, $10 >
.incbin "data/04_589F.data"
ld a,e			
ret			
ld a,c			
ld b,d			
ld c,e			
ld d,a			
add a			
add a			
add b			
ld b,a			
ld a,d			
ld ($cb86),a		
call  rlabel_00_12DD 
push bc			
ld a,b			
add a			
add a			
add a			
add $18			
ld b,a			
ld a,c			
add a			
add a			
add a			
add $1c			
ld c,a			
ld a,($cb86)		
call  rlabel_04_5910 
pop bc			
ld a,($cb86)		
ld ($cb86),a		
call  rlabel_00_12DD 
push bc			
inc b			
ld a,c			
add $05			
ld c,a			
ld a,($cb86)		
call  rlabel_04_595D 
pop bc			
push bc			
inc b			
ld a,c			
add $09			
ld c,a			
ld a,($cb86)		
call  rlabel_04_5992 
pop bc			
push bc			
ld a,($cb86)		
call  rlabel_04_59DC 
pop bc			
ret			
ld a,c			
ld b,d			
ld c,e			
ld d,a			
add a			
add a			
add b			
ld b,a			
ld a,d			
.DB $18 $cc ; < ['$18', '$cc'] > < 0x590b > < 4590b 04 590B | 18CC: jr $CC >
ld a,c			
ld b,d			
ld c,e			
rlabel_04_5910:
ld ($cb86),a		
call  rlabel_00_0815 
ld d,$01		
ld e,$00		
ld a,($cadf)		
cp $00			
.DB $20 $0c ; < ['$20', '$0c'] > < 0x591f > < 4591f 04 591F | 200C: jr nz, $0C >
ld a,($c225)		
ld h,a			
ld a,($cb86)		
cp h			
.DB $20 $02 ; < ['$20', '$02'] > < 0x5929 > < 45929 04 5929 | 2002: jr nz, $02 >
ld e,$01		
ld a,($cb86)		
call  rlabel_00_12DD 
add $7f			
call  rlabel_00_1381 
ld de,$c9c8		
ld a,($cb86)		
add a			
add a			
add a			
add e			
ld e,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x5943 > < 45943 04 5943 | 3001: jr nc, $01 >
.incbin "data/04_5945.data"
ld a,($cb87)		
add $10			
call  rlabel_00_0E10 
ld a,($cad8)		
and a			
ret nz			
ld a,($cb86)		
call  rlabel_00_13A0 
ret			
ld a,c			
ld b,d			
ld c,e			
rlabel_04_595D:
ld ($cb86),a		
ld d,$0b		
ld e,$05		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc b			
ld d,$0c		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
dec b			
inc c			
ld a,($cb86)		
ld de,$0008		
call  rlabel_00_12ED 
call  rlabel_04_59C2 
inc b			
ld a,($cb86)		
ld de,$000c		
call  rlabel_00_12ED 
call  rlabel_04_59C2 
ret			
ld a,c			
ld b,d			
ld c,e			
rlabel_04_5992:
ld ($cb86),a		
ld d,$0d		
ld e,$05		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc b			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
dec b			
inc c			
ld a,($cb86)		
ld de,$000a		
call  rlabel_00_12ED 
call  rlabel_04_59C2 
inc b			
ld a,($cb86)		
ld de,$000e		
call  rlabel_00_12ED 
call  rlabel_04_59C2 
ret			
rlabel_04_59C2:
push bc			
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
xor a			
ld c,a			
call  rlabel_00_11B8 
pop bc			
push bc			
ld d,$01		
ld e,$07		
ld a,$03		
call  rlabel_00_1225 
pop bc			
ret			
ld a,c			
ld b,d			
ld c,e			
rlabel_04_59DC:
ld ($cb86),a		
call  rlabel_00_12DD 
push bc			
ld a,($cb87)		
ld h,a			
ld l,$00		
srl h			
rr l			
srl h			
rr l			
ld de,$7c01		
add hl,de		
ld a,($cb86)		
add a			
add a			
add $64			
call  rlabel_00_1176 
ld bc,$0040		
ld a,$3d		
call  rlabel_00_0D83 
pop bc			
ld d,$18		
ld e,$07		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
ld a,($cb86)		
add a			
add a			
add $64			
ld d,a			
ld e,$04		
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
inc c			
inc d			
dec e			
.DB $20 $f5 ; < ['$20', '$f5'] > < 0x5a26 > < 45a26 04 5A26 | 20F5: jr nz, $F5 >
ld d,$19		
ld e,$07		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
ret			
rlabel_04_5A33:
ld hl,$d5d5		
add hl,de		
ld de,$cc74		
ld b,$0b		
ld a,(de)		
ldi (hl),a		
inc de			
dec b			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x5a40 > < 45a40 04 5A40 | 20FA: jr nz, $FA >
ret			
rlabel_04_5A43:
ld hl,$d5d5		
add hl,de		
ld de,$cc74		
ld b,$0b		
ldi a,(hl)		
ld (de),a		
inc de			
dec b			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x5a50 > < 45a50 04 5A50 | 20FA: jr nz, $FA >
ret			
rlabel_04_5A53:
push de			
call  rlabel_04_5A43 
ld a,($cc7d)		
cp $01			
call z,$1ea8		
pop de			
call  rlabel_04_5A33 
ret			
.incbin "data/04_5A64.data"
rlabel_04_5A75:
ld a,b			
ld ($cc75),a		
add d			
inc a			
ld ($cc77),a		
ld a,c			
ld ($cc74),a		
add e			
inc a			
ld ($cc76),a		
ld a,$02		
ld ($cc78),a		
call  rlabel_00_1E57 
ret			
.incbin "data/04_5A90.data"
ld de,$c35f		
call  rlabel_00_11B0 
ld a,$0a		
ld ($cb98),a		
ld a,$01		
ld ($cc97),a		
ld a,$01		
ld ($cfd4),a		
ld a,$1e		
call  rlabel_00_3071 
ld b,$02		
ld c,$06		
ld d,$02		
ld e,$0c		
call  rlabel_04_5A75 
ld de,$0000		
call  rlabel_04_5A33 
ld b,$0e		
ld c,$00		
ld d,$01		
ld e,$12		
call  rlabel_04_5A75 
ld de,$0040		
call  rlabel_04_5A33 
ld a,$04		
push af			
ld de,$0040		
call  rlabel_04_5A53 
ld de,$0000		
call  rlabel_04_5A53 
call  rlabel_00_027C 
pop af			
dec a			
.DB $20 $ec ; < ['$20', '$ec'] > < 0x5ae4 > < 45ae4 04 5AE4 | 20EC: jr nz, $EC >
ld b,$06		
ld c,$06		
ld d,$02		
ld e,$0c		
call  rlabel_04_5A75 
ld de,$0010		
call  rlabel_04_5A33 
ld a,$04		
push af			
ld de,$0040		
call  rlabel_04_5A53 
ld de,$0010		
call  rlabel_04_5A53 
ld de,$0000		
call  rlabel_04_5A53 
call  rlabel_00_027C 
pop af			
dec a			
.DB $20 $e6 ; < ['$20', '$e6'] > < 0x5b11 > < 45b11 04 5B11 | 20E6: jr nz, $E6 >
ld b,$0a		
ld c,$06		
ld d,$02		
ld e,$0c		
call  rlabel_04_5A75 
ld de,$0020		
call  rlabel_04_5A33 
ld a,$04		
push af			
ld de,$0040		
call  rlabel_04_5A53 
ld de,$0020		
call  rlabel_04_5A53 
ld de,$0010		
call  rlabel_04_5A53 
ld de,$0000		
call  rlabel_04_5A53 
call  rlabel_04_5C57 
call  rlabel_00_027C 
pop af			
dec a			
.DB $20 $dd ; < ['$20', '$dd'] > < 0x5b47 > < 45b47 04 5B47 | 20DD: jr nz, $DD >
ld b,$01		
ld c,$00		
ld d,$09		
ld e,$06		
call  rlabel_04_5A75 
ld de,$0030		
call  rlabel_04_5A33 
ld de,$0040		
call  rlabel_04_5A53 
ld de,$0030		
call  rlabel_04_5A53 
ld de,$0020		
call  rlabel_04_5A53 
ld de,$0010		
call  rlabel_04_5A53 
ld de,$0000		
call  rlabel_04_5A53 
call  rlabel_04_5C57 
call  rlabel_00_027C 
ld a,($cc7d)		
cp $01			
.DB $28 $d5 ; < ['$28', '$d5'] > < 0x5b83 > < 45b83 04 5B83 | 28D5: jr z, $D5 >
ld b,$02		
ld c,$06		
ld a,$00		
call  rlabel_04_5C31 
ld de,$0040		
call  rlabel_04_5A53 
ld de,$0030		
call  rlabel_04_5A53 
ld de,$0020		
call  rlabel_04_5A53 
ld de,$0010		
call  rlabel_04_5A53 
call  rlabel_04_5C57 
call  rlabel_00_027C 
ld a,($cc7d)		
cp $01			
.DB $28 $db ; < ['$28', '$db'] > < 0x5bb1 > < 45bb1 04 5BB1 | 28DB: jr z, $DB >
ld b,$06		
ld c,$06		
ld a,$01		
call  rlabel_04_5C31 
ld de,$0040		
call  rlabel_04_5A53 
ld de,$0030		
call  rlabel_04_5A53 
ld de,$0020		
call  rlabel_04_5A53 
call  rlabel_04_5C57 
call  rlabel_00_027C 
ld a,($cc7d)		
cp $01			
.DB $28 $e1 ; < ['$28', '$e1'] > < 0x5bd9 > < 45bd9 04 5BD9 | 28E1: jr z, $E1 >
ld b,$0a		
ld c,$06		
ld a,$02		
call  rlabel_04_5C31 
ld de,$0040		
call  rlabel_04_5A53 
ld de,$0030		
call  rlabel_04_5A53 
call  rlabel_04_5C57 
call  rlabel_00_027C 
ld a,($cc7d)		
cp $01			
.DB $28 $e7 ; < ['$28', '$e7'] > < 0x5bfb > < 45bfb 04 5BFB | 28E7: jr z, $E7 >
call  rlabel_04_5C5E 
call  rlabel_04_5C95 
ld b,$03		
ld hl,$4886		
rst $28			
ld de,$0040		
call  rlabel_04_5A53 
call  rlabel_04_5C57 
call  rlabel_00_027C 
ld a,($cc7d)		
cp $01			
.DB $28 $ed ; < ['$28', '$ed'] > < 0x5c1a > < 45c1a 04 5C1A | 28ED: jr z, $ED >
ld b,$03		
ld hl,$4941		
rst $28			
xor a			
ld ($cc97),a		
xor a			
ld ($cfd4),a		
ld b,$05		
ld hl,$5b5e		
rst $28			
ret			
rlabel_04_5C31:
push af			
push bc			
ld hl,$cbb6		
ld de,$d635		
ld b,$08		
call  rlabel_00_1C19 
pop bc			
pop af			
ld c,a			
ld d,$02		
ld e,$06		
ld b,$04		
ld hl,$58b1		
rst $28			
ld hl,$cbb6		
ld de,$d635		
ld b,$08		
call  rlabel_00_1C19 
ret			
rlabel_04_5C57:
ld b,$03		
ld hl,$499e		
rst $28			
ret			
rlabel_04_5C5E:
ld hl,$7bb1		
ld de,$9600		
ld bc,$0040		
ld a,$3d		
call  rlabel_00_0D83 
ld b,$01		
ld c,$00		
ld d,$18		
ld e,$07		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
ld d,$60		
ld a,$04		
push af			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
inc d			
pop af			
dec a			
.DB $20 $f3 ; < ['$20', '$f3'] > < 0x5c8a > < 45c8a 04 5C8A | 20F3: jr nz, $F3 >
ld d,$19		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
ret			
rlabel_04_5C95:
ld b,$02		
ld c,$01		
ld d,$00		
ld e,$04		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
ld a,c			
cp $07			
.DB $38 $f0 ; < ['$38', '$f0'] > < 0x5ca7 > < 45ca7 04 5CA7 | 38F0: jr c, $F0 >
inc b			
ld a,b			
cp $0b			
.DB $38 $e8 ; < ['$38', '$e8'] > < 0x5cad > < 45cad 04 5CAD | 38E8: jr c, $E8 >
ret			
rlabel_04_5CB0:
ld d,$02		
ld e,$06		
ld b,d			
ld c,e			
push bc			
ld b,$00		
ld hl,$1d56		
rst $28			
ld a,$01		
ld ($cc97),a		
ld a,$01		
ld ($cfd4),a		
ld a,$1e		
call  rlabel_00_3071 
pop bc			
push bc			
ld d,$02		
ld e,$0c		
call  rlabel_04_5A75 
ld de,$0000		
call  rlabel_04_5A33 
ld b,$0e		
ld c,$00		
ld d,$01		
ld e,$12		
call  rlabel_04_5A75 
ld de,$0040		
call  rlabel_04_5A33 
ld a,$04		
push af			
ld de,$0040		
call  rlabel_04_5A53 
ld de,$0000		
call  rlabel_04_5A53 
call  rlabel_00_027C 
pop af			
dec a			
.DB $20 $ec ; < ['$20', '$ec'] > < 0x5d00 > < 45d00 04 5D00 | 20EC: jr nz, $EC >
pop bc			
push bc			
ld a,b			
add $04			
ld b,a			
ld d,$02		
ld e,$0c		
call  rlabel_04_5A75 
ld de,$0010		
call  rlabel_04_5A33 
ld a,$04		
push af			
ld de,$0040		
call  rlabel_04_5A53 
ld de,$0010		
call  rlabel_04_5A53 
ld de,$0000		
call  rlabel_04_5A53 
call  rlabel_00_027C 
pop af			
dec a			
.DB $20 $e6 ; < ['$20', '$e6'] > < 0x5d2f > < 45d2f 04 5D2F | 20E6: jr nz, $E6 >
pop bc			
push bc			
ld a,b			
add $08			
ld b,a			
ld d,$02		
ld e,$0c		
call  rlabel_04_5A75 
ld de,$0020		
call  rlabel_04_5A33 
ld de,$0040		
call  rlabel_04_5A53 
ld de,$0020		
call  rlabel_04_5A53 
ld de,$0010		
call  rlabel_04_5A53 
ld de,$0000		
call  rlabel_04_5A53 
call  rlabel_00_027C 
ld a,($cc7d)		
cp $01			
.DB $28 $de ; < ['$28', '$de'] > < 0x5d64 > < 45d64 04 5D64 | 28DE: jr z, $DE >
pop bc			
push bc			
ld c,$00		
ld d,$02		
ld e,$06		
ld b,$04		
ld hl,$58b1		
rst $28			
ld de,$0040		
call  rlabel_04_5A53 
ld de,$0020		
call  rlabel_04_5A53 
ld de,$0010		
call  rlabel_04_5A53 
call  rlabel_00_027C 
ld a,($cc7d)		
cp $01			
.DB $28 $e4 ; < ['$28', '$e4'] > < 0x5d8e > < 45d8e 04 5D8E | 28E4: jr z, $E4 >
pop bc			
push bc			
ld c,$01		
ld d,$02		
ld e,$06		
ld b,$04		
ld hl,$58b1		
rst $28			
ld de,$0040		
call  rlabel_04_5A53 
ld de,$0020		
call  rlabel_04_5A53 
call  rlabel_00_027C 
ld a,($cc7d)		
cp $01			
.DB $28 $ea ; < ['$28', '$ea'] > < 0x5db2 > < 45db2 04 5DB2 | 28EA: jr z, $EA >
pop bc			
ld c,$02		
ld d,$02		
ld e,$06		
ld b,$04		
ld hl,$58b1		
rst $28			
ld de,$0040		
call  rlabel_04_5A53 
call  rlabel_00_027C 
ld a,($cc7d)		
cp $01			
.DB $28 $f0 ; < ['$28', '$f0'] > < 0x5dcf > < 45dcf 04 5DCF | 28F0: jr z, $F0 >
xor a			
ld ($cc97),a		
xor a			
ld ($cfd4),a		
ret			
ld d,$02		
ld e,$06		
ld b,d			
ld c,e			
push bc			
ld c,$00		
ld d,$02		
ld e,$06		
ld b,$04		
ld hl,$5902		
rst $28			
pop bc			
push bc			
ld c,$01		
ld d,$02		
ld e,$06		
ld b,$04		
ld hl,$5902		
rst $28			
pop bc			
ld c,$02		
ld d,$02		
ld e,$06		
ld b,$04		
ld hl,$5902		
rst $28			
ret			
.incbin "data/04_5E09.data"
xor a			
ld ($c346),a		
xor a			
ld ($cae0),a		
ld a,d			
cp $80			
.DB $30 $4d ; < ['$30', '$4d'] > < 0x5ea3 > < 45ea3 04 5EA3 | 304D: jr nc, $4D >
ld hl,$0064		
call  rlabel_00_12C6 
cp $01			
jp z,$626f		
ld hl,$01a4		
call  rlabel_00_12C6 
cp $01			
jp z,$5f11		
ld hl,$01ce		
call  rlabel_00_12C6 
cp $01			
jp z,$6035		
.incbin "data/04_5EC6.data"
push de			
ld b,$03		
ld hl,$4f0c		
rst $28			
pop de			
ld hl,$cbb0		
ld a,e			
ldi (hl),a		
ld (hl),d		
ld a,($cb72)		
cp $80			
.DB $38 $08 ; < ['$38', '$08'] > < 0x6048 > < 46048 04 6048 | 3808: jr c, $08 >
cp $90			
.DB $38 $07 ; < ['$38', '$07'] > < 0x604c > < 4604c 04 604C | 3807: jr c, $07 >
.incbin "data/04_604E.data"
call  rlabel_04_638A 
ld a,($cb72)		
cp $83			
.DB $28 $22 ; < ['$28', '$22'] > < 0x605d > < 4605d 04 605D | 2822: jr z, $22 >
cp $89			
.DB $28 $1e ; < ['$28', '$1e'] > < 0x6061 > < 46061 04 6061 | 281E: jr z, $1E >
cp $8c			
.DB $28 $1a ; < ['$28', '$1a'] > < 0x6065 > < 46065 04 6065 | 281A: jr z, $1A >
ld hl,$697c		
call  rlabel_04_6379 
call  rlabel_04_6461 
cp $ff			
.DB $20 $03 ; < ['$20', '$03'] > < 0x6072 > < 46072 04 6072 | 2003: jr nz, $03 >
.incbin "data/04_6074.data"
cp $80			
.DB $20 $0f ; < ['$20', '$0f'] > < 0x6079 > < 46079 04 6079 | 200F: jr nz, $0F >
call  rlabel_04_63C9 
ld c,$00		
ret			
.incbin "data/04_6081.data"
ld c,a			
call  rlabel_04_650C 
push bc			
call  rlabel_00_207C 
call  rlabel_04_6435 
pop bc			
ld hl,$cbb0		
ldi a,(hl)		
ld d,(hl)		
ld e,a			
ld a,d			
cp $ff			
.DB $28 $12 ; < ['$28', '$12'] > < 0x609f > < 4609f 04 609F | 2812: jr z, $12 >
ld b,$03		
ld hl,$51b4		
rst $28			
ld a,c			
and a			
.DB $28 $d0 ; < ['$28', '$d0'] > < 0x60a9 > < 460a9 04 60A9 | 28D0: jr z, $D0 >
call  rlabel_04_63FF 
call  rlabel_04_6417 
.DB $18 $b4 ; < ['$18', '$b4'] > < 0x60b1 > < 460b1 04 60B1 | 18B4: jr $B4 >
.incbin "data/04_60B3.data"
rlabel_04_6379:
ld b,$0f		
ld c,$01		
ld d,$54		
ld e,$07		
call  rlabel_00_0F47 
ld e,$13		
call  rlabel_00_1128 
ret			
rlabel_04_638A:
ld a,($cb22)		
ld ($cafb),a		
call  rlabel_00_13E5 
call  rlabel_00_027C 
call  rlabel_04_63D3 
call  rlabel_04_5CB0 
ret			
rlabel_04_639D:
ld a,($cafb)		
ld ($cb22),a		
call  rlabel_04_63D3 
call  rlabel_00_1375 
xor a			
ld b,a			
ld c,a			
ld a,$14		
ld ($ff00+$8a),a	
ld a,$12		
ld ($ff00+$8b),a	
ld b,$00		
ld hl,$1dac		
rst $28			
call  rlabel_00_13B1 
di			
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ei			
ret			
rlabel_04_63C9:
call  rlabel_04_639D 
ld b,$03		
ld hl,$4d18		
rst $28			
ret			
rlabel_04_63D3:
xor a			
ld c,$18		
call  rlabel_00_05B1 
ld a,$24		
ld c,$0c		
call  rlabel_00_05B1 
ret			
.incbin "data/04_63E1.data"
rlabel_04_63FF:
ld a,$01		
ld ($cc97),a		
xor a			
ld ($cc95),a		
ld hl,$0e00		
ld de,$1013		
ld c,$01		
call  rlabel_00_1E43 
call  rlabel_04_6417 
ret			
rlabel_04_6417:
call  rlabel_00_027C 
call  rlabel_00_1EA8 
ld a,($cc7d)		
cp $01			
.DB $28 $f3 ; < ['$28', '$f3'] > < 0x6422 > < 46422 04 6422 | 28F3: jr z, $F3 >
ret			
.incbin "data/04_6425.data"
rlabel_04_6435:
call  rlabel_00_027C 
call  rlabel_00_208D 
ld a,($cc7d)		
cp $01			
.DB $28 $f3 ; < ['$28', '$f3'] > < 0x6440 > < 46440 04 6440 | 28F3: jr z, $F3 >
ret			
.incbin "data/04_6443.data"
rlabel_04_6452:
call  rlabel_00_027C 
ld a,($ff00+$a5)	
and $03			
.DB $28 $f7 ; < ['$28', '$f7'] > < 0x6459 > < 46459 04 6459 | 28F7: jr z, $F7 >
ret			
call  rlabel_04_6461 
ld c,a			
ret			
rlabel_04_6461:
ld b,$03		
ld hl,$458b		
rst $28			
call  rlabel_00_0EEE 
call  rlabel_00_2555 
ld a,($ff00+$a5)	
and $01			
.DB $28 $0c ; < ['$28', '$0c'] > < 0x6471 > < 46471 04 6471 | 280C: jr z, $0C >
ld a,$1b		
call  rlabel_00_3071 
ld a,($cc1f)		
ld ($cafb),a		
ret			
ld a,($ff00+$a5)	
and $02			
.DB $28 $08 ; < ['$28', '$08'] > < 0x6483 > < 46483 04 6483 | 2808: jr z, $08 >
ld a,$1c		
call  rlabel_00_3071 
ld a,$80		
ret			
ld a,($ff00+$a4)	
and $08			
.DB $28 $06 ; < ['$28', '$06'] > < 0x6491 > < 46491 04 6491 | 2806: jr z, $06 >
.incbin "data/04_6493.data"
call  rlabel_00_027C 
.DB $18 $c9 ; < ['$18', '$c9'] > < 0x649c > < 4649c 04 649C | 18C9: jr $C9 >
.incbin "data/04_649E.data"
rlabel_04_650C:
ld a,($cb72)		
cp $80			
ret c			
cp $8d			
ret nc			
sub $80			
ld hl,$651e		
call  rlabel_00_05D3 
ret			
.incbin "data/04_651E.data"
push bc			
call  rlabel_04_670D 
pop bc			
and a			
jp z,$6697		
.incbin "data/04_6543.data"
ld a,($cb72)		
cp $88			
.DB $28 $13 ; < ['$28', '$13'] > < 0x669c > < 4669c 04 669C | 2813: jr z, $13 >
cp $8a			
.DB $28 $0f ; < ['$28', '$0f'] > < 0x66a0 > < 466a0 04 66A0 | 280F: jr z, $0F >
ld hl,$6a55		
ld a,($cb68)		
cp $b0			
.DB $38 $03 ; < ['$38', '$03'] > < 0x66aa > < 466aa 04 66AA | 3803: jr c, $03 >
.incbin "data/04_66AC.data"
.DB $18 $0d ; < ['$18', '$0d'] > < 0x66af > < 466af 04 66AF | 180D: jr $0D >
.incbin "data/04_66B1.data"
call  rlabel_04_66CD 
ld c,$00		
ret			
.incbin "data/04_66C4.data"
rlabel_04_66CD:
push hl			
call  rlabel_04_63FF 
pop hl			
push hl			
ld b,$04		
ld hl,$5dda		
rst $28			
pop hl			
call  rlabel_04_6379 
call  rlabel_04_6452 
xor a			
ld ($cc95),a		
ret			
.incbin "data/04_66E5.data"
rlabel_04_670D:
ld de,$000a		
ld hl,$0008		
call  rlabel_04_6721 
ret			
.incbin "data/04_6717.data"
rlabel_04_6721:
push hl			
ld a,c			
call  rlabel_00_12ED 
ldi a,(hl)		
ld ($ff00+$91),a	
ldd a,(hl)		
ld ($ff00+$90),a	
pop de			
ld a,c			
call  rlabel_00_12ED 
ldi a,(hl)		
ld ($ff00+$8f),a	
ldd a,(hl)		
ld ($ff00+$8e),a	
ld a,($ff00+$91)	
ld b,a			
ld a,($ff00+$8f)	
cp b			
.DB $20 $0b ; < ['$20', '$0b'] > < 0x673d > < 4673d 04 673D | 200B: jr nz, $0B >
ld a,($ff00+$90)	
ld b,a			
ld a,($ff00+$8e)	
cp b			
.DB $20 $03 ; < ['$20', '$03'] > < 0x6745 > < 46745 04 6745 | 2003: jr nz, $03 >
xor a			
.DB $18 $02 ; < ['$18', '$02'] > < 0x6748 > < 46748 04 6748 | 1802: jr $02 >
.incbin "data/04_674A.data"
ld c,a			
ld d,h			
ld e,l			
ret			
.incbin "data/04_6750.data"
call  rlabel_00_13B1 
di			
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ei			
call  rlabel_04_7AFB 
call  rlabel_04_7D17 
xor a			
ld ($cb90),a		
ld b,$00		
ld c,$08		
ld d,$02		
ld e,$0a		
call  rlabel_00_0F23 
ld b,$03		
ld hl,$41aa		
rst $28			
call  rlabel_04_6BB9 
call  rlabel_04_6C22 
call  rlabel_04_6C76 
call  rlabel_04_6CA4 
ld b,$28		
ld c,$00		
ld d,$00		
ld e,$01		
ld ($ff00+$b3),a	
ld a,$43		
ld ($ff00+$b0),a	
ld a,$41		
ld ($ff00+$b1),a	
ld a,$03		
call  rlabel_00_0244 
call  rlabel_00_0EEE 
ld b,$03		
ld hl,$4202		
rst $28			
ld a,($caef)		
ld b,a			
ld a,($caed)		
cp b			
.DB $28 $05 ; < ['$28', '$05'] > < 0x6b41 > < 46b41 04 6B41 | 2805: jr z, $05 >
.incbin "data/04_6B43.data"
ld a,($caf0)		
ld b,a			
ld a,($caee)		
cp b			
.DB $28 $03 ; < ['$28', '$03'] > < 0x6b50 > < 46b50 04 6B50 | 2803: jr z, $03 >
call  rlabel_04_6C76 
ld a,($ff00+$a5)	
and $01			
.DB $28 $22 ; < ['$28', '$22'] > < 0x6b59 > < 46b59 04 6B59 | 2822: jr z, $22 >
ld a,$1b		
call  rlabel_00_3071 
ld a,($cafb)		
ld de,$00d0		
call  rlabel_00_12ED 
ld de,$d2d5		
ld a,($caed)		
call  rlabel_00_045D 
ld a,($caee)		
call  rlabel_00_045D 
ld a,(de)		
ld (hl),a		
call  rlabel_04_6CA4 
ld a,($ff00+$a5)	
and $02			
.DB $28 $07 ; < ['$28', '$07'] > < 0x6b81 > < 46b81 04 6B81 | 2807: jr z, $07 >
ld a,$1c		
call  rlabel_00_3071 
.DB $18 $25 ; < ['$18', '$25'] > < 0x6b88 > < 46b88 04 6B88 | 1825: jr $25 >
ld a,($ff00+$a5)	
and $04			
.DB $28 $09 ; < ['$28', '$09'] > < 0x6b8e > < 46b8e 04 6B8E | 2809: jr z, $09 >
.incbin "data/04_6B90.data"
ld a,($ff00+$a5)	
and $08			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x6b9d > < 46b9d 04 6B9D | 280B: jr z, $0B >
.incbin "data/04_6B9F.data"
call  rlabel_00_027C 
.DB $18 $81 ; < ['$18', '$81'] > < 0x6bad > < 46bad 04 6BAD | 1881: jr $81 >
ld b,$03		
ld hl,$5757		
rst $28			
call  rlabel_00_13E5 
ret			
rlabel_04_6BB9:
ld b,$03		
ld hl,$5013		
rst $28			
ld hl,$d2d5		
xor a			
ld ($caf1),a		
xor a			
ld ($cb89),a		
push hl			
ld de,$0060		
ld a,($cb89)		
call  rlabel_00_045D 
ld a,($cafb)		
call  rlabel_00_12ED 
ld a,(hl)		
pop hl			
and a			
.DB $28 $32 ; < ['$28', '$32'] > < 0x6bdd > < 46bdd 04 6BDD | 2832: jr z, $32 >
push hl			
ld a,($cafb)		
call  rlabel_00_12DD 
ld h,a			
ld l,$00		
ld de,$4c21		
add hl,de		
ld a,($cb89)		
call  rlabel_00_0462 
ld de,$cb76		
ld a,$88		
call  rlabel_00_0D6C 
ld a,(de)		
pop hl			
cp $ff			
.DB $28 $10 ; < ['$28', '$10'] > < 0x6bff > < 46bff 04 6BFF | 2810: jr z, $10 >
cp $06			
.DB $28 $0c ; < ['$28', '$0c'] > < 0x6c03 > < 46c03 04 6C03 | 280C: jr z, $0C >
cp $07			
.DB $28 $08 ; < ['$28', '$08'] > < 0x6c07 > < 46c07 04 6C07 | 2808: jr z, $08 >
ldi (hl),a		
ld a,($caf1)		
inc a			
ld ($caf1),a		
ld a,($cb89)		
inc a			
ld ($cb89),a		
cp $10			
.DB $38 $ae ; < ['$38', '$ae'] > < 0x6c1a > < 46c1a 04 6C1A | 38AE: jr c, $AE >
ld a,$07		
ld ($caf2),a		
ret			
rlabel_04_6C22:
ld hl,$d2d5		
ld a,($caed)		
call  rlabel_00_0462 
xor a			
ld ($cb89),a		
ldi a,(hl)		
push hl			
cp $ff			
.DB $20 $0a ; < ['$20', '$0a'] > < 0x6c33 > < 46c33 04 6C33 | 200A: jr nz, $0A >
ld a,($cb89)		
add $05			
ld b,a			
ld c,$02		
.DB $18 $22 ; < ['$18', '$22'] > < 0x6c3d > < 46c3d 04 6C3D | 1822: jr $22 >
ld c,a			
ld b,$03		
ld hl,$4b72		
rst $28			
ld a,($cb89)		
add a			
ld d,a			
add a			
add a			
add d			
add $90			
ld ($cae8),a		
ld a,($cb89)		
add $05			
ld b,a			
ld c,$02		
ld hl,$cb26		
call  rlabel_00_0FDE 
ld e,$12		
call  rlabel_00_113B 
pop hl			
ld a,($caf2)		
ld b,a			
ld a,($cb89)		
inc a			
ld ($cb89),a		
cp b			
.DB $38 $ba ; < ['$38', '$ba'] > < 0x6c73 > < 46c73 04 6C73 | 38BA: jr c, $BA >
ret			
rlabel_04_6C76:
ld hl,$d2d5		
ld a,($caed)		
call  rlabel_00_0462 
ld a,($caee)		
call  rlabel_00_0462 
ld a,(hl)		
cp $ff			
.DB $20 $05 ; < ['$20', '$05'] > < 0x6c88 > < 46c88 04 6C88 | 2005: jr nz, $05 >
.incbin "data/04_6C8A.data"
ld c,a			
ld b,$03		
ld hl,$4b72		
rst $28			
call  rlabel_04_7C88 
ld d,$05		
ld e,$12		
ld b,$03		
ld hl,$4274		
rst $28			
ret			
rlabel_04_6CA4:
ld a,($cafb)		
ld de,$00d0		
call  rlabel_00_12ED 
ld a,(hl)		
ld c,a			
ld b,$03		
ld hl,$4b72		
rst $28			
ld b,$01		
ld c,$09		
ld d,$30		
ld e,$07		
ld hl,$cb26		
call  rlabel_00_0F47 
ld e,$13		
call  rlabel_00_1128 
ld a,($cafb)		
ld de,$00d1		
call  rlabel_00_12ED 
ld a,(hl)		
ld ($cb76),a		
ld a,($cb76)		
and $01			
.DB $28 $05 ; < ['$28', '$05'] > < 0x6cda > < 46cda 04 6CDA | 2805: jr z, $05 >
.incbin "data/04_6CDC.data"
ld hl,$6d32		
ld b,$02		
ld c,$09		
ld d,$3a		
ld e,$04		
call  rlabel_00_0F47 
ld a,($cb76)		
and $03			
cp $03			
.DB $20 $05 ; < ['$20', '$05'] > < 0x6cf6 > < 46cf6 04 6CF6 | 2005: jr nz, $05 >
.incbin "data/04_6CF8.data"
ld hl,$6d32		
ld b,$02		
ld c,$0c		
ld d,$3d		
ld e,$07		
call  rlabel_00_0F47 
ld a,($cb76)		
and $02			
.DB $28 $05 ; < ['$28', '$05'] > < 0x6d10 > < 46d10 04 6D10 | 2805: jr z, $05 >
.incbin "data/04_6D12.data"
ld hl,$6d32		
ld b,$02		
ld c,$0f		
ld d,$40		
ld e,$04		
call  rlabel_00_0F47 
ret			
.incbin "data/04_6D26.data"
call  rlabel_00_13B1 
di			
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ei			
call  rlabel_04_7AFB 
ld hl,$7889		
ld de,$90e0		
ld bc,$0010		
ld a,$33		
call  rlabel_00_0D83 
call  rlabel_04_7D17 
xor a			
ld ($cb90),a		
ld b,$00		
ld c,$08		
ld d,$03		
ld e,$0a		
call  rlabel_00_0F23 
ld b,$03		
ld hl,$41aa		
rst $28			
ld a,($cb1e)		
ld ($caed),a		
ld a,($cb1f)		
ld ($caee),a		
call  rlabel_04_703B 
call  rlabel_04_709C 
call  rlabel_04_7135 
ld b,$28		
ld c,$00		
ld d,$00		
ld e,$01		
ld ($ff00+$b3),a	
ld a,$43		
ld ($ff00+$b0),a	
ld a,$41		
ld ($ff00+$b1),a	
ld a,$03		
call  rlabel_00_0244 
call  rlabel_00_0EEE 
ld b,$03		
ld hl,$4202		
rst $28			
ld a,($caef)		
ld b,a			
ld a,($caed)		
cp b			
.DB $28 $05 ; < ['$28', '$05'] > < 0x6ddb > < 46ddb 04 6DDB | 2805: jr z, $05 >
.incbin "data/04_6DDD.data"
ld a,($caf0)		
ld b,a			
ld a,($caee)		
cp b			
.DB $28 $03 ; < ['$28', '$03'] > < 0x6dea > < 46dea 04 6DEA | 2803: jr z, $03 >
.incbin "data/04_6DEC.data"
ld a,($ff00+$a5)	
and $01			
.DB $28 $12 ; < ['$28', '$12'] > < 0x6df3 > < 46df3 04 6DF3 | 2812: jr z, $12 >
ld a,($caf1)		
and a			
.DB $28 $0c ; < ['$28', '$0c'] > < 0x6df9 > < 46df9 04 6DF9 | 280C: jr z, $0C >
.incbin "data/04_6DFB.data"
ld a,($ff00+$a5)	
and $02			
.DB $28 $07 ; < ['$28', '$07'] > < 0x6e0b > < 46e0b 04 6E0B | 2807: jr z, $07 >
ld a,$1c		
call  rlabel_00_3071 
.DB $18 $2f ; < ['$18', '$2f'] > < 0x6e12 > < 46e12 04 6E12 | 182F: jr $2F >
ld a,($ff00+$a5)	
and $04			
.DB $28 $13 ; < ['$28', '$13'] > < 0x6e18 > < 46e18 04 6E18 | 2813: jr z, $13 >
.incbin "data/04_6E1A.data"
ld a,($ff00+$a5)	
and $08			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x6e31 > < 46e31 04 6E31 | 280B: jr z, $0B >
.incbin "data/04_6E33.data"
call  rlabel_00_027C 
.DB $18 $87 ; < ['$18', '$87'] > < 0x6e41 > < 46e41 04 6E41 | 1887: jr $87 >
ld b,$03		
ld hl,$5757		
rst $28			
call  rlabel_00_13E5 
ret			
.incbin "data/04_6E4D.data"
rlabel_04_703B:
ld b,$03		
ld hl,$5013		
rst $28			
ld hl,$d2d5		
xor a			
ld ($caf1),a		
xor a			
ld ($cb89),a		
push hl			
ld de,$0070		
ld a,($cb89)		
call  rlabel_00_045D 
ld a,($cafb)		
call  rlabel_00_12ED 
ld a,(hl)		
pop hl			
and a			
.DB $28 $2a ; < ['$28', '$2a'] > < 0x705f > < 4705f 04 705F | 282A: jr z, $2A >
.incbin "data/04_7061.data"
ld a,($cb89)		
inc a			
ld ($cb89),a		
cp $20			
.DB $38 $b6 ; < ['$38', '$b6'] > < 0x7094 > < 47094 04 7094 | 38B6: jr c, $B6 >
ld a,$07		
ld ($caf2),a		
ret			
rlabel_04_709C:
ld hl,$d2d5		
ld a,($caed)		
call  rlabel_00_0462 
xor a			
ld ($cb89),a		
ldi a,(hl)		
push hl			
cp $ff			
.DB $20 $0f ; < ['$20', '$0f'] > < 0x70ad > < 470ad 04 70AD | 200F: jr nz, $0F >
ld a,($cb89)		
add $05			
ld b,a			
ld c,$02		
ld e,$12		
call  rlabel_00_113B 
.DB $18 $47 ; < ['$18', '$47'] > < 0x70bc > < 470bc 04 70BC | 1847: jr $47 >
.incbin "data/04_70BE.data"
pop hl			
ld a,($caf2)		
ld b,a			
ld a,($cb89)		
inc a			
ld ($cb89),a		
cp b			
.DB $38 $95 ; < ['$38', '$95'] > < 0x7112 > < 47112 04 7112 | 3895: jr c, $95 >
ret			
.incbin "data/04_7115.data"
rlabel_04_7135:
call  rlabel_04_7C64 
cp $ff			
.DB $20 $05 ; < ['$20', '$05'] > < 0x713a > < 4713a 04 713A | 2005: jr nz, $05 >
call  rlabel_04_7C75 
.DB $18 $0a ; < ['$18', '$0a'] > < 0x713f > < 4713f 04 713F | 180A: jr $0A >
.incbin "data/04_7141.data"
ld d,$05		
ld e,$12		
ld b,$03		
ld hl,$4274		
rst $28			
call  rlabel_04_7C64 
cp $ff			
ret z			
.incbin "data/04_715B.data"
di			
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ei			
call  rlabel_04_7AFB 
call  rlabel_04_7D17 
xor a			
ld ($cb90),a		
xor a			
ld ($cafa),a		
ld ($cafe),a		
ld ($caff),a		
ld b,$00		
ld c,$08		
ld d,$02		
ld e,$0a		
call  rlabel_00_0F23 
ld b,$04		
ld c,$00		
ld d,$07		
ld e,$12		
call  rlabel_00_0F23 
ld b,$03		
ld hl,$41aa		
rst $28			
ld a,($cafa)		
ld ($caee),a		
call  rlabel_04_7528 
call  rlabel_04_7531 
call  rlabel_04_759D 
call  rlabel_04_75C2 
ld b,$28		
ld c,$00		
ld d,$01		
ld e,$00		
ld ($ff00+$b3),a	
ld a,$43		
ld ($ff00+$b0),a	
ld a,$41		
ld ($ff00+$b1),a	
ld a,$03		
call  rlabel_00_0244 
call  rlabel_00_0EEE 
ld b,$03		
ld hl,$4202		
rst $28			
ld a,($caf0)		
ld b,a			
ld a,($caee)		
cp b			
.DB $28 $06 ; < ['$28', '$06'] > < 0x74c3 > < 474c3 04 74C3 | 2806: jr z, $06 >
call  rlabel_04_759D 
call  rlabel_04_75C2 
ld a,($ff00+$a5)	
and $01			
.DB $28 $0e ; < ['$28', '$0e'] > < 0x74cf > < 474cf 04 74CF | 280E: jr z, $0E >
ld a,$1b		
call  rlabel_00_3071 
ld a,($caee)		
ld ($cafa),a		
jp $760b		
ld a,($ff00+$a5)	
and $02			
.DB $28 $07 ; < ['$28', '$07'] > < 0x74e3 > < 474e3 04 74E3 | 2807: jr z, $07 >
ld a,$1c		
call  rlabel_00_3071 
.DB $18 $2f ; < ['$18', '$2f'] > < 0x74ea > < 474ea 04 74EA | 182F: jr $2F >
ld a,($ff00+$a5)	
and $04			
.DB $28 $13 ; < ['$28', '$13'] > < 0x74f0 > < 474f0 04 74F0 | 2813: jr z, $13 >
.incbin "data/04_74F2.data"
ld a,($ff00+$a5)	
and $08			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x7509 > < 47509 04 7509 | 280B: jr z, $0B >
.incbin "data/04_750B.data"
call  rlabel_00_027C 
.DB $18 $97 ; < ['$18', '$97'] > < 0x7519 > < 47519 04 7519 | 1897: jr $97 >
ld b,$03		
ld hl,$5757		
rst $28			
ld b,$01		
ld hl,$4b39		
rst $28			
ret			
rlabel_04_7528:
ld a,$04		
ld ($caf1),a		
ld ($caf2),a		
ret			
rlabel_04_7531:
ld de,$00d4		
ld a,($cafb)		
call  rlabel_00_12ED 
xor a			
ld ($cb89),a		
push hl			
ld a,($cb89)		
add a			
add $05			
ld b,a			
ld c,$02		
ld a,($cb89)		
add a			
add a			
add $b8			
ld d,a			
ld e,$04		
ld a,($cb89)		
ld h,a			
add a			
add a			
add h			
ld hl,$7813		
call  rlabel_00_0462 
call  rlabel_00_0F47 
pop hl			
ldi a,(hl)		
push hl			
ld c,a			
ld b,$03		
ld hl,$4b78		
rst $28			
ld a,($cb89)		
add a			
ld d,a			
add a			
add a			
add d			
add $90			
ld ($cae8),a		
ld a,($cb89)		
add a			
add $05			
ld b,a			
ld c,$06		
ld hl,$cb26		
call  rlabel_00_0FDE 
ld e,$12		
call  rlabel_00_113B 
pop hl			
ld a,($caf2)		
ld b,a			
ld a,($cb89)		
inc a			
ld ($cb89),a		
cp b			
.DB $38 $a2 ; < ['$38', '$a2'] > < 0x759a > < 4759a 04 759A | 38A2: jr c, $A2 >
ret			
rlabel_04_759D:
ld de,$00d4		
ld a,($cafb)		
call  rlabel_00_12ED 
ld a,($caee)		
call  rlabel_00_0462 
ld a,(hl)		
ld c,a			
ld b,$03		
ld hl,$4b78		
rst $28			
call  rlabel_04_7C88 
ld d,$05		
ld e,$12		
ld b,$03		
ld hl,$4274		
rst $28			
ret			
rlabel_04_75C2:
ld b,$01		
ld c,$09		
ld d,$30		
ld e,$04		
ld a,($caee)		
ld h,a			
add a			
add a			
add h			
ld hl,$7813		
call  rlabel_00_0462 
call  rlabel_00_0F47 
ld e,$13		
call  rlabel_00_113B 
ld de,$00d4		
ld a,($cafb)		
call  rlabel_00_12ED 
ld a,($caee)		
call  rlabel_00_0462 
ld a,(hl)		
ld c,a			
ld b,$03		
ld hl,$4b78		
rst $28			
ld b,$02		
ld c,$09		
ld a,$3a		
ld ($cae8),a		
ld hl,$cb26		
call  rlabel_00_0FDE 
ld e,$13		
call  rlabel_00_113B 
ret			
ld b,$03		
ld hl,$5757		
rst $28			
ld b,$04		
ld c,$00		
ld d,$07		
ld e,$12		
call  rlabel_00_0F23 
ld b,$03		
ld hl,$41aa		
rst $28			
ld a,($cafe)		
ld ($caed),a		
ld a,($caff)		
ld ($caee),a		
call  rlabel_04_76E4 
call  rlabel_04_774B 
call  rlabel_04_77E5 
ld b,$28		
ld c,$00		
ld d,$00		
ld e,$01		
ld ($ff00+$b3),a	
ld a,$43		
ld ($ff00+$b0),a	
ld a,$41		
ld ($ff00+$b1),a	
ld a,$03		
call  rlabel_00_0244 
call  rlabel_00_0EEE 
ld b,$03		
ld hl,$4202		
rst $28			
ld a,($caef)		
ld b,a			
ld a,($caed)		
cp b			
.DB $28 $05 ; < ['$28', '$05'] > < 0x765f > < 4765f 04 765F | 2805: jr z, $05 >
.incbin "data/04_7661.data"
ld a,($caf0)		
ld b,a			
ld a,($caee)		
cp b			
.DB $28 $0f ; < ['$28', '$0f'] > < 0x766e > < 4766e 04 766E | 280F: jr z, $0F >
call  rlabel_04_77E5 
ld a,($caed)		
ld ($cafe),a		
ld a,($caee)		
ld ($caff),a		
ld a,($ff00+$a5)	
and $01			
.DB $28 $08 ; < ['$28', '$08'] > < 0x7683 > < 47683 04 7683 | 2808: jr z, $08 >
ld a,$1b		
call  rlabel_00_3071 
call  rlabel_04_76BD 
ld a,($ff00+$a5)	
and $02			
.DB $28 $13 ; < ['$28', '$13'] > < 0x7691 > < 47691 04 7691 | 2813: jr z, $13 >
ld a,$1c		
call  rlabel_00_3071 
ld b,$03		
ld hl,$576b		
rst $28			
ld a,$26		
call  rlabel_00_05AF 
jp $7478		
ld a,($ff00+$a5)	
and $08			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x76aa > < 476aa 04 76AA | 280B: jr z, $0B >
.incbin "data/04_76AC.data"
call  rlabel_00_027C 
.DB $18 $92 ; < ['$18', '$92'] > < 0x76ba > < 476ba 04 76BA | 1892: jr $92 >
.incbin "data/04_76BC.data"
rlabel_04_76BD:
ld a,($cafa)		
ld de,$00d4		
call  rlabel_00_045D 
ld a,($cafb)		
call  rlabel_00_12ED 
push hl			
call  rlabel_04_7C64 
pop hl			
ld (hl),a		
ld a,($caee)		
push af			
ld a,($cafa)		
ld ($caee),a		
call  rlabel_04_75C2 
pop af			
ld ($caee),a		
ret			
rlabel_04_76E4:
ld b,$03		
ld hl,$5013		
rst $28			
call  rlabel_00_3314 
inc hl			
ld a,$01		
ld ($caf1),a		
xor a			
ld ($cb89),a		
push hl			
ld de,$0040		
ld a,($cb89)		
call  rlabel_00_045D 
ld a,($cafb)		
call  rlabel_00_12ED 
ld a,(hl)		
pop hl			
and a			
.DB $28 $2e ; < ['$28', '$2e'] > < 0x770a > < 4770a 04 770A | 282E: jr z, $2E >
push hl			
ld a,($cafb)		
call  rlabel_00_12DD 
ld h,a			
ld l,$00		
ld de,$4c01		
add hl,de		
ld a,($cb89)		
call  rlabel_00_0462 
ld de,$cb76		
ld a,$88		
call  rlabel_00_0D6C 
ld a,(de)		
pop hl			
cp $ff			
.DB $28 $0c ; < ['$28', '$0c'] > < 0x772c > < 4772c 04 772C | 280C: jr z, $0C >
cp $60			
.DB $38 $08 ; < ['$38', '$08'] > < 0x7730 > < 47730 04 7730 | 3808: jr c, $08 >
ldi (hl),a		
ld a,($caf1)		
inc a			
ld ($caf1),a		
ld a,($cb89)		
inc a			
ld ($cb89),a		
cp $20			
.DB $38 $b2 ; < ['$38', '$b2'] > < 0x7743 > < 47743 04 7743 | 38B2: jr c, $B2 >
ld a,$07		
ld ($caf2),a		
ret			
rlabel_04_774B:
call  rlabel_00_3314 
ld a,($caed)		
call  rlabel_00_0462 
xor a			
ld ($cb89),a		
ld a,($caed)		
ld b,a			
ld a,($cb89)		
add b			
ld ($cb8b),a		
ldi a,(hl)		
push hl			
cp $ff			
.DB $20 $17 ; < ['$20', '$17'] > < 0x7767 > < 47767 04 7767 | 2017: jr nz, $17 >
ld b,a			
ld a,($cb8b)		
and a			
ld a,b			
.DB $28 $0f ; < ['$28', '$0f'] > < 0x776f > < 4776f 04 776F | 280F: jr z, $0F >
ld a,($cb89)		
add $05			
ld b,a			
ld c,$02		
ld e,$12		
call  rlabel_00_113B 
.DB $18 $4f ; < ['$18', '$4f'] > < 0x777e > < 4777e 04 777E | 184F: jr $4F >
ld c,a			
ld b,$0c		
ld hl,$5322		
rst $28			
ld a,($cb89)		
add a			
ld d,a			
add a			
add a			
add d			
add $90			
ld ($cae8),a		
ld a,($cb89)		
add $05			
ld b,a			
ld c,$02		
ld hl,$cb26		
call  rlabel_00_0FDE 
ld a,($cb8b)		
and a			
.DB $28 $27 ; < ['$28', '$27'] > < 0x77a6 > < 477a6 04 77A6 | 2827: jr z, $27 >
ld e,$0d		
call  rlabel_00_1128 
ld d,$0c		
ld e,$05		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
push bc			
ld a,($cb66)		
ld e,a			
xor a			
ld d,a			
ld c,a			
call  rlabel_00_11B8 
pop bc			
ld d,$01		
ld e,$04		
ld a,$03		
call  rlabel_00_1225 
.DB $18 $05 ; < ['$18', '$05'] > < 0x77cd > < 477cd 04 77CD | 1805: jr $05 >
ld e,$12		
call  rlabel_00_113B 
pop hl			
ld a,($caf2)		
ld b,a			
ld a,($cb89)		
inc a			
ld ($cb89),a		
cp b			
jp c,$7758		
ret			
rlabel_04_77E5:
call  rlabel_00_3314 
ld a,($caed)		
call  rlabel_00_0462 
ld a,($caee)		
call  rlabel_00_0462 
ld a,(hl)		
cp $ff			
.DB $20 $05 ; < ['$20', '$05'] > < 0x77f7 > < 477f7 04 77F7 | 2005: jr nz, $05 >
call  rlabel_04_7C75 
.DB $18 $0a ; < ['$18', '$0a'] > < 0x77fc > < 477fc 04 77FC | 180A: jr $0A >
ld c,a			
ld b,$03		
ld hl,$4b78		
rst $28			
call  rlabel_04_7C88 
ld d,$05		
ld e,$12		
ld b,$03		
ld hl,$4274		
rst $28			
ret			
.incbin "data/04_7813.data"
di			
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ei			
call  rlabel_04_7AFB 
call  rlabel_04_7D17 
xor a			
ld ($cb90),a		
ld b,$01		
ld c,$08		
ld d,$01		
ld e,$0a		
call  rlabel_00_0F23 
ld b,$04		
ld c,$00		
ld d,$07		
ld e,$12		
call  rlabel_00_0F23 
ld b,$03		
ld hl,$41aa		
rst $28			
ld de,$003b		
ld a,($cafb)		
call  rlabel_00_12ED 
ld a,(hl)		
ld ($caee),a		
call  rlabel_04_78F4 
call  rlabel_04_78FD 
call  rlabel_04_793E 
call  rlabel_04_794F 
ld b,$28		
ld c,$00		
ld d,$01		
ld e,$00		
ld ($ff00+$b3),a	
ld a,$43		
ld ($ff00+$b0),a	
ld a,$41		
ld ($ff00+$b1),a	
ld a,$03		
call  rlabel_00_0244 
call  rlabel_00_0EEE 
ld b,$03		
ld hl,$4202		
rst $28			
ld a,($caf0)		
ld b,a			
ld a,($caee)		
cp b			
.DB $28 $03 ; < ['$28', '$03'] > < 0x789b > < 4789b 04 789B | 2803: jr z, $03 >
call  rlabel_04_793E 
ld a,($ff00+$a5)	
and $01			
.DB $28 $15 ; < ['$28', '$15'] > < 0x78a4 > < 478a4 04 78A4 | 2815: jr z, $15 >
ld a,$1b		
call  rlabel_00_3071 
ld de,$003b		
ld a,($cafb)		
call  rlabel_00_12ED 
ld a,($caee)		
ld (hl),a		
call  rlabel_04_794F 
ld a,($ff00+$a5)	
and $02			
.DB $28 $07 ; < ['$28', '$07'] > < 0x78bf > < 478bf 04 78BF | 2807: jr z, $07 >
ld a,$1c		
call  rlabel_00_3071 
.DB $18 $25 ; < ['$18', '$25'] > < 0x78c6 > < 478c6 04 78C6 | 1825: jr $25 >
ld a,($ff00+$a5)	
and $04			
.DB $28 $09 ; < ['$28', '$09'] > < 0x78cc > < 478cc 04 78CC | 2809: jr z, $09 >
.incbin "data/04_78CE.data"
ld a,($ff00+$a5)	
and $08			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x78db > < 478db 04 78DB | 280B: jr z, $0B >
.incbin "data/04_78DD.data"
call  rlabel_00_027C 
.DB $18 $9d ; < ['$18', '$9d'] > < 0x78eb > < 478eb 04 78EB | 189D: jr $9D >
ld b,$03		
ld hl,$5757		
rst $28			
ret			
rlabel_04_78F4:
ld a,$04		
ld ($caf1),a		
ld ($caf2),a		
ret			
rlabel_04_78FD:
xor a			
ld ($cb89),a		
ld a,($cb89)		
call  rlabel_04_7978 
ld c,a			
ld b,$03		
ld hl,$4b88		
rst $28			
ld a,($cb89)		
add a			
ld d,a			
add a			
add a			
add d			
add $90			
ld ($cae8),a		
ld a,($cb89)		
add a			
add $05			
ld b,a			
ld c,$02		
ld hl,$cb26		
call  rlabel_00_0FDE 
ld e,$12		
call  rlabel_00_113B 
ld a,($caf2)		
ld b,a			
ld a,($cb89)		
inc a			
ld ($cb89),a		
cp b			
.DB $38 $c4 ; < ['$38', '$c4'] > < 0x793b > < 4793b 04 793B | 38C4: jr c, $C4 >
ret			
rlabel_04_793E:
ld a,($caee)		
call  rlabel_04_7978 
ld c,a			
ld b,$03		
ld hl,$4b88		
rst $28			
call  rlabel_04_7C88 
ret			
rlabel_04_794F:
ld de,$003b		
ld a,($cafb)		
call  rlabel_00_12ED 
ld a,(hl)		
call  rlabel_04_7978 
ld c,a			
ld b,$03		
ld hl,$4b88		
rst $28			
ld a,$30		
ld ($cae8),a		
ld b,$02		
ld c,$09		
ld hl,$cb26		
call  rlabel_00_0FDE 
ld e,$13		
call  rlabel_00_113B 
ret			
rlabel_04_7978:
push af			
ld de,$003c		
ld a,($cafb)		
call  rlabel_00_12ED 
ld a,(hl)		
add a			
add a			
ld hl,$7991		
call  rlabel_00_0462 
pop af			
call  rlabel_00_0462 
ld a,(hl)		
ret			
.incbin "data/04_7991.data"
xor a			
ld ($cafb),a		
call  rlabel_00_05AA 
call  rlabel_00_136B 
ld b,$03		
ld hl,$40af		
rst $28			
ld c,$08		
call  rlabel_00_132B 
ld b,$04		
ld hl,$5cb0		
rst $28			
ld b,$0f		
ld c,$01		
ld d,$d7		
ld e,$07		
ld hl,$7ace		
call  rlabel_00_0F47 
ld b,$01		
ld hl,$47ea		
rst $28			
ld b,$04		
ld hl,$645c		
rst $28			
ld a,c			
cp $80			
jp z,$7a8a		
cp $ff			
jp z,$7ac4		
ld ($cb98),a		
call  rlabel_00_0815 
ld b,$02		
call  rlabel_00_0832 
sub $28			
call  rlabel_00_083E 
ld a,($cb98)		
call  rlabel_00_12DD 
add $7f			
ld c,a			
ld d,$01		
ld e,$00		
ld b,$06		
ld hl,$447d		
rst $28			
ld a,$01		
ld ($cfd4),a		
call  rlabel_04_63FF 
ld hl,$7adb		
call  rlabel_04_6379 
xor a			
ld ($cfd4),a		
call  rlabel_00_13B1 
ld b,$04		
ld de,$7aea		
call  rlabel_00_14E5 
ld b,$04		
ld hl,$645c		
rst $28			
ld a,c			
cp $80			
.DB $28 $64 ; < ['$28', '$64'] > < 0x7a2c > < 47a2c 04 7A2C | 2864: jr z, $64 >
cp $ff			
jp z,$7ac1		
ld b,a			
call  rlabel_00_12DD 
ld d,a			
ld a,($cb98)		
ld c,a			
call  rlabel_00_12DD 
ld e,a			
ld a,b			
ld hl,$c34c		
call  rlabel_00_0462 
ld (hl),e		
ld a,c			
ld hl,$c34c		
call  rlabel_00_0462 
ld (hl),d		
ld a,($c225)		
cp c			
.DB $20 $06 ; < ['$20', '$06'] > < 0x7a54 > < 47a54 04 7A54 | 2006: jr nz, $06 >
ld a,b			
ld ($c225),a		
.DB $18 $0a ; < ['$18', '$0a'] > < 0x7a5a > < 47a5a 04 7A5A | 180A: jr $0A >
.incbin "data/04_7A5C.data"
push bc			
ld b,$01		
ld hl,$47fa		
rst $28			
call  rlabel_00_13E5 
pop bc			
push bc			
ld d,$02		
ld e,$06		
ld b,$04		
ld hl,$58b1		
rst $28			
pop bc			
ld c,b			
ld d,$02		
ld e,$06		
ld b,$04		
ld hl,$58b1		
rst $28			
.DB $18 $22 ; < ['$18', '$22'] > < 0x7a88 > < 47a88 04 7A88 | 1822: jr $22 >
xor a			
ld ($cafb),a		
ld ($cb22),a		
ret			
.incbin "data/04_7A92.data"
ld a,$01		
ld ($cfd4),a		
call  rlabel_04_63FF 
ld hl,$7ace		
call  rlabel_04_6379 
xor a			
ld ($cfd4),a		
jp $79d2		
.incbin "data/04_7AC1.data"
ld a,($cb98)		
call  rlabel_00_0815 
ld a,($cc1d)		
add $0c			
ld b,$00		
call  rlabel_00_083E 
ret			
rlabel_04_7AFB:
call  rlabel_00_05AA 
call  rlabel_00_1375 
ld b,$03		
ld hl,$40af		
rst $28			
ld a,$01		
ld ($cfd4),a		
ld hl,$0000		
ld de,$0307		
ld c,$02		
call  rlabel_00_1E43 
call  rlabel_00_24F4 
ld hl,$0400		
ld de,$0c13		
ld c,$02		
call  rlabel_00_1E43 
call  rlabel_00_24FA 
ld hl,$0d00		
ld de,$1113		
ld c,$02		
call  rlabel_00_1E43 
call  rlabel_00_2500 
ld a,$1e		
call  rlabel_00_3071 
ld hl,$0000		
ld de,$0000		
ld bc,$0000		
call  rlabel_00_2375 
xor a			
ld ($cfd4),a		
call  rlabel_04_7B4F 
ret			
rlabel_04_7B4F:
call  rlabel_00_1375 
ld d,$40		
ld b,$03		
ld hl,$7733		
rst $28			
ld b,$fc		
ld c,$04		
ld d,$40		
ld e,$1e		
ld ($ff00+$b3),a	
ld a,$8a		
ld ($ff00+$b0),a	
ld a,$77		
ld ($ff00+$b1),a	
ld a,$03		
call  rlabel_00_0244 
ld a,($cafb)		
ld c,a			
ld d,$01		
ld e,$03		
ld b,$04		
ld hl,$595a		
rst $28			
ld a,($cafb)		
ld c,a			
ld d,$01		
ld e,$03		
ld b,$04		
ld hl,$595a		
rst $28			
ld a,($cafb)		
ld c,a			
ld d,$00		
ld e,$00		
ld b,$04		
ld hl,$59d9		
rst $28			
ret			
.incbin "data/04_7B9C.data"
rlabel_04_7C64:
call  rlabel_00_3314 
ld a,($caed)		
call  rlabel_00_0462 
ld a,($caee)		
call  rlabel_00_0462 
ld a,(hl)		
ret			
rlabel_04_7C75:
ld b,$0e		
ld c,$01		
ld e,$13		
call  rlabel_00_113B 
ld b,$10		
ld c,$01		
ld e,$13		
call  rlabel_00_113B 
ret			
rlabel_04_7C88:
ld hl,$cb26		
ldi a,(hl)		
and a			
.DB $20 $fc ; < ['$20', '$fc'] > < 0x7c8d > < 47c8d 04 7C8D | 20FC: jr nz, $FC >
ld a,$d7		
ld ($cae8),a		
ld b,$0e		
ld c,$01		
call  rlabel_00_0FDE 
push hl			
ld e,$13		
call  rlabel_00_113B 
pop hl			
ld a,$e9		
ld ($cae8),a		
ld b,$10		
ld c,$01		
call  rlabel_00_0FDE 
ld e,$13		
call  rlabel_00_113B 
ret			
.incbin "data/04_7CB4.data"
rlabel_04_7D17:
ld b,$03		
ld hl,$576b		
rst $28			
ld b,$04		
ld de,$7d26		
call  rlabel_00_14E5 
ret			
ld b,$03		
ld hl,$5e43		
rst $28			
ld b,$03		
ld hl,$572c		
rst $28			
ret			
.incbin "data/04_7D33.data"
