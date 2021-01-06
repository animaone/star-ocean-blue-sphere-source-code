.BANK $0c SLOT 1
.ORG 0
.incbin "data/0c_4000.data"
call  rlabel_0C_472D 
cp $02			
.DB $38 $20 ; < ['$38', '$20'] > < 0x4702 > < c4702 0C 4702 | 3820: jr c, $20 >
.incbin "data/0c_4704.data"
ld c,$80		
ret			
.incbin "data/0c_4727.data"
rlabel_0C_472D:
ld a,c			
sub $60			
ld c,a			
ld de,$cb76		
ld hl,$7a3f		
ld a,$86		
call  rlabel_00_0D6C 
ld a,(de)		
ld b,a			
inc hl			
ld a,c			
call  rlabel_00_0462 
ld a,c			
call  rlabel_00_0462 
ld a,$86		
call  rlabel_00_0D6C 
ld a,(de)		
ld c,a			
inc hl			
ld a,$86		
call  rlabel_00_0D6C 
ld a,(de)		
ld h,a			
ld l,c			
ld a,$05		
call  rlabel_00_0462 
ld a,b			
call  rlabel_00_0D6C 
ld a,(de)		
ret			
.incbin "data/0c_4762.data"
ld a,($d326)		
and a			
ret z			
.incbin "data/0c_492E.data"
xor a			
ld ($d2ee),a		
call  rlabel_0C_4DA0 
ld a,($d2e8)		
sub $a0			
ld b,$0c		
ld hl,$5004		
call  rlabel_0C_4FEA 
ld b,a			
call  rlabel_00_0028 
call  rlabel_0C_4DF5 
ret			
rlabel_0C_4DA0:
ld a,c			
ld ($d2e8),a		
ld a,d			
ld ($d2e9),a		
ld a,e			
ld ($d2ea),a		
ld b,$0c		
ld hl,$4eb3		
rst $28			
ld hl,$c9c8		
call  rlabel_00_0E6B 
call  rlabel_0C_4E22 
ld a,($d2e9)		
ld de,$0019		
call  rlabel_00_12ED 
ld a,(hl)		
ld ($d2eb),a		
xor a			
ld ($d2ed),a		
ld a,($ff00+$44)	
cp $68			
.DB $38 $fa ; < ['$38', '$fa'] > < 0x4dd0 > < c4dd0 0C 4DD0 | 38FA: jr c, $FA >
cp $90			
.DB $30 $f6 ; < ['$30', '$f6'] > < 0x4dd4 > < c4dd4 0C 4DD4 | 30F6: jr nc, $F6 >
ld b,$0a		
ld hl,$68f9		
rst $28			
ld a,($d2ee)		
and a			
.DB $20 $12 ; < ['$20', '$12'] > < 0x4de0 > < c4de0 0C 4DE0 | 2012: jr nz, $12 >
ld a,($d2e8)		
ld c,a			
ld b,$0c		
ld hl,$46fd		
rst $28			
ld a,c			
cp $80			
.DB $38 $03 ; < ['$38', '$03'] > < 0x4def > < c4def 0C 4DEF | 3803: jr c, $03 >
call  rlabel_0C_4E39 
ret			
rlabel_0C_4DF5:
call  rlabel_0C_4E22 
ld b,$0d		
ld hl,$44bc		
rst $28			
ld a,($ff00+$44)	
cp $68			
.DB $38 $fa ; < ['$38', '$fa'] > < 0x4e02 > < c4e02 0C 4E02 | 38FA: jr c, $FA >
cp $90			
.DB $30 $f6 ; < ['$30', '$f6'] > < 0x4e06 > < c4e06 0C 4E06 | 30F6: jr nc, $F6 >
ld c,$07		
ld b,$0a		
ld hl,$6902		
rst $28			
ld a,($d2ed)		
and a			
.DB $28 $06 ; < ['$28', '$06'] > < 0x4e14 > < c4e14 0C 4E14 | 2806: jr z, $06 >
ld b,$0a		
ld hl,$6263		
rst $28			
ld a,$00		
call  rlabel_00_3071 
ret			
rlabel_0C_4E22:
ld hl,$d5cc		
ld a,$10		
push af			
ld c,$10		
call  rlabel_00_04E2 
pop af			
dec a			
.DB $20 $f6 ; < ['$20', '$f6'] > < 0x4e2f > < c4e2f 0C 4E2F | 20F6: jr nz, $F6 >
ld a,$02		
ld c,$70		
call  rlabel_00_05B1 
ret			
rlabel_0C_4E39:
ld a,($d2ee)		
and a			
.DB $20 $3a ; < ['$20', '$3a'] > < 0x4e3d > < c4e3d 0C 4E3D | 203A: jr nz, $3A >
push bc			
ld a,($d2e8)		
ld c,a			
ld b,$0c		
ld hl,$46fd		
rst $28			
ld a,c			
pop bc			
cp $80			
.DB $38 $12 ; < ['$38', '$12'] > < 0x4e4e > < c4e4e 0C 4E4E | 3812: jr c, $12 >
ld a,($d2e9)		
ld ($d4dd),a		
ld a,($d448)		
cp $60			
.DB $38 $09 ; < ['$38', '$09'] > < 0x4e5b > < c4e5b 0C 4E5B | 3809: jr c, $09 >
.incbin "data/0c_4E5D.data"
ld a,($d2e8)		
ld ($d4df),a		
ld b,$0d		
ld hl,$4f11		
rst $28			
ld b,$0d		
ld hl,$4ff4		
rst $28			
ret			
.incbin "data/0c_4E79.data"
ld a,($d2e8)		
ld c,a			
push bc			
call  rlabel_0C_4EC0 
pop bc			
call  rlabel_0C_4ED3 
ret			
rlabel_0C_4EC0:
ld a,c			
sub $a0			
ld b,$b2		
ld hl,$4001		
call  rlabel_0C_4FEA 
ld de,$8500		
ld b,a			
call  rlabel_00_06AA 
ret			
rlabel_0C_4ED3:
ld a,c			
sub $a0			
swap a			
ld d,a			
and $f0			
ld e,a			
ld a,d			
and $0f			
ld d,a			
ld hl,$6ea1		
add hl,de		
ld c,$b5		
ld d,h			
ld e,l			
ld a,c			
ld h,d			
ld l,e			
ld de,$c9e8		
ld bc,$0010		
call  rlabel_00_0D50 
ld a,($cbf2)		
or a			
jp z,$4f1f		
ld a,$01		
ld ($ff00+$4f),a	
ld b,$07		
ld c,$00		
call  rlabel_00_0CF4 
ld b,$03		
ld c,$80		
call  rlabel_00_05A2 
ld b,$15		
ld c,$00		
call  rlabel_00_0CF4 
ld b,$03		
ld c,$80		
call  rlabel_00_05A2 
ld a,$00		
ld ($ff00+$4f),a	
ret			
.incbin "data/0c_4F20.data"
rlabel_0C_4FEA:
ld c,a			
add a			
add c			
call  rlabel_00_0462 
ld de,$cb26		
ld a,b			
ld bc,$0003		
call  rlabel_00_0D50 
ld hl,$cb26		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,($cb28)		
ret			
.incbin "data/0c_5004.data"
ld a,$00		
ld ($cbcd),a		
xor a			
ld ($d326),a		
ld hl,$d2f2		
ld c,$0c		
call  rlabel_00_04E2 
ld hl,$d301		
ld b,$70		
ld c,$04		
ld a,$01		
ldi (hl),a		
xor a			
ldi (hl),a		
ld a,$fc		
ldi (hl),a		
ld a,$01		
ldi (hl),a		
ld a,$c0		
ldi (hl),a		
ld a,$c0		
ldi (hl),a		
xor a			
ldi (hl),a		
ld a,b			
ldi (hl),a		
ld a,b			
add $04			
ld b,a			
dec c			
.DB $20 $e4 ; < ['$20', '$e4'] > < 0x50ef > < c50ef 0C 50EF | 20E4: jr nz, $E4 >
ld hl,$5100		
ld de,$8240		
ld bc,$0220		
ld a,$0c		
call  rlabel_00_0D83 
ret			
.incbin "data/0c_5100.data"
ld b,$03		
ld hl,$4b78		
rst $28			
ld a,($cbcd)		
cp $01			
.DB $28 $11 ; < ['$28', '$11'] > < 0x532d > < c532d 0C 532D | 2811: jr z, $11 >
.incbin "data/0c_532F.data"
ld c,$36		
ld b,$03		
ld hl,$6def		
rst $28			
ld a,c			
ld c,$64		
and a			
.DB $28 $04 ; < ['$28', '$04'] > < 0x534c > < c534c 0C 534C | 2804: jr z, $04 >
.incbin "data/0c_534E.data"
ld de,$00ec		
call  rlabel_00_12EA 
ld a,(hl)		
and $01			
.DB $28 $06 ; < ['$28', '$06'] > < 0x535b > < c535b 0C 535B | 2806: jr z, $06 >
.incbin "data/0c_535D.data"
ld de,$00eb		
call  rlabel_00_12EA 
ld a,(hl)		
and $80			
.DB $28 $04 ; < ['$28', '$04'] > < 0x536c > < c536c 0C 536C | 2804: jr z, $04 >
.incbin "data/0c_536E.data"
ld b,c			
ld a,($cb66)		
ld c,a			
ld a,b			
cp $64			
ret z			
.incbin "data/0c_537B.data"
