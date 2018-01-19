.BANK $b7 SLOT 1
.ORG 0
.incbin "data/b7_4000.data"
ld de,$d2d5		
xor a			
ld ($caf1),a		
ld hl,$6842		
ld a,($cb9b)		
ld b,a			
ld a,b			
and a			
.DB $28 $08 ; < ['$28', '$08'] > < 0x6810 > < b76810 B7 6810 | 2808: jr z, $08 >
ldi a,(hl)		
add a			
call  rlabel_00_0462 
dec b			
.DB $18 $f4 ; < ['$18', '$f4'] > < 0x6818 > < b76818 B7 6818 | 18F4: jr $F4 >
ldi a,(hl)		
ld b,a			
ldi a,(hl)		
ld (de),a		
inc de			
ldi a,(hl)		
ld (de),a		
inc de			
ld a,($caf1)		
inc a			
ld ($caf1),a		
dec b			
.DB $20 $f0 ; < ['$20', '$f0'] > < 0x682a > < b7682a B7 682A | 20F0: jr nz, $F0 >
ret			
ld hl,$6842		
ld a,($cb9b)		
ld b,a			
ld a,b			
and a			
.DB $28 $08 ; < ['$28', '$08'] > < 0x6836 > < b76836 B7 6836 | 2808: jr z, $08 >
ldi a,(hl)		
add a			
call  rlabel_00_0462 
dec b			
.DB $18 $f4 ; < ['$18', '$f4'] > < 0x683e > < b7683e B7 683E | 18F4: jr $F4 >
ld c,(hl)		
ret			
.incbin "data/b7_6842.data"
