.BANK $a8 SLOT 1
.ORG 0
.incbin "data/a8_4000.data"
call  rlabel_A8_4069 
call  rlabel_A8_40CE 
call  rlabel_A8_41CF 
call  rlabel_A8_4302 
call  rlabel_A8_43FB 
call  rlabel_A8_44CC 
call  rlabel_A8_458E 
call  rlabel_A8_4698 
call  rlabel_A8_40B9 
ret			
call  rlabel_A8_4069 
call  rlabel_A8_4830 
call  rlabel_A8_40B9 
ret			
.incbin "data/a8_4027.data"
rlabel_A8_4069:
call  rlabel_A8_575A 
ld a,$01		
ld ($ff00+$4f),a	
ld bc,$1214		
ld d,$00		
ld hl,$9800		
call  rlabel_00_0533 
xor a			
ld ($ff00+$4f),a	
ld bc,$1214		
ld d,$00		
ld hl,$9800		
call  rlabel_00_0533 
ld b,$0e		
ld hl,$5639		
rst $28			
ld hl,$9000		
ld c,$10		
ld b,$ff		
call  rlabel_00_0519 
inc hl			
dec c			
.DB $20 $f9 ; < ['$20', '$f9'] > < 0x409b > < a8409b A8 409B | 20F9: jr nz, $F9 >
xor a			
ld ($ff00+$91),a	
ld ($ff00+$a0),a	
ld ($ff00+$a1),a	
ld ($d5dc),a		
ld hl,$c1a3		
ld de,$30b1		
call  rlabel_00_0231 
ld a,$17		
ld ($ff00+$9a),a	
ld a,$cd		
ld ($ff00+$9b),a	
ret			
rlabel_A8_40B9:
xor a			
ld ($ff00+$91),a	
ld ($ff00+$a1),a	
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ld a,$c7		
ld ($ff00+$9b),a	
ret			
rlabel_A8_40CC:
ret			
rlabel_A8_40CD:
ret			
rlabel_A8_40CE:
call  rlabel_A8_40CC 
call  rlabel_A8_40DB 
call  rlabel_A8_413E 
call  rlabel_A8_4174 
ret			
rlabel_A8_40DB:
ld a,$01		
ld ($d5d5),a		
ld a,$ac		
ld ($d5e0),a		
call  rlabel_A8_574C 
ld bc,$008e		
ld de,$9390		
ld hl,$6e8e		
ld a,$ac		
call  rlabel_00_06FD 
ld bc,$003c		
ld de,$8000		
ld hl,$733e		
ld a,$ac		
call  rlabel_00_06FD 
ld a,$01		
ld ($ff00+$4f),a	
ld hl,$77de		
ld a,$ac		
call  rlabel_A8_56BA 
xor a			
ld ($ff00+$4f),a	
ld hl,$755e		
ld a,$ac		
call  rlabel_A8_56BA 
ld de,$72fe		
ld b,$ac		
call  rlabel_A8_5724 
ld de,$751e		
ld b,$ac		
call  rlabel_A8_5738 
ld a,$90		
ld ($ff00+$91),a	
ld c,$01		
call  rlabel_00_1332 
ld hl,$d5d6		
xor a			
ldi (hl),a		
ld a,$ff		
ldi (hl),a		
ldi (hl),a		
ret			
rlabel_A8_413E:
ld a,($d5d7)		
and $01			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x4143 > < a84143 A8 4143 | 280B: jr z, $0B >
ld a,($cad7)		
or a			
.DB $28 $05 ; < ['$28', '$05'] > < 0x4149 > < a84149 A8 4149 | 2805: jr z, $05 >
call  rlabel_00_1339 
.DB $18 $03 ; < ['$18', '$03'] > < 0x414e > < a8414e A8 414E | 1803: jr $03 >
call  rlabel_00_027C 
call  rlabel_A8_40CD 
ld hl,$d5d7		
inc (hl)		
.DB $20 $02 ; < ['$20', '$02'] > < 0x415a > < a8415a A8 415A | 2002: jr nz, $02 >
inc hl			
inc (hl)		
ld a,($d5d6)		
ld hl,$416c		
push hl			
call  rlabel_00_3005 
.incbin "data/a8_4168.data"
ld a,($d5d6)		
cp $ff			
.DB $20 $cb ; < ['$20', '$cb'] > < 0x4171 > < a84171 A8 4171 | 20CB: jr nz, $CB >
ret			
rlabel_A8_4174:
ld c,$08		
ld de,$0000		
call  rlabel_00_1311 
xor a			
ld ($ff00+$91),a	
ret			
ld a,($d5d7)		
and $01			
.DB $20 $05 ; < ['$20', '$05'] > < 0x4185 > < a84185 A8 4185 | 2005: jr nz, $05 >
ld a,($ff00+$91)	
dec a			
ld ($ff00+$91),a	
ld a,($d5d7)		
cp $50			
ret nz			
ld a,($d5d8)		
cp $01			
ret nz			
ld a,$01		
ld ($d5d6),a		
ld a,$ff		
ld ($d5d7),a		
ld ($d5d8),a		
ret			
ld hl,$d5d7		
ldi a,(hl)		
or (hl)			
.DB $20 $0d ; < ['$20', '$0d'] > < 0x41ab > < a841ab A8 41AB | 200D: jr nz, $0D >
ld a,$00		
ld bc,$4040		
ld d,$00		
ld hl,$7b8a		
call  rlabel_A8_5765 
call  rlabel_A8_57BE 
ld a,($d5d7)		
cp $fc			
ret nz			
ld a,($d5d8)		
cp $00			
ret nz			
ld a,$ff		
ld ($d5d6),a		
ret			
rlabel_A8_41CF:
call  rlabel_A8_40CC 
call  rlabel_A8_41DC 
call  rlabel_A8_4247 
call  rlabel_A8_426E 
ret			
rlabel_A8_41DC:
ld a,$02		
ld ($d5d5),a		
ld a,$a8		
ld ($d5e0),a		
call  rlabel_A8_574C 
ld bc,$0168		
ld de,$8cc0		
ld hl,$6372		
ld a,$a8		
call  rlabel_00_06FD 
ld bc,$0030		
ld de,$8000		
ld hl,$6ef2		
ld a,$a8		
call  rlabel_00_06FD 
ld a,$01		
ld ($ff00+$4f),a	
ld hl,$71d0		
ld a,$a8		
call  rlabel_A8_568A 
xor a			
ld ($ff00+$4f),a	
ld hl,$70b2		
ld a,$a8		
call  rlabel_A8_568A 
ld de,$6eb2		
ld b,$a8		
call  rlabel_A8_5724 
ld de,$7072		
ld b,$a8		
call  rlabel_A8_5738 
ld hl,$d625		
ld a,$b7		
ldi (hl),a		
ld a,$42		
ld (hl),a		
call  rlabel_A8_5475 
ld c,$08		
call  rlabel_00_132B 
ld hl,$d5d6		
xor a			
ldi (hl),a		
ld a,$ff		
ldi (hl),a		
ldi (hl),a		
ret			
rlabel_A8_4247:
call  rlabel_00_027C 
call  rlabel_A8_40CD 
call  rlabel_A8_546A 
ld hl,$d5d7		
inc (hl)		
.DB $20 $02 ; < ['$20', '$02'] > < 0x4254 > < a84254 A8 4254 | 2002: jr nz, $02 >
inc hl			
inc (hl)		
ld a,($d5d6)		
ld hl,$4266		
push hl			
call  rlabel_00_3005 
.incbin "data/a8_4262.data"
ld a,($d5d6)		
cp $ff			
.DB $20 $da ; < ['$20', '$da'] > < 0x426b > < a8426b A8 426B | 20DA: jr nz, $DA >
ret			
rlabel_A8_426E:
xor a			
ld ($ff00+$a1),a	
ld ($ff00+$91),a	
ld c,$08		
ld de,$0000		
call  rlabel_00_1311 
ret			
ld hl,$d5d7		
ldi a,(hl)		
or (hl)			
.DB $20 $0d ; < ['$20', '$0d'] > < 0x4281 > < a84281 A8 4281 | 200D: jr nz, $0D >
ld a,$00		
ld bc,$4040		
ld d,$01		
ld hl,$7386		
call  rlabel_A8_5765 
ld a,$03		
call  rlabel_00_3027 
sub $01			
ld ($ff00+$91),a	
ld a,$03		
call  rlabel_00_3027 
sub $01			
ld ($ff00+$a1),a	
call  rlabel_A8_57BE 
ld a,($d5d7)		
cp $f4			
ret nz			
ld a,($d5d8)		
cp $01			
ret nz			
ld a,$ff		
ld ($d5d6),a		
ret			
.incbin "data/a8_42B7.data"
rlabel_A8_4302:
call  rlabel_A8_40CC 
call  rlabel_A8_430F 
call  rlabel_A8_438F 
call  rlabel_A8_43B3 
ret			
rlabel_A8_430F:
ld a,$02		
ld ($d5d5),a		
ld a,$a9		
ld ($d5e0),a		
call  rlabel_A8_574C 
ld bc,$0100		
ld de,$9000		
ld hl,$4001		
ld a,$a9		
call  rlabel_00_06FD 
ld bc,$00c0		
ld de,$8a00		
ld hl,$4801		
ld a,$a9		
call  rlabel_00_06FD 
ld bc,$0070		
ld de,$8000		
ld hl,$4e41		
ld a,$a9		
call  rlabel_00_06FD 
ld a,$01		
ld ($ff00+$4f),a	
ld hl,$531f		
ld a,$a9		
call  rlabel_A8_568A 
xor a			
ld ($ff00+$4f),a	
ld hl,$5201		
ld a,$a9		
call  rlabel_A8_568A 
ld de,$4e01		
ld b,$a9		
call  rlabel_A8_5724 
ld de,$51c1		
ld b,$a9		
call  rlabel_A8_5738 
ld a,$00		
ld bc,$4148		
ld d,$00		
ld hl,$54b6		
call  rlabel_A8_5765 
call  rlabel_A8_57BE 
ld c,$08		
call  rlabel_00_132B 
ld hl,$d5d6		
xor a			
ldi (hl),a		
ld ($d5d9),a		
ld a,$ff		
ldi (hl),a		
ldi (hl),a		
ret			
rlabel_A8_438F:
call  rlabel_00_027C 
call  rlabel_A8_40CD 
ld hl,$d5d7		
inc (hl)		
.DB $20 $02 ; < ['$20', '$02'] > < 0x4399 > < a84399 A8 4399 | 2002: jr nz, $02 >
inc hl			
inc (hl)		
ld a,($d5d6)		
ld hl,$43ab		
push hl			
call  rlabel_00_3005 
.incbin "data/a8_43A7.data"
ld a,($d5d6)		
cp $ff			
.DB $20 $dd ; < ['$20', '$dd'] > < 0x43b0 > < a843b0 A8 43B0 | 20DD: jr nz, $DD >
ret			
rlabel_A8_43B3:
xor a			
call  rlabel_A8_5787 
xor a			
ld ($ff00+$a1),a	
ld ($ff00+$91),a	
ld c,$08		
ld de,$0000		
call  rlabel_00_1311 
ret			
ld a,($d5d9)		
inc a			
and $0f			
ld ($d5d9),a		
.DB $20 $08 ; < ['$20', '$08'] > < 0x43ce > < a843ce A8 43CE | 2008: jr nz, $08 >
ld a,$00		
ld bc,$ff00		
call  rlabel_A8_5797 
ld a,$02		
call  rlabel_00_3027 
ld ($ff00+$91),a	
ld a,$02		
call  rlabel_00_3027 
ld ($ff00+$a1),a	
call  rlabel_A8_57BE 
ld a,($d5d7)		
cp $7e			
ret nz			
ld a,($d5d8)		
cp $00			
ret nz			
ld a,$ff		
ld ($d5d6),a		
ret			
rlabel_A8_43FB:
call  rlabel_A8_40CC 
call  rlabel_A8_4408 
call  rlabel_A8_446B 
call  rlabel_A8_448F 
ret			
rlabel_A8_4408:
ld a,$04		
ld ($d5d5),a		
ld a,$a9		
ld ($d5e0),a		
call  rlabel_A8_574C 
ld bc,$00c6		
ld de,$91d0		
ld hl,$54bc		
ld a,$a9		
call  rlabel_00_06FD 
ld bc,$00f8		
ld de,$8000		
ld hl,$5b2c		
ld a,$a9		
call  rlabel_00_06FD 
ld a,$01		
ld ($ff00+$4f),a	
ld hl,$648c		
ld a,$a9		
call  rlabel_A8_56DC 
xor a			
ld ($ff00+$4f),a	
ld hl,$632c		
ld a,$a9		
call  rlabel_A8_56DC 
ld de,$5aec		
ld b,$a9		
call  rlabel_A8_5724 
ld de,$62ec		
ld b,$a9		
call  rlabel_A8_5738 
ld a,$58		
ld ($ff00+$a1),a	
ld c,$08		
call  rlabel_00_132B 
ld hl,$d5d6		
xor a			
ldi (hl),a		
ld a,$ff		
ldi (hl),a		
ldi (hl),a		
ret			
rlabel_A8_446B:
call  rlabel_00_027C 
call  rlabel_A8_40CD 
ld hl,$d5d7		
inc (hl)		
.DB $20 $02 ; < ['$20', '$02'] > < 0x4475 > < a84475 A8 4475 | 2002: jr nz, $02 >
inc hl			
inc (hl)		
ld a,($d5d6)		
ld hl,$4487		
push hl			
call  rlabel_00_3005 
.incbin "data/a8_4483.data"
ld a,($d5d6)		
cp $ff			
.DB $20 $dd ; < ['$20', '$dd'] > < 0x448c > < a8448c A8 448C | 20DD: jr nz, $DD >
ret			
rlabel_A8_448F:
ld c,$08		
ld de,$0000		
call  rlabel_00_1311 
xor a			
ld ($ff00+$a1),a	
ret			
ld hl,$d5d7		
ldi a,(hl)		
or (hl)			
.DB $20 $0d ; < ['$20', '$0d'] > < 0x44a0 > < a844a0 A8 44A0 | 200D: jr nz, $0D >
ld a,$00		
ld bc,$4040		
ld d,$00		
ld hl,$6736		
call  rlabel_A8_5765 
ld a,($ff00+$a1)	
or a			
.DB $28 $03 ; < ['$28', '$03'] > < 0x44b2 > < a844b2 A8 44B2 | 2803: jr z, $03 >
dec a			
ld ($ff00+$a1),a	
call  rlabel_A8_57BE 
ld a,($d5d7)		
cp $58			
ret nz			
ld a,($d5d8)		
cp $00			
ret nz			
ld a,$ff		
ld ($d5d6),a		
ret			
rlabel_A8_44CC:
call  rlabel_A8_40CC 
call  rlabel_A8_44D9 
call  rlabel_A8_4538 
call  rlabel_A8_455C 
ret			
rlabel_A8_44D9:
ld a,$04		
ld ($d5d5),a		
ld a,$a9		
ld ($d5e0),a		
call  rlabel_A8_574C 
ld bc,$00f4		
ld de,$9060		
ld hl,$6769		
ld a,$a9		
call  rlabel_00_06FD 
ld bc,$010c		
ld de,$8000		
ld hl,$6f49		
ld a,$a9		
call  rlabel_00_06FD 
ld a,$01		
ld ($ff00+$4f),a	
ld hl,$78c5		
ld a,$a9		
call  rlabel_A8_5668 
xor a			
ld ($ff00+$4f),a	
ld hl,$77e9		
ld a,$a9		
call  rlabel_A8_5668 
ld de,$6f09		
ld b,$a9		
call  rlabel_A8_5724 
ld de,$77a9		
ld b,$a9		
call  rlabel_A8_5738 
ld c,$08		
call  rlabel_00_132B 
ld hl,$d5d6		
xor a			
ldi (hl),a		
ld a,$ff		
ldi (hl),a		
ldi (hl),a		
ret			
rlabel_A8_4538:
call  rlabel_00_027C 
call  rlabel_A8_40CD 
ld hl,$d5d7		
inc (hl)		
.DB $20 $02 ; < ['$20', '$02'] > < 0x4542 > < a84542 A8 4542 | 2002: jr nz, $02 >
inc hl			
inc (hl)		
ld a,($d5d6)		
ld hl,$4554		
push hl			
call  rlabel_00_3005 
.incbin "data/a8_4550.data"
ld a,($d5d6)		
cp $ff			
.DB $20 $dd ; < ['$20', '$dd'] > < 0x4559 > < a84559 A8 4559 | 20DD: jr nz, $DD >
ret			
rlabel_A8_455C:
ld c,$08		
ld de,$0000		
call  rlabel_00_1311 
ret			
ld hl,$d5d7		
ldi a,(hl)		
or (hl)			
.DB $20 $0d ; < ['$20', '$0d'] > < 0x456a > < a8456a A8 456A | 200D: jr nz, $0D >
ld a,$00		
ld bc,$4040		
ld d,$00		
ld hl,$7b24		
call  rlabel_A8_5765 
call  rlabel_A8_57BE 
ld a,($d5d7)		
cp $be			
ret nz			
ld a,($d5d8)		
cp $00			
ret nz			
ld a,$ff		
ld ($d5d6),a		
ret			
rlabel_A8_458E:
call  rlabel_A8_40CC 
call  rlabel_A8_459B 
call  rlabel_A8_45FD 
call  rlabel_A8_4633 
ret			
rlabel_A8_459B:
ld a,$05		
ld ($d5d5),a		
ld a,$aa		
ld ($d5e0),a		
call  rlabel_A8_574C 
ld bc,$0092		
ld de,$9370		
ld hl,$4001		
ld a,$aa		
call  rlabel_00_06FD 
ld bc,$0070		
ld de,$8000		
ld hl,$44d1		
ld a,$aa		
call  rlabel_00_06FD 
ld a,$01		
ld ($ff00+$4f),a	
ld hl,$49f1		
ld a,$aa		
call  rlabel_A8_56DC 
xor a			
ld ($ff00+$4f),a	
ld hl,$4891		
ld a,$aa		
call  rlabel_A8_56DC 
ld de,$4491		
ld b,$aa		
call  rlabel_A8_5724 
ld de,$4851		
ld b,$aa		
call  rlabel_A8_5738 
ld c,$08		
call  rlabel_00_1332 
ld hl,$d5d6		
xor a			
ldi (hl),a		
ld ($d5d9),a		
ld a,$ff		
ldi (hl),a		
ldi (hl),a		
ret			
rlabel_A8_45FD:
ld a,($d5d7)		
and $01			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x4602 > < a84602 A8 4602 | 280B: jr z, $0B >
ld a,($cad7)		
or a			
.DB $28 $05 ; < ['$28', '$05'] > < 0x4608 > < a84608 A8 4608 | 2805: jr z, $05 >
call  rlabel_00_1339 
.DB $18 $03 ; < ['$18', '$03'] > < 0x460d > < a8460d A8 460D | 1803: jr $03 >
call  rlabel_00_027C 
call  rlabel_A8_40CD 
ld hl,$d5d7		
inc (hl)		
.DB $20 $02 ; < ['$20', '$02'] > < 0x4619 > < a84619 A8 4619 | 2002: jr nz, $02 >
inc hl			
inc (hl)		
ld a,($d5d6)		
ld hl,$462b		
push hl			
call  rlabel_00_3005 
.incbin "data/a8_4627.data"
ld a,($d5d6)		
cp $ff			
.DB $20 $cb ; < ['$20', '$cb'] > < 0x4630 > < a84630 A8 4630 | 20CB: jr nz, $CB >
ret			
rlabel_A8_4633:
ld c,$08		
ld de,$0000		
call  rlabel_00_1311 
ret			
.incbin "data/a8_463C.data"
ld hl,$d5d7		
ldi a,(hl)		
or (hl)			
.DB $20 $0d ; < ['$20', '$0d'] > < 0x465b > < a8465b A8 465B | 200D: jr nz, $0D >
ld a,$00		
ld bc,$20a0		
ld d,$00		
ld hl,$4bd8		
call  rlabel_A8_5765 
ld a,($d5d9)		
inc a			
and $03			
ld ($d5d9),a		
.DB $20 $08 ; < ['$20', '$08'] > < 0x4673 > < a84673 A8 4673 | 2008: jr nz, $08 >
ld a,$00		
ld bc,$01fe		
call  rlabel_A8_5797 
ld a,($ff00+$a1)	
dec a			
dec a			
ld ($ff00+$a1),a	
call  rlabel_A8_57BE 
ld a,($d5d7)		
cp $c0			
ret nz			
ld a,($d5d8)		
cp $00			
ret nz			
ld a,$ff		
ld ($d5d6),a		
ret			
rlabel_A8_4698:
call  rlabel_A8_40CC 
call  rlabel_A8_46A5 
call  rlabel_A8_471B 
call  rlabel_A8_474A 
ret			
rlabel_A8_46A5:
ld a,$05		
ld ($d5d5),a		
ld a,$aa		
ld ($d5e0),a		
call  rlabel_A8_574C 
call  rlabel_A8_575A 
ld bc,$0060		
ld de,$9500		
ld hl,$4be8		
ld a,$aa		
call  rlabel_00_06FD 
ld bc,$0100		
ld de,$8000		
ld hl,$4f28		
ld a,$aa		
call  rlabel_00_06FD 
ld a,$01		
ld ($ff00+$4f),a	
ld bc,$2016		
ld d,$07		
ld hl,$9800		
call  rlabel_00_0533 
xor a			
ld ($ff00+$4f),a	
ld hl,$5768		
ld a,$aa		
call  rlabel_A8_56E6 
ld de,$4ee8		
ld b,$aa		
call  rlabel_A8_5724 
ld de,$5728		
ld b,$aa		
call  rlabel_A8_5738 
ld a,$08		
ld ($ff00+$a1),a	
ld c,$08		
call  rlabel_00_132B 
ld a,$00		
ld ($d5da),a		
ld a,$05		
ld ($d5db),a		
ld hl,$d5d6		
xor a			
ldi (hl),a		
ld ($d5d9),a		
ld a,$ff		
ldi (hl),a		
ldi (hl),a		
ret			
rlabel_A8_471B:
ld a,($cad7)		
or a			
.DB $28 $05 ; < ['$28', '$05'] > < 0x471f > < a8471f A8 471F | 2805: jr z, $05 >
call  rlabel_00_1339 
.DB $18 $03 ; < ['$18', '$03'] > < 0x4724 > < a84724 A8 4724 | 1803: jr $03 >
call  rlabel_00_027C 
call  rlabel_A8_40CD 
ld hl,$d5d7		
inc (hl)		
.DB $20 $02 ; < ['$20', '$02'] > < 0x4730 > < a84730 A8 4730 | 2002: jr nz, $02 >
inc hl			
inc (hl)		
ld a,($d5d6)		
ld hl,$4742		
push hl			
call  rlabel_00_3005 
.incbin "data/a8_473E.data"
ld a,($d5d6)		
cp $ff			
.DB $20 $d2 ; < ['$20', '$d2'] > < 0x4747 > < a84747 A8 4747 | 20D2: jr nz, $D2 >
ret			
rlabel_A8_474A:
call  rlabel_00_1339 
ld a,($cad7)		
or a			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x4751 > < a84751 A8 4751 | 20F7: jr nz, $F7 >
xor a			
ld ($ff00+$a1),a	
ld ($ff00+$91),a	
ret			
ld hl,$d5d7		
ldi a,(hl)		
or (hl)			
.DB $20 $10 ; < ['$20', '$10'] > < 0x475e > < a8475e A8 475E | 2010: jr nz, $10 >
ld a,($d5da)		
ld b,a			
ld c,$58		
ld d,$00		
ld hl,$5c3a		
ld a,$07		
call  rlabel_A8_5765 
ld a,($d5d9)		
inc a			
and $0f			
ld ($d5d9),a		
ld a,($ff00+$91)	
ld b,a			
ld a,($d5db)		
add b			
ld ($ff00+$91),a	
ld a,($d5d7)		
and $7f			
.DB $20 $07 ; < ['$20', '$07'] > < 0x4787 > < a84787 A8 4787 | 2007: jr nz, $07 >
ld a,($d5db)		
dec a			
ld ($d5db),a		
ld a,($d5da)		
inc a			
cp $41			
.DB $28 $03 ; < ['$28', '$03'] > < 0x4796 > < a84796 A8 4796 | 2803: jr z, $03 >
ld ($d5da),a		
ld a,$03		
call  rlabel_00_3027 
ld b,a			
ld a,($d5da)		
add b			
sub $02			
ld b,a			
ld a,$05		
call  rlabel_00_3027 
add $56			
ld c,a			
ld a,$07		
call  rlabel_A8_57AC 
ld a,($d5d9)		
and $07			
or a			
.DB $20 $3c ; < ['$20', '$3c'] > < 0x47bb > < a847bb A8 47BB | 203C: jr nz, $3C >
ld a,$06		
call  rlabel_00_3027 
add a			
ld hl,$4824		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x47c8 > < a847c8 A8 47C8 | 3001: jr nc, $01 >
.incbin "data/a8_47CA.data"
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,($d5d9)		
and $08			
.DB $28 $02 ; < ['$28', '$02'] > < 0x47d3 > < a847d3 A8 47D3 | 2802: jr z, $02 >
ld a,$01		
ld e,a			
ld a,($d5da)		
ld b,a			
ld a,e			
ld c,$58		
ld d,$00		
push af			
call  rlabel_A8_5765 
ld a,$10		
call  rlabel_00_3027 
sub $08			
ld c,a			
ld a,$20		
call  rlabel_00_3027 
sub $10			
ld b,a			
pop af			
call  rlabel_A8_5797 
call  rlabel_A8_57BE 
ld a,($d5d7)		
cp $f0			
.DB $20 $0f ; < ['$20', '$0f'] > < 0x4801 > < a84801 A8 4801 | 200F: jr nz, $0F >
ld a,($d5d8)		
cp $00			
.DB $20 $08 ; < ['$20', '$08'] > < 0x4808 > < a84808 A8 4808 | 2008: jr nz, $08 >
ld c,$01		
ld de,$7fff		
call  rlabel_00_1318 
ld a,($d5d7)		
cp $2c			
ret nz			
ld a,($d5d8)		
cp $01			
ret nz			
ld a,$ff		
ld ($d5d6),a		
ret			
.incbin "data/a8_4824.data"
rlabel_A8_4830:
call  rlabel_A8_40CC 
call  rlabel_A8_483D 
call  rlabel_A8_48B8 
call  rlabel_A8_48DF 
ret			
rlabel_A8_483D:
ld a,$06		
ld ($d5d5),a		
ld a,$aa		
ld ($d5e0),a		
call  rlabel_A8_574C 
ld bc,$01ae		
ld de,$8a90		
ld hl,$5cc3		
ld a,$aa		
call  rlabel_00_06FD 
ld bc,$006c		
ld de,$8000		
ld hl,$6a73		
ld a,$aa		
call  rlabel_00_06FD 
ld a,$01		
ld ($ff00+$4f),a	
ld hl,$6f1b		
ld a,$aa		
call  rlabel_A8_5706 
xor a			
ld ($ff00+$4f),a	
ld hl,$6e13		
ld a,$aa		
call  rlabel_A8_5706 
ld de,$6a33		
ld b,$aa		
call  rlabel_A8_5724 
ld de,$6dd3		
ld b,$aa		
call  rlabel_A8_5738 
ld a,$00		
ld bc,$4040		
ld d,$00		
ld hl,$7090		
call  rlabel_A8_5765 
call  rlabel_A8_57BE 
ld hl,$d625		
ld a,$ae		
ldi (hl),a		
ld a,$4b		
ld (hl),a		
call  rlabel_A8_5475 
ld c,$08		
call  rlabel_00_132B 
ld hl,$d5d6		
xor a			
ldi (hl),a		
ld a,$ff		
ldi (hl),a		
ldi (hl),a		
ret			
rlabel_A8_48B8:
call  rlabel_00_027C 
call  rlabel_A8_40CD 
call  rlabel_A8_546A 
ld hl,$d5d7		
inc (hl)		
.DB $20 $02 ; < ['$20', '$02'] > < 0x48c5 > < a848c5 A8 48C5 | 2002: jr nz, $02 >
inc hl			
inc (hl)		
ld a,($d5d6)		
ld hl,$48d7		
push hl			
call  rlabel_00_3005 
.incbin "data/a8_48D3.data"
ld a,($d5d6)		
cp $ff			
.DB $20 $da ; < ['$20', '$da'] > < 0x48dc > < a848dc A8 48DC | 20DA: jr nz, $DA >
ret			
rlabel_A8_48DF:
ld c,$08		
ld de,$0000		
call  rlabel_00_1311 
ret			
ld a,($d5d7)		
and $03			
.DB $20 $05 ; < ['$20', '$05'] > < 0x48ed > < a848ed A8 48ED | 2005: jr nz, $05 >
ld a,($ff00+$a1)	
inc a			
ld ($ff00+$a1),a	
ld a,($d5d9)		
add $2c			
cp $80			
.DB $30 $0c ; < ['$30', '$0c'] > < 0x48fb > < a848fb A8 48FB | 300C: jr nc, $0C >
sub $80			
push af			
ld bc,$00ff		
ld a,$00		
call  rlabel_A8_5797 
pop af			
ld ($d5d9),a		
call  rlabel_A8_57BE 
ld a,($d5d7)		
cp $7f			
ret nz			
ld a,($d5d8)		
cp $00			
ret nz			
ld a,$01		
ld ($d5d6),a		
ld a,$ff		
ld ($d5d7),a		
ld ($d5d8),a		
ret			
ld a,($d5d7)		
or a			
.DB $20 $12 ; < ['$20', '$12'] > < 0x492d > < a8492d A8 492D | 2012: jr nz, $12 >
ld a,($d5d8)		
or a			
.DB $20 $0c ; < ['$20', '$0c'] > < 0x4933 > < a84933 A8 4933 | 200C: jr nz, $0C >
ld hl,$d625		
ld a,$50		
ldi (hl),a		
ld a,$49		
ld (hl),a		
call  rlabel_A8_5475 
ld hl,$d625		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ldi a,(hl)		
or a			
ret nz			
ld a,$ff		
ld ($d5d6),a		
ret			
.incbin "data/a8_4950.data"
rlabel_A8_546A:
ld a,($d629)		
or a			
.DB $28 $05 ; < ['$28', '$05'] > < 0x546e > < a8546e A8 546E | 2805: jr z, $05 >
dec a			
ld ($d629),a		
ret			
rlabel_A8_5475:
ld hl,$d625		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ldi a,(hl)		
or a			
ret z			
ld b,$00		
cp $5e			
.DB $28 $04 ; < ['$28', '$04'] > < 0x5482 > < a85482 A8 5482 | 2804: jr z, $04 >
cp $5f			
.DB $20 $02 ; < ['$20', '$02'] > < 0x5486 > < a85486 A8 5486 | 2002: jr nz, $02 >
ld b,a			
ldi a,(hl)		
ld d,a			
ld a,l			
ld ($d625),a		
ld a,h			
ld ($d626),a		
ld a,d			
cp $01			
.DB $28 $5b ; < ['$28', '$5b'] > < 0x5496 > < a85496 A8 5496 | 285B: jr z, $5B >
cp $02			
jp z,$5545		
cp $03			
jp z,$5577		
cp $04			
jp z,$558a		
cp $05			
jp z,$55a9		
cp $06			
jp z,$54e8		
ld hl,$d62a		
ld a,(hl)		
ld e,a			
inc a			
ldi (hl),a		
cp (hl)			
.DB $38 $06 ; < ['$38', '$06'] > < 0x54b9 > < a854b9 A8 54B9 | 3806: jr c, $06 >
.incbin "data/a8_54BB.data"
ld ($ff00+$b3),a	
ld a,$d4		
ld ($ff00+$b0),a	
ld a,$63		
ld ($ff00+$b1),a	
ld a,$0e		
call  rlabel_00_0244 
ld hl,$d627		
ldi a,(hl)		
ld c,a			
ld b,(hl)		
dec hl			
inc a			
ldi (hl),a		
cp $14			
.DB $20 $03 ; < ['$20', '$03'] > < 0x54db > < a854db A8 54DB | 2003: jr nz, $03 >
.incbin "data/a8_54DD.data"
call  rlabel_A8_563A 
ld b,e			
call  rlabel_00_0519 
ret			
.incbin "data/a8_54E8.data"
ld hl,$d627		
ld a,$01		
ldi (hl),a		
ld a,(hl)		
inc a			
ld (hl),a		
cp $12			
ret nz			
ld a,$11		
ld (hl),a		
push bc			
ld bc,$0f01		
call  rlabel_A8_563A 
ld d,h			
ld e,l			
ld a,$20		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x550f > < a8550f A8 550F | 3001: jr nc, $01 >
inc h			
call  rlabel_00_0654 
call  rlabel_00_0658 
call  rlabel_00_0658 
ld a,$08		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x551f > < a8551f A8 551F | 3001: jr nc, $01 >
.incbin "data/a8_5521.data"
ld a,$08		
add e			
ld e,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x5526 > < a85526 A8 5526 | 3001: jr nc, $01 >
inc d			
call  rlabel_00_0654 
call  rlabel_00_0658 
call  rlabel_00_0658 
ld a,$08		
add e			
ld e,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x5536 > < a85536 A8 5536 | 3001: jr nc, $01 >
.incbin "data/a8_5538.data"
ld bc,$0013		
call  rlabel_00_2F02 
inc de			
dec c			
.DB $20 $f9 ; < ['$20', '$f9'] > < 0x5541 > < a85541 A8 5541 | 20F9: jr nz, $F9 >
pop bc			
ret			
ld hl,$d627		
ld a,$01		
ldi (hl),a		
ld a,$0f		
ld (hl),a		
ld a,($d62c)		
ld ($d62a),a		
ld bc,$0f01		
call  rlabel_A8_563A 
ld b,$00		
call  rlabel_A8_556D 
ld de,$000d		
add hl,de		
call  rlabel_A8_556D 
ld de,$000d		
add hl,de		
call  rlabel_A8_556D 
rlabel_A8_556D:
ld c,$13		
call  rlabel_00_0519 
inc hl			
dec c			
.DB $20 $f9 ; < ['$20', '$f9'] > < 0x5574 > < a85574 A8 5574 | 20F9: jr nz, $F9 >
ret			
ld hl,$d625		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ldi a,(hl)		
ld ($d629),a		
ld a,l			
ld ($d625),a		
ld a,h			
ld ($d626),a		
ret			
ld hl,$d625		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ldi a,(hl)		
ld ($d62c),a		
ldi a,(hl)		
ld ($d62b),a		
ld a,l			
ld ($d625),a		
ld a,h			
ld ($d626),a		
xor a			
ld ($d629),a		
ld ($d62d),a		
.DB $18 $9c ; < ['$18', '$9c'] > < 0x55a7 > < a855a7 A8 55A7 | 189C: jr $9C >
ld bc,$1113		
call  rlabel_A8_563A 
push hl			
ld a,($d62b)		
call  rlabel_00_0518 
ld bc,$ff00		
ld a,b			
inc a			
and $07			
ld b,a			
.DB $20 $24 ; < ['$20', '$24'] > < 0x55be > < a855be A8 55BE | 2024: jr nz, $24 >
ld a,c			
inc a			
and $03			
ld c,a			
swap a			
ld hl,$55fa		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x55cc > < a855cc A8 55CC | 3001: jr nc, $01 >
inc h			
ld a,($d62b)		
swap a			
ld d,a			
and $f0			
ld e,a			
ld a,d			
and $0f			
or $80			
ld d,a			
call  rlabel_00_0654 
call  rlabel_00_0658 
push bc			
call  rlabel_00_027C 
pop bc			
ld a,($ff00+$a5)	
and $03			
.DB $28 $ca ; < ['$28', '$ca'] > < 0x55ed > < a855ed A8 55ED | 28CA: jr z, $CA >
ld a,$1b		
call  rlabel_00_2CCC 
pop hl			
xor a			
call  rlabel_00_0518 
ret			
.incbin "data/a8_55FA.data"
rlabel_A8_563A:
ld h,$00		
ld l,b			
add hl,hl		
add hl,hl		
add hl,hl		
add hl,hl		
add hl,hl		
ld b,$9c		
add hl,bc		
ret			
.incbin "data/a8_5646.data"
rlabel_A8_5668:
ld ($ff00+$8b),a	
ld de,$9860		
ld a,$0b		
ld ($ff00+$8a),a	
ld bc,$0003		
ld a,($ff00+$8b)	
call  rlabel_00_06FD 
dec hl			
dec hl			
dec hl			
dec hl			
ld a,$08		
add e			
ld e,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x5681 > < a85681 A8 5681 | 3001: jr nc, $01 >
inc d			
ld a,($ff00+$8a)	
dec a			
.DB $20 $e6 ; < ['$20', '$e6'] > < 0x5687 > < a85687 A8 5687 | 20E6: jr nz, $E6 >
ret			
rlabel_A8_568A:
ld ($ff00+$8b),a	
ld de,$985f		
ld a,$0d		
ld ($ff00+$8a),a	
ld a,($ff00+$8b)	
ld b,a			
call  rlabel_00_2F0D 
inc hl			
ld a,b			
call  rlabel_00_2F01 
ld a,e			
sub $1f			
ld e,a			
ld a,($ff00+$8b)	
ld bc,$0003		
call  rlabel_00_06FD 
dec hl			
dec hl			
dec hl			
ld a,$27		
add e			
ld e,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x56b1 > < a856b1 A8 56B1 | 3001: jr nc, $01 >
inc d			
ld a,($ff00+$8a)	
dec a			
.DB $20 $d8 ; < ['$20', '$d8'] > < 0x56b7 > < a856b7 A8 56B7 | 20D8: jr nz, $D8 >
ret			
rlabel_A8_56BA:
ld ($ff00+$8b),a	
ld de,$9800		
ld a,$20		
ld ($ff00+$8a),a	
ld bc,$0003		
ld a,($ff00+$8b)	
call  rlabel_00_06FD 
dec hl			
dec hl			
dec hl			
dec hl			
ld a,$08		
add e			
ld e,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x56d3 > < a856d3 A8 56D3 | 3001: jr nc, $01 >
inc d			
ld a,($ff00+$8a)	
dec a			
.DB $20 $e6 ; < ['$20', '$e6'] > < 0x56d9 > < a856d9 A8 56D9 | 20E6: jr nz, $E6 >
ret			
rlabel_A8_56DC:
ld de,$9860		
ld bc,$002c		
call  rlabel_00_06FD 
ret			
rlabel_A8_56E6:
ld ($ff00+$8b),a	
ld de,$9800		
ld a,$20		
ld ($ff00+$8a),a	
ld bc,$0003		
ld a,($ff00+$8b)	
call  rlabel_00_06FD 
dec hl			
dec hl			
ld a,$08		
add e			
ld e,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x56fd > < a856fd A8 56FD | 3001: jr nc, $01 >
inc d			
ld a,($ff00+$8a)	
dec a			
.DB $20 $e8 ; < ['$20', '$e8'] > < 0x5703 > < a85703 A8 5703 | 20E8: jr nz, $E8 >
ret			
rlabel_A8_5706:
ld ($ff00+$8b),a	
ld de,$9860		
ld a,$0b		
ld ($ff00+$8a),a	
ld bc,$0003		
ld a,($ff00+$8b)	
call  rlabel_00_06FD 
ld a,$08		
add e			
ld e,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x571b > < a8571b A8 571B | 3001: jr nc, $01 >
inc d			
ld a,($ff00+$8a)	
dec a			
.DB $20 $ea ; < ['$20', '$ea'] > < 0x5721 > < a85721 A8 5721 | 20EA: jr nz, $EA >
ret			
rlabel_A8_5724:
ld hl,$0000		
ld c,$08		
push hl			
push de			
push bc			
call  rlabel_00_089F 
pop bc			
pop de			
pop hl			
inc h			
inc l			
dec c			
.DB $20 $f2 ; < ['$20', '$f2'] > < 0x5735 > < a85735 A8 5735 | 20F2: jr nz, $F2 >
ret			
rlabel_A8_5738:
ld hl,$0000		
ld c,$08		
push hl			
push de			
push bc			
call  rlabel_00_0897 
pop bc			
pop de			
pop hl			
inc h			
inc l			
dec c			
.DB $20 $f2 ; < ['$20', '$f2'] > < 0x5749 > < a85749 A8 5749 | 20F2: jr nz, $F2 >
ret			
rlabel_A8_574C:
ld hl,$c000		
xor a			
ld b,$28		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
ldi (hl),a		
dec b			
.DB $20 $f9 ; < ['$20', '$f9'] > < 0x5757 > < a85757 A8 5757 | 20F9: jr nz, $F9 >
ret			
rlabel_A8_575A:
ld hl,$d5ec		
xor a			
ld b,$38		
ldi (hl),a		
dec b			
.DB $20 $fc ; < ['$20', '$fc'] > < 0x5762 > < a85762 A8 5762 | 20FC: jr nz, $FC >
ret			
rlabel_A8_5765:
push hl			
ld l,a			
add a			
add a			
add a			
sub l			
ld hl,$d5ec		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x5770 > < a85770 A8 5770 | 3001: jr nc, $01 >
inc h			
ld a,d			
or $80			
ldi (hl),a		
ld (hl),c		
inc hl			
ld (hl),b		
inc hl			
ld a,$01		
ldi (hl),a		
pop de			
ld (hl),e		
inc hl			
ld (hl),d		
inc hl			
ld a,$ff		
ld (hl),a		
ret			
rlabel_A8_5787:
ld b,a			
add a			
add a			
add a			
sub b			
ld hl,$d5ec		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x5791 > < a85791 A8 5791 | 3001: jr nc, $01 >
.incbin "data/a8_5793.data"
xor a			
ld (hl),a		
ret			
rlabel_A8_5797:
ld d,a			
add a			
add a			
add a			
sub d			
ld hl,$d5ec		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x57a1 > < a857a1 A8 57A1 | 3001: jr nc, $01 >
.incbin "data/a8_57A3.data"
inc hl			
ld a,(hl)		
add c			
ldi (hl),a		
ld a,(hl)		
add b			
ld (hl),a		
ret			
rlabel_A8_57AC:
ld d,a			
add a			
add a			
add a			
sub d			
ld hl,$d5ec		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x57b6 > < a857b6 A8 57B6 | 3001: jr nc, $01 >
inc h			
inc hl			
ld (hl),c		
inc hl			
ld (hl),b		
ret			
rlabel_A8_57BE:
call  rlabel_A8_574C 
xor a			
ld ($d5dd),a		
ld ($d5de),a		
ld a,$c0		
ld ($d5df),a		
ld hl,$d5ec		
ld c,$08		
ld a,(hl)		
or a			
.DB $28 $38 ; < ['$28', '$38'] > < 0x57d4 > < a857d4 A8 57D4 | 2838: jr z, $38 >
push bc			
push hl			
ld de,$d5e5		
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
call  rlabel_A8_5819 
pop hl			
ld de,$d5e5		
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
ld a,(de)		
inc de			
ldi (hl),a		
pop bc			
.DB $18 $07 ; < ['$18', '$07'] > < 0x580c > < a8580c A8 580C | 1807: jr $07 >
ld a,$07		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x5812 > < a85812 A8 5812 | 3001: jr nc, $01 >
inc h			
dec c			
.DB $20 $ba ; < ['$20', '$ba'] > < 0x5816 > < a85816 A8 5816 | 20BA: jr nz, $BA >
ret			
rlabel_A8_5819:
ld a,($d5e8)		
cp $ff			
ret z			
cp $fe			
.DB $28 $31 ; < ['$28', '$31'] > < 0x5821 > < a85821 A8 5821 | 2831: jr z, $31 >
dec a			
ld ($d5e8),a		
.DB $20 $2b ; < ['$20', '$2b'] > < 0x5827 > < a85827 A8 5827 | 202B: jr nz, $2B >
ld a,($d5eb)		
inc a			
ld ($d5eb),a		
ld b,a			
ld hl,$d5e9		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,b			
add a			
add a			
add b			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x583d > < a8583d A8 583D | 3001: jr nc, $01 >
inc h			
ld a,($d5e0)		
ld b,a			
call  rlabel_00_2F0D 
cp $fd			
.DB $20 $03 ; < ['$20', '$03'] > < 0x5849 > < a85849 A8 5849 | 2003: jr nz, $03 >
xor a			
.DB $18 $df ; < ['$18', '$df'] > < 0x584c > < a8584c A8 584C | 18DF: jr $DF >
ld ($d5e8),a		
cp $ff			
ret z			
ld hl,$d5e9		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,($d5eb)		
ld b,a			
add a			
add a			
add b			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x5863 > < a85863 A8 5863 | 3001: jr nc, $01 >
inc h			
call  rlabel_00_30D7 
ret			
.incbin "data/a8_586A.data"
