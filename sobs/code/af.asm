.BANK $af SLOT 1
.ORG 0
.incbin "data/af_4000.data"
ld a,($cfd1)		
ld c,a			
cp $18			
.DB $38 $07 ; < ['$38', '$07'] > < 0x7dff > < af7dff AF 7DFF | 3807: jr c, $07 >
sub $18			
ld c,a			
ld a,$af		
.DB $18 $02 ; < ['$18', '$02'] > < 0x7e06 > < af7e06 AF 7E06 | 1802: jr $02 >
ld a,$ae		
ld ($ff00+$8a),a	
ld de,$0295		
ld a,c			
call  rlabel_00_0409 
ld hl,$4001		
add hl,de		
ld de,$9580		
ld bc,$0050		
ld a,($ff00+$8a)	
call  rlabel_00_06FD 
ld de,$c9a8		
ld bc,$0010		
ld a,($ff00+$8a)	
call  rlabel_00_0D50 
ld de,$d5cc		
ld bc,$0005		
ld a,($ff00+$8a)	
call  rlabel_00_0D50 
ld bc,$0400		
ld de,$d5cc		
ld a,$03		
call  rlabel_AF_7EA7 
ld a,c			
add $08			
ld c,a			
cp $20			
.DB $20 $f0 ; < ['$20', '$f0'] > < 0x7e49 > < af7e49 AF 7E49 | 20F0: jr nz, $F0 >
ld bc,$0b00		
ld de,$d5cf		
ld a,$02		
call  rlabel_AF_7EA7 
ld a,c			
add $08			
ld c,a			
cp $20			
.DB $20 $f0 ; < ['$20', '$f0'] > < 0x7e5c > < af7e5c AF 7E5C | 20F0: jr nz, $F0 >
ld de,$98e0		
ld a,$01		
ld bc,$0080		
call  rlabel_00_2AD8 
ld a,($cbf2)		
or a			
jp z,$7e82		
ld a,$01		
ld ($ff00+$4f),a	
ld de,$98e0		
ld a,$03		
ld bc,$0080		
call  rlabel_00_2AD8 
xor a			
ld ($ff00+$4f),a	
ld de,$9aa0		
ld a,$01		
ld bc,$0080		
call  rlabel_00_2AD8 
ld a,($cbf2)		
or a			
jp z,$7ea6		
ld a,$01		
ld ($ff00+$4f),a	
ld de,$9aa0		
ld a,$03		
ld bc,$0080		
call  rlabel_00_2AD8 
xor a			
ld ($ff00+$4f),a	
ret			
rlabel_AF_7EA7:
push bc			
ld ($ff00+$8a),a	
call  rlabel_00_2F50 
ld a,($ff00+$8a)	
cp $02			
ld b,$58		
.DB $20 $02 ; < ['$20', '$02'] > < 0x7eb3 > < af7eb3 AF 7EB3 | 2002: jr nz, $02 >
ld b,$70		
ld a,(de)		
ld c,a			
inc de			
ld a,$08		
ld ($ff00+$8b),a	
call  rlabel_00_1B17 
ld a,b			
ld (hl),a		
ei			
inc b			
ld a,($cbf2)		
or a			
jp z,$7edd		
ld a,$01		
ld ($ff00+$4f),a	
xor a			
sla c			
adc $04			
call  rlabel_00_1B17 
ld (hl),a		
ei			
xor a			
ld ($ff00+$4f),a	
inc hl			
ld a,($ff00+$8b)	
dec a			
ld ($ff00+$8b),a	
.DB $20 $d9 ; < ['$20', '$d9'] > < 0x7ee3 > < af7ee3 AF 7EE3 | 20D9: jr nz, $D9 >
ld a,$18		
call  rlabel_00_0462 
ld a,($ff00+$8a)	
dec a			
ld ($ff00+$8a),a	
.DB $20 $c6 ; < ['$20', '$c6'] > < 0x7eef > < af7eef AF 7EEF | 20C6: jr nz, $C6 >
pop bc			
ret			
.incbin "data/af_7EF3.data"
