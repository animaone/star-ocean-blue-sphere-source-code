.BANK $03 SLOT 1
.ORG 0
.incbin "data/03_4000.data"
ld b,$02		
call  rlabel_00_0214 
ld a,$01		
ld ($cbcd),a		
ld de,$0000		
ld c,$08		
call  rlabel_00_1311 
ld a,$18		
call  rlabel_00_305E 
xor a			
ld ($c987),a		
call  rlabel_03_41AA 
xor a			
ld ($caf9),a		
ld ($cafa),a		
ld ($cafb),a		
ld ($cb22),a		
ld ($cc96),a		
jp $4365		
ld a,$1d		
call  rlabel_00_3071 
ld b,$01		
ld hl,$4cd5		
rst $28			
ld b,$02		
call  rlabel_00_0214 
ld b,$01		
call  rlabel_00_0214 
ret			
rlabel_03_4048:
ld hl,$4001		
ld de,$9000		
ld bc,$0010		
ld a,$3d		
call  rlabel_00_0D83 
ld hl,$4101		
ld de,$9100		
ld bc,$0080		
ld a,$3d		
call  rlabel_00_0D83 
ld hl,$7ba1		
ld de,$9180		
ld bc,$0010		
ld a,$3d		
call  rlabel_00_0D83 
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
ld a,$01		
ld de,$c9c0		
call  rlabel_00_0E10 
ld a,$02		
ld de,$c9a8		
call  rlabel_00_0E10 
ld a,$04		
ld de,$ca00		
call  rlabel_00_0E10 
ld a,$01		
ld de,$c9f8		
call  rlabel_00_0E10 
ret			
rlabel_03_40AF:
call  rlabel_03_4048 
ld hl,$7301		
ld de,$9010		
ld bc,$00a0		
ld a,$3d		
call  rlabel_00_0D83 
ld hl,$7bf1		
ld de,$9190		
ld bc,$0010		
ld a,$3d		
call  rlabel_00_0D83 
rlabel_03_40CE:
call  rlabel_00_11A6 
ld hl,$71b1		
ld de,$91b0		
ld bc,$0150		
ld a,$3d		
call  rlabel_00_0D83 
ld a,$08		
ld de,$c9b8		
call  rlabel_00_0E10 
xor a			
ld b,a			
ld hl,$412c		
ld a,b			
call  rlabel_00_0462 
ld d,(hl)		
ld e,$06		
xor a			
ld c,a			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
ld a,c			
cp $14			
.DB $38 $f4 ; < ['$38', '$f4'] > < 0x40ff > < 340ff 03 40FF | 38F4: jr c, $F4 >
inc b			
ld a,b			
cp $12			
.DB $38 $e2 ; < ['$38', '$e2'] > < 0x4105 > < 34105 03 4105 | 38E2: jr c, $E2 >
xor a			
ld e,a			
ld b,$00		
ld a,$06		
add e			
ld c,a			
ld a,$20		
add e			
ld d,a			
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
ld b,$11		
ld a,$28		
add e			
ld d,a			
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
inc e			
ld a,e			
cp $08			
.DB $38 $de ; < ['$38', '$de'] > < 0x4129 > < 34129 03 4129 | 38DE: jr c, $DE >
ret			
.incbin "data/03_412C.data"
rlabel_03_4143:
ld a,b			
ld b,c			
ld c,a			
ld a,($caf2)		
ld h,a			
ld a,($caf1)		
cp h			
.DB $38 $01 ; < ['$38', '$01'] > < 0x414e > < 3414e 03 414E | 3801: jr c, $01 >
ld a,h			
and a			
.DB $28 $01 ; < ['$28', '$01'] > < 0x4152 > < 34152 03 4152 | 2801: jr z, $01 >
dec a			
ld a,a			
ld ($cc1b),a		
ld a,b			
ld ($cc1c),a		
ld a,$00		
ld ($cc24),a		
ld a,$80		
ld ($cc25),a		
ld a,$07		
ld ($cc26),a		
ld a,d			
ld ($cc22),a		
ld a,e			
ld ($cc23),a		
ld a,d			
ld b,a			
ld a,($caee)		
ld ($cc1f),a		
add a			
add a			
add a			
inc b			
dec b			
.DB $28 $03 ; < ['$28', '$03'] > < 0x4181 > < 34181 03 4181 | 2803: jr z, $03 >
add a			
.DB $18 $fa ; < ['$18', '$fa'] > < 0x4184 > < 34184 03 4184 | 18FA: jr $FA >
add c			
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
ret			
rlabel_03_41AA:
xor a			
ld ($caed),a		
ld ($caee),a		
ld ($caf3),a		
ld ($caf4),a		
ld ($caef),a		
ld ($caf0),a		
ld ($caf5),a		
ld ($caf6),a		
ret			
rlabel_03_41C4:
ld hl,$caed		
ld de,$cb1e		
call  rlabel_03_41E9 
ld hl,$caee		
ld de,$cb1f		
call  rlabel_03_41E9 
ld hl,$caf1		
ld de,$cb20		
call  rlabel_03_41E9 
ld hl,$caf2		
ld de,$cb21		
call  rlabel_03_41E9 
ret			
rlabel_03_41E9:
ld a,(de)		
ld b,a			
ld a,(hl)		
ld (de),a		
ld (hl),b		
ret			
.incbin "data/03_41EF.data"
rlabel_03_41F1:
ld a,($caed)		
ld ($caef),a		
ld a,($caee)		
ld ($caf0),a		
call  rlabel_00_2558 
.DB $18 $0f ; < ['$18', '$0f'] > < 0x4200 > < 34200 03 4200 | 180F: jr $0F >
rlabel_03_4202:
ld a,($caed)		
ld ($caef),a		
ld a,($caee)		
ld ($caf0),a		
call  rlabel_00_2555 
ld a,($cc1f)		
ld ($caee),a		
ld a,($ff00+$8a)	
cp $01			
ret nz			
.incbin "data/03_421C.data"
ld b,d			
ld c,e			
rlabel_03_4276:
ld a,($caf1)		
ld d,a			
ld a,($caf2)		
ld e,a			
ld a,($cb90)		
and a			
.DB $20 $13 ; < ['$20', '$13'] > < 0x4282 > < 34282 03 4282 | 2013: jr nz, $13 >
ld a,($caed)		
and a			
.DB $20 $04 ; < ['$20', '$04'] > < 0x4288 > < 34288 03 4288 | 2004: jr nz, $04 >
ld a,d			
cp e			
ret c			
ret z			
call  rlabel_03_42B1 
ld a,$01		
ld ($cb90),a		
ret			
ld a,($caed)		
and a			
.DB $20 $06 ; < ['$20', '$06'] > < 0x429b > < 3429b 03 429B | 2006: jr nz, $06 >
ld a,d			
cp e			
.DB $38 $06 ; < ['$38', '$06'] > < 0x429f > < 3429f 03 429F | 3806: jr c, $06 >
.DB $28 $04 ; < ['$28', '$04'] > < 0x42a1 > < 342a1 03 42A1 | 2804: jr z, $04 >
call  rlabel_03_42F4 
ret			
.incbin "data/03_42A7.data"
rlabel_03_42B1:
push bc			
ld d,$8c		
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
inc b			
ld a,($caf2)		
dec a			
dec a			
ld e,a			
ld d,$8d		
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
inc b			
dec e			
.DB $20 $f4 ; < ['$20', '$f4'] > < 0x42cb > < 342cb 03 42CB | 20F4: jr nz, $F4 >
ld d,$8e		
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
pop bc			
call  rlabel_03_42F4 
ret			
.incbin "data/03_42DA.data"
rlabel_03_42F4:
ld a,b			
add a			
add a			
add a			
ld b,a			
ld a,c			
add a			
add a			
add a			
ld c,a			
ld a,($caed)		
ld d,a			
ld a,($caee)		
add d			
ld d,a			
ld a,($caf2)		
dec a			
add a			
add a			
add a			
ld e,a			
call  rlabel_00_03F7 
ld a,($caf1)		
dec a			
call  rlabel_00_039F 
ld a,b			
add e			
ld b,a			
ld d,$8a		
ld e,$06		
ld a,$26		
call  rlabel_00_0EC7 
ret			
ld b,d			
ld c,e			
ld d,$80		
ld e,$07		
ld a,$00		
call  rlabel_00_0EC7 
ld a,c			
add $08			
ld c,a			
inc d			
inc d			
ld a,$01		
call  rlabel_00_0EC7 
ret			
.incbin "data/03_433D.data"
ld a,$00		
ld ($cadf),a		
call  rlabel_00_05AA 
call  rlabel_00_136B 
call  rlabel_03_40AF 
call  rlabel_03_44C6 
ld hl,$7b01		
ld de,$8500		
ld bc,$00a0		
ld a,$3d		
call  rlabel_00_0D83 
ld hl,$7101		
ld de,$8600		
ld bc,$00a0		
ld a,$3d		
call  rlabel_00_0D83 
ld hl,$7a01		
ld de,$9700		
ld bc,$00d0		
ld a,$3d		
call  rlabel_00_0D83 
ld a,$0a		
ld de,$c9e0		
call  rlabel_00_0E10 
ld a,$0b		
ld de,$c9e8		
call  rlabel_00_0E10 
ld a,$0c		
ld de,$c9f0		
call  rlabel_00_0E10 
ld a,$09		
ld de,$c998		
call  rlabel_00_0E10 
ld a,$0d		
ld de,$c9a0		
call  rlabel_00_0E10 
ld c,$08		
call  rlabel_00_132B 
call  rlabel_03_480F 
ld b,$04		
ld hl,$5a94		
rst $28			
call  rlabel_00_13B1 
ld b,$03		
ld de,$4b0f		
call  rlabel_00_14E5 
call  rlabel_03_480F 
call  rlabel_03_4886 
call  rlabel_03_4941 
ld a,($caf4)		
cp $01			
jp z,$45b0		
cp $02			
jp z,$46e5		
call  rlabel_00_0EEE 
ld hl,$4877		
call  rlabel_00_255B 
ld a,($caee)		
ld ($caf0),a		
ld b,a			
ld a,($cc1f)		
cp b			
.DB $28 $0c ; < ['$28', '$0c'] > < 0x440b > < 3440b 03 440B | 280C: jr z, $0C >
ld ($caee),a		
ld ($caf9),a		
call  rlabel_03_4886 
call  rlabel_03_4941 
ld a,($cc1d)		
sub $04			
ld b,a			
ld c,$00		
ld a,($cc28)		
add $28			
ld d,a			
call  rlabel_03_49DB 
ld a,($ff00+$a5)	
and $10			
.DB $28 $0d ; < ['$28', '$0d'] > < 0x442e > < 3442e 03 442E | 280D: jr z, $0D >
.incbin "data/03_4430.data"
ld a,($ff00+$a5)	
and $01			
.DB $28 $02 ; < ['$28', '$02'] > < 0x4441 > < 34441 03 4441 | 2802: jr z, $02 >
.DB $18 $0e ; < ['$18', '$0e'] > < 0x4443 > < 34443 03 4443 | 180E: jr $0E >
ld a,($ff00+$a5)	
and $0a			
.DB $28 $03 ; < ['$28', '$03'] > < 0x4449 > < 34449 03 4449 | 2803: jr z, $03 >
jp $44b0		
call  rlabel_00_027C 
.DB $18 $a4 ; < ['$18', '$a4'] > < 0x4451 > < 34451 03 4451 | 18A4: jr $A4 >
ld a,$1b		
call  rlabel_00_3071 
xor a			
ld ($cafa),a		
ld a,($cc1f)		
cp $00			
jp z,$45a5		
cp $01			
.DB $28 $21 ; < ['$28', '$21'] > < 0x4466 > < 34466 03 4466 | 2821: jr z, $21 >
cp $03			
jp z,$46da		
cp $06			
.DB $28 $2c ; < ['$28', '$2c'] > < 0x446f > < 3446f 03 446F | 282C: jr z, $2C >
ld a,($cb22)		
ld ($cafb),a		
call  rlabel_03_44F3 
call  rlabel_03_4ABC 
call  rlabel_03_4523 
cp $ff			
.DB $28 $2c ; < ['$28', '$2c'] > < 0x4482 > < 34482 03 4482 | 282C: jr z, $2C >
cp $80			
jp z,$43e1		
ld de,$0000		
ld c,$08		
call  rlabel_00_1311 
call  rlabel_03_4B0B 
ld hl,$44b6		
ld a,($caf9)		
jp $05d3		
.incbin "data/03_449D.data"
call  rlabel_03_4B0B 
jp $4032		
.incbin "data/03_44B6.data"
rlabel_03_44C6:
ld hl,$4181		
ld de,$90b0		
ld bc,$0020		
ld a,$3d		
call  rlabel_00_0D83 
ld hl,$42f1		
ld de,$90d0		
ld bc,$0010		
ld a,$3d		
call  rlabel_00_0D83 
ld a,$03		
ld de,$c9b0		
call  rlabel_00_0E10 
ld a,$02		
ld de,$c9a8		
call  rlabel_00_0E10 
ret			
rlabel_03_44F3:
ld a,$1e		
ld c,$18		
call  rlabel_00_05B1 
ret			
rlabel_03_44FB:
ld a,$00		
ld ($caf4),a		
ld a,($caf9)		
ld ($caee),a		
cp $07			
ret c			
cp $0a			
.DB $30 $0b ; < ['$30', '$0b'] > < 0x450b > < 3450b 03 450B | 300B: jr nc, $0B >
sub $07			
ld ($caee),a		
ld a,$01		
ld ($caf4),a		
ret			
sub $0a			
ld ($caee),a		
ld a,$02		
ld ($caf4),a		
ret			
rlabel_03_4523:
call  rlabel_03_458B 
call  rlabel_00_0EEE 
call  rlabel_00_2555 
ld a,($caee)		
ld ($caf0),a		
ld b,a			
ld a,($cc1f)		
cp b			
.DB $28 $03 ; < ['$28', '$03'] > < 0x4537 > < 34537 03 4537 | 2803: jr z, $03 >
ld ($caee),a		
ld a,($cadf)		
cp $02			
.DB $28 $08 ; < ['$28', '$08'] > < 0x4541 > < 34541 03 4541 | 2808: jr z, $08 >
ld a,($ff00+$a5)	
and $20			
.DB $28 $02 ; < ['$28', '$02'] > < 0x4547 > < 34547 03 4547 | 2802: jr z, $02 >
.incbin "data/03_4549.data"
ld a,($ff00+$a5)	
and $01			
.DB $28 $09 ; < ['$28', '$09'] > < 0x454f > < 3454f 03 454F | 2809: jr z, $09 >
ld a,$1b		
call  rlabel_00_3071 
ld a,($cafb)		
ret			
ld a,($ff00+$a5)	
and $02			
.DB $28 $02 ; < ['$28', '$02'] > < 0x455e > < 3455e 03 455E | 2802: jr z, $02 >
.DB $18 $14 ; < ['$18', '$14'] > < 0x4560 > < 34560 03 4560 | 1814: jr $14 >
ld a,($ff00+$a5)	
and $08			
.DB $28 $03 ; < ['$28', '$03'] > < 0x4566 > < 34566 03 4566 | 2803: jr z, $03 >
.incbin "data/03_4568.data"
ld a,($cc1f)		
ld ($cafb),a		
call  rlabel_00_027C 
.DB $18 $b0 ; < ['$18', '$b0'] > < 0x4574 > < 34574 03 4574 | 18B0: jr $B0 >
ld a,$1c		
call  rlabel_00_3071 
ld a,$00		
ld c,$08		
call  rlabel_00_05B1 
call  rlabel_03_4A88 
call  rlabel_00_027C 
ld a,$80		
ret			
rlabel_03_458B:
ld a,($cafb)		
ld ($caee),a		
ld a,$03		
ld ($caf2),a		
ld ($caf1),a		
ld b,$1c		
ld c,$34		
ld d,$02		
ld e,$00		
call  rlabel_03_4143 
ret			
ld a,($cafa)		
add $07			
ld ($caf9),a		
call  rlabel_03_47AB 
call  rlabel_03_480F 
call  rlabel_03_4886 
call  rlabel_03_4941 
call  rlabel_00_0EEE 
ld hl,$487e		
call  rlabel_00_255B 
ld a,($caee)		
ld ($caf0),a		
ld b,a			
ld a,($cc1f)		
cp b			
.DB $28 $0e ; < ['$28', '$0e'] > < 0x45cd > < 345cd 03 45CD | 280E: jr z, $0E >
ld ($caee),a		
add $07			
ld ($caf9),a		
call  rlabel_03_4886 
call  rlabel_03_4941 
ld a,($cc1d)		
sub $04			
ld b,a			
ld c,$00		
ld a,($cc28)		
add $28			
ld d,a			
call  rlabel_03_49DB 
ld a,($ff00+$a5)	
and $22			
.DB $28 $02 ; < ['$28', '$02'] > < 0x45f2 > < 345f2 03 45F2 | 2802: jr z, $02 >
.DB $18 $52 ; < ['$18', '$52'] > < 0x45f4 > < 345f4 03 45F4 | 1852: jr $52 >
ld a,($ff00+$a5)	
and $11			
.DB $28 $02 ; < ['$28', '$02'] > < 0x45fa > < 345fa 03 45FA | 2802: jr z, $02 >
.DB $18 $0d ; < ['$18', '$0d'] > < 0x45fc > < 345fc 03 45FC | 180D: jr $0D >
ld a,($ff00+$a5)	
and $08			
.DB $28 $02 ; < ['$28', '$02'] > < 0x4602 > < 34602 03 4602 | 2802: jr z, $02 >
.incbin "data/03_4604.data"
call  rlabel_00_027C 
.DB $18 $ae ; < ['$18', '$ae'] > < 0x4609 > < 34609 03 4609 | 18AE: jr $AE >
ld a,$1b		
call  rlabel_00_3071 
ld a,($caee)		
ld ($cafa),a		
ld a,($cb22)		
ld ($cafb),a		
call  rlabel_03_44F3 
call  rlabel_03_4ABC 
call  rlabel_03_4523 
cp $ff			
.DB $28 $2f ; < ['$28', '$2f'] > < 0x4627 > < 34627 03 4627 | 282F: jr z, $2F >
cp $80			
.DB $28 $83 ; < ['$28', '$83'] > < 0x462b > < 3462b 03 462B | 2883: jr z, $83 >
ld a,($caf9)		
cp $09			
.DB $28 $32 ; < ['$28', '$32'] > < 0x4632 > < 34632 03 4632 | 2832: jr z, $32 >
ld de,$0000		
ld c,$08		
call  rlabel_00_1311 
call  rlabel_03_4B0B 
ld hl,$465e		
ld a,($cafa)		
jp $05d3		
ld a,$1c		
call  rlabel_00_3071 
ld a,$00		
ld ($caf9),a		
call  rlabel_03_47DD 
jp $43e1		
.incbin "data/03_4658.data"
ld a,($cafb)		
call  rlabel_00_12DD 
cp $01			
.DB $28 $c4 ; < ['$28', '$c4'] > < 0x466e > < 3466e 03 466E | 28C4: jr z, $C4 >
cp $07			
.DB $28 $c0 ; < ['$28', '$c0'] > < 0x4672 > < 34672 03 4672 | 28C0: jr z, $C0 >
cp $02			
.DB $28 $09 ; < ['$28', '$09'] > < 0x4676 > < 34676 03 4676 | 2809: jr z, $09 >
cp $09			
.DB $28 $05 ; < ['$28', '$05'] > < 0x467a > < 3467a 03 467A | 2805: jr z, $05 >
ld hl,$46c9		
.DB $18 $03 ; < ['$18', '$03'] > < 0x467f > < 3467f 03 467F | 1803: jr $03 >
.incbin "data/03_4681.data"
push hl			
xor a			
ld ($cc95),a		
ld ($cc97),a		
ld hl,$0e00		
ld de,$1013		
ld c,$01		
call  rlabel_00_1E43 
ld b,$04		
ld hl,$6417		
rst $28			
pop hl			
ld b,$0f		
ld c,$01		
ld d,$30		
ld e,$07		
call  rlabel_00_0F47 
ld e,$13		
call  rlabel_00_1128 
ld a,$1f		
call  rlabel_00_3071 
ld b,$04		
ld hl,$6452		
rst $28			
call  rlabel_00_207C 
ld b,$04		
ld hl,$6435		
rst $28			
jp $461c		
.incbin "data/03_46C5.data"
ld a,($cafa)		
add $0a			
ld ($caf9),a		
call  rlabel_03_47AB 
call  rlabel_03_480F 
call  rlabel_03_4886 
call  rlabel_03_4941 
call  rlabel_00_0EEE 
ld hl,$4881		
call  rlabel_00_255B 
ld a,($caee)		
ld ($caf0),a		
ld b,a			
ld a,($cc1f)		
cp b			
.DB $28 $0e ; < ['$28', '$0e'] > < 0x4702 > < 34702 03 4702 | 280E: jr z, $0E >
ld ($caee),a		
add $0a			
ld ($caf9),a		
call  rlabel_03_4886 
call  rlabel_03_4941 
ld a,($cc1d)		
sub $04			
ld b,a			
ld c,$00		
ld a,($cc28)		
add $28			
ld d,a			
call  rlabel_03_49DB 
ld a,($ff00+$a5)	
and $22			
.DB $28 $02 ; < ['$28', '$02'] > < 0x4727 > < 34727 03 4727 | 2802: jr z, $02 >
.DB $18 $62 ; < ['$18', '$62'] > < 0x4729 > < 34729 03 4729 | 1862: jr $62 >
ld a,($ff00+$a5)	
and $10			
.DB $28 $09 ; < ['$28', '$09'] > < 0x472f > < 3472f 03 472F | 2809: jr z, $09 >
.incbin "data/03_4731.data"
ld a,($ff00+$a5)	
and $01			
.DB $28 $02 ; < ['$28', '$02'] > < 0x473e > < 3473e 03 473E | 2802: jr z, $02 >
.DB $18 $0d ; < ['$18', '$0d'] > < 0x4740 > < 34740 03 4740 | 180D: jr $0D >
ld a,($ff00+$a5)	
and $08			
.DB $28 $02 ; < ['$28', '$02'] > < 0x4746 > < 34746 03 4746 | 2802: jr z, $02 >
.incbin "data/03_4748.data"
call  rlabel_00_027C 
.DB $18 $9f ; < ['$18', '$9f'] > < 0x474d > < 3474d 03 474D | 189F: jr $9F >
ld a,$1b		
call  rlabel_00_3071 
ld a,($caee)		
ld ($cafa),a		
ld a,($caf9)		
cp $0b			
.DB $28 $18 ; < ['$28', '$18'] > < 0x475f > < 3475f 03 475F | 2818: jr z, $18 >
ld a,($cb22)		
ld ($cafb),a		
call  rlabel_03_44F3 
call  rlabel_03_4ABC 
call  rlabel_03_4523 
cp $ff			
.DB $28 $29 ; < ['$28', '$29'] > < 0x4772 > < 34772 03 4772 | 2829: jr z, $29 >
cp $80			
jp z,$46e5		
ld de,$0000		
ld c,$08		
call  rlabel_00_1311 
call  rlabel_03_4B0B 
ld hl,$47a3		
ld a,($cafa)		
jp $05d3		
ld a,$1c		
call  rlabel_00_3071 
ld a,$03		
ld ($caf9),a		
call  rlabel_03_47DD 
jp $43e1		
.incbin "data/03_479D.data"
rlabel_03_47AB:
call  rlabel_03_44F3 
ld a,$06		
push af			
ld b,$02		
ld c,$01		
inc c			
call  rlabel_00_0CF4 
ld d,h			
ld e,l			
dec c			
call  rlabel_00_0CF4 
call  rlabel_00_050E 
ld d,a			
call  rlabel_00_0D25 
inc c			
ld a,c			
cp $06			
.DB $38 $e9 ; < ['$38', '$e9'] > < 0x47ca > < 347ca 03 47CA | 38E9: jr c, $E9 >
inc b			
ld a,b			
cp $0b			
.DB $38 $e1 ; < ['$38', '$e1'] > < 0x47d0 > < 347d0 03 47D0 | 38E1: jr c, $E1 >
call  rlabel_00_027C 
call  rlabel_00_027C 
pop af			
dec a			
.DB $20 $d4 ; < ['$20', '$d4'] > < 0x47da > < 347da 03 47DA | 20D4: jr nz, $D4 >
ret			
rlabel_03_47DD:
call  rlabel_03_44F3 
ld a,$06		
push af			
ld b,$02		
ld c,$06		
dec c			
call  rlabel_00_0CF4 
ld d,h			
ld e,l			
inc c			
call  rlabel_00_0CF4 
call  rlabel_00_050E 
ld d,a			
call  rlabel_00_0D25 
dec c			
ld a,c			
cp $02			
.DB $30 $e9 ; < ['$30', '$e9'] > < 0x47fc > < 347fc 03 47FC | 30E9: jr nc, $E9 >
inc b			
ld a,b			
cp $0b			
.DB $38 $e1 ; < ['$38', '$e1'] > < 0x4802 > < 34802 03 4802 | 38E1: jr c, $E1 >
call  rlabel_00_027C 
call  rlabel_00_027C 
pop af			
dec a			
.DB $20 $d4 ; < ['$20', '$d4'] > < 0x480c > < 3480c 03 480C | 20D4: jr nz, $D4 >
ret			
rlabel_03_480F:
ld a,($caf9)		
cp $07			
.DB $30 $14 ; < ['$30', '$14'] > < 0x4814 > < 34814 03 4814 | 3014: jr nc, $14 >
ld a,$00		
ld ($caf4),a		
ld a,($caf9)		
ld ($caee),a		
ld a,$07		
ld b,$18		
ld hl,$4877		
.DB $18 $2e ; < ['$18', '$2e'] > < 0x4828 > < 34828 03 4828 | 182E: jr $2E >
cp $0a			
.DB $30 $16 ; < ['$30', '$16'] > < 0x482c > < 3482c 03 482C | 3016: jr nc, $16 >
ld a,$01		
ld ($caf4),a		
ld a,($caf9)		
sub $07			
ld ($caee),a		
ld a,$03		
ld b,$18		
ld hl,$487e		
.DB $18 $14 ; < ['$18', '$14'] > < 0x4842 > < 34842 03 4842 | 1814: jr $14 >
ld a,$02		
ld ($caf4),a		
ld a,($caf9)		
sub $03			
ld ($caee),a		
ld a,$03		
ld b,$30		
ld hl,$4881		
ld ($caf2),a		
ld ($caf1),a		
push hl			
call  rlabel_03_44FB 
ld c,$08		
ld d,$00		
ld e,$00		
call  rlabel_03_4143 
pop hl			
ld a,($caee)		
call  rlabel_00_0462 
ld a,(hl)		
ld ($cc28),a		
ret			
.incbin "data/03_4877.data"
rlabel_03_4886:
ld a,($caf4)		
cp $00			
.DB $20 $07 ; < ['$20', '$07'] > < 0x488b > < 3488b 03 488B | 2007: jr nz, $07 >
ld b,$02		
ld hl,$48a6		
.DB $18 $6c ; < ['$18', '$6c'] > < 0x4892 > < 34892 03 4892 | 186C: jr $6C >
cp $01			
.DB $20 $07 ; < ['$20', '$07'] > < 0x4896 > < 34896 03 4896 | 2007: jr nz, $07 >
ld b,$02		
ld hl,$48d4		
.DB $18 $61 ; < ['$18', '$61'] > < 0x489d > < 3489d 03 489D | 1861: jr $61 >
ld b,$05		
ld hl,$48e9		
.DB $18 $5a ; < ['$18', '$5a'] > < 0x48a4 > < 348a4 03 48A4 | 185A: jr $5A >
.incbin "data/03_48A6.data"
ld a,$90		
ld ($cae8),a		
xor a			
push af			
ld c,a			
ld a,($caee)		
cp c			
.DB $20 $1b ; < ['$20', '$1b'] > < 0x490c > < 3490c 03 490C | 201B: jr nz, $1B >
push hl			
ld hl,$4938		
ld c,$02		
call  rlabel_00_0FDE 
pop hl			
ld c,$02		
call  rlabel_00_0FDE 
push hl			
ld hl,$4938		
ld c,$02		
call  rlabel_00_0FDE 
pop hl			
.DB $18 $05 ; < ['$18', '$05'] > < 0x4927 > < 34927 03 4927 | 1805: jr $05 >
ld c,$02		
call  rlabel_00_1054 
ld a,($caf1)		
ld c,a			
pop af			
inc a			
cp c			
.DB $38 $cf ; < ['$38', '$cf'] > < 0x4935 > < 34935 03 4935 | 38CF: jr c, $CF >
ret			
.incbin "data/03_4938.data"
rlabel_03_4941:
ld a,($caf9)		
add a			
add a			
add a			
ld b,a			
add a			
ld hl,$6301		
call  rlabel_00_0462 
ld a,b			
call  rlabel_00_0462 
ld de,$cb26		
ld bc,$0018		
ld a,$88		
call  rlabel_00_0D50 
ld b,$0f		
ld c,$01		
ld d,$d8		
ld e,$07		
ld hl,$cb26		
call  rlabel_00_0F47 
ld e,$13		
call  rlabel_00_1128 
ret			
rlabel_03_4972:
ld a,($cb97)		
inc a			
ld ($cb97),a		
ld a,($cb97)		
srl a			
srl a			
srl a			
and $07			
cp $04			
.DB $28 $02 ; < ['$28', '$02'] > < 0x4986 > < 34986 03 4986 | 2802: jr z, $02 >
and $03			
add a			
add $50			
ld d,a			
ld e,$03		
ld b,$01		
ld a,($cb98)		
add $09			
ld c,a			
ld a,$25		
call  rlabel_00_0EAA 
ret			
ld a,($cb98)		
and a			
.DB $28 $32 ; < ['$28', '$32'] > < 0x49a2 > < 349a2 03 49A2 | 2832: jr z, $32 >
cp $08			
.DB $38 $09 ; < ['$38', '$09'] > < 0x49a6 > < 349a6 03 49A6 | 3809: jr c, $09 >
add $02			
add $70			
ld d,a			
ld e,$03		
.DB $18 $10 ; < ['$18', '$10'] > < 0x49af > < 349af 03 49AF | 1810: jr $10 >
ld hl,$cbb6		
call  rlabel_00_0462 
ld a,(hl)		
cp $ff			
.DB $28 $1a ; < ['$28', '$1a'] > < 0x49ba > < 349ba 03 49BA | 281A: jr z, $1A >
add $70			
ld d,a			
ld e,$02		
ld b,$01		
ld a,($cb98)		
add $09			
ld c,a			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
ld a,($cb98)		
dec a			
ld ($cb98),a		
ret			
.incbin "data/03_49D7.data"
rlabel_03_49DB:
ld a,($c96f)		
dec a			
ld ($c96f),a		
ld a,($c96f)		
srl a			
srl a			
srl a			
and $07			
ld e,a			
cp $07			
.DB $20 $02 ; < ['$20', '$02'] > < 0x49f0 > < 349f0 03 49F0 | 2002: jr nz, $02 >
ld e,$00		
srl a			
dec a			
cp $02			
.DB $20 $01 ; < ['$20', '$01'] > < 0x49f9 > < 349f9 03 49F9 | 2001: jr nz, $01 >
xor a			
add b			
ld b,a			
push de			
push bc			
ld a,e			
and a			
.DB $20 $02 ; < ['$20', '$02'] > < 0x4a02 > < 34a02 03 4A02 | 2002: jr nz, $02 >
ld b,$c0		
inc b			
ld a,e			
and $04			
add a			
add c			
ld c,a			
dec c			
ld a,e			
cp $04			
.DB $38 $03 ; < ['$38', '$03'] > < 0x4a11 > < 34a11 03 4A11 | 3803: jr c, $03 >
ld a,$07		
sub e			
add a			
add $62			
ld d,a			
ld a,e			
and $04			
swap a			
srl a			
add $04			
ld e,a			
ld a,$1e		
call  rlabel_00_0EC7 
pop bc			
ld d,$60		
ld e,$05		
ld a,$1f		
call  rlabel_00_0EC7 
ld a,c			
add $08			
ld c,a			
ld d,$62		
ld e,$05		
ld a,$20		
call  rlabel_00_0EC7 
pop de			
ld a,c			
sub $08			
add d			
ld c,a			
push bc			
ld a,e			
and a			
.DB $20 $02 ; < ['$20', '$02'] > < 0x4a49 > < 34a49 03 4A49 | 2002: jr nz, $02 >
ld b,$c0		
inc b			
ld a,e			
and $04			
add a			
add c			
ld c,a			
dec c			
ld a,e			
cp $04			
.DB $38 $03 ; < ['$38', '$03'] > < 0x4a58 > < 34a58 03 4A58 | 3803: jr c, $03 >
ld a,$07		
sub e			
add a			
add $62			
ld d,a			
ld a,e			
and $04			
swap a			
srl a			
add $04			
ld e,a			
ld a,$21		
call  rlabel_00_0EC7 
pop bc			
ld d,$60		
ld e,$05		
ld a,$22		
call  rlabel_00_0EC7 
ld a,c			
add $08			
ld c,a			
ld d,$62		
ld e,$05		
ld a,$23		
call  rlabel_00_0EC7 
ret			
rlabel_03_4A88:
ld b,$02		
ld c,$06		
ld d,$00		
ld e,$04		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
ld d,$13		
ld e,$07		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc b			
dec c			
ld a,b			
cp $0b			
.DB $38 $e4 ; < ['$38', '$e4'] > < 0x4aa6 > < 34aa6 03 4AA6 | 38E4: jr c, $E4 >
ld c,$06		
ld d,$15		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
ld d,$14		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
ret			
rlabel_03_4ABC:
ld b,$02		
xor a			
push af			
push bc			
ld d,b			
ld e,$06		
ld c,a			
ld b,$04		
ld hl,$59d9		
rst $28			
pop bc			
inc b			
ld c,$06		
ld e,$07		
call  rlabel_03_4ADB 
pop af			
inc a			
cp $03			
.DB $38 $e5 ; < ['$38', '$e5'] > < 0x4ad8 > < 34ad8 03 4AD8 | 38E5: jr c, $E5 >
ret			
rlabel_03_4ADB:
ld e,$07		
call  rlabel_03_4AF7 
call  rlabel_03_4AF7 
ld d,$16		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
ld d,$15		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc b			
dec c			
ret			
rlabel_03_4AF7:
ld d,$17		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
ld d,$00		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc b			
dec c			
ret			
rlabel_03_4B0B:
call  rlabel_00_13E5 
ret			
call  rlabel_03_4972 
ld b,$05		
ld hl,$5b95		
rst $28			
ret			
ld b,$04		
ld hl,$6ae4		
rst $28			
ld de,$0000		
ld c,$08		
call  rlabel_00_1311 
ld a,($c1a8)		
cp $01			
.DB $20 $03 ; < ['$20', '$03'] > < 0x4b2c > < 34b2c 03 4B2C | 2003: jr nz, $03 >
.incbin "data/03_4B2E.data"
jp $4365		
xor a			
ld ($cb1e),a		
ld ($cb1f),a		
ld b,$04		
ld hl,$6d67		
rst $28			
ld de,$0000		
ld c,$08		
call  rlabel_00_1311 
ld a,($c1a8)		
cp $01			
.DB $20 $03 ; < ['$20', '$03'] > < 0x4b4e > < 34b4e 03 4B4E | 2003: jr nz, $03 >
.incbin "data/03_4B50.data"
jp $4365		
.incbin "data/03_4B56.data"
ld hl,$7b80		
.DB $18 $1c ; < ['$18', '$1c'] > < 0x4b75 > < 34b75 03 4B75 | 181C: jr $1C >
.incbin "data/03_4B77.data"
ld a,c			
sub $60			
ld c,a			
ld hl,$7a3f		
.DB $18 $12 ; < ['$18', '$12'] > < 0x4b7f > < 34b7f 03 4B7F | 1812: jr $12 >
.incbin "data/03_4B81.data"
ld hl,$7d48		
.DB $18 $06 ; < ['$18', '$06'] > < 0x4b8b > < 34b8b 03 4B8B | 1806: jr $06 >
.incbin "data/03_4B8D.data"
ld a,$86		
ld de,$cb66		
call  rlabel_00_0D6C 
inc hl			
push af			
ld a,c			
call  rlabel_00_0462 
ld a,c			
call  rlabel_00_0462 
ld a,$86		
ld bc,$0002		
call  rlabel_00_0D50 
dec de			
ld a,(de)		
ld h,a			
dec de			
ld a,(de)		
ld l,a			
pop af			
push af			
ld bc,$000c		
call  rlabel_00_0D50 
pop af			
ld de,$cb26		
ld bc,$0040		
call  rlabel_00_0D50 
ret			
xor a			
ld ($cb8c),a		
ld ($cb8d),a		
ld ($cb8e),a		
ld ($cb8f),a		
ld ($cb91),a		
ld ($cb93),a		
xor a			
ld ($cafc),a		
ld hl,$cafe		
ld c,$20		
call  rlabel_00_04E2 
call  rlabel_03_41AA 
ld a,$02		
ld ($cadf),a		
call  rlabel_00_13B1 
di			
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ei			
call  rlabel_03_524E 
call  rlabel_00_05AA 
call  rlabel_00_136B 
call  rlabel_03_40AF 
ld hl,$7401		
ld de,$9700		
ld bc,$0100		
ld a,$3d		
call  rlabel_00_0D83 
ld hl,$4271		
ld de,$90e0		
ld bc,$0010		
ld a,$3d		
call  rlabel_00_0D83 
call  rlabel_03_5296 
call  rlabel_03_4D18 
ld c,$04		
call  rlabel_00_132B 
call  rlabel_00_0EEE 
call  rlabel_03_4DDF 
call  rlabel_03_52DA 
ld a,($ff00+$a5)	
and $01			
.DB $28 $0d ; < ['$28', '$0d'] > < 0x4c3b > < 34c3b 03 4C3B | 280D: jr z, $0D >
ld a,($caf1)		
and a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x4c41 > < 34c41 03 4C41 | 2807: jr z, $07 >
ld a,$1b		
call  rlabel_00_3071 
.DB $18 $32 ; < ['$18', '$32'] > < 0x4c48 > < 34c48 03 4C48 | 1832: jr $32 >
ld a,($ff00+$a5)	
and $02			
.DB $28 $12 ; < ['$28', '$12'] > < 0x4c4e > < 34c4e 03 4C4E | 2812: jr z, $12 >
ld a,$1c		
call  rlabel_00_3071 
call  rlabel_03_4D09 
xor a			
ld ($cafb),a		
ld ($cb22),a		
jp $4365		
ld a,($ff00+$a5)	
and $08			
.DB $28 $06 ; < ['$28', '$06'] > < 0x4c66 > < 34c66 03 4C66 | 2806: jr z, $06 >
.incbin "data/03_4C68.data"
ld a,($ff00+$a5)	
and $04			
.DB $28 $03 ; < ['$28', '$03'] > < 0x4c72 > < 34c72 03 4C72 | 2803: jr z, $03 >
.incbin "data/03_4C74.data"
call  rlabel_00_027C 
.DB $18 $b2 ; < ['$18', '$b2'] > < 0x4c7a > < 34c7a 03 4C7A | 18B2: jr $B2 >
ld a,($caed)		
ld ($cb1e),a		
ld a,($caee)		
ld ($cb1f),a		
call  rlabel_03_5338 
ld b,$04		
ld hl,$5e98		
rst $28			
ld a,($cb1e)		
ld ($caed),a		
ld a,($cb1f)		
ld ($caee),a		
ld a,$07		
ld ($caf2),a		
call  rlabel_03_5338 
call  rlabel_03_51B4 
ld a,($cae0)		
and a			
.DB $20 $45 ; < ['$20', '$45'] > < 0x4cac > < 34cac 03 4CAC | 2045: jr nz, $45 >
call  rlabel_03_5013 
call  rlabel_03_5026 
ld a,($caed)		
and a			
.DB $28 $17 ; < ['$28', '$17'] > < 0x4cb8 > < 34cb8 03 4CB8 | 2817: jr z, $17 >
.incbin "data/03_4CBA.data"
ld a,($caf1)		
ld b,a			
ld a,($caee)		
cp b			
.DB $38 $0a ; < ['$38', '$0a'] > < 0x4cd9 > < 34cd9 03 4CD9 | 380A: jr c, $0A >
.incbin "data/03_4CDB.data"
call  rlabel_03_50E2 
call  rlabel_03_5722 
call  rlabel_03_5350 
call  rlabel_03_5710 
.DB $18 $84 ; < ['$18', '$84'] > < 0x4cf1 > < 34cf1 03 4CF1 | 1884: jr $84 >
.incbin "data/03_4CF3.data"
rlabel_03_4D09:
ld de,$0000		
ld c,$04		
call  rlabel_00_1311 
call  rlabel_03_5757 
call  rlabel_00_13E5 
ret			
rlabel_03_4D18:
call  rlabel_03_5766 
ld b,$03		
ld de,$5790		
call  rlabel_00_14E5 
ret			
.incbin "data/03_4D24.data"
rlabel_03_4D5C:
ld a,($cb8d)		
and a			
.DB $20 $31 ; < ['$20', '$31'] > < 0x4d60 > < 34d60 03 4D60 | 2031: jr nz, $31 >
ld b,$00		
ld c,$00		
ld d,$02		
ld e,$12		
call  rlabel_00_0F33 
ld de,$9300		
ld c,$24		
call  rlabel_00_1280 
ld a,($cb93)		
and a			
.DB $28 $06 ; < ['$28', '$06'] > < 0x4d79 > < 34d79 03 4D79 | 2806: jr z, $06 >
.incbin "data/03_4D7B.data"
ld c,$01		
ld a,$09		
ld b,$01		
ld d,$30		
ld e,$07		
push af			
call  rlabel_00_1287 
pop af			
dec a			
.DB $20 $f8 ; < ['$20', '$f8'] > < 0x4d91 > < 34d91 03 4D91 | 20F8: jr nz, $F8 >
rlabel_03_4D93:
ld a,($cb8d)		
and a			
.DB $20 $3f ; < ['$20', '$3f'] > < 0x4d97 > < 34d97 03 4D97 | 203F: jr nz, $3F >
ld a,($caf3)		
ld h,a			
ld l,$00		
srl h			
rr l			
srl h			
rr l			
ld de,$7501		
add hl,de		
ld de,$9300		
xor a			
push af			
ld b,a			
ld a,($caf4)		
cp b			
.DB $28 $0a ; < ['$28', '$0a'] > < 0x4db5 > < 34db5 03 4DB5 | 280A: jr z, $0A >
ld bc,$0040		
ld a,$3d		
call  rlabel_00_0D83 
.DB $18 $08 ; < ['$18', '$08'] > < 0x4dbf > < 34dbf 03 4DBF | 1808: jr $08 >
ld bc,$0040		
ld a,$3d		
call  rlabel_00_0DDA 
ld a,($caf8)		
ld b,a			
pop af			
inc a			
cp b			
.DB $38 $dd ; < ['$38', '$dd'] > < 0x4dd0 > < 34dd0 03 4DD0 | 38DD: jr c, $DD >
call  rlabel_03_5013 
call  rlabel_03_5026 
call  rlabel_03_50B9 
call  rlabel_03_5350 
ret			
rlabel_03_4DDF:
ld a,($cb8d)		
and a			
ret nz			
ld a,($caf3)		
ld ($caf5),a		
ld a,($caf4)		
ld ($caf6),a		
ld a,($cbd6)		
and $20			
.DB $28 $26 ; < ['$28', '$26'] > < 0x4df5 > < 34df5 03 4DF5 | 2826: jr z, $26 >
.incbin "data/03_4DF7.data"
ld a,($cbd6)		
and $10			
.DB $28 $28 ; < ['$28', '$28'] > < 0x4e22 > < 34e22 03 4E22 | 2828: jr z, $28 >
ld a,($caf8)		
dec a			
ld b,a			
ld a,($caf4)		
cp b			
.DB $30 $0b ; < ['$30', '$0b'] > < 0x4e2d > < 34e2d 03 4E2D | 300B: jr nc, $0B >
inc a			
ld ($caf4),a		
ld a,$7f		
call  rlabel_00_3071 
.DB $18 $09 ; < ['$18', '$09'] > < 0x4e38 > < 34e38 03 4E38 | 1809: jr $09 >
xor a			
ld ($caf4),a		
ld a,$7f		
call  rlabel_00_3071 
call  rlabel_03_4E4D 
call  rlabel_03_4D93 
call  rlabel_03_5710 
ret			
rlabel_03_4E4D:
ld a,($caf5)		
ld b,a			
ld a,($caf6)		
add b			
add a			
ld hl,$cafe		
call  rlabel_00_0462 
ld a,($caed)		
ldi (hl),a		
ld a,($caee)		
ldi (hl),a		
ld a,($caf3)		
ld b,a			
ld a,($caf4)		
add b			
ld b,a			
add a			
ld hl,$cafe		
call  rlabel_00_0462 
ldi a,(hl)		
ld ($caed),a		
ldi a,(hl)		
ld ($caee),a		
ret			
rlabel_03_4E7D:
ld a,($cb97)		
srl a			
srl a			
srl a			
and $03			
.DB $28 $02 ; < ['$28', '$02'] > < 0x4e88 > < 34e88 03 4E88 | 2802: jr z, $02 >
dec a			
dec a			
push af			
ld c,a			
ld b,$c0		
ld a,($caf3)		
and a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x4e94 > < 34e94 03 4E94 | 2802: jr z, $02 >
.incbin "data/03_4E96.data"
ld a,$00		
sub c			
ld c,a			
ld d,$84		
ld e,$07		
ld a,$24		
call  rlabel_00_0EC7 
ld b,$07		
ld a,($caf8)		
ld c,a			
ld a,($caf7)		
sub c			
ld c,a			
ld a,($caf3)		
cp c			
.DB $38 $02 ; < ['$38', '$02'] > < 0x4eb4 > < 34eb4 03 4EB4 | 3802: jr c, $02 >
ld b,$c0		
pop af			
add $98			
ld c,a			
ld d,$84		
ld e,$27		
ld a,$25		
call  rlabel_00_0EC7 
ret			
rlabel_03_4EC6:
call  rlabel_03_4EE2 
call  rlabel_03_56C0 
rlabel_03_4ECC:
ld a,($cb94)		
ld b,a			
ld c,$01		
ld a,($cb95)		
ld d,a			
ld a,($cb96)		
ld e,a			
ld h,$03		
ld l,$03		
call  rlabel_00_1260 
ret			
rlabel_03_4EE2:
ld a,c			
ld ($cb94),a		
ld a,d			
ld ($cb95),a		
ld a,e			
ld ($cb96),a		
ret			
rlabel_03_4EEF:
ld hl,$4472		
add hl,de		
add hl,de		
add hl,de		
ld de,$cb26		
ld bc,$0003		
ld a,$32		
call  rlabel_00_0D50 
ld a,($cb26)		
ld l,a			
ld a,($cb27)		
ld h,a			
ld a,($cb28)		
ret			
rlabel_03_4F0C:
ld a,d			
cp $80			
jp nc,$4fa4		
call  rlabel_03_4EEF 
push af			
ld de,$cb66		
ld bc,$0010		
call  rlabel_00_0D50 
pop af			
ld de,$cb26		
ld bc,$0040		
call  rlabel_00_0D50 
ld a,($cb66)		
cp $70			
.DB $30 $04 ; < ['$30', '$04'] > < 0x4f2e > < 34f2e 03 4F2E | 3004: jr nc, $04 >
ld b,$00		
.DB $18 $04 ; < ['$18', '$04'] > < 0x4f32 > < 34f32 03 4F32 | 1804: jr $04 >
ld b,$01		
sub $70			
ld h,a			
ld l,$00		
srl h			
rr l			
swap a			
ld e,a			
and $0f			
ld d,a			
ld a,e			
and $f0			
ld e,a			
add hl,de		
ld de,$4001		
add hl,de		
ld a,l			
ld ($cb64),a		
ld a,h			
ld ($cb65),a		
ld a,b			
add $2e			
ld ($cb63),a		
ld a,($cb67)		
add $a0			
ld ($cb67),a		
ret			
rlabel_03_4F65:
ld a,d			
cp $80			
jp nc,$4fa7		
call  rlabel_03_4EEF 
ld de,$0010		
add hl,de		
ld de,$cb26		
ld bc,$0010		
call  rlabel_00_0D50 
ret			
rlabel_03_4F7C:
ld a,d			
cp $80			
jp nc,$4fa7		
call  rlabel_03_4EEF 
ld de,$0002		
add hl,de		
ld de,$cb26		
call  rlabel_00_0D6C 
ret			
.incbin "data/03_4F90.data"
call  rlabel_03_5002 
call  rlabel_03_500A 
ld a,d			
cp $80			
ret nz			
ld a,($cb92)		
and a			
ret z			
cp $01			
.DB $20 $05 ; < ['$20', '$05'] > < 0x4fb5 > < 34fb5 03 4FB5 | 2005: jr nz, $05 >
.incbin "data/03_4FB7.data"
cp $02			
.DB $20 $05 ; < ['$20', '$05'] > < 0x4fbe > < 34fbe 03 4FBE | 2005: jr nz, $05 >
.incbin "data/03_4FC0.data"
cp $03			
.DB $20 $05 ; < ['$20', '$05'] > < 0x4fc7 > < 34fc7 03 4FC7 | 2005: jr nz, $05 >
ld hl,$4fed		
.DB $18 $0a ; < ['$18', '$0a'] > < 0x4fcc > < 34fcc 03 4FCC | 180A: jr $0A >
.incbin "data/03_4FCE.data"
ld de,$cb26		
ldi a,(hl)		
ld (de),a		
inc de			
and a			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x4fdf > < 34fdf 03 4FDF | 20FA: jr nz, $FA >
ret			
.incbin "data/03_4FE2.data"
rlabel_03_5002:
ld hl,$cb66		
ld c,$10		
call  rlabel_00_04E2 
rlabel_03_500A:
ld hl,$cb26		
ld c,$40		
call  rlabel_00_04E2 
ret			
rlabel_03_5013:
call  rlabel_00_3314 
ld bc,$0140		
ld a,$ff		
ldi (hl),a		
dec bc			
ld a,b			
or c			
.DB $20 $f8 ; < ['$20', '$f8'] > < 0x501f > < 3501f 03 501F | 20F8: jr nz, $F8 >
xor a			
ld ($caf1),a		
ret			
rlabel_03_5026:
ld a,($caf3)		
ld c,a			
ld a,($caf4)		
add c			
ld c,a			
ld a,c			
add a			
ld hl,$5068		
call  rlabel_00_0462 
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
ld a,c			
add a			
ld hl,$507a		
call  rlabel_00_0462 
call  rlabel_03_5054 
xor a			
ld ($caf1),a		
call  rlabel_00_3314 
call  rlabel_03_509A 
call  rlabel_03_508E 
ret			
rlabel_03_5054:
ld a,c			
push af			
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld b,a			
pop af			
cp $03			
ret nz			
ld a,($cbcd)		
cp $00			
ret nz			
.incbin "data/03_5064.data"
rlabel_03_508E:
ld b,$28		
ld c,$00		
ld d,$00		
ld e,$01		
call  rlabel_03_4143 
ret			
rlabel_03_509A:
push bc			
push hl			
call  rlabel_03_51B2 
pop hl			
and a			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x50a1 > < 350a1 03 50A1 | 280B: jr z, $0B >
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
.DB $38 $e6 ; < ['$38', '$e6'] > < 0x50b2 > < 350b2 03 50B2 | 38E6: jr c, $E6 >
ld a,e			
cp c			
.DB $38 $e2 ; < ['$38', '$e2'] > < 0x50b6 > < 350b6 03 50B6 | 38E2: jr c, $E2 >
ret			
rlabel_03_50B9:
ld a,$05		
ld ($cb8a),a		
rlabel_03_50BE:
ld a,($cb8c)		
and a			
.DB $20 $1e ; < ['$20', '$1e'] > < 0x50c2 > < 350c2 03 50C2 | 201E: jr nz, $1E >
ld a,($cb8a)		
ld b,a			
ld e,$04		
ld a,($caf2)		
push af			
ld c,$0e		
call  rlabel_00_0CF4 
call  rlabel_00_0D33 
inc c			
call  rlabel_00_0CF4 
call  rlabel_00_0D33 
inc b			
pop af			
dec a			
.DB $20 $eb ; < ['$20', '$eb'] > < 0x50e0 > < 350e0 03 50E0 | 20EB: jr nz, $EB >
rlabel_03_50E2:
call  rlabel_00_3314 
ld a,($caed)		
ld b,a			
call  rlabel_00_0462 
ld a,b			
call  rlabel_00_0462 
xor a			
ld ($cb89),a		
ld a,($caf1)		
ld b,a			
ld a,($cb89)		
cp b			
.DB $38 $10 ; < ['$38', '$10'] > < 0x50fc > < 350fc 03 50FC | 3810: jr c, $10 >
push hl			
ld b,a			
ld a,($cb8a)		
add b			
ld b,a			
ld c,$02		
ld e,$12		
call  rlabel_00_113B 
.DB $18 $56 ; < ['$18', '$56'] > < 0x510c > < 3510c 03 510C | 1856: jr $56 >
add a			
ld c,a			
add a			
add a			
add c			
add $90			
ld ($cae8),a		
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
push hl			
call  rlabel_03_51B2 
ld ($cb8b),a		
call  rlabel_03_4F65 
ld a,($cb89)		
ld b,a			
ld a,($cb8a)		
add b			
ld b,a			
ld c,$02		
ld hl,$cb26		
call  rlabel_00_0FDE 
ld e,$0e		
call  rlabel_00_113B 
ld a,($cb8b)		
and a			
.DB $20 $07 ; < ['$20', '$07'] > < 0x5140 > < 35140 03 5140 | 2007: jr nz, $07 >
ld e,$12		
call  rlabel_00_113B 
.DB $18 $1b ; < ['$18', '$1b'] > < 0x5147 > < 35147 03 5147 | 181B: jr $1B >
ld a,($cb8c)		
and a			
.DB $20 $15 ; < ['$20', '$15'] > < 0x514d > < 3514d 03 514D | 2015: jr nz, $15 >
ld d,$0e		
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
inc c			
ld a,($cb8b)		
add $70			
ld d,a			
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
pop hl			
ld a,($caf2)		
ld b,a			
ld a,($cb89)		
inc a			
ld ($cb89),a		
cp b			
.DB $38 $81 ; < ['$38', '$81'] > < 0x5171 > < 35171 03 5171 | 3881: jr c, $81 >
call  rlabel_03_5722 
ret			
rlabel_03_5177:
ld a,($caed)		
ld b,a			
ld hl,$d2d5		
call  rlabel_00_0462 
ld a,b			
call  rlabel_00_0462 
xor a			
ld ($cb89),a		
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
push hl			
call  rlabel_03_4F65 
ld a,($cb89)		
add a			
ld b,a			
add a			
add a			
add b			
add $90			
ld d,a			
ld hl,$cb26		
call  rlabel_00_10CD 
pop hl			
ld a,($caf2)		
ld b,a			
ld a,($cb89)		
inc a			
ld ($cb89),a		
cp b			
.DB $38 $d8 ; < ['$38', '$d8'] > < 0x51af > < 351af 03 51AF | 38D8: jr c, $D8 >
ret			
rlabel_03_51B2:
xor a			
ld c,a			
rlabel_03_51B4:
ld a,d			
cp $80			
.DB $38 $03 ; < ['$38', '$03'] > < 0x51b7 > < 351b7 03 51B7 | 3803: jr c, $03 >
xor a			
ld c,a			
ret			
ld a,c			
and a			
.DB $28 $2a ; < ['$28', '$2a'] > < 0x51be > < 351be 03 51BE | 282A: jr z, $2A >
cp $80			
.DB $30 $26 ; < ['$30', '$26'] > < 0x51c2 > < 351c2 03 51C2 | 3026: jr nc, $26 >
ld hl,$0006		
call  rlabel_00_12C6 
and a			
.DB $20 $0a ; < ['$20', '$0a'] > < 0x51cb > < 351cb 03 51CB | 200A: jr nz, $0A >
.incbin "data/03_51CD.data"
ld hl,$002c		
call  rlabel_00_12C6 
and a			
.DB $20 $0a ; < ['$20', '$0a'] > < 0x51de > < 351de 03 51DE | 200A: jr nz, $0A >
.incbin "data/03_51E0.data"
ld h,d			
ld l,e			
ld a,c			
ld bc,$c365		
srl h			
rr l			
.DB $38 $12 ; < ['$38', '$12'] > < 0x51f4 > < 351f4 03 51F4 | 3812: jr c, $12 >
add hl,bc		
ld b,a			
ld a,(hl)		
and $0f			
call  rlabel_03_521E 
and $0f			
ld b,a			
ld a,(hl)		
and $f0			
or b			
ld (hl),a		
ld a,c			
ret			
add hl,bc		
ld b,a			
ld a,(hl)		
and $f0			
swap a			
call  rlabel_03_521E 
swap a			
and $f0			
ld b,a			
ld a,(hl)		
and $0f			
or b			
ld (hl),a		
ld a,c			
ret			
rlabel_03_521E:
add b			
cp $80			
.DB $38 $01 ; < ['$38', '$01'] > < 0x5221 > < 35221 03 5221 | 3801: jr c, $01 >
.incbin "data/03_5223.data"
cp $10			
.DB $38 $02 ; < ['$38', '$02'] > < 0x5226 > < 35226 03 5226 | 3802: jr c, $02 >
.incbin "data/03_5228.data"
ld c,a			
ret			
.incbin "data/03_522C.data"
rlabel_03_524E:
ld b,$09		
ld a,($cb93)		
and a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x5254 > < 35254 03 5254 | 2802: jr z, $02 >
.incbin "data/03_5256.data"
ld a,b			
ld ($caf7),a		
ld a,b			
ld ($caf8),a		
ld a,$07		
ld ($caf2),a		
xor a			
ld ($cb90),a		
ret			
.incbin "data/03_526A.data"
rlabel_03_5296:
ld hl,$7f41		
ld de,$8840		
ld bc,$0020		
ld a,$3d		
call  rlabel_00_0D83 
ld b,$04		
ld c,$00		
ld d,$07		
ld e,$12		
call  rlabel_00_0F33 
ld b,$0d		
ld c,$00		
ld d,$03		
ld e,$12		
call  rlabel_00_0F33 
ld c,$0e		
ld d,$d8		
ld e,$03		
call  rlabel_03_4EC6 
call  rlabel_03_4D5C 
ret			
rlabel_03_52C7:
ld a,($caf1)		
and a			
.DB $20 $08 ; < ['$20', '$08'] > < 0x52cb > < 352cb 03 52CB | 2008: jr nz, $08 >
ld a,$00		
ld c,$08		
call  rlabel_00_05B1 
ret			
call  rlabel_03_41F1 
.DB $18 $11 ; < ['$18', '$11'] > < 0x52d8 > < 352d8 03 52D8 | 1811: jr $11 >
rlabel_03_52DA:
ld a,($caf1)		
and a			
.DB $20 $08 ; < ['$20', '$08'] > < 0x52de > < 352de 03 52DE | 2008: jr nz, $08 >
ld a,$00		
ld c,$08		
call  rlabel_00_05B1 
ret			
call  rlabel_03_4202 
ld a,($caef)		
ld b,a			
ld a,($caed)		
cp b			
.DB $28 $0d ; < ['$28', '$0d'] > < 0x52f3 > < 352f3 03 52F3 | 280D: jr z, $0D >
.incbin "data/03_52F5.data"
ld a,($caf0)		
ld b,a			
ld a,($caee)		
cp b			
ret z			
ld a,($caef)		
add b			
ld b,a			
ld hl,$d2d6		
call  rlabel_00_0462 
ld a,b			
call  rlabel_00_0462 
ld a,(hl)		
cp $80			
.DB $20 $0f ; < ['$20', '$0f'] > < 0x531d > < 3531d 03 531D | 200F: jr nz, $0F >
ld a,($cb92)		
cp $03			
.DB $20 $05 ; < ['$20', '$05'] > < 0x5324 > < 35324 03 5324 | 2005: jr nz, $05 >
call  rlabel_03_4ECC 
.DB $18 $03 ; < ['$18', '$03'] > < 0x5329 > < 35329 03 5329 | 1803: jr $03 >
.incbin "data/03_532B.data"
call  rlabel_03_5722 
call  rlabel_03_5350 
call  rlabel_03_5710 
ret			
rlabel_03_5338:
call  rlabel_00_3314 
ld a,($caed)		
ld d,a			
ld a,($caee)		
add d			
ld d,a			
call  rlabel_00_0462 
ld a,d			
call  rlabel_00_0462 
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
ret			
rlabel_03_5350:
call  rlabel_03_5338 
call  rlabel_03_536E 
ret			
.incbin "data/03_5357.data"
rlabel_03_536E:
ld a,d			
cp $80			
.DB $38 $0a ; < ['$38', '$0a'] > < 0x5371 > < 35371 03 5371 | 380A: jr c, $0A >
push de			
call  rlabel_03_4F0C 
call  rlabel_03_56C3 
pop de			
.DB $18 $08 ; < ['$18', '$08'] > < 0x537b > < 3537b 03 537B | 1808: jr $08 >
push de			
call  rlabel_03_4F0C 
call  rlabel_03_5698 
pop de			
ld a,($cafc)		
and a			
.DB $20 $5f ; < ['$20', '$5f'] > < 0x5389 > < 35389 03 5389 | 205F: jr nz, $5F >
ld a,d			
cp $80			
.DB $20 $07 ; < ['$20', '$07'] > < 0x538e > < 3538e 03 538E | 2007: jr nz, $07 >
.incbin "data/03_5390.data"
ld hl,$cb26		
ldi a,(hl)		
and a			
.DB $20 $fc ; < ['$20', '$fc'] > < 0x539c > < 3539c 03 539C | 20FC: jr nz, $FC >
ld a,($cb95)		
add $09			
ld ($cae8),a		
ld a,($cb94)		
ld b,a			
ld c,$05		
call  rlabel_00_0FDE 
push hl			
ld e,$13		
call  rlabel_00_113B 
pop hl			
ld a,($cb95)		
add $17			
ld ($cae8),a		
call  rlabel_03_5641 
ld c,$05		
call  rlabel_00_0FDE 
ld e,$13		
call  rlabel_00_113B 
ret			
.incbin "data/03_53CC.data"
ld a,($cafc)		
cp $80			
.DB $20 $22 ; < ['$20', '$22'] > < 0x53ef > < 353ef 03 53EF | 2022: jr nz, $22 >
.incbin "data/03_53F1.data"
ld a,($cadf)		
cp $03			
.DB $20 $11 ; < ['$20', '$11'] > < 0x5418 > < 35418 03 5418 | 2011: jr nz, $11 >
ld a,d			
cp $ff			
.DB $28 $2e ; < ['$28', '$2e'] > < 0x541d > < 3541d 03 541D | 282E: jr z, $2E >
ld a,($cafd)		
ld hl,$55a6		
call  rlabel_00_0462 
ld a,(hl)		
.DB $18 $08 ; < ['$18', '$08'] > < 0x5429 > < 35429 03 5429 | 1808: jr $08 >
.incbin "data/03_542B.data"
cp $10			
.DB $38 $2c ; < ['$38', '$2c'] > < 0x5435 > < 35435 03 5435 | 382C: jr c, $2C >
cp $20			
.DB $38 $3e ; < ['$38', '$3e'] > < 0x5439 > < 35439 03 5439 | 383E: jr c, $3E >
cp $70			
.DB $38 $42 ; < ['$38', '$42'] > < 0x543d > < 3543d 03 543D | 3842: jr c, $42 >
cp $a0			
.DB $38 $46 ; < ['$38', '$46'] > < 0x5441 > < 35441 03 5441 | 3846: jr c, $46 >
.incbin "data/03_5443.data"
ld a,($cb94)		
ld b,a			
ld c,$05		
ld e,$13		
call  rlabel_00_1128 
call  rlabel_03_5641 
ld c,$05		
ld e,$13		
call  rlabel_00_1128 
ret			
.incbin "data/03_5463.data"
ld hl,$558f		
call  rlabel_03_550C 
.DB $18 $06 ; < ['$18', '$06'] > < 0x5487 > < 35487 03 5487 | 1806: jr $06 >
ld b,$b8		
ld hl,$6529		
rst $28			
ld a,($cb94)		
ld b,a			
call  rlabel_03_5641 
ld c,$0c		
ld a,($cb95)		
add $20			
ld d,a			
ld e,$04		
ld hl,$559f		
call  rlabel_00_0F47 
call  rlabel_03_55AF 
ret			
.incbin "data/03_54AA.data"
rlabel_03_550C:
ld a,($cb94)		
ld b,a			
ld c,$05		
push bc			
ld a,($cb95)		
add $09			
ld d,a			
ld e,$04		
call  rlabel_00_0F47 
pop bc			
push bc			
call  rlabel_03_5641 
call  rlabel_00_0F47 
pop bc			
ld c,$0b		
call  rlabel_00_0F47 
ld hl,$cb6c		
call  rlabel_03_5563 
ld a,($cb94)		
ld b,a			
ld c,$07		
push bc			
call  rlabel_03_556C 
ld hl,$cb6e		
call  rlabel_03_5563 
pop bc			
push bc			
call  rlabel_03_5641 
call  rlabel_03_556C 
ld hl,$cb70		
call  rlabel_03_5563 
pop bc			
push bc			
ld c,$0e		
call  rlabel_03_556C 
pop bc			
ld c,$12		
ld d,$00		
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
ret			
rlabel_03_5563:
ld c,$00		
ldi a,(hl)		
ld d,(hl)		
ld e,a			
call  rlabel_00_11B8 
ret			
rlabel_03_556C:
ld d,$01		
ld e,$07		
ld a,$04		
call  rlabel_00_1225 
ret			
.incbin "data/03_5576.data"
rlabel_03_55AF:
ld a,($cb94)		
ld b,a			
call  rlabel_03_5641 
ld c,$0f		
ld a,($cb95)		
add $22			
ld d,a			
ld a,($cb68)		
cp $10			
.DB $38 $14 ; < ['$38', '$14'] > < 0x55c3 > < 355c3 03 55C3 | 3814: jr c, $14 >
cp $20			
.DB $30 $10 ; < ['$30', '$10'] > < 0x55c7 > < 355c7 03 55C7 | 3010: jr nc, $10 >
ld a,($cb74)		
ld e,a			
ld hl,$7699		
call  rlabel_03_5603 
ld e,$13		
call  rlabel_00_1128 
ret			
push bc			
push de			
ld b,$01		
ld hl,$4c3d		
rst $28			
ld a,d			
pop de			
pop bc			
ld e,a			
ld hl,$7589		
call  rlabel_03_5603 
push bc			
push de			
ld b,$01		
ld hl,$4c3d		
rst $28			
ld a,e			
pop de			
pop bc			
ld e,a			
ld hl,$7619		
call  rlabel_03_5603 
ld e,$13		
call  rlabel_00_1128 
ret			
rlabel_03_5603:
xor a			
ld ($cb89),a		
srl e			
.DB $30 $28 ; < ['$30', '$28'] > < 0x5609 > < 35609 03 5609 | 3028: jr nc, $28 >
.incbin "data/03_560B.data"
ld a,$10		
call  rlabel_00_0462 
ld a,($cb89)		
inc a			
cp $08			
.DB $38 $c4 ; < ['$38', '$c4'] > < 0x563e > < 3563e 03 563E | 38C4: jr c, $C4 >
ret			
rlabel_03_5641:
inc b			
ld a,($cadf)		
cp $03			
ret z			
inc b			
ret			
ld b,e			
call  rlabel_03_5641 
ld e,b			
ret			
.incbin "data/03_5650.data"
call  rlabel_03_4F0C 
call  rlabel_03_5698 
call  rlabel_03_5710 
ret			
rlabel_03_5698:
ld hl,$cb64		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,($cb95)		
call  rlabel_00_1176 
ld bc,$0090		
ld a,($cb63)		
call  rlabel_00_0D83 
ld de,$c988		
ld a,($cb96)		
add a			
add a			
add a			
call  rlabel_00_045D 
ld a,($cb67)		
call  rlabel_00_0E10 
ret			
rlabel_03_56C0:
call  rlabel_03_56E8 
rlabel_03_56C3:
ld a,($cb95)		
call  rlabel_00_1176 
ld c,$09		
call  rlabel_00_1280 
ld a,($cb96)		
add a			
add a			
add a			
ld de,$c988		
call  rlabel_00_045D 
push de			
ld a,$0f		
call  rlabel_00_0E10 
pop hl			
ld a,($cb96)		
call  rlabel_00_0E49 
ret			
rlabel_03_56E8:
ld a,($cb94)		
ld b,a			
ld c,$04		
ld e,$13		
call  rlabel_00_113B 
call  rlabel_03_5641 
ld c,$04		
ld e,$13		
call  rlabel_00_113B 
ret			
.incbin "data/03_56FE.data"
rlabel_03_5710:
ld a,($cb96)		
ld b,a			
ld hl,$c988		
add a			
add a			
add a			
call  rlabel_00_0462 
ld a,b			
call  rlabel_00_0E49 
ret			
rlabel_03_5722:
ld a,($cb8a)		
ld b,a			
ld c,$12		
call  rlabel_03_4276 
ret			
rlabel_03_572C:
ld hl,$c010		
ld a,($cbcb)		
ld c,a			
cp $32			
.DB $38 $0c ; < ['$38', '$0c'] > < 0x5735 > < 35735 03 5735 | 380C: jr c, $0C >
cp $6e			
.DB $30 $08 ; < ['$30', '$08'] > < 0x5739 > < 35739 03 5739 | 3008: jr nc, $08 >
ld a,($cb97)		
and $01			
.DB $20 $03 ; < ['$20', '$03'] > < 0x5740 > < 35740 03 5740 | 2003: jr nz, $03 >
inc c			
dec c			
dec c			
ld a,c			
ld ($cbcb),a		
ld b,$09		
inc hl			
ld a,c			
ldi (hl),a		
inc hl			
inc hl			
add $08			
ld c,a			
dec b			
.DB $20 $f5 ; < ['$20', '$f5'] > < 0x5754 > < 35754 03 5754 | 20F5: jr nz, $F5 >
ret			
rlabel_03_5757:
ld hl,$c010		
ld b,$09		
ld a,$c0		
ldi (hl),a		
inc hl			
inc hl			
inc hl			
dec b			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x5763 > < 35763 03 5763 | 20F7: jr nz, $F7 >
ret			
rlabel_03_5766:
call  rlabel_03_7D56 
.DB $18 $03 ; < ['$18', '$03'] > < 0x5769 > < 35769 03 5769 | 1803: jr $03 >
rlabel_03_576B:
call  rlabel_03_7D51 
ld b,$88		
ld c,$a8		
ld d,$1c		
ld e,$07		
xor a			
push af			
add $04			
call  rlabel_00_0EC7 
ld a,c			
add $08			
ld c,a			
inc d			
inc d			
pop af			
inc a			
cp $0a			
.DB $38 $ee ; < ['$38', '$ee'] > < 0x5787 > < 35787 03 5787 | 38EE: jr c, $EE >
ld a,$a0		
ld ($cbcb),a		
ret			
.incbin "data/03_578F.data"
call  rlabel_03_5E43 
call  rlabel_03_4E7D 
call  rlabel_03_572C 
ret			
ld a,$03		
ld ($cadf),a		
call  rlabel_00_13B1 
di			
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ei			
call  rlabel_00_05AA 
call  rlabel_00_136B 
call  rlabel_03_40CE 
ld hl,$7401		
ld de,$9700		
ld bc,$0100		
ld a,$3d		
call  rlabel_00_0D83 
ld hl,$4271		
ld de,$90e0		
ld bc,$0010		
ld a,$3d		
call  rlabel_00_0D83 
ld hl,$5371		
ld de,$95f0		
ld bc,$0010		
ld a,$3d		
call  rlabel_00_0D83 
ld hl,$7589		
ld de,$9680		
ld bc,$0080		
ld a,$33		
call  rlabel_00_0D83 
ld hl,$7351		
ld de,$8000		
ld bc,$0160		
ld a,$33		
call  rlabel_00_0D83 
ld hl,$7719		
ld de,$8160		
ld bc,$0060		
ld a,$33		
call  rlabel_00_0D83 
ld hl,$74b1		
ld de,$83c0		
ld bc,$0060		
ld a,$33		
call  rlabel_00_0DDA 
ld hl,$7529		
ld de,$85a0		
ld bc,$0060		
ld a,$33		
call  rlabel_00_0D83 
ld hl,$7511		
ld de,$c9c8		
ld bc,$0018		
ld a,$33		
call  rlabel_00_0D83 
ld a,$a8		
ld ($ff00+$a0),a	
ld hl,$6df1		
ld de,$9280		
ld bc,$0070		
ld a,$33		
call  rlabel_00_0D83 
ld b,$00		
ld c,$00		
ld d,$09		
ld e,$12		
call  rlabel_00_0F33 
ld b,$0b		
ld c,$00		
ld d,$05		
ld e,$12		
call  rlabel_00_0F33 
xor a			
ld ($cafd),a		
ld a,$08		
ld ($c971),a		
xor a			
ld ($c972),a		
ld ($c973),a		
ld ($c974),a		
ld ($c970),a		
xor a			
ld ($c96f),a		
call  rlabel_03_59FA 
ld c,$04		
call  rlabel_00_132B 
call  rlabel_03_7B48 
call  rlabel_03_576B 
ld a,$01		
ld ($cae0),a		
ld b,$03		
ld de,$61da		
call  rlabel_00_14E5 
call  rlabel_00_0EEE 
call  rlabel_03_58DC 
ld a,($ff00+$a5)	
and $01			
.DB $28 $08 ; < ['$28', '$08'] > < 0x589b > < 3589b 03 589B | 2808: jr z, $08 >
ld a,$1b		
call  rlabel_00_3071 
jp $5bde		
ld a,($ff00+$a5)	
and $02			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x58a9 > < 358a9 03 58A9 | 280B: jr z, $0B >
ld a,$1c		
call  rlabel_00_3071 
call  rlabel_03_58D0 
jp $4365		
ld a,($ff00+$a5)	
and $08			
.DB $28 $06 ; < ['$28', '$06'] > < 0x58ba > < 358ba 03 58BA | 2806: jr z, $06 >
.incbin "data/03_58BC.data"
ld a,($ff00+$a5)	
and $04			
.DB $28 $03 ; < ['$28', '$03'] > < 0x58c6 > < 358c6 03 58C6 | 2803: jr z, $03 >
.incbin "data/03_58C8.data"
call  rlabel_00_027C 
.DB $18 $c1 ; < ['$18', '$c1'] > < 0x58ce > < 358ce 03 58CE | 18C1: jr $C1 >
rlabel_03_58D0:
ld de,$0000		
ld c,$04		
call  rlabel_00_1311 
call  rlabel_00_13E5 
ret			
rlabel_03_58DC:
ld a,($c970)		
and a			
ret nz			
ld a,($cbd6)		
and $40			
.DB $28 $23 ; < ['$28', '$23'] > < 0x58e6 > < 358e6 03 58E6 | 2823: jr z, $23 >
ld a,$10		
call  rlabel_00_3071 
ld a,($cafd)		
and a			
.DB $20 $06 ; < ['$20', '$06'] > < 0x58f1 > < 358f1 03 58F1 | 2006: jr nz, $06 >
.incbin "data/03_58F3.data"
cp $01			
.DB $28 $09 ; < ['$28', '$09'] > < 0x58fb > < 358fb 03 58FB | 2809: jr z, $09 >
.incbin "data/03_58FD.data"
dec a			
ld b,$fc		
.DB $18 $26 ; < ['$18', '$26'] > < 0x5909 > < 35909 03 5909 | 1826: jr $26 >
ld a,($cbd6)		
and $80			
ret z			
ld a,$10		
call  rlabel_00_3071 
ld a,($cafd)		
cp $06			
.DB $20 $05 ; < ['$20', '$05'] > < 0x591b > < 3591b 03 591B | 2005: jr nz, $05 >
.incbin "data/03_591D.data"
and a			
.DB $28 $09 ; < ['$28', '$09'] > < 0x5923 > < 35923 03 5923 | 2809: jr z, $09 >
cp $04			
.DB $28 $05 ; < ['$28', '$05'] > < 0x5927 > < 35927 03 5927 | 2805: jr z, $05 >
inc a			
ld b,$02		
.DB $18 $03 ; < ['$18', '$03'] > < 0x592c > < 3592c 03 592C | 1803: jr $03 >
inc a			
ld b,$04		
ld ($cafd),a		
ld a,b			
ld ($c973),a		
call  rlabel_03_5A24 
call  rlabel_03_5710 
rlabel_03_593E:
ld hl,$cb26		
call  rlabel_00_1164 
ld a,($c972)		
ld b,a			
ld a,c			
add a			
add a			
add a			
sub b			
.DB $38 $06 ; < ['$38', '$06'] > < 0x594d > < 3594d 03 594D | 3806: jr c, $06 >
srl a			
srl a			
.DB $18 $06 ; < ['$18', '$06'] > < 0x5953 > < 35953 03 5953 | 1806: jr $06 >
scf			
rr a			
scf			
rr a			
ld ($c974),a		
ld a,$04		
ld ($c970),a		
ret			
.incbin "data/03_5964.data"
rlabel_03_5978:
call  rlabel_03_598A 
ld a,($c971)		
ld b,a			
ld a,$30		
ld c,a			
ld a,($c972)		
ld e,a			
call  rlabel_03_59AD 
ret			
rlabel_03_598A:
ld a,($c970)		
and a			
ret z			
ld a,($c973)		
ld d,a			
ld a,($c971)		
add d			
ld ($c971),a		
ld a,($c974)		
ld d,a			
ld a,($c972)		
add d			
ld ($c972),a		
ld a,($c970)		
dec a			
ld ($c970),a		
ret			
rlabel_03_59AD:
ld a,($cb97)		
srl a			
srl a			
srl a			
and $03			
.DB $28 $02 ; < ['$28', '$02'] > < 0x59b8 > < 359b8 03 59B8 | 2802: jr z, $02 >
dec a			
dec a			
ld d,a			
ld a,$18		
add d			
add d			
ld d,a			
ld a,b			
sub $0c			
ld b,a			
ld a,c			
sub $08			
ld c,a			
ld a,e			
add $08			
ld e,a			
push bc			
push de			
ld e,$06		
ld a,$00		
call  rlabel_00_0EC7 
ld a,b			
add $10			
ld b,a			
ld e,$46		
ld a,$01		
call  rlabel_00_0EC7 
pop de			
pop bc			
ld a,c			
add e			
ld c,a			
ld e,$26		
ld a,$02		
call  rlabel_00_0EC7 
ld a,b			
add $10			
ld b,a			
ld e,$66		
ld a,$03		
call  rlabel_00_0EC7 
ret			
rlabel_03_59FA:
ld c,$0d		
ld d,$3a		
ld e,$03		
call  rlabel_03_4EC6 
rlabel_03_5A03:
ld a,$fd		
ld ($c983),a		
ld a,$fa		
ld ($c982),a		
call  rlabel_03_76D5 
ld c,$0d		
ld d,$3a		
ld e,$03		
call  rlabel_03_4EE2 
call  rlabel_03_5A24 
xor a			
ld ($c973),a		
call  rlabel_03_593E 
ret			
rlabel_03_5A24:
call  rlabel_03_5ADD 
ld a,d			
cp $80			
.DB $38 $08 ; < ['$38', '$08'] > < 0x5a2a > < 35a2a 03 5A2A | 3808: jr c, $08 >
call  rlabel_03_4F0C 
call  rlabel_03_56C0 
.DB $18 $06 ; < ['$18', '$06'] > < 0x5a32 > < 35a32 03 5A32 | 1806: jr $06 >
call  rlabel_03_4F0C 
call  rlabel_03_5698 
ld a,($cb94)		
sub $02			
ld b,a			
ld c,$01		
ld d,$00		
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
inc c			
ld a,($cafd)		
add $28			
ld d,a			
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
inc c			
ld a,$30		
ld ($cae8),a		
ld hl,$cb26		
call  rlabel_00_0FDE 
push hl			
ld d,$00		
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
ld d,$11		
ld e,$12		
ld a,c			
cp e			
.DB $30 $09 ; < ['$30', '$09'] > < 0x5a72 > < 35a72 03 5A72 | 3009: jr nc, $09 >
inc c			
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
.DB $18 $f3 ; < ['$18', '$f3'] > < 0x5a7b > < 35a7b 03 5A7B | 18F3: jr $F3 >
pop hl			
ld a,($cb95)		
add $09			
ld ($cae8),a		
ld a,($cb94)		
dec a			
ld b,a			
ld c,$05		
call  rlabel_00_0FDE 
push hl			
ld e,$13		
call  rlabel_00_113B 
pop hl			
ld a,($cb95)		
add $17			
ld ($cae8),a		
inc b			
ld c,$05		
call  rlabel_00_0FDE 
ld e,$13		
call  rlabel_00_113B 
ld a,($cb94)		
inc a			
inc a			
call  rlabel_03_5AED 
ld hl,$cb6c		
ld de,$cb76		
ld bc,$0006		
call  rlabel_00_04BC 
ret			
rlabel_03_5ABF:
ld a,($cafd)		
ld hl,$5ad4		
call  rlabel_00_0462 
ld a,(hl)		
add a			
ld de,$002c		
call  rlabel_00_045D 
call  rlabel_00_12EA 
ret			
.incbin "data/03_5AD4.data"
rlabel_03_5ADD:
call  rlabel_03_5ABF 
ldi a,(hl)		
ld d,(hl)		
ld e,a			
ret			
.incbin "data/03_5AE4.data"
rlabel_03_5AED:
ld ($cb89),a		
ld a,($cafd)		
and a			
.DB $28 $12 ; < ['$28', '$12'] > < 0x5af4 > < 35af4 03 5AF4 | 2812: jr z, $12 >
cp $05			
.DB $38 $16 ; < ['$38', '$16'] > < 0x5af8 > < 35af8 03 5AF8 | 3816: jr c, $16 >
ld a,($cb89)		
ld c,a			
ld d,$18		
ld b,$b8		
ld hl,$6533		
rst $28			
.DB $18 $0e ; < ['$18', '$0e'] > < 0x5b06 > < 35b06 03 5B06 | 180E: jr $0E >
ld hl,$5bb1		
call  rlabel_03_5B48 
.DB $18 $06 ; < ['$18', '$06'] > < 0x5b0e > < 35b0e 03 5B0E | 1806: jr $06 >
ld hl,$5bc4		
call  rlabel_03_5B48 
ld hl,$5bd7		
ld a,($cb89)		
ld b,a			
inc b			
ld c,$0c		
ld d,$66		
ld e,$04		
call  rlabel_00_0F47 
ld a,($cb94)		
ld b,a			
ld a,($cb95)		
ld c,a			
push bc			
ld a,b			
add $02			
ld ($cb94),a		
ld a,$48		
ld ($cb95),a		
call  rlabel_03_55AF 
pop bc			
ld a,b			
ld ($cb94),a		
ld a,c			
ld ($cb95),a		
ret			
rlabel_03_5B48:
ld a,($cb89)		
ld b,a			
ld c,$05		
ld d,$60		
ld e,$04		
call  rlabel_00_0F47 
inc b			
ld c,$05		
call  rlabel_00_0F47 
dec b			
ld c,$0b		
call  rlabel_00_0F47 
ld hl,$cb6c		
call  rlabel_03_5B9E 
ld a,($cb89)		
ld b,a			
ld c,$08		
call  rlabel_03_5BA7 
ld hl,$cb6e		
call  rlabel_03_5B9E 
ld a,($cb89)		
ld b,a			
inc b			
ld c,$08		
call  rlabel_03_5BA7 
ld hl,$cb70		
call  rlabel_03_5B9E 
ld a,($cb89)		
ld b,a			
ld c,$0f		
call  rlabel_03_5BA7 
ld a,($cb89)		
ld b,a			
ld c,$12		
call  rlabel_00_0CF4 
ld d,$00		
call  rlabel_00_0D25 
ret			
rlabel_03_5B9E:
ld c,$00		
ldi a,(hl)		
ld d,(hl)		
ld e,a			
call  rlabel_00_11B8 
ret			
rlabel_03_5BA7:
ld d,$01		
ld e,$07		
ld a,$03		
call  rlabel_00_1225 
ret			
.incbin "data/03_5BB1.data"
call  rlabel_03_6138 
ld b,$01		
ld c,$01		
ld d,$00		
ld e,$07		
ld h,$08		
ld l,$03		
call  rlabel_00_1270 
di			
call  rlabel_03_5757 
ei			
ld a,$10		
ld c,$18		
call  rlabel_00_05B1 
ld a,$0b		
ld de,$c9e8		
call  rlabel_00_0E10 
ld a,$04		
ld hl,$c9e8		
call  rlabel_00_0E88 
xor a			
ld ($caed),a		
ld ($caee),a		
ld b,$12		
ld c,$00		
ld d,$09		
ld e,$12		
call  rlabel_00_0F23 
ld b,$17		
ld e,$04		
ld c,$0e		
call  rlabel_00_0CF4 
call  rlabel_00_0D33 
inc c			
call  rlabel_00_0CF4 
call  rlabel_00_0D33 
inc b			
ld a,b			
cp $1c			
.DB $38 $eb ; < ['$38', '$eb'] > < 0x5c35 > < 35c35 03 5C35 | 38EB: jr c, $EB >
ld b,$16		
ld c,$01		
ld d,$5f		
ld e,$07		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
ld a,c			
cp $13			
.DB $38 $f4 ; < ['$38', '$f4'] > < 0x5c49 > < 35c49 03 5C49 | 38F4: jr c, $F4 >
ld c,$13		
ld d,$d8		
ld e,$02		
call  rlabel_03_4EC6 
xor a			
cpl			
ld ($cafc),a		
ld hl,$d2d5		
ldi a,(hl)		
ld d,(hl)		
ld e,a			
call  rlabel_03_5350 
call  rlabel_03_5710 
ld a,$05		
ld ($caf2),a		
ld a,$17		
ld ($cb8a),a		
xor a			
ld ($cb90),a		
call  rlabel_03_5722 
ld a,$00		
ld ($cae0),a		
ld a,$00		
ld c,$10		
call  rlabel_00_05B1 
xor a			
ld b,a			
push bc			
ld a,b			
and $07			
.DB $20 $54 ; < ['$20', '$54'] > < 0x5c88 > < 35c88 03 5C88 | 2054: jr nz, $54 >
ld a,b			
srl a			
srl a			
srl a			
cp $04			
.DB $38 $49 ; < ['$38', '$49'] > < 0x5c93 > < 35c93 03 5C93 | 3849: jr c, $49 >
cp $09			
.DB $30 $45 ; < ['$30', '$45'] > < 0x5c97 > < 35c97 03 5C97 | 3045: jr nc, $45 >
sub $04			
ld b,a			
add a			
ld d,a			
add a			
add a			
add d			
add $90			
ld ($cae8),a		
ld a,b			
add a			
ld hl,$d2d5		
call  rlabel_00_0462 
ldi a,(hl)		
ld d,(hl)		
ld e,a			
push de			
call  rlabel_03_4F65 
ld hl,$cb26		
ld b,$13		
ld c,$02		
call  rlabel_00_0FDE 
pop de			
call  rlabel_03_51B2 
and a			
.DB $28 $18 ; < ['$28', '$18'] > < 0x5cc4 > < 35cc4 03 5CC4 | 2818: jr z, $18 >
ld e,a			
ld b,$13		
ld c,$0e		
ld d,$0e		
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
inc c			
ld a,e			
add $70			
ld d,a			
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
ld a,($ff00+$a0)	
add $04			
ld ($ff00+$a0),a	
call  rlabel_00_027C 
pop bc			
ld a,b			
add $04			
ld b,a			
cp $58			
.DB $38 $94 ; < ['$38', '$94'] > < 0x5cee > < 35cee 03 5CEE | 3894: jr c, $94 >
ld a,$05		
ld ($caf2),a		
ld a,$0c		
ld ($cb8a),a		
ld b,$60		
ld c,$00		
ld d,$00		
ld e,$01		
call  rlabel_03_4143 
ld c,$08		
ld d,$d8		
ld e,$02		
call  rlabel_03_4EE2 
call  rlabel_03_5350 
call  rlabel_03_5710 
call  rlabel_03_50BE 
call  rlabel_03_5766 
ld a,$02		
ld ($cae0),a		
call  rlabel_00_0EEE 
call  rlabel_03_52C7 
ld a,($caf1)		
and a			
.DB $28 $0e ; < ['$28', '$0e'] > < 0x5d29 > < 35d29 03 5D29 | 280E: jr z, $0E >
ld a,($ff00+$a5)	
and $01			
.DB $28 $08 ; < ['$28', '$08'] > < 0x5d2f > < 35d2f 03 5D2F | 2808: jr z, $08 >
ld a,$1b		
call  rlabel_00_3071 
jp $5f7d		
ld a,($ff00+$a5)	
and $02			
.DB $28 $07 ; < ['$28', '$07'] > < 0x5d3d > < 35d3d 03 5D3D | 2807: jr z, $07 >
ld a,$1c		
call  rlabel_00_3071 
.DB $18 $1a ; < ['$18', '$1a'] > < 0x5d44 > < 35d44 03 5D44 | 181A: jr $1A >
ld a,($ff00+$a5)	
and $08			
.DB $28 $06 ; < ['$28', '$06'] > < 0x5d4a > < 35d4a 03 5D4A | 2806: jr z, $06 >
.incbin "data/03_5D4C.data"
ld a,($ff00+$a5)	
and $04			
.DB $28 $03 ; < ['$28', '$03'] > < 0x5d56 > < 35d56 03 5D56 | 2803: jr z, $03 >
.incbin "data/03_5D58.data"
call  rlabel_00_027C 
.DB $18 $bf ; < ['$18', '$bf'] > < 0x5d5e > < 35d5e 03 5D5E | 18BF: jr $BF >
ld a,$00		
ld ($cae0),a		
ld a,$22		
ld c,$0c		
call  rlabel_00_05B1 
ld a,$26		
ld c,$04		
call  rlabel_00_05B1 
ld a,$1c		
ld c,$08		
call  rlabel_00_05B1 
call  rlabel_03_5F75 
di			
call  rlabel_03_5757 
ei			
ld b,$f5		
ld c,$00		
ld d,$09		
ld e,$12		
call  rlabel_00_0F23 
ld a,$fd		
ld ($c983),a		
ld a,$ef		
ld ($c982),a		
call  rlabel_03_77B1 
ld b,$fd		
ld c,$c2		
ld de,$0036		
call  rlabel_03_5E26 
ld b,$fe		
ld c,$cc		
ld de,$0038		
call  rlabel_03_5E26 
ld b,$58		
push bc			
ld a,b			
and $07			
.DB $20 $1b ; < ['$20', '$1b'] > < 0x5db4 > < 35db4 03 5DB4 | 201B: jr nz, $1B >
ld a,b			
srl a			
srl a			
srl a			
cp $03			
.DB $28 $29 ; < ['$28', '$29'] > < 0x5dbf > < 35dbf 03 5DBF | 2829: jr z, $29 >
cp $04			
.DB $28 $31 ; < ['$28', '$31'] > < 0x5dc3 > < 35dc3 03 5DC3 | 2831: jr z, $31 >
cp $05			
.DB $28 $39 ; < ['$28', '$39'] > < 0x5dc7 > < 35dc7 03 5DC7 | 2839: jr z, $39 >
cp $06			
.DB $28 $41 ; < ['$28', '$41'] > < 0x5dcb > < 35dcb 03 5DCB | 2841: jr z, $41 >
cp $07			
.DB $28 $49 ; < ['$28', '$49'] > < 0x5dcf > < 35dcf 03 5DCF | 2849: jr z, $49 >
ld a,($ff00+$a0)	
sub $04			
ld ($ff00+$a0),a	
call  rlabel_00_027C 
pop bc			
ld a,b			
sub $04			
ld b,a			
.DB $20 $cf ; < ['$20', '$cf'] > < 0x5ddf > < 35ddf 03 5DDF | 20CF: jr nz, $CF >
call  rlabel_03_5A03 
call  rlabel_03_7B48 
jp $587e		
ld b,$fe		
ld c,$90		
ld de,$002c		
call  rlabel_03_5E26 
.DB $18 $db ; < ['$18', '$db'] > < 0x5df4 > < 35df4 03 5DF4 | 18DB: jr $DB >
ld b,$ff		
ld c,$ae		
ld de,$0032		
call  rlabel_03_5E26 
.DB $18 $cf ; < ['$18', '$cf'] > < 0x5e00 > < 35e00 03 5E00 | 18CF: jr $CF >
ld b,$ff		
ld c,$9a		
ld de,$002e		
call  rlabel_03_5E26 
.DB $18 $c3 ; < ['$18', '$c3'] > < 0x5e0c > < 35e0c 03 5E0C | 18C3: jr $C3 >
ld b,$ff		
ld c,$a4		
ld de,$0030		
call  rlabel_03_5E26 
.DB $18 $b7 ; < ['$18', '$b7'] > < 0x5e18 > < 35e18 03 5E18 | 18B7: jr $B7 >
ld b,$ff		
ld c,$b8		
ld de,$0034		
call  rlabel_03_5E26 
.DB $18 $ab ; < ['$18', '$ab'] > < 0x5e24 > < 35e24 03 5E24 | 18AB: jr $AB >
rlabel_03_5E26:
ld a,c			
ld ($cae8),a		
push bc			
call  rlabel_00_12EA 
ldi a,(hl)		
ld d,(hl)		
ld e,a			
call  rlabel_03_4F65 
pop bc			
ld c,$06		
ld hl,$cb26		
call  rlabel_00_0FDE 
ld e,$13		
call  rlabel_00_113B 
ret			
rlabel_03_5E43:
ld a,($cb97)		
inc a			
ld ($cb97),a		
ld a,($cb97)		
and $07			
ret nz			
ld a,($cb98)		
inc a			
cp $06			
.DB $38 $01 ; < ['$38', '$01'] > < 0x5e56 > < 35e56 03 5E56 | 3801: jr c, $01 >
xor a			
ld ($cb98),a		
ret			
rlabel_03_5E5D:
ld a,($cb97)		
srl a			
srl a			
srl a			
and $03			
.DB $28 $02 ; < ['$28', '$02'] > < 0x5e68 > < 35e68 03 5E68 | 2802: jr z, $02 >
dec a			
dec a			
ld b,a			
ld a,($cc1d)		
add b			
sub $06			
ld b,a			
ld c,$00		
ld a,($cb98)		
cp $05			
.DB $20 $01 ; < ['$20', '$01'] > < 0x5e7b > < 35e7b 03 5E7B | 2001: jr nz, $01 >
xor a			
add a			
add a			
add $00			
ld d,a			
ld e,$06		
ld a,$22		
call  rlabel_00_0EC7 
ld a,c			
add $08			
ld c,a			
inc d			
inc d			
ld a,$23		
call  rlabel_00_0EC7 
ld a,c			
sub $06			
ld c,a			
ld d,$14		
ld e,$07		
ld a,$24		
call  rlabel_00_0EC7 
ret			
rlabel_03_5EA3:
ld a,($cb98)		
cp $03			
.DB $38 $02 ; < ['$38', '$02'] > < 0x5ea8 > < 35ea8 03 5EA8 | 3802: jr c, $02 >
sub $03			
add a			
add $5a			
ld d,a			
ld b,$30		
ld c,$40		
ld e,$07		
ld a,$1c		
call  rlabel_00_0EC7 
ld b,$30		
ld c,$58		
ld e,$67		
ld a,$1d		
call  rlabel_00_0EC7 
ld a,($cae0)		
cp $04			
ret nc			
ld a,($caf1)		
and a			
ret z			
ld a,($cafc)		
and a			
jp z,$5f61		
ld a,($cafd)		
cp $05			
jp nc,$5f61		
ld a,($cb6c)		
ld l,a			
ld a,($cb6d)		
ld h,a			
ld a,($cb76)		
ld e,a			
ld a,($cb77)		
ld d,a			
ld b,$40		
ld c,$58		
call  rlabel_03_5F35 
ld a,$18		
call  rlabel_00_0EC7 
ld a,($cb6e)		
ld l,a			
ld a,($cb6f)		
ld h,a			
ld a,($cb78)		
ld e,a			
ld a,($cb79)		
ld d,a			
ld b,$48		
ld c,$58		
call  rlabel_03_5F35 
ld a,$19		
call  rlabel_00_0EC7 
ld a,($cb70)		
ld l,a			
ld a,($cb71)		
ld h,a			
ld a,($cb7a)		
ld e,a			
ld a,($cb7b)		
ld d,a			
ld b,$40		
ld c,$90		
call  rlabel_03_5F35 
ld a,$1a		
call  rlabel_00_0EC7 
ret			
rlabel_03_5F35:
ld a,d			
cp h			
.DB $38 $12 ; < ['$38', '$12'] > < 0x5f37 > < 35f37 03 5F37 | 3812: jr c, $12 >
.DB $20 $1a ; < ['$20', '$1a'] > < 0x5f39 > < 35f39 03 5F39 | 201A: jr nz, $1A >
ld a,e			
cp l			
.DB $38 $0c ; < ['$38', '$0c'] > < 0x5f3d > < 35f3d 03 5F3D | 380C: jr c, $0C >
.DB $20 $14 ; < ['$20', '$14'] > < 0x5f3f > < 35f3f 03 5F3F | 2014: jr nz, $14 >
ld d,$40		
ld e,$02		
call  rlabel_03_5F65 
add c			
ld c,a			
ret			
ld d,$3c		
ld e,$00		
call  rlabel_03_5F65 
add b			
ld b,a			
ret			
ld d,$3e		
ld e,$01		
call  rlabel_03_5F65 
cpl			
inc a			
add b			
ld b,a			
ret			
call  rlabel_03_5F75 
ret			
rlabel_03_5F65:
ld a,($cb97)		
srl a			
srl a			
srl a			
and $03			
.DB $28 $02 ; < ['$28', '$02'] > < 0x5f70 > < 35f70 03 5F70 | 2802: jr z, $02 >
dec a			
dec a			
ret			
rlabel_03_5F75:
ld a,$18		
ld c,$0c		
call  rlabel_00_05B1 
ret			
ld a,$03		
ld ($cae0),a		
ld a,$22		
ld c,$0c		
call  rlabel_00_05B1 
di			
call  rlabel_03_5757 
ei			
xor a			
ld ($cc97),a		
xor a			
ld ($cc95),a		
ld hl,$0b02		
ld de,$1011		
ld c,$01		
call  rlabel_00_1E43 
ld a,$03		
ld ($cae0),a		
call  rlabel_00_1EA8 
call  rlabel_00_027C 
ld a,($cc7d)		
cp $01			
.DB $28 $f3 ; < ['$28', '$f3'] > < 0x5fb1 > < 35fb1 03 5FB1 | 28F3: jr z, $F3 >
ld a,$90		
ld ($cae8),a		
call  rlabel_03_5338 
call  rlabel_03_4F65 
ld b,$0c		
ld c,$03		
ld hl,$cb26		
call  rlabel_00_0FDE 
ld hl,$6115		
call  rlabel_00_0FDE 
ld b,$0d		
ld c,$03		
ld hl,$6117		
call  rlabel_00_0FDE 
ld hl,$6126		
ld d,$a8		
call  rlabel_00_2C5B 
call  rlabel_03_41C4 
call  rlabel_00_2516 
xor a			
ld ($caee),a		
ld a,$02		
ld ($caf1),a		
ld ($caf2),a		
ld b,$70		
ld c,$40		
ld d,$00		
ld e,$00		
call  rlabel_03_4143 
call  rlabel_00_0EEE 
ld hl,$6134		
call  rlabel_00_255B 
ld a,($ff00+$a5)	
and $01			
.DB $28 $10 ; < ['$28', '$10'] > < 0x600a > < 3600a 03 600A | 2810: jr z, $10 >
ld a,($cc1f)		
and a			
.DB $20 $3e ; < ['$20', '$3e'] > < 0x6010 > < 36010 03 6010 | 203E: jr nz, $3E >
ld a,$80		
call  rlabel_00_3071 
call  rlabel_03_60A9 
.DB $18 $3f ; < ['$18', '$3f'] > < 0x601a > < 3601a 03 601A | 183F: jr $3F >
ld a,($ff00+$a5)	
and $02			
.DB $28 $02 ; < ['$28', '$02'] > < 0x6020 > < 36020 03 6020 | 2802: jr z, $02 >
.DB $18 $2c ; < ['$18', '$2c'] > < 0x6022 > < 36022 03 6022 | 182C: jr $2C >
ld a,($ff00+$a5)	
and $08			
.DB $28 $06 ; < ['$28', '$06'] > < 0x6028 > < 36028 03 6028 | 2806: jr z, $06 >
.incbin "data/03_602A.data"
ld a,($cc1d)		
sub $04			
ld b,a			
ld a,($cc28)		
ld c,a			
ld a,($cc1c)		
sub c			
sub $08			
ld c,a			
ld a,($cc28)		
add a			
add $20			
ld d,a			
call  rlabel_03_49DB 
call  rlabel_00_027C 
.DB $18 $ad ; < ['$18', '$ad'] > < 0x604e > < 3604e 03 604E | 18AD: jr $AD >
ld a,$1c		
call  rlabel_00_3071 
call  rlabel_00_2516 
call  rlabel_03_41C4 
call  rlabel_03_44F3 
call  rlabel_00_207C 
call  rlabel_03_5177 
call  rlabel_00_208D 
call  rlabel_00_027C 
ld a,($cc7d)		
cp $01			
.DB $28 $f3 ; < ['$28', '$f3'] > < 0x606f > < 3606f 03 606F | 28F3: jr z, $F3 >
call  rlabel_03_6138 
ld a,($caf1)		
ld b,a			
ld a,($caf2)		
ld c,a			
ld a,($caed)		
ld d,a			
ld a,($caee)		
ld e,a			
ld a,d			
add e			
cp b			
.DB $38 $17 ; < ['$38', '$17'] > < 0x6087 > < 36087 03 6087 | 3817: jr c, $17 >
ld a,d			
and a			
.DB $28 $06 ; < ['$28', '$06'] > < 0x608b > < 3608b 03 608B | 2806: jr z, $06 >
.incbin "data/03_608D.data"
ld a,e			
and a			
.DB $28 $04 ; < ['$28', '$04'] > < 0x6095 > < 36095 03 6095 | 2804: jr z, $04 >
dec a			
ld ($caee),a		
ld a,c			
dec a			
ld ($caf2),a		
call  rlabel_03_50E2 
call  rlabel_03_5722 
jp $5cf0		
rlabel_03_60A9:
ld a,$04		
ld ($cae0),a		
call  rlabel_00_2516 
call  rlabel_03_41C4 
call  rlabel_03_5338 
push de			
ld a,d			
cp $80			
.DB $28 $10 ; < ['$28', '$10'] > < 0x60bb > < 360bb 03 60BB | 2810: jr z, $10 >
ld c,$ff		
call  rlabel_03_51B4 
ld ($cba4),a		
ld a,e			
ld ($cba5),a		
ld a,d			
ld ($cba6),a		
call  rlabel_03_5ADD 
ld c,$01		
call  rlabel_03_51B4 
ld ($cbaa),a		
ld a,e			
ld ($cbab),a		
ld a,d			
ld ($cbac),a		
pop de			
ld a,($cba4)		
and a			
.DB $20 $10 ; < ['$20', '$10'] > < 0x60e5 > < 360e5 03 60E5 | 2010: jr nz, $10 >
ld a,($cbaa)		
dec a			
.DB $28 $0a ; < ['$28', '$0a'] > < 0x60eb > < 360eb 03 60EB | 280A: jr z, $0A >
ld a,($caed)		
and a			
.DB $28 $04 ; < ['$28', '$04'] > < 0x60f1 > < 360f1 03 60F1 | 2804: jr z, $04 >
.incbin "data/03_60F3.data"
push de			
call  rlabel_03_5ABF 
pop de			
ld a,e			
ldi (hl),a		
ld (hl),d		
ld b,$01		
ld hl,$4ee8		
rst $28			
ld c,$02		
ld d,$3a		
ld e,$03		
call  rlabel_03_4EE2 
call  rlabel_03_5A24 
call  rlabel_03_5710 
ret			
.incbin "data/03_6115.data"
rlabel_03_6138:
call  rlabel_03_5013 
ld a,($cafb)		
call  rlabel_00_12DD 
ld h,a			
ld l,$00		
ld de,$4cb1		
add hl,de		
ld de,$db8d		
ld bc,$0030		
ld a,$88		
call  rlabel_00_0D50 
ld hl,$61bc		
ld a,($cafd)		
add a			
call  rlabel_00_0462 
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
ld hl,$61ca		
ld a,($cafd)		
add a			
call  rlabel_00_0462 
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld b,a			
ld hl,$d2d5		
ld a,($cafd)		
and a			
.DB $28 $0c ; < ['$28', '$0c'] > < 0x6176 > < 36176 03 6176 | 280C: jr z, $0C >
xor a			
ldi (hl),a		
ld a,$80		
ldi (hl),a		
ld a,($caf1)		
inc a			
ld ($caf1),a		
push bc			
push hl			
call  rlabel_03_51B2 
pop hl			
and a			
.DB $28 $24 ; < ['$28', '$24'] > < 0x618b > < 3618b 03 618B | 2824: jr z, $24 >
push hl			
push de			
call  rlabel_03_4F7C 
pop de			
pop hl			
ld bc,$db8d		
ld a,(bc)		
and a			
.DB $28 $16 ; < ['$28', '$16'] > < 0x6199 > < 36199 03 6199 | 2816: jr z, $16 >
push hl			
ld hl,$cb26		
cp (hl)			
pop hl			
.DB $28 $03 ; < ['$28', '$03'] > < 0x61a1 > < 361a1 03 61A1 | 2803: jr z, $03 >
inc bc			
.DB $18 $f1 ; < ['$18', '$f1'] > < 0x61a4 > < 361a4 03 61A4 | 18F1: jr $F1 >
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
.DB $38 $cd ; < ['$38', '$cd'] > < 0x61b5 > < 361b5 03 61B5 | 38CD: jr c, $CD >
ld a,e			
cp c			
.DB $38 $c9 ; < ['$38', '$c9'] > < 0x61b9 > < 361b9 03 61B9 | 38C9: jr c, $C9 >
ret			
.incbin "data/03_61BC.data"
call  rlabel_03_5E43 
call  rlabel_03_572C 
ld a,($cae0)		
cp $00			
.DB $20 $01 ; < ['$20', '$01'] > < 0x61e5 > < 361e5 03 61E5 | 2001: jr nz, $01 >
ret			
cp $01			
.DB $20 $04 ; < ['$20', '$04'] > < 0x61ea > < 361ea 03 61EA | 2004: jr nz, $04 >
call  rlabel_03_5978 
ret			
cp $02			
.DB $20 $07 ; < ['$20', '$07'] > < 0x61f2 > < 361f2 03 61F2 | 2007: jr nz, $07 >
call  rlabel_03_5E5D 
call  rlabel_03_5EA3 
ret			
call  rlabel_03_5EA3 
ret			
call  rlabel_00_13B1 
ld b,$04		
ld hl,$744e		
rst $28			
call  rlabel_00_13E5 
ld de,$0000		
ld c,$08		
call  rlabel_00_1311 
ld a,($c1a8)		
cp $01			
.DB $20 $03 ; < ['$20', '$03'] > < 0x6218 > < 36218 03 6218 | 2003: jr nz, $03 >
.incbin "data/03_621A.data"
jp $4365		
call  rlabel_00_13B1 
ld b,$04		
ld hl,$7829		
rst $28			
call  rlabel_00_13E5 
ld de,$0000		
ld c,$08		
call  rlabel_00_1311 
ld a,($c1a8)		
cp $01			
.DB $20 $03 ; < ['$20', '$03'] > < 0x6239 > < 36239 03 6239 | 2003: jr nz, $03 >
.incbin "data/03_623B.data"
jp $4365		
ld b,$04		
ld hl,$79a3		
rst $28			
ld de,$0000		
ld c,$08		
call  rlabel_00_1311 
ld a,($c1a8)		
cp $01			
.DB $20 $03 ; < ['$20', '$03'] > < 0x6254 > < 36254 03 6254 | 2003: jr nz, $03 >
.incbin "data/03_6256.data"
jp $4365		
ld a,$05		
ld ($cadf),a		
call  rlabel_00_13B1 
di			
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ei			
ld hl,$7779		
ld de,$9300		
ld bc,$0050		
ld a,$33		
call  rlabel_00_0D83 
ld hl,$5371		
ld de,$9350		
ld bc,$0010		
ld a,$3d		
call  rlabel_00_0D83 
ld hl,$77c9		
ld de,$9360		
ld bc,$0080		
ld a,$33		
call  rlabel_00_0D83 
ld hl,$7849		
ld de,$9500		
ld bc,$0040		
ld a,$33		
call  rlabel_00_0D83 
ld hl,$7351		
ld de,$8000		
ld bc,$0160		
ld a,$33		
call  rlabel_00_0D83 
ld hl,$7719		
ld de,$8160		
ld bc,$0060		
ld a,$33		
call  rlabel_00_0D83 
ld hl,$6de9		
ld de,$c9d0		
ld bc,$0008		
ld a,$33		
call  rlabel_00_0D50 
call  rlabel_00_05AA 
call  rlabel_00_136B 
call  rlabel_03_40CE 
call  rlabel_03_6472 
call  rlabel_03_576B 
call  rlabel_03_7ABB 
di			
ld hl,$c1a3		
ld de,$144f		
call  rlabel_00_0231 
ld a,$34		
ld ($ff00+$9a),a	
ld ($ff00+$45),a	
ld a,$40		
ld ($ff00+$41),a	
ld a,($ff00+$ff)	
or $02			
ld ($ff00+$9c),a	
ld ($ff00+$ff),a	
ei			
ld c,$04		
call  rlabel_00_132B 
ld a,$00		
ld ($cae0),a		
ld b,$03		
ld de,$70a1		
call  rlabel_00_14E5 
xor a			
ld ($cb90),a		
ld a,$10		
ld ($c971),a		
ld a,$48		
ld ($c972),a		
xor a			
ld ($c973),a		
ld ($c974),a		
ld ($c970),a		
call  rlabel_03_41AA 
ld a,$05		
ld ($caf2),a		
xor a			
ld ($caf4),a		
ld a,$04		
ld ($cafd),a		
call  rlabel_03_6573 
ld a,$01		
ld ($cae0),a		
ld a,$22		
ld c,$0c		
call  rlabel_00_05B1 
call  rlabel_03_7097 
call  rlabel_00_027C 
call  rlabel_00_0EEE 
call  rlabel_03_6395 
ld a,($ff00+$a5)	
and $01			
.DB $28 $08 ; < ['$28', '$08'] > < 0x635a > < 3635a 03 635A | 2808: jr z, $08 >
ld a,$1b		
call  rlabel_00_3071 
jp $659c		
ld a,($ff00+$a5)	
and $02			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x6368 > < 36368 03 6368 | 280B: jr z, $0B >
ld a,$1c		
call  rlabel_00_3071 
call  rlabel_03_6466 
jp $4365		
ld a,($ff00+$a5)	
and $08			
.DB $28 $06 ; < ['$28', '$06'] > < 0x6379 > < 36379 03 6379 | 2806: jr z, $06 >
.incbin "data/03_637B.data"
ld a,($ff00+$a5)	
and $04			
.DB $28 $09 ; < ['$28', '$09'] > < 0x6385 > < 36385 03 6385 | 2809: jr z, $09 >
.incbin "data/03_6387.data"
call  rlabel_00_027C 
.DB $18 $bb ; < ['$18', '$bb'] > < 0x6393 > < 36393 03 6393 | 18BB: jr $BB >
rlabel_03_6395:
ld a,($c970)		
and a			
ret nz			
ld a,($cbd6)		
and $40			
.DB $28 $04 ; < ['$28', '$04'] > < 0x639f > < 3639f 03 639F | 2804: jr z, $04 >
ld a,$00		
.DB $18 $22 ; < ['$18', '$22'] > < 0x63a3 > < 363a3 03 63A3 | 1822: jr $22 >
ld a,($cbd6)		
and $80			
.DB $28 $04 ; < ['$28', '$04'] > < 0x63aa > < 363aa 03 63AA | 2804: jr z, $04 >
ld a,$01		
.DB $18 $17 ; < ['$18', '$17'] > < 0x63ae > < 363ae 03 63AE | 1817: jr $17 >
ld a,($cbd6)		
and $20			
.DB $28 $04 ; < ['$28', '$04'] > < 0x63b5 > < 363b5 03 63B5 | 2804: jr z, $04 >
ld a,$02		
.DB $18 $0c ; < ['$18', '$0c'] > < 0x63b9 > < 363b9 03 63B9 | 180C: jr $0C >
ld a,($cbd6)		
and $10			
.DB $28 $04 ; < ['$28', '$04'] > < 0x63c0 > < 363c0 03 63C0 | 2804: jr z, $04 >
ld a,$03		
.DB $18 $01 ; < ['$18', '$01'] > < 0x63c4 > < 363c4 03 63C4 | 1801: jr $01 >
ret			
ld c,a			
ld a,($caf4)		
add a			
add a			
add c			
ld hl,$6431		
call  rlabel_00_0462 
ld a,(hl)		
cp $ff			
ret z			
ld ($caf4),a		
ld a,$10		
call  rlabel_00_3071 
ld a,($caf4)		
add a			
ld hl,$6445		
call  rlabel_00_0462 
ld a,($c971)		
ld b,a			
ld a,($c972)		
ld c,a			
ldi a,(hl)		
sub b			
ld b,a			
ldi a,(hl)		
sub c			
ld c,a			
ld a,b			
call  rlabel_03_641C 
ld ($c973),a		
ld a,c			
call  rlabel_03_641C 
ld ($c974),a		
ld a,$04		
ld ($c970),a		
xor a			
ld ($caed),a		
ld ($caee),a		
call  rlabel_03_6451 
call  rlabel_03_6E0D 
call  rlabel_03_6E86 
ret			
rlabel_03_641C:
sla a			
.DB $38 $07 ; < ['$38', '$07'] > < 0x641e > < 3641e 03 641E | 3807: jr c, $07 >
srl a			
srl a			
srl a			
ret			
scf			
rr a			
scf			
rr a			
scf			
rr a			
ret			
.incbin "data/03_6431.data"
rlabel_03_6451:
ld a,($caf4)		
ld hl,$645f		
call  rlabel_00_0462 
ld a,(hl)		
ld ($cafd),a		
ret			
.incbin "data/03_645F.data"
rlabel_03_6466:
ld de,$0000		
ld c,$04		
call  rlabel_00_1311 
call  rlabel_00_13E5 
ret			
rlabel_03_6472:
ld b,$03		
ld c,$00		
ld d,$0d		
ld e,$12		
call  rlabel_00_0F33 
ld b,$0b		
ld c,$01		
ld e,$0c		
call  rlabel_03_658E 
ld d,$36		
call  rlabel_03_64AC 
inc d			
call  rlabel_03_64AC 
ld d,$35		
call  rlabel_03_64AC 
ld d,$38		
call  rlabel_03_64AC 
inc d			
call  rlabel_03_64AC 
ld d,$35		
call  rlabel_03_64AC 
call  rlabel_03_64AC 
call  rlabel_03_64B4 
call  rlabel_03_6512 
ret			
rlabel_03_64AC:
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
inc c			
ret			
rlabel_03_64B4:
ld b,$01		
ld c,$08		
ld d,$08		
ld e,$0a		
call  rlabel_00_0F23 
ld b,$01		
ld c,$08		
ld d,$30		
ld e,$07		
ld h,$01		
ld l,$05		
call  rlabel_00_1260 
ld a,$fa		
ld ($c982),a		
ld a,$01		
ld ($c983),a		
call  rlabel_03_7816 
ld d,$d8		
ld e,$04		
ld hl,$78ae		
ld b,$02		
ld c,$0f		
call  rlabel_00_0F47 
ld b,$09		
ld c,$0f		
call  rlabel_00_0F47 
ld b,$07		
ld c,$09		
call  rlabel_00_0F47 
ld b,$07		
ld c,$11		
call  rlabel_00_0F47 
ld b,$02		
ld c,$09		
ld d,$3e		
ld hl,$650b		
call  rlabel_00_0F47 
ret			
.incbin "data/03_650B.data"
rlabel_03_6512:
ld de,$0001		
call  rlabel_00_12EA 
ld b,$05		
ld c,$01		
ld d,$40		
ld e,$04		
call  rlabel_00_0F47 
ld d,$48		
ld hl,$655e		
call  rlabel_00_0F47 
ld e,$08		
call  rlabel_00_1128 
inc b			
ld c,$01		
ld d,$49		
ld e,$04		
ld hl,$6560		
call  rlabel_00_0F47 
call  rlabel_03_6D3E 
ld b,$08		
ld c,$01		
ld e,$08		
call  rlabel_03_658E 
ld b,$09		
ld c,$01		
ld d,$58		
ld e,$04		
ld hl,$6569		
call  rlabel_00_0F47 
call  rlabel_03_6D64 
call  rlabel_03_7731 
ret			
.incbin "data/03_655E.data"
rlabel_03_6573:
call  rlabel_03_657D 
call  rlabel_03_6E0D 
call  rlabel_03_6E62 
ret			
rlabel_03_657D:
call  rlabel_03_7097 
rlabel_03_6580:
ld a,$03		
ld ($c984),a		
ld a,$0b		
ld ($c985),a		
call  rlabel_03_7BD4 
ret			
rlabel_03_658E:
ld d,$35		
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
inc c			
ld a,c			
cp e			
.DB $38 $f3 ; < ['$38', '$f3'] > < 0x6599 > < 36599 03 6599 | 38F3: jr c, $F3 >
ret			
xor a			
ld ($caed),a		
ld ($caee),a		
ld b,$60		
ld c,$00		
ld d,$00		
ld e,$01		
call  rlabel_03_4143 
ld a,$02		
ld ($cae0),a		
ld a,$00		
ld c,$10		
call  rlabel_00_05B1 
call  rlabel_03_664D 
call  rlabel_03_7D56 
call  rlabel_03_7ABB 
call  rlabel_03_7097 
call  rlabel_00_027C 
call  rlabel_00_0EEE 
call  rlabel_03_661E 
ld a,($ff00+$a5)	
and $01			
.DB $28 $03 ; < ['$28', '$03'] > < 0x65d3 > < 365d3 03 65D3 | 2803: jr z, $03 >
call  rlabel_03_6756 
ld a,($ff00+$a5)	
and $02			
.DB $28 $25 ; < ['$28', '$25'] > < 0x65dc > < 365dc 03 65DC | 2825: jr z, $25 >
ld a,$1c		
call  rlabel_00_3071 
ld a,($cb25)		
and a			
call nz,$666c		
xor a			
ld ($caed),a		
ld ($caee),a		
call  rlabel_03_6451 
call  rlabel_03_6E0D 
call  rlabel_03_6E86 
call  rlabel_03_7D51 
call  rlabel_03_7ABB 
jp $633e		
ld a,($ff00+$a5)	
and $08			
.DB $28 $06 ; < ['$28', '$06'] > < 0x6607 > < 36607 03 6607 | 2806: jr z, $06 >
.incbin "data/03_6609.data"
ld a,($ff00+$a5)	
and $04			
.DB $28 $03 ; < ['$28', '$03'] > < 0x6613 > < 36613 03 6613 | 2803: jr z, $03 >
.incbin "data/03_6615.data"
call  rlabel_00_027C 
.DB $18 $ac ; < ['$18', '$ac'] > < 0x661b > < 3661b 03 661B | 18AC: jr $AC >
.incbin "data/03_661D.data"
rlabel_03_661E:
call  rlabel_03_41F1 
ld a,($caef)		
ld b,a			
ld a,($caed)		
cp b			
.DB $28 $07 ; < ['$28', '$07'] > < 0x6629 > < 36629 03 6629 | 2807: jr z, $07 >
.incbin "data/03_662B.data"
ld a,($caf0)		
ld b,a			
ld a,($caee)		
cp b			
ret z			
.incbin "data/03_663B.data"
rlabel_03_664D:
ld a,$01		
ld ($cb25),a		
xor a			
ld ($cafc),a		
call  rlabel_03_6683 
ret			
.incbin "data/03_665A.data"
call  rlabel_03_64B4 
call  rlabel_03_6580 
xor a			
ld ($cb25),a		
ld ($cafc),a		
ret			
.incbin "data/03_667A.data"
rlabel_03_6683:
ld a,$10		
ld c,$48		
call  rlabel_00_05B1 
ld b,$01		
ld c,$08		
ld d,$08		
ld e,$0a		
call  rlabel_00_0F23 
call  rlabel_03_673C 
ld a,($cafc)		
and a			
.DB $20 $68 ; < ['$20', '$68'] > < 0x669c > < 3669c 03 669C | 2068: jr nz, $68 >
ld b,$04		
ld c,$09		
ld d,$ec		
ld e,$07		
ld hl,$672f		
call  rlabel_00_0F47 
ld b,$05		
xor a			
push af			
ld c,a			
add a			
ld d,a			
add a			
add $d8			
ld d,a			
ld hl,$cb66		
ld a,c			
add a			
call  rlabel_00_0462 
ldi a,(hl)		
cp $ff			
.DB $28 $2c ; < ['$28', '$2c'] > < 0x66c2 > < 366c2 03 66C2 | 282C: jr z, $2C >
push hl			
add a			
add a			
ld hl,$6932		
call  rlabel_00_0462 
ld c,$0a		
ld e,$07		
call  rlabel_00_0F47 
pop hl			
ldi a,(hl)		
push hl			
inc c			
push af			
push de			
ld d,$54		
ld e,$07		
ld hl,$6738		
call  rlabel_00_0F47 
pop de			
pop af			
dec a			
.DB $20 $ef ; < ['$20', '$ef'] > < 0x66e7 > < 366e7 03 66E7 | 20EF: jr nz, $EF >
ld e,$12		
call  rlabel_00_1128 
pop hl			
inc b			
pop af			
inc a			
cp $03			
.DB $38 $b9 ; < ['$38', '$b9'] > < 0x66f4 > < 366f4 03 66F4 | 38B9: jr c, $B9 >
ld a,b			
cp $09			
.DB $30 $0a ; < ['$30', '$0a'] > < 0x66f9 > < 366f9 03 66F9 | 300A: jr nc, $0A >
ld c,$0a		
ld e,$12		
call  rlabel_00_1128 
inc b			
.DB $18 $f1 ; < ['$18', '$f1'] > < 0x6703 > < 36703 03 6703 | 18F1: jr $F1 >
ret			
.incbin "data/03_6706.data"
rlabel_03_673C:
call  rlabel_03_6FB8 
call  rlabel_03_7057 
ld b,$02		
ld c,$09		
ld d,$cc		
ld e,$04		
ld hl,$cb26		
call  rlabel_00_0F47 
ld e,$12		
call  rlabel_00_1128 
ret			
rlabel_03_6756:
call  rlabel_03_6FB8 
call  rlabel_03_6DB0 
cp $0a			
.DB $38 $06 ; < ['$38', '$06'] > < 0x675e > < 3675e 03 675E | 3806: jr c, $06 >
.incbin "data/03_6760.data"
ld d,a			
call  rlabel_03_6FB8 
ld b,d			
call  rlabel_03_6FD9 
call  rlabel_03_6D7A 
ld hl,$cb68		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
call  rlabel_00_12C6 
cp $01			
.DB $20 $06 ; < ['$20', '$06'] > < 0x677c > < 3677c 03 677C | 2006: jr nz, $06 >
ld a,$1f		
call  rlabel_00_3071 
ret			
.incbin "data/03_6784.data"
rlabel_03_6D3E:
xor a			
ld d,a			
ld e,a			
push af			
push de			
call  rlabel_03_6D97 
ld a,d			
pop de			
call  rlabel_00_045D 
pop af			
inc a			
cp $04			
.DB $38 $f0 ; < ['$38', '$f0'] > < 0x6d4f > < 36d4f 03 6D4F | 38F0: jr c, $F0 >
xor a			
ld c,a			
call  rlabel_00_11B8 
ld b,$07		
ld c,$05		
ld d,$01		
ld e,$07		
ld a,$03		
call  rlabel_00_1225 
ret			
rlabel_03_6D64:
call  rlabel_03_6D7A 
xor a			
ld c,a			
call  rlabel_00_11B8 
ld b,$0a		
ld c,$03		
ld d,$01		
ld e,$07		
ld a,$05		
call  rlabel_00_1225 
ret			
rlabel_03_6D7A:
xor a			
ld b,a			
ld c,a			
ld hl,$c362		
ldi a,(hl)		
ld e,a			
ldd a,(hl)		
ld d,a			
ld a,e			
add c			
ld e,a			
ld a,d			
adc b			
ld d,a			
ld a,e			
ldi (hl),a		
ld a,d			
ldd (hl),a		
ret			
.incbin "data/03_6D8F.data"
rlabel_03_6D97:
ld b,a			
xor a			
ld d,$00		
ld e,$00		
ld c,a			
push de			
call  rlabel_03_6DB0 
pop de			
and a			
.DB $28 $03 ; < ['$28', '$03'] > < 0x6da4 > < 36da4 03 6DA4 | 2803: jr z, $03 >
add d			
ld d,a			
inc e			
inc c			
ld a,c			
cp $10			
.DB $38 $ef ; < ['$38', '$ef'] > < 0x6dad > < 36dad 03 6DAD | 38EF: jr c, $EF >
ret			
rlabel_03_6DB0:
xor a			
push af			
ld a,b			
add a			
add a			
add a			
ld de,$00a0		
call  rlabel_00_045D 
call  rlabel_00_12EA 
pop af			
ld d,a			
ld e,a			
ld a,c			
srl a			
.DB $38 $16 ; < ['$38', '$16'] > < 0x6dc5 > < 36dc5 03 6DC5 | 3816: jr c, $16 >
call  rlabel_00_0462 
ld a,(hl)		
and $0f			
ld e,a			
ld a,(hl)		
swap a			
and $0f			
add d			
and $0f			
ld d,a			
swap a			
or e			
ld (hl),a		
ld a,d			
ret			
call  rlabel_00_0462 
ld a,(hl)		
and $f0			
ld d,a			
ld a,(hl)		
and $0f			
add e			
and $0f			
ld e,a			
or d			
ld (hl),a		
ld a,e			
ret			
ld a,c			
swap a			
and $0f			
ld b,a			
ld a,c			
and $0f			
ld c,a			
call  rlabel_03_6DB0 
ld c,a			
ret			
.incbin "data/03_6DFE.data"
rlabel_03_6E0D:
push af			
call  rlabel_03_5013 
pop af			
ld b,a			
ld e,$10		
cp $04			
.DB $38 $04 ; < ['$38', '$04'] > < 0x6e17 > < 36e17 03 6E17 | 3804: jr c, $04 >
xor a			
ld b,a			
ld e,$40		
ld hl,$d2d5		
ld d,$01		
ld c,$00		
push hl			
push de			
call  rlabel_03_6DB0 
pop de			
pop hl			
cp d			
.DB $20 $28 ; < ['$20', '$28'] > < 0x6e2c > < 36e2c 03 6E2C | 2028: jr nz, $28 >
ld a,b			
swap a			
add c			
push bc			
ld b,d			
push de			
push hl			
call  rlabel_03_6FD9 
pop hl			
pop de			
pop bc			
ld a,b			
swap a			
add c			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld a,($cb68)		
ldi (hl),a		
ld a,($cb69)		
ldi (hl),a		
ld a,($cb66)		
ldi (hl),a		
ld a,($caf1)		
inc a			
ld ($caf1),a		
inc c			
ld a,c			
cp e			
.DB $38 $c9 ; < ['$38', '$c9'] > < 0x6e59 > < 36e59 03 6E59 | 38C9: jr c, $C9 >
inc d			
ld a,d			
cp $0b			
.DB $38 $c1 ; < ['$38', '$c1'] > < 0x6e5f > < 36e5f 03 6E5F | 38C1: jr c, $C1 >
ret			
rlabel_03_6E62:
ld b,$0c		
ld e,$04		
ld a,($caf2)		
push af			
ld c,$02		
call  rlabel_00_0CF4 
call  rlabel_00_0D33 
ld c,$0c		
call  rlabel_00_0CF4 
call  rlabel_00_0D33 
inc c			
call  rlabel_00_0CF4 
call  rlabel_00_0D33 
inc b			
pop af			
dec a			
.DB $20 $e3 ; < ['$20', '$e3'] > < 0x6e84 > < 36e84 03 6E84 | 20E3: jr nz, $E3 >
rlabel_03_6E86:
ld hl,$d2d5		
ld a,($caed)		
ld d,a			
add a			
add a			
call  rlabel_00_0462 
ld a,d			
call  rlabel_00_0462 
ld b,$0c		
xor a			
ld ($cb89),a		
ld a,($caf1)		
ld c,a			
ld a,($cb89)		
cp c			
.DB $38 $0a ; < ['$38', '$0a'] > < 0x6ea4 > < 36ea4 03 6EA4 | 380A: jr c, $0A >
push hl			
ld c,$02		
ld e,$12		
call  rlabel_00_113B 
.DB $18 $61 ; < ['$18', '$61'] > < 0x6eae > < 36eae 03 6EAE | 1861: jr $61 >
add a			
add a			
add a			
add $90			
ld ($cae8),a		
ldi a,(hl)		
ld ($cb76),a		
ldi a,(hl)		
ld ($cb77),a		
ldi a,(hl)		
ld ($cb78),a		
ldi a,(hl)		
ld ($cb79),a		
ldi a,(hl)		
push hl			
add $50			
ld d,a			
ld c,$02		
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
inc c			
push bc			
ld a,($cb76)		
call  rlabel_03_701D 
pop bc			
ld hl,$cb26		
call  rlabel_00_0FDE 
ld e,$0c		
call  rlabel_00_113B 
ld c,$0c		
ld a,($cb77)		
call  rlabel_03_6F2C 
inc c			
ld a,($cb78)		
and a			
.DB $28 $0f ; < ['$28', '$0f'] > < 0x6ef6 > < 36ef6 03 6EF6 | 280F: jr z, $0F >
ld a,($cb78)		
ld e,a			
ld a,($cb79)		
ld d,a			
ld a,$07		
call  rlabel_03_6F51 
.DB $18 $0a ; < ['$18', '$0a'] > < 0x6f05 > < 36f05 03 6F05 | 180A: jr $0A >
.incbin "data/03_6F07.data"
pop hl			
inc b			
ld a,($caf2)		
ld c,a			
ld a,($cb89)		
inc a			
ld ($cb89),a		
cp c			
jp c,$6e9c		
call  rlabel_03_6F68 
ret			
.incbin "data/03_6F26.data"
rlabel_03_6F2C:
ld d,a			
ld e,$0a		
call  rlabel_00_038B 
ld e,a			
ld a,d			
and a			
.DB $20 $04 ; < ['$20', '$04'] > < 0x6f35 > < 36f35 03 6F35 | 2004: jr nz, $04 >
ld d,$00		
.DB $18 $03 ; < ['$18', '$03'] > < 0x6f39 > < 36f39 03 6F39 | 1803: jr $03 >
.incbin "data/03_6F3B.data"
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
inc c			
ld a,e			
add $01			
ld d,a			
call  rlabel_00_0CF4 
call  rlabel_00_0D25 
inc c			
ret			
rlabel_03_6F51:
push af			
push bc			
xor a			
ld c,a			
call  rlabel_00_11B8 
pop bc			
pop af			
ld e,a			
push bc			
ld d,$01		
ld a,$03		
call  rlabel_00_1225 
pop bc			
inc c			
inc c			
inc c			
ret			
rlabel_03_6F68:
ld b,$0c		
ld c,$12		
call  rlabel_03_4276 
ret			
.incbin "data/03_6F70.data"
rlabel_03_6FB8:
ld a,($caed)		
ld h,a			
ld a,($caee)		
add h			
ld b,a			
add a			
add a			
ld hl,$d2d5		
call  rlabel_00_0462 
ld a,b			
call  rlabel_00_0462 
ld a,(hl)		
swap a			
and $0f			
ld b,a			
ld a,(hl)		
and $0f			
ld c,a			
ld a,(hl)		
ret			
rlabel_03_6FD9:
ld c,a			
ld h,c			
ld l,$00		
srl h			
rr l			
srl h			
rr l			
srl h			
rr l			
ld de,$5801		
add hl,de		
push hl			
ld a,b			
add a			
call  rlabel_00_0462 
ld de,$cb68		
ld a,$88		
call  rlabel_00_0D6C 
inc hl			
inc de			
ld a,$88		
call  rlabel_00_0D6C 
pop hl			
ld a,$1e		
call  rlabel_00_0462 
ld de,$cb66		
ld a,$88		
call  rlabel_00_0D6C 
inc hl			
inc de			
ld a,$88		
call  rlabel_00_0D6C 
ld a,c			
call  rlabel_03_701D 
ret			
.incbin "data/03_701C.data"
rlabel_03_701D:
cp $3c			
.DB $20 $08 ; < ['$20', '$08'] > < 0x701f > < 3701f 03 701F | 2008: jr nz, $08 >
ld a,($cafb)		
call  rlabel_00_12DD 
add $40			
ld c,a			
ld a,$86		
ld hl,$7be6		
ld de,$cb26		
call  rlabel_00_0D6C 
inc hl			
push af			
ld a,c			
add a			
call  rlabel_00_0462 
ld a,$86		
ld bc,$0002		
call  rlabel_00_0D50 
dec de			
ld a,(de)		
ld h,a			
dec de			
ld a,(de)		
ld l,a			
ld a,$0c		
call  rlabel_00_0462 
pop af			
ld bc,$0010		
call  rlabel_00_0D50 
ret			
rlabel_03_7057:
cp $3c			
.DB $20 $08 ; < ['$20', '$08'] > < 0x7059 > < 37059 03 7059 | 2008: jr nz, $08 >
.incbin "data/03_705B.data"
ld c,a			
ld a,$86		
ld hl,$7be6		
ld de,$cb66		
call  rlabel_00_0D6C 
inc hl			
push af			
ld a,c			
add a			
call  rlabel_00_0462 
ld a,$86		
ld bc,$0002		
call  rlabel_00_0D50 
dec de			
ld a,(de)		
ld h,a			
dec de			
ld a,(de)		
ld l,a			
pop af			
push af			
ld bc,$000c		
call  rlabel_00_0D50 
pop af			
ld de,$cb26		
ld bc,$0040		
call  rlabel_00_0D50 
ret			
rlabel_03_7097:
ld b,$08		
ld c,$08		
ld e,$04		
call  rlabel_03_7788 
ret			
ld a,($cae0)		
cp $00			
ret z			
call  rlabel_03_5E43 
ld a,($cae0)		
cp $01			
.DB $20 $14 ; < ['$20', '$14'] > < 0x70af > < 370af 03 70AF | 2014: jr nz, $14 >
call  rlabel_03_598A 
ld a,($c971)		
ld b,a			
ld a,($c972)		
ld c,a			
ld e,$10		
call  rlabel_03_59AD 
call  rlabel_03_7AEA 
ret			
call  rlabel_03_5E5D 
call  rlabel_03_7AEA 
ret			
ld a,$06		
ld ($cadf),a		
ld a,$80		
ld ($caf4),a		
ld ($caf6),a		
ld a,$0d		
ld ($caf7),a		
ld a,$00		
ld ($caef),a		
ld ($caed),a		
call  rlabel_00_13B1 
di			
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ei			
ld hl,$5371		
ld de,$9520		
ld bc,$0010		
ld a,$3d		
call  rlabel_00_0D83 
ld hl,$70f1		
ld de,$91a0		
ld bc,$0010		
ld a,$3d		
call  rlabel_00_0D83 
call  rlabel_03_7228 
ld hl,$6801		
ld de,$8100		
ld bc,$0300		
ld a,$33		
call  rlabel_00_0D83 
call  rlabel_03_73D0 
call  rlabel_03_7D51 
ld hl,$6de9		
ld de,$c9d0		
ld bc,$0008		
ld a,$33		
call  rlabel_00_0D50 
ld hl,$68a1		
ld de,$c9d8		
ld bc,$0008		
ld a,$33		
call  rlabel_00_0D50 
call  rlabel_00_05AA 
call  rlabel_00_136B 
call  rlabel_03_40CE 
ld hl,$6df1		
ld de,$9280		
ld bc,$0070		
ld a,$33		
call  rlabel_00_0D83 
ld b,$01		
ld c,$00		
ld d,$11		
ld e,$0a		
call  rlabel_00_0F33 
ld b,$03		
ld c,$0b		
ld d,$0f		
ld e,$07		
call  rlabel_00_0F33 
ld b,$03		
ld c,$0b		
ld d,$1a		
ld e,$07		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc b			
ld d,$00		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc b			
ld a,b			
cp $12			
.DB $38 $f2 ; < ['$38', '$f2'] > < 0x718b > < 3718b 03 718B | 38F2: jr c, $F2 >
ld b,$06		
ld c,$01		
ld d,$52		
ld e,$07		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
ld a,c			
cp $13			
.DB $38 $f4 ; < ['$38', '$f4'] > < 0x719f > < 3719f 03 719F | 38F4: jr c, $F4 >
call  rlabel_03_7561 
call  rlabel_03_744A 
ld a,$90		
ld ($cb9b),a		
xor a			
call  rlabel_03_7589 
ld a,($caed)		
call  rlabel_03_78C4 
call  rlabel_03_7553 
di			
ld hl,$c1a3		
ld de,$1473		
call  rlabel_00_0231 
ld a,$34		
ld ($ff00+$9a),a	
ld ($ff00+$45),a	
ld a,$40		
ld ($ff00+$41),a	
ld a,($ff00+$ff)	
or $02			
ld ($ff00+$9c),a	
ld ($ff00+$ff),a	
ei			
call  rlabel_00_0377 
call  rlabel_03_73DF 
ld b,$03		
ld de,$7d65		
call  rlabel_00_14E5 
ld c,$08		
call  rlabel_00_132B 
ld a,$10		
push af			
and $03			
.DB $20 $1f ; < ['$20', '$1f'] > < 0x71ee > < 371ee 03 71EE | 201F: jr nz, $1F >
xor a			
cpl			
ld ($caea),a		
ld b,$00		
ld c,$02		
call  rlabel_00_0CF4 
ld d,h			
ld e,l			
ld b,$00		
ld c,$03		
call  rlabel_00_0CF4 
xor a			
ld ($caea),a		
ld bc,$000c		
call  rlabel_00_0DFF 
call  rlabel_00_027C 
pop af			
dec a			
.DB $20 $d5 ; < ['$20', '$d5'] > < 0x7214 > < 37214 03 7214 | 20D5: jr nz, $D5 >
jp $7237		
rlabel_03_7219:
ld de,$0000		
ld c,$08		
call  rlabel_00_1311 
call  rlabel_00_13E5 
call  rlabel_00_037E 
ret			
rlabel_03_7228:
ld hl,$68a9		
ld de,$95c0		
ld bc,$0240		
ld a,$33		
call  rlabel_00_0D83 
ret			
ld a,$00		
ld ($caef),a		
call  rlabel_00_0EEE 
call  rlabel_03_7A79 
ld a,($cbd6)		
and $40			
.DB $28 $1c ; < ['$28', '$1c'] > < 0x7247 > < 37247 03 7247 | 281C: jr z, $1C >
ld a,$02		
ld ($caed),a		
ld a,$10		
call  rlabel_00_3071 
ld a,$90		
ld ($cb9b),a		
xor a			
ld ($c982),a		
call  rlabel_03_75E1 
call  rlabel_03_7978 
jp $733d		
ld a,($cbd6)		
and $80			
.DB $28 $1c ; < ['$28', '$1c'] > < 0x726a > < 3726a 03 726A | 281C: jr z, $1C >
ld a,$01		
ld ($caed),a		
ld a,$10		
call  rlabel_00_3071 
ld a,$d8		
ld ($cb9b),a		
xor a			
ld ($c982),a		
call  rlabel_03_75E1 
call  rlabel_03_79A3 
jp $72ba		
ld a,($ff00+$a5)	
and $02			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x728c > < 3728c 03 728C | 280B: jr z, $0B >
.incbin "data/03_728E.data"
ld a,($ff00+$a5)	
and $08			
.DB $28 $06 ; < ['$28', '$06'] > < 0x729d > < 3729d 03 729D | 2806: jr z, $06 >
.incbin "data/03_729F.data"
ld a,($ff00+$a5)	
and $04			
.DB $28 $0a ; < ['$28', '$0a'] > < 0x72a9 > < 372a9 03 72A9 | 280A: jr z, $0A >
.incbin "data/03_72AB.data"
call  rlabel_00_027C 
.DB $18 $82 ; < ['$18', '$82'] > < 0x72b8 > < 372b8 03 72B8 | 1882: jr $82 >
ld a,$01		
ld ($caef),a		
call  rlabel_03_7B41 
call  rlabel_00_0EEE 
call  rlabel_03_7A79 
ld a,($cbd6)		
and $40			
.DB $28 $18 ; < ['$28', '$18'] > < 0x72cd > < 372cd 03 72CD | 2818: jr z, $18 >
ld a,$00		
ld ($caed),a		
ld a,$10		
call  rlabel_00_3071 
call  rlabel_03_7B25 
ld a,$d8		
ld ($cb9b),a		
call  rlabel_03_7978 
jp $7237		
ld a,($cbd6)		
and $80			
.DB $28 $13 ; < ['$28', '$13'] > < 0x72ec > < 372ec 03 72EC | 2813: jr z, $13 >
ld a,$02		
ld ($caed),a		
ld a,$10		
call  rlabel_00_3071 
call  rlabel_03_7B25 
call  rlabel_03_79A3 
jp $733d		
ld a,($ff00+$a5)	
and $02			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x7305 > < 37305 03 7305 | 280B: jr z, $0B >
ld a,$1c		
call  rlabel_00_3071 
call  rlabel_03_7219 
jp $4365		
ld a,($ff00+$a5)	
and $08			
.DB $28 $06 ; < ['$28', '$06'] > < 0x7316 > < 37316 03 7316 | 2806: jr z, $06 >
.incbin "data/03_7318.data"
ld a,($ff00+$a5)	
and $04			
.DB $28 $06 ; < ['$28', '$06'] > < 0x7322 > < 37322 03 7322 | 2806: jr z, $06 >
.incbin "data/03_7324.data"
call  rlabel_00_027C 
.DB $18 $93 ; < ['$18', '$93'] > < 0x732d > < 3732d 03 732D | 1893: jr $93 >
.incbin "data/03_732F.data"
ld a,$02		
ld ($caef),a		
call  rlabel_03_7BCA 
call  rlabel_00_0EEE 
call  rlabel_03_7A79 
ld a,($cbd6)		
and $40			
.DB $28 $13 ; < ['$28', '$13'] > < 0x7350 > < 37350 03 7350 | 2813: jr z, $13 >
ld a,$01		
ld ($caed),a		
ld a,$10		
call  rlabel_00_3071 
call  rlabel_03_7BBC 
call  rlabel_03_7978 
jp $72ba		
ld a,($cbd6)		
and $80			
.DB $28 $18 ; < ['$28', '$18'] > < 0x736a > < 3736a 03 736A | 2818: jr z, $18 >
ld a,$00		
ld ($caed),a		
ld a,$10		
call  rlabel_00_3071 
call  rlabel_03_7BBC 
ld a,$90		
ld ($cb9b),a		
call  rlabel_03_79A3 
jp $7237		
ld a,($ff00+$a5)	
and $02			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x7388 > < 37388 03 7388 | 280B: jr z, $0B >
.incbin "data/03_738A.data"
ld a,($ff00+$a5)	
and $08			
.DB $28 $06 ; < ['$28', '$06'] > < 0x7399 > < 37399 03 7399 | 2806: jr z, $06 >
.incbin "data/03_739B.data"
ld a,($ff00+$a5)	
and $04			
.DB $28 $09 ; < ['$28', '$09'] > < 0x73a5 > < 373a5 03 73A5 | 2809: jr z, $09 >
.incbin "data/03_73A7.data"
call  rlabel_00_027C 
.DB $18 $90 ; < ['$18', '$90'] > < 0x73b3 > < 373b3 03 73B3 | 1890: jr $90 >
.incbin "data/03_73B5.data"
rlabel_03_73D0:
ld hl,$6ae9		
ld de,$8500		
ld bc,$0300		
ld a,$33		
call  rlabel_00_0DDA 
ret			
rlabel_03_73DF:
ld hl,$c028		
ld de,$cbbe		
xor a			
ld b,a			
ld a,b			
add a			
add a			
add a			
ld c,a			
ld (de),a		
inc de			
xor a			
ld (de),a		
inc de			
ld a,c			
add $dc			
ldi (hl),a		
ld a,b			
add a			
add a			
add a			
add $74			
ldi (hl),a		
ld a,b			
add a			
add $10			
ldi (hl),a		
ld a,$02		
ldi (hl),a		
inc b			
ld a,b			
cp $05			
.DB $38 $dd ; < ['$38', '$dd'] > < 0x7408 > < 37408 03 7408 | 38DD: jr c, $DD >
ret			
rlabel_03_740B:
ld hl,$cbbe		
ld de,$c028		
xor a			
ld b,a			
ldi a,(hl)		
ld c,a			
ld a,(hl)		
inc a			
ldd (hl),a		
cp $80			
.DB $30 $08 ; < ['$30', '$08'] > < 0x741a > < 3741a 03 741A | 3008: jr nc, $08 >
srl a			
srl a			
srl a			
.DB $18 $09 ; < ['$18', '$09'] > < 0x7422 > < 37422 03 7422 | 1809: jr $09 >
scf			
rr a			
scf			
rr a			
scf			
rr a			
add c			
ld (hl),a		
cp $40			
.DB $38 $06 ; < ['$38', '$06'] > < 0x7431 > < 37431 03 7431 | 3806: jr c, $06 >
ld a,$40		
ldi (hl),a		
ld a,$f6		
ldd (hl),a		
ld a,(hl)		
add $dc			
ld (de),a		
inc hl			
inc hl			
inc de			
inc de			
inc de			
inc de			
inc b			
ld a,b			
cp $05			
.DB $38 $ca ; < ['$38', '$ca'] > < 0x7447 > < 37447 03 7447 | 38CA: jr c, $CA >
ret			
rlabel_03_744A:
ld a,($cafb)		
call  rlabel_00_12DD 
ld ($cb87),a		
ld hl,$4001		
ld a,($cb87)		
add h			
ld h,a			
ld de,$9300		
ld bc,$0100		
ld a,$33		
call  rlabel_00_0D83 
ld hl,$4c01		
ld a,($cb87)		
add h			
ld h,a			
ld de,$8000		
ld bc,$0100		
ld a,$33		
call  rlabel_00_0D83 
ld hl,$5801		
ld a,($cb87)		
add a			
add a			
add a			
call  rlabel_00_0462 
ld de,$c990		
ld bc,$0008		
ld a,$33		
call  rlabel_00_0D50 
ld hl,$5861		
ld a,($cb87)		
add a			
add a			
add a			
call  rlabel_00_0462 
ld de,$c9c8		
ld bc,$0008		
ld a,$33		
call  rlabel_00_0D50 
ld a,$01		
ld ($caea),a		
ld b,$02		
ld c,$01		
ld d,$30		
ld e,$01		
ld h,$04		
ld l,$04		
call  rlabel_00_1260 
ld a,($cbf2)		
or a			
jp z,$74e9		
ld b,$02		
ld c,$01		
ld d,$00		
ld e,$00		
xor a			
push af			
add a			
add $02			
call  rlabel_00_0EAA 
inc b			
inc b			
inc d			
inc d			
pop af			
push af			
add a			
add $03			
call  rlabel_00_0EAA 
dec b			
dec b			
inc c			
inc d			
inc d			
pop af			
inc a			
cp $04			
.DB $38 $e2 ; < ['$38', '$e2'] > < 0x74e7 > < 374e7 03 74E7 | 38E2: jr c, $E2 >
ld de,$0001		
call  rlabel_00_12EA 
ld b,$02		
ld c,$06		
ld d,$40		
ld e,$07		
call  rlabel_00_0F47 
ld e,$0b		
call  rlabel_00_1128 
ld b,$04		
ld c,$07		
ld d,$45		
ld e,$04		
ld hl,$754c		
call  rlabel_00_0F47 
ld hl,$cb26		
ld c,$0a		
ld a,$3f		
call  rlabel_00_04E3 
ld a,$00		
ld (hl),a		
ld de,$003e		
call  rlabel_00_12EA 
ld a,(hl)		
and a			
.DB $28 $10 ; < ['$28', '$10'] > < 0x7522 > < 37522 03 7522 | 2810: jr z, $10 >
.incbin "data/03_7524.data"
ld b,$05		
ld c,$07		
ld d,$48		
ld e,$07		
ld hl,$cb26		
call  rlabel_00_0F47 
ld e,$11		
call  rlabel_00_1128 
xor a			
ld ($caea),a		
ret			
.incbin "data/03_754C.data"
rlabel_03_7553:
call  rlabel_03_7ABB 
xor a			
ld ($ff00+$a2),a	
ld a,$07		
ld ($ff00+$a3),a	
call  rlabel_00_027C 
ret			
rlabel_03_7561:
ld a,($cbf2)		
or a			
jp z,$7578		
ld a,$01		
ld ($ff00+$4f),a	
ld hl,$9800		
ld de,$9c00		
ld bc,$00e0		
call  rlabel_00_0DFF 
ld a,$00		
ld ($ff00+$4f),a	
ld hl,$9800		
ld de,$9c00		
ld bc,$00e0		
call  rlabel_00_0DFF 
ret			
rlabel_03_7589:
ld ($c982),a		
ld a,$00		
ld c,$08		
call  rlabel_00_05B1 
ld a,$24		
ld c,$08		
call  rlabel_00_05B1 
ld hl,$75ab		
ld a,($caed)		
add a			
call  rlabel_00_0462 
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,($c982)		
jp hl			
.incbin "data/03_75AB.data"
rlabel_03_75B3:
add $06			
ld b,a			
ld a,$0c		
push af			
ld c,$00		
ld d,$17		
ld e,$07		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc c			
ld e,$13		
call  rlabel_00_1128 
ld d,$13		
ld e,$07		
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc b			
pop af			
dec a			
.DB $20 $de ; < ['$20', '$de'] > < 0x75d8 > < 375d8 03 75D8 | 20DE: jr nz, $DE >
ret			
ld ($c982),a		
call  rlabel_03_75B3 
rlabel_03_75E1:
ld a,($c982)		
add $07			
ld b,a			
ld c,$04		
ld d,$53		
ld e,$04		
ld hl,$7681		
call  rlabel_00_0F47 
ld a,($c982)		
add $0a			
ld b,a			
ld c,$04		
ld a,($cb9b)		
ld d,a			
ld e,$04		
xor a			
call  rlabel_00_0F47 
ld a,($c982)		
add $0a			
ld b,a			
ld c,$0c		
xor a			
call  rlabel_00_0F47 
ld a,($c982)		
add $07			
ld d,a			
ld e,$07		
ld a,($cafb)		
ld c,a			
ld b,$04		
ld hl,$595a		
rst $28			
ld a,($c982)		
add $07			
ld d,a			
ld e,$0b		
ld a,($cafb)		
ld c,a			
ld b,$04		
ld hl,$598f		
rst $28			
ld de,$0010		
call  rlabel_00_12EA 
ld a,($c982)		
add $0a			
ld b,a			
ld c,$07		
ld d,$01		
ld e,$07		
xor a			
push af			
cp $07			
.DB $20 $12 ; < ['$20', '$12'] > < 0x764b > < 3764b 03 764B | 2012: jr nz, $12 >
ld a,($c982)		
add $0a			
ld b,a			
ld c,$0f		
push de			
ld de,$0020		
call  rlabel_00_12EA 
pop de			
.DB $18 $00 ; < ['$18', '$00'] > < 0x765d > < 3765d 03 765D | 1800: jr , $00 >
push hl			
push de			
push bc			
xor a			
ld c,a			
inc hl			
ld d,(hl)		
dec hl			
ld e,(hl)		
call  rlabel_00_11B8 
pop bc			
pop de			
push de			
push bc			
ld a,$04		
call  rlabel_00_1225 
pop bc			
pop de			
pop hl			
inc hl			
inc hl			
inc b			
pop af			
inc a			
cp $0d			
.DB $38 $c8 ; < ['$38', '$c8'] > < 0x767e > < 3767e 03 767E | 38C8: jr c, $C8 >
ret			
.incbin "data/03_7681.data"
ld ($c982),a		
call  rlabel_03_75B3 
xor a			
ld ($c983),a		
rlabel_03_76D5:
call  rlabel_03_7731 
call  rlabel_03_77B1 
ld a,$03		
ld ($cb92),a		
ld de,$002c		
call  rlabel_00_12EA 
ld e,$07		
xor a			
push af			
ld b,a			
add a			
ld d,a			
add a			
add a			
add d			
add $90			
ld d,a			
push hl			
push de			
push bc			
ldi a,(hl)		
ld d,(hl)		
ld e,a			
call  rlabel_03_4F65 
pop bc			
pop de			
ld a,b			
ld hl,$7728		
call  rlabel_00_0462 
ld b,(hl)		
ld hl,$cb26		
ld a,($c982)		
add b			
ld b,a			
ld a,($c983)		
add $09			
ld c,a			
call  rlabel_00_0F47 
push de			
ld e,$13		
call  rlabel_00_1128 
pop de			
pop hl			
inc hl			
inc hl			
pop af			
inc a			
cp $07			
.DB $38 $c2 ; < ['$38', '$c2'] > < 0x7725 > < 37725 03 7725 | 38C2: jr c, $C2 >
ret			
.incbin "data/03_7728.data"
rlabel_03_7731:
ld d,$30		
ld a,($cafb)		
call  rlabel_00_12DD 
add a			
ld hl,$7769		
call  rlabel_00_0462 
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,d			
call  rlabel_00_1185 
ld a,($ff00+$44)	
cp $50			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x774b > < 3774b 03 774B | 20FA: jr nz, $FA >
di			
call  rlabel_00_09AE 
ei			
ld de,$c9e8		
ld a,($cafb)		
call  rlabel_00_12DD 
add $10			
call  rlabel_00_0E10 
ld hl,$c9e8		
ld a,$04		
call  rlabel_00_0E88 
ret			
.incbin "data/03_7769.data"
rlabel_03_7788:
ld d,$30		
xor a			
push af			
push de			
add e			
ld e,$04		
call  rlabel_00_0EC7 
pop de			
inc d			
inc d			
pop af			
push af			
and $01			
.DB $20 $06 ; < ['$20', '$06'] > < 0x779a > < 3779a 03 779A | 2006: jr nz, $06 >
ld a,b			
add $10			
ld b,a			
.DB $18 $08 ; < ['$18', '$08'] > < 0x77a0 > < 377a0 03 77A0 | 1808: jr $08 >
ld a,b			
sub $10			
ld b,a			
ld a,c			
add $08			
ld c,a			
pop af			
inc a			
cp $06			
.DB $38 $db ; < ['$38', '$db'] > < 0x77ae > < 377ae 03 77AE | 38DB: jr c, $DB >
ret			
rlabel_03_77B1:
ld a,($c983)		
add $07			
ld c,a			
ld d,$28		
ld e,$07		
xor a			
push af			
add $07			
ld b,a			
ld a,($c982)		
add b			
ld b,a			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
inc b			
inc d			
pop af			
inc a			
cp $01			
.DB $20 $01 ; < ['$20', '$01'] > < 0x77d1 > < 377d1 03 77D1 | 2001: jr nz, $01 >
inc a			
cp $06			
.DB $20 $01 ; < ['$20', '$01'] > < 0x77d6 > < 377d6 03 77D6 | 2001: jr nz, $01 >
inc a			
cp $09			
.DB $38 $df ; < ['$38', '$df'] > < 0x77db > < 377db 03 77DB | 38DF: jr c, $DF >
ret			
ld ($c982),a		
call  rlabel_03_75B3 
ld d,$d8		
ld e,$04		
ld hl,$78ae		
ld b,$07		
ld c,$0e		
call  rlabel_03_780D 
ld b,$10		
ld c,$0a		
call  rlabel_03_780D 
ld b,$0a		
ld c,$07		
call  rlabel_03_780D 
ld b,$0d		
ld c,$11		
call  rlabel_03_780D 
xor a			
ld ($c983),a		
.DB $18 $09 ; < ['$18', '$09'] > < 0x780b > < 3780b 03 780B | 1809: jr $09 >
rlabel_03_780D:
ld a,($c982)		
add b			
ld b,a			
call  rlabel_00_0F47 
ret			
rlabel_03_7816:
ld hl,$6ed1		
ld de,$8e00		
ld bc,$0200		
ld a,$33		
call  rlabel_00_0D83 
ld hl,$788a		
xor a			
ld b,a			
xor a			
ld c,a			
push bc			
ld a,($c982)		
add $09			
add b			
ld b,a			
ld a,($c983)		
add $0a			
add c			
ld c,a			
ldi a,(hl)		
add $f0			
ld d,a			
ld e,$04		
push hl			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
pop hl			
pop bc			
inc c			
ld a,c			
cp $06			
.DB $38 $dc ; < ['$38', '$dc'] > < 0x784d > < 3784d 03 784D | 38DC: jr c, $DC >
inc b			
ld a,b			
cp $06			
.DB $38 $d4 ; < ['$38', '$d4'] > < 0x7853 > < 37853 03 7853 | 38D4: jr c, $D4 >
ld b,$07		
ld c,$0c		
ld d,$e0		
call  rlabel_03_787A 
ld b,$0f		
ld c,$0c		
ld d,$e4		
call  rlabel_03_787A 
ld b,$0b		
ld c,$08		
ld d,$e8		
call  rlabel_03_787A 
ld b,$0b		
ld c,$10		
ld d,$ec		
call  rlabel_03_787A 
ret			
rlabel_03_787A:
ld a,($c982)		
add b			
ld b,a			
ld a,($c983)		
add c			
ld c,a			
ld e,$04		
call  rlabel_00_1287 
ret			
.incbin "data/03_788A.data"
rlabel_03_78C4:
ld d,a			
add a			
add a			
add a			
add d			
add $5c			
ld d,a			
ld e,$07		
ld b,$07		
ld c,$01		
ld h,$03		
ld l,$03		
call  rlabel_00_1260 
call  rlabel_03_78F9 
ld b,$0b		
ld c,$01		
ld h,$03		
ld l,$03		
call  rlabel_00_1260 
call  rlabel_03_78F9 
ld b,$0f		
ld c,$01		
ld h,$03		
ld l,$03		
call  rlabel_00_1260 
call  rlabel_03_78F9 
ret			
rlabel_03_78F9:
ld a,d			
cp $77			
ret c			
ld d,$5c		
ret			
rlabel_03_7900:
ld b,$07		
ld c,$01		
ld d,$00		
ld e,$07		
ld h,$0b		
ld l,$03		
call  rlabel_00_1270 
ret			
rlabel_03_7910:
add a			
add a			
ld d,a			
add a			
add d			
add $50			
ld d,a			
ld e,$11		
ld a,$1b		
ld ($ff00+$9f),a	
ld ($ff00+$49),a	
ld a,$1c		
ld b,$07		
call  rlabel_03_7936 
ld a,$16		
ld b,$0b		
call  rlabel_03_7936 
ld a,$10		
ld b,$0f		
call  rlabel_03_7936 
ret			
rlabel_03_7936:
ld ($c983),a		
ld c,$01		
ld a,$03		
push af			
ld a,($c983)		
call  rlabel_00_0EAA 
inc b			
inc b			
inc d			
inc d			
ld a,($c983)		
inc a			
ld ($c983),a		
call  rlabel_00_0EAA 
dec b			
dec b			
inc c			
inc d			
inc d			
call  rlabel_03_7969 
ld a,($c983)		
inc a			
ld ($c983),a		
pop af			
dec a			
.DB $20 $d8 ; < ['$20', '$d8'] > < 0x7963 > < 37963 03 7963 | 20D8: jr nz, $D8 >
call  rlabel_00_027C 
ret			
rlabel_03_7969:
ld a,d			
cp $74			
ret c			
ld d,$50		
ret			
rlabel_03_7970:
ld a,$10		
ld c,$60		
call  rlabel_00_05B1 
ret			
rlabel_03_7978:
call  rlabel_03_79CE 
ld a,$f5		
call  rlabel_03_7589 
call  rlabel_03_79EB 
ld c,$20		
ld d,$20		
ld e,$c0		
call  rlabel_03_7A00 
ld a,$16		
push af			
call  rlabel_03_7A45 
ld a,($ff00+$a0)	
sub $04			
ld ($ff00+$a0),a	
call  rlabel_00_027C 
pop af			
dec a			
.DB $20 $ef ; < ['$20', '$ef'] > < 0x799d > < 3799d 03 799D | 20EF: jr nz, $EF >
call  rlabel_03_79DB 
ret			
rlabel_03_79A3:
call  rlabel_03_79CE 
ld a,$0b		
call  rlabel_03_7589 
call  rlabel_03_79EB 
ld c,$40		
ld d,$e0		
ld e,$e0		
call  rlabel_03_7A00 
ld a,$16		
push af			
call  rlabel_03_7A45 
ld a,($ff00+$a0)	
add $04			
ld ($ff00+$a0),a	
call  rlabel_00_027C 
pop af			
dec a			
.DB $20 $ef ; < ['$20', '$ef'] > < 0x79c8 > < 379c8 03 79C8 | 20EF: jr nz, $EF >
call  rlabel_03_79DB 
ret			
rlabel_03_79CE:
call  rlabel_03_7B16 
ld a,($caef)		
call  rlabel_03_7910 
call  rlabel_03_7900 
ret			
rlabel_03_79DB:
call  rlabel_03_7228 
ld a,($caed)		
call  rlabel_03_78C4 
call  rlabel_03_7970 
call  rlabel_03_7ABB 
ret			
rlabel_03_79EB:
ld hl,$c040		
ld de,$d415		
ld b,$18		
xor a			
ld (de),a		
inc de			
ldi a,(hl)		
inc hl			
inc hl			
inc hl			
ld (de),a		
inc de			
dec b			
.DB $20 $f4 ; < ['$20', '$f4'] > < 0x79fd > < 379fd 03 79FD | 20F4: jr nz, $F4 >
ret			
rlabel_03_7A00:
ld hl,$d455		
ld a,e			
call  rlabel_03_7A10 
ld a,d			
call  rlabel_03_7A10 
ld a,c			
call  rlabel_03_7A10 
ret			
rlabel_03_7A10:
push de			
cp $80			
.DB $30 $0a ; < ['$30', '$0a'] > < 0x7a13 > < 37a13 03 7A13 | 300A: jr nc, $0A >
ld d,a			
ld e,$00		
ld a,$2c		
call  rlabel_00_039F 
.DB $18 $19 ; < ['$18', '$19'] > < 0x7a1d > < 37a1d 03 7A1D | 1819: jr $19 >
xor $ff			
inc a			
ld d,a			
ld e,$00		
ld a,$2c		
call  rlabel_00_039F 
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
push bc			
ld b,$06		
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
dec b			
.DB $20 $f9 ; < ['$20', '$f9'] > < 0x7a40 > < 37a40 03 7A40 | 20F9: jr nz, $F9 >
pop bc			
pop de			
ret			
rlabel_03_7A45:
xor a			
ld b,a			
ld hl,$d455		
ld a,b			
add a			
call  rlabel_00_0462 
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
ld hl,$d415		
ld a,b			
add a			
call  rlabel_00_0462 
ld a,(hl)		
add e			
ldi (hl),a		
ld a,(hl)		
adc d			
ldd (hl),a		
ld a,(hl)		
add e			
ldi (hl),a		
ld a,(hl)		
adc d			
ldi (hl),a		
ld d,a			
ld hl,$c040		
ld a,b			
add a			
add a			
call  rlabel_00_0462 
ld (hl),d		
inc b			
ld a,b			
cp $12			
.DB $38 $cf ; < ['$38', '$cf'] > < 0x7a76 > < 37a76 03 7A76 | 38CF: jr c, $CF >
ret			
rlabel_03_7A79:
ld a,($cb97)		
srl a			
srl a			
srl a			
and $03			
.DB $28 $02 ; < ['$28', '$02'] > < 0x7a84 > < 37a84 03 7A84 | 2802: jr z, $02 >
dec a			
dec a			
push af			
ld b,a			
ld a,$2e		
sub b			
ld b,a			
ld c,$0a		
ld d,$86		
ld e,$07		
ld a,$00		
call  rlabel_00_0EC7 
ld c,$12		
inc d			
inc d			
ld a,$01		
call  rlabel_00_0EC7 
pop af			
add $46			
ld b,a			
ld c,$0a		
dec d			
dec d			
ld e,$47		
ld a,$24		
call  rlabel_00_0EC7 
ld c,$12		
inc d			
inc d			
ld a,$25		
call  rlabel_00_0EC7 
ret			
rlabel_03_7ABB:
ld hl,$d5d5		
ld a,$01		
ldi (hl),a		
ld a,$09		
ldi (hl),a		
ld de,$fe10		
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld c,$a8		
ld d,$1c		
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
.DB $20 $ed ; < ['$20', '$ed'] > < 0x7ae2 > < 37ae2 03 7AE2 | 20ED: jr nz, $ED >
ld a,$a0		
ld ($cbcb),a		
ret			
rlabel_03_7AEA:
ld hl,$d5d9		
ld a,($cbcb)		
ld b,a			
cp $32			
.DB $38 $0c ; < ['$38', '$0c'] > < 0x7af3 > < 37af3 03 7AF3 | 380C: jr c, $0C >
cp $6e			
.DB $30 $08 ; < ['$30', '$08'] > < 0x7af7 > < 37af7 03 7AF7 | 3008: jr nc, $08 >
ld a,($cb97)		
and $01			
.DB $20 $03 ; < ['$20', '$03'] > < 0x7afe > < 37afe 03 7AFE | 2003: jr nz, $03 >
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
.DB $20 $f5 ; < ['$20', '$f5'] > < 0x7b13 > < 37b13 03 7B13 | 20F5: jr nz, $F5 >
ret			
rlabel_03_7B16:
ld hl,$d5d9		
ld b,$0a		
ld a,$c0		
ldi (hl),a		
inc hl			
inc hl			
inc hl			
dec b			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x7b22 > < 37b22 03 7B22 | 20F7: jr nz, $F7 >
ret			
rlabel_03_7B25:
ld b,$07		
ld c,$04		
push bc			
ld a,$10		
ld c,$18		
call  rlabel_00_05B1 
call  rlabel_00_027C 
pop bc			
ld d,$00		
ld e,$07		
ld h,$08		
ld l,$03		
call  rlabel_00_1270 
ret			
rlabel_03_7B41:
xor a			
ld ($c982),a		
ld ($c983),a		
rlabel_03_7B48:
ld hl,$6e61		
ld de,$8d80		
ld bc,$0080		
ld a,$33		
call  rlabel_00_0D83 
ld a,($c982)		
add $08			
add a			
add a			
add a			
add $04			
ld b,a			
ld a,($c983)		
add $04			
add a			
add a			
add a			
ld c,a			
ld e,$10		
call  rlabel_03_7788 
ld hl,$7b92		
ldi a,(hl)		
and a			
ret z			
ld b,a			
ld a,($c982)		
add b			
ld b,a			
ldi a,(hl)		
ld c,a			
ld a,($c983)		
add c			
ld c,a			
ldi a,(hl)		
add $d8			
ld d,a			
ld e,$05		
push hl			
call  rlabel_00_0CF4 
call  rlabel_00_0D0D 
pop hl			
.DB $18 $e0 ; < ['$18', '$e0'] > < 0x7b90 > < 37b90 03 7B90 | 18E0: jr $E0 >
.incbin "data/03_7B92.data"
rlabel_03_7BBC:
ld a,$10		
ld c,$48		
call  rlabel_00_05B1 
call  rlabel_00_027C 
call  rlabel_03_73D0 
ret			
rlabel_03_7BCA:
ld a,$09		
ld ($c984),a		
ld a,$0a		
ld ($c985),a		
rlabel_03_7BD4:
ld a,$1b		
ld ($ff00+$9f),a	
ld ($ff00+$49),a	
ld a,$00		
call  rlabel_03_6D97 
ld a,e			
ld ($cb76),a		
ld a,$02		
call  rlabel_03_6D97 
ld a,e			
ld ($cb77),a		
call  rlabel_03_7CAB 
ld hl,$8500		
ld e,$18		
call  rlabel_03_7CFB 
call  rlabel_03_7D2D 
inc hl			
inc hl			
dec e			
.DB $20 $f5 ; < ['$20', '$f5'] > < 0x7bfd > < 37bfd 03 7BFD | 20F5: jr nz, $F5 >
ld a,$01		
call  rlabel_03_6D97 
ld a,e			
ld ($cb76),a		
ld a,$02		
call  rlabel_03_6D97 
ld a,e			
ld ($cb77),a		
call  rlabel_03_7CAB 
ld hl,$855e		
ld e,$19		
call  rlabel_03_7CFB 
call  rlabel_03_7D2D 
dec hl			
dec hl			
dec e			
.DB $20 $f5 ; < ['$20', '$f5'] > < 0x7c22 > < 37c22 03 7C22 | 20F5: jr nz, $F5 >
ld a,$00		
call  rlabel_03_6D97 
ld a,e			
ld ($cb76),a		
ld a,$03		
call  rlabel_03_6D97 
ld a,e			
ld ($cb77),a		
call  rlabel_03_7CAB 
ld hl,$8620		
ld e,$18		
call  rlabel_03_7CC9 
call  rlabel_03_7D2D 
inc hl			
inc hl			
dec e			
.DB $20 $f5 ; < ['$20', '$f5'] > < 0x7c47 > < 37c47 03 7C47 | 20F5: jr nz, $F5 >
ld a,$01		
call  rlabel_03_6D97 
ld a,e			
ld ($cb76),a		
ld a,$03		
call  rlabel_03_6D97 
ld a,e			
ld ($cb77),a		
call  rlabel_03_7CAB 
ld hl,$867e		
ld e,$19		
call  rlabel_03_7CC9 
call  rlabel_03_7D2D 
dec hl			
dec hl			
dec e			
.DB $20 $f5 ; < ['$20', '$f5'] > < 0x7c6c > < 37c6c 03 7C6C | 20F5: jr nz, $F5 >
xor a			
ld b,a			
ld c,a			
ld e,a			
push bc			
push de			
ld a,($c984)		
add b			
add b			
add a			
add a			
add a			
ld b,a			
ld d,c			
ld a,($c985)		
add c			
add a			
add a			
add a			
ld c,a			
ld a,d			
cp $03			
.DB $38 $01 ; < ['$38', '$01'] > < 0x7c89 > < 37c89 03 7C89 | 3801: jr c, $01 >
dec c			
ld a,e			
add a			
add $50			
ld d,a			
ld a,e			
add $10			
ld e,$11		
call  rlabel_00_0EC7 
pop de			
pop bc			
inc e			
inc b			
ld a,b			
cp $03			
.DB $38 $d0 ; < ['$38', '$d0'] > < 0x7ca0 > < 37ca0 03 7CA0 | 38D0: jr c, $D0 >
xor a			
ld b,a			
inc c			
ld a,c			
cp $06			
.DB $38 $c8 ; < ['$38', '$c8'] > < 0x7ca8 > < 37ca8 03 7CA8 | 38C8: jr c, $C8 >
ret			
rlabel_03_7CAB:
ld a,($cb77)		
ld d,a			
ld e,$00		
ld a,($cb76)		
call  rlabel_00_039F 
xor a			
ld ($cb78),a		
ld a,$f0		
ld ($cb79),a		
ld a,d			
ld ($cb7a),a		
ld a,e			
ld ($cb7b),a		
ret			
rlabel_03_7CC9:
xor a			
ld b,a			
ld c,a			
ld d,a			
ld a,($cb76)		
add a			
cp e			
ret c			
ld a,e			
cp $18			
ret nc			
push de			
ld a,($cb7b)		
ld e,a			
ld a,($cb79)		
add e			
ld ($cb79),a		
ld a,($cb7a)		
ld d,a			
ld a,($cb78)		
adc d			
ld ($cb78),a		
pop de			
and a			
ret z			
scf			
rr b			
rr c			
rr d			
dec a			
.DB $18 $f4 ; < ['$18', '$f4'] > < 0x7cf9 > < 37cf9 03 7CF9 | 18F4: jr $F4 >
rlabel_03_7CFB:
xor a			
ld b,a			
ld c,a			
ld d,a			
ld a,($cb76)		
add a			
cp e			
ret c			
ld a,e			
cp $18			
ret nc			
push de			
ld a,($cb7b)		
ld e,a			
ld a,($cb79)		
add e			
ld ($cb79),a		
ld a,($cb7a)		
ld d,a			
ld a,($cb78)		
adc d			
ld ($cb78),a		
pop de			
and a			
ret z			
scf			
rl d			
rl c			
rl b			
dec a			
.DB $18 $f4 ; < ['$18', '$f4'] > < 0x7d2b > < 37d2b 03 7D2B | 18F4: jr $F4 >
rlabel_03_7D2D:
push hl			
push de			
ld d,b			
call  rlabel_00_0D25 
inc hl			
call  rlabel_00_0D25 
ld de,$005f		
add hl,de		
ld d,c			
call  rlabel_00_0D25 
inc hl			
call  rlabel_00_0D25 
ld de,$005f		
add hl,de		
pop de			
call  rlabel_00_0D25 
inc hl			
call  rlabel_00_0D25 
pop hl			
ret			
rlabel_03_7D51:
ld hl,$70d1		
.DB $18 $03 ; < ['$18', '$03'] > < 0x7d54 > < 37d54 03 7D54 | 1803: jr $03 >
rlabel_03_7D56:
ld hl,$7211		
ld de,$81c0		
ld bc,$0140		
ld a,$33		
call  rlabel_00_0D83 
ret			
call  rlabel_03_5E43 
call  rlabel_03_740B 
call  rlabel_03_7AEA 
ret			
.incbin "data/03_7D6F.data"
