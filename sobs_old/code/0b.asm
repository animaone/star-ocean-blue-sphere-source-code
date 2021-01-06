.BANK $0b SLOT 1
.ORG 0
.incbin "data/0b_4000.data"
ld a,($cfd0)		
ld de,$4016		
call  rlabel_00_049C 
inc de			
inc de			
ld hl,$d2d5		
ld a,$c3		
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld (hl),d		
ret			
.incbin "data/0b_4016.data"
call  rlabel_0B_6EAC 
.incbin "data/0b_4119.data"
ld bc,$3c14		
ld a,$02		
call  rlabel_0B_73AC 
ld a,($cfd0)		
cp $01			
.DB $28 $23 ; < ['$28', '$23'] > < 0x4142 > < b4142 0B 4142 | 2823: jr z, $23 >
call  rlabel_0B_7032 
.incbin "data/0b_4147.data"
call  rlabel_0B_706D 
.incbin "data/0b_4153.data"
call  rlabel_0B_6EAC 
.incbin "data/0b_4370.data"
ld a,d			
cp $08			
jp c,$72b4		
cp $48			
jp nc,$72b0		
ld a,($cfd0)		
cp $08			
.DB $28 $10 ; < ['$28', '$10'] > < 0x43a0 > < b43a0 0B 43A0 | 2810: jr z, $10 >
ld a,($cfd0)		
cp $09			
.DB $28 $15 ; < ['$28', '$15'] > < 0x43a7 > < b43a7 0B 43A7 | 2815: jr z, $15 >
call  rlabel_0B_7032 
.incbin "data/0b_43AC.data"
bit 4,e			
jp nz,$72b8		
.incbin "data/0b_43CF.data"
jp $72a8		
call  rlabel_0B_71DD 
.incbin "data/0b_43FD.data"
.DB $cd $dd $71 ; < ['$cd', '$dd', '$71'] > < 0x4400 > < b4400 0B 4400 | CDDD71: call $71DD >
.incbin "data/0b_4403.data"
.DB $cb $53 ; < ['$cb', '$53'] > < 0x4406 > < b4406 0B 4406 | CB53: bit $02, e >
ret nz			
.incbin "data/0b_4409.data"
call  rlabel_0B_6EAC 
.incbin "data/0b_4864.data"
ld a,d			
cp $10			
jp c,$72b4		
cp $40			
jp nc,$72b0		
ld a,($cfd0)		
cp $17			
jr z,$10		
ld a,($cfd0)		
cp $18			
jr z,$09		
call  rlabel_0B_7032 
.incbin "data/0b_48A0.data"
.DB $fa $d0 $cf ; < ['$fa', '$d0', '$cf'] > < 0x48b2 > < b48b2 0B 48B2 | FAD0CF: ld a, [$CFD0] >
cp $17			
.DB $28 $10 ; < ['$28', '$10'] > < 0x48b7 > < b48b7 0B 48B7 | 2810: jr z, $10 >
ld a,($cfd0)		
cp $18			
.DB $28 $09 ; < ['$28', '$09'] > < 0x48be > < b48be 0B 48BE | 2809: jr z, $09 >
call  rlabel_0B_7032 
.incbin "data/0b_48C3.data"
call  rlabel_0B_71DD 
.incbin "data/0b_48D5.data"
.DB $cd $dd $71 ; < ['$cd', '$dd', '$71'] > < 0x48d8 > < b48d8 0B 48D8 | CDDD71: call $71DD >
.incbin "data/0b_48DB.data"
.DB $cd $a2 $71 ; < ['$cd', '$a2', '$71'] > < 0x48de > < b48de 0B 48DE | CDA271: call $71A2 >
.incbin "data/0b_48E1.data"
ld a,($cfd0)		
cp $17			
.DB $28 $10 ; < ['$28', '$10'] > < 0x4904 > < b4904 0B 4904 | 2810: jr z, $10 >
ld a,($cfd0)		
cp $18			
.DB $28 $12 ; < ['$28', '$12'] > < 0x490b > < b490b 0B 490B | 2812: jr z, $12 >
call  rlabel_0B_7032 
.incbin "data/0b_4910.data"
rlabel_0B_6EAC:
pop hl			
ld b,$00		
ld a,($d503)		
and a			
jp nz,$6fa4		
ld a,($d2d9)		
push hl			
and a			
call z,$6f6f		
pop hl			
cp $80			
jp z,$6fa4		
inc a			
jp z,$6f5b		
dec a			
add a			
add a			
ld c,a			
add hl,bc		
call  rlabel_0B_7113 
ld a,($d3c3)		
and a			
jp nz,$7385		
ld a,($d3ec)		
and a			
jp nz,$7385		
ld a,($d415)		
and a			
jp nz,$7385		
ldi a,(hl)		
ld ($d2dc),a		
push hl			
call  rlabel_0B_6FDA 
pop hl			
jp z,$6f6a		
ldi a,(hl)		
push hl			
inc a			
.DB $28 $39 ; < ['$28', '$39'] > < 0x6ef4 > < b6ef4 0B 6EF4 | 2839: jr z, $39 >
dec a			
ld ($d4de),a		
ld b,$b0		
ld hl,$65cf		
rst $28			
ld a,($d53e)		
ld ($d48a),a		
ld a,($d53d)		
and a			
.DB $18 $12 ; < ['$18', '$12'] > < 0x6f0a > < b6f0a 0B 6F0A | 1812: jr $12 >
.incbin "data/0b_6F0C.data"
xor a			
ld ($d2e3),a		
ld a,($d53d)		
and a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x6f26 > < b6f26 0B 6F26 | 2807: jr z, $07 >
.incbin "data/0b_6F28.data"
xor a			
ld hl,$d2db		
ldd (hl),a		
ldd (hl),a		
ldd a,(hl)		
ldi (hl),a		
ld (hl),$ff		
pop hl			
ld a,($d2d8)		
and a			
.DB $20 $06 ; < ['$20', '$06'] > < 0x6f3e > < b6f3e 0B 6F3E | 2006: jr nz, $06 >
ld a,($d5aa)		
and $03			
ret nz			
ld a,($d2e7)		
inc a			
.DB $28 $03 ; < ['$28', '$03'] > < 0x6f4a > < b6f4a 0B 6F4A | 2803: jr z, $03 >
ld ($d2e7),a		
ld a,($d2de)		
ld d,a			
ld a,($d48d)		
ld e,a			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
jp hl			
ld a,($d2d8)		
cp $80			
.DB $28 $42 ; < ['$28', '$42'] > < 0x6f60 > < b6f60 0B 6F60 | 2842: jr z, $42 >
add a			
add a			
inc a			
inc a			
ld c,a			
add hl,bc		
.DB $18 $d0 ; < ['$18', '$d0'] > < 0x6f68 > < b6f68 0B 6F68 | 18D0: jr $D0 >
.incbin "data/0b_6F6A.data"
ld hl,$d2e4		
ldi a,(hl)		
and a			
ret z			
.incbin "data/0b_6F75.data"
rlabel_0B_6FDA:
and $7f			
.DB $28 $24 ; < ['$28', '$24'] > < 0x6fdc > < b6fdc 0B 6FDC | 2824: jr z, $24 >
ld hl,$d508		
ld bc,$0009		
ld e,$05		
bit 5,a			
.DB $20 $0d ; < ['$20', '$0d'] > < 0x6fe8 > < b6fe8 0B 6FE8 | 200D: jr nz, $0D >
rra			
.DB $30 $04 ; < ['$30', '$04'] > < 0x6feb > < b6feb 0B 6FEB | 3004: jr nc, $04 >
bit 7,(hl)		
.DB $20 $15 ; < ['$20', '$15'] > < 0x6fef > < b6fef 0B 6FEF | 2015: jr nz, $15 >
add hl,bc		
dec e			
.DB $20 $f5 ; < ['$20', '$f5'] > < 0x6ff3 > < b6ff3 0B 6FF3 | 20F5: jr nz, $F5 >
.DB $18 $0b ; < ['$18', '$0b'] > < 0x6ff5 > < b6ff5 0B 6FF5 | 180B: jr $0B >
.incbin "data/0b_6FF7.data"
ld a,$01		
and a			
ret			
.incbin "data/0b_7006.data"
rlabel_0B_701B:
ld a,($d2da)		
jp $3005		
.incbin "data/0b_7021.data"
rlabel_0B_7032:
call  rlabel_00_304A 
ld b,a			
ld c,$00		
pop hl			
ldi a,(hl)		
add c			
.DB $30 $02 ; < ['$30', '$02'] > < 0x703b > < b703b 0B 703B | 3002: jr nc, $02 >
ld a,$ff		
ld c,a			
cp b			
.DB $38 $04 ; < ['$38', '$04'] > < 0x7041 > < b7041 0B 7041 | 3804: jr c, $04 >
ldi a,(hl)		
ld h,(hl)		
ld l,a			
jp hl			
inc hl			
inc hl			
.DB $18 $ee ; < ['$18', '$ee'] > < 0x7049 > < b7049 0B 7049 | 18EE: jr $EE >
.incbin "data/0b_704B.data"
ld hl,$d2da		
inc (hl)		
ret			
.incbin "data/0b_7065.data"
rlabel_0B_706D:
ld l,$07		
.DB $18 $04 ; < ['$18', '$04'] > < 0x706f > < b706f 0B 706F | 1804: jr $04 >
.incbin "data/0b_7071.data"
call  rlabel_00_304A 
and l			
pop hl			
call  rlabel_00_0462 
ld a,(hl)		
.DB $18 $07 ; < ['$18', '$07'] > < 0x707e > < b707e 0B 707E | 1807: jr $07 >
.incbin "data/0b_7080.data"
ld ($d2d9),a		
xor a			
ld ($d5ac),a		
ld hl,$d48a		
ld a,(hl)		
ld (hl),$00		
and a			
.DB $28 $06 ; < ['$28', '$06'] > < 0x7095 > < b7095 0B 7095 | 2806: jr z, $06 >
.incbin "data/0b_7097.data"
ld a,($d485)		
and a			
ret z			
.incbin "data/0b_70A2.data"
rlabel_0B_70A9:
pop hl			
ld a,(hl)		
.DB $18 $da ; < ['$18', '$da'] > < 0x70ab > < b70ab 0B 70AB | 18DA: jr $DA >
call  rlabel_0B_7435 
jp $7060		
call  rlabel_0B_7113 
ld a,($d438)		
ld c,a			
ld a,($d494)		
sub c			
.DB $28 $09 ; < ['$28', '$09'] > < 0x70be > < b70be 0B 70BE | 2809: jr z, $09 >
ld a,($d496)		
sub c			
.DB $28 $03 ; < ['$28', '$03'] > < 0x70c4 > < b70c4 0B 70C4 | 2803: jr z, $03 >
jp $7385		
ld ($d46f),a		
jp $7087		
call  rlabel_0B_73FA 
call  rlabel_0B_7435 
jp $7060		
ld hl,$d462		
res 2,(hl)		
ld a,e			
ld de,$ff8a		
ld (de),a		
ld a,$ff		
ld ($ff00+$8b),a	
call  rlabel_0B_73FA 
call  rlabel_0B_7435 
jp $7060		
ld hl,$d462		
bit 2,(hl)		
ret z			
ld a,($d438)		
cp e			
jp nz,$7385		
jp $7060		
inc de			
ld a,(de)		
ld c,a			
ld a,($d438)		
cp c			
ret nz			
call  rlabel_0B_7385 
jp $7060		
rlabel_0B_710D:
ld a,$01		
ld ($d2dd),a		
ret			
rlabel_0B_7113:
xor a			
ld ($d2dd),a		
ret			
call  rlabel_0B_710D 
jp $7060		
.incbin "data/0b_711E.data"
ld hl,$d43a		
di			
ld e,(hl)		
inc hl			
ld d,(hl)		
call  rlabel_0B_7133 
ld a,d			
ldd (hl),a		
ld (hl),e		
ei			
ret			
rlabel_0B_7133:
bit 7,a			
jp z,$045d		
add e			
cp e			
ld e,a			
ret c			
ret z			
dec d			
ret			
rlabel_0B_713F:
pop hl			
ld e,(hl)		
call  rlabel_0B_701B 
.incbin "data/0b_7144.data"
pop de			
ld a,(de)		
inc de			
ld c,a			
call  rlabel_0B_701B 
.incbin "data/0b_71A9.data"
ld a,($d34b)		
and a			
ret nz			
ld a,c			
call  rlabel_0B_7242 
ret nc			
jp $70ad		
.incbin "data/0b_71C0.data"
rlabel_0B_71DD:
pop bc			
ld l,c			
ld h,b			
inc hl			
inc hl			
ld e,(hl)		
call  rlabel_0B_701B 
.incbin "data/0b_71E6.data"
ld l,c			
ld h,b			
ldi a,(hl)		
ld c,a			
ld ($d2e2),a		
ld b,(hl)		
ld a,($d2de)		
cp c			
.DB $30 $04 ; < ['$30', '$04'] > < 0x720e > < b720e 0B 720E | 3004: jr nc, $04 >
ld a,b			
cpl			
inc a			
ld b,a			
ld a,b			
ld ($d2e1),a		
jp $7060		
ld a,$a0		
call  rlabel_0B_7242 
jp z,$70ad		
ld a,($d2e2)		
ld c,a			
ld a,($d2e1)		
ld b,a			
bit 7,a			
ld a,($d2de)		
.DB $20 $08 ; < ['$20', '$08'] > < 0x7230 > < b7230 0B 7230 | 2008: jr nz, $08 >
cp c			
jp c,$70ad		
ld a,b			
jp $7124		
cp c			
jp nc,$70ad		
ld a,b			
jp $7124		
rlabel_0B_7242:
ld hl,$d2db		
inc (hl)		
cp (hl)			
ret			
rlabel_0B_7248:
ld hl,$d2db		
ld a,(hl)		
and a			
ret z			
dec (hl)		
ret			
.incbin "data/0b_7250.data"
.DB $cd $3f $71 ; < ['$cd', '$3f', '$71'] > < 0x7254 > < b7254 0B 7254 | CD3F71: call $713F >
.incbin "data/0b_7257.data"
call  rlabel_0B_713F 
.incbin "data/0b_7267.data"
call  rlabel_0B_713F 
.incbin "data/0b_726F.data"
.DB $cd $a9 $70 ; < ['$cd', '$a9', '$70'] > < 0x72a8 > < b72a8 0B 72A8 | CDA970: call $70A9 >
.incbin "data/0b_72AB.data"
.DB $cd $a9 $70 ; < ['$cd', '$a9', '$70'] > < 0x72b0 > < b72b0 0B 72B0 | CDA970: call $70A9 >
.incbin "data/0b_72B3.data"
call  rlabel_0B_70A9 
.incbin "data/0b_72B7.data"
call  rlabel_0B_70A9 
.incbin "data/0b_72BB.data"
call  rlabel_0B_70A9 
.incbin "data/0b_72BF.data"
call  rlabel_0B_70A9 
.incbin "data/0b_72C3.data"
.DB $cd $a9 $70 ; < ['$cd', '$a9', '$70'] > < 0x72c4 > < b72c4 0B 72C4 | CDA970: call $70A9 >
.incbin "data/0b_72C7.data"
ld a,($d334)		
cp $03			
ld a,$00		
.DB $28 $09 ; < ['$28', '$09'] > < 0x7317 > < b7317 0B 7317 | 2809: jr z, $09 >
call  rlabel_0B_73C3 
xor a			
inc b			
.DB $20 $02 ; < ['$20', '$02'] > < 0x731e > < b731e 0B 731E | 2002: jr nz, $02 >
ld a,e			
inc a			
ld ($d2de),a		
ld hl,$d2df		
ld a,(hl)		
and a			
call nz,$7339		
ld hl,$d2e0		
ld a,(hl)		
and a			
call nz,$7358		
call $d2d5		
ret			
ld (hl),$00		
ld a,($d2dd)		
and a			
ret nz			
ld a,($d2dc)		
rla			
ret nc			
ld hl,$d2d6		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
dec hl			
ldd a,(hl)		
ld l,(hl)		
ld h,a			
ld a,($d2de)		
ld d,a			
ld a,($d48d)		
ld e,a			
jp hl			
ld a,($d2dd)		
and a			
ret nz			
ld (hl),$00		
call  rlabel_0B_70A9 
.incbin "data/0b_7362.data"
ld b,$1f		
.DB $18 $04 ; < ['$18', '$04'] > < 0x7369 > < b7369 0B 7369 | 1804: jr $04 >
.incbin "data/0b_736B.data"
ld a,($d2db)		
or a			
.DB $20 $09 ; < ['$20', '$09'] > < 0x7373 > < b7373 0B 7373 | 2009: jr nz, $09 >
call  rlabel_00_304A 
and b			
add b			
inc a			
ld ($d2db),a		
call  rlabel_0B_7248 
ret nz			
jp $72a8		
rlabel_0B_7385:
ld a,($d46f)		
and a			
ret nz			
ld a,($d43e)		
and a			
ret z			
.incbin "data/0b_738F.data"
rlabel_0B_73AC:
push de			
ld e,a			
ld a,d			
cp b			
.DB $38 $0f ; < ['$38', '$0f'] > < 0x73b0 > < b73b0 0B 73B0 | 380F: jr c, $0F >
.incbin "data/0b_73B2.data"
pop de			
ret			
rlabel_0B_73C3:
ld bc,$ffff		
ld e,c			
ld d,$00		
ld hl,$d417		
ld a,($d5af)		
and $90			
call z,$73eb		
ld hl,$d419		
ld a,($d5b0)		
and $90			
call z,$73eb		
ld hl,$d41b		
ld a,($d5b1)		
and $90			
call z,$73eb		
ret			
di			
ldd a,(hl)		
rla			
.DB $38 $07 ; < ['$38', '$07'] > < 0x73ee > < b73ee 0B 73EE | 3807: jr c, $07 >
ld a,(hl)		
ei			
cp e			
ret nc			
ld e,a			
ld c,d			
ret			
ei			
inc b			
ret			
rlabel_0B_73FA:
ld hl,$d470		
inc (hl)		
ld hl,$d465		
ldi a,(hl)		
ld (hl),a		
.DB $18 $04 ; < ['$18', '$04'] > < 0x7403 > < b7403 0B 7403 | 1804: jr $04 >
.incbin "data/0b_7405.data"
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
call z,$7430		
ld a,(de)		
cp $ff			
.DB $28 $04 ; < ['$28', '$04'] > < 0x741d > < b741d 0B 741D | 2804: jr z, $04 >
inc de			
ld (hl),a		
.DB $18 $f0 ; < ['$18', '$f0'] > < 0x7421 > < b7421 0B 7421 | 18F0: jr $F0 >
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
rlabel_0B_7435:
xor a			
ld ($d43c),a		
inc a			
ld ($d46f),a		
ret			
.incbin "data/0b_743E.data"
