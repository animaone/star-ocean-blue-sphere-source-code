.BANK $06 SLOT 1
.ORG 0
.incbin "data/06_4000.data"
.DB $06 $08 ; < ['$06', '$08'] > < 0x4066 > < 64066 06 4066 | 0608: ld b, $08 >
call  rlabel_00_0832 
ld c,a			
ld b,$0c		
call  rlabel_00_0832 
inc hl			
ld h,(hl)		
add c			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4075 > < 64075 06 4075 | 3001: jr nc, $01 >
.incbin "data/06_4077.data"
ld a,($ff00+$ff)	
push af			
xor a			
ld ($ff00+$ff),a	
call  rlabel_00_09AE 
pop af			
ld ($ff00+$ff),a	
ret			
rlabel_06_4085:
ld d,a			
ld a,($c314)		
and $20			
.DB $28 $09 ; < ['$28', '$09'] > < 0x408b > < 6408b 06 408B | 2809: jr z, $09 >
ld a,($ff00+$a6)	
and $01			
or d			
.DB $20 $02 ; < ['$20', '$02'] > < 0x4092 > < 64092 06 4092 | 2002: jr nz, $02 >
set 7,d			
ldi a,(hl)		
sub (hl)		
inc hl			
ld c,a			
ldi a,(hl)		
ld b,a			
ldi a,(hl)		
add $0a			
ld e,a			
ld a,d			
ld d,(hl)		
res 3,d			
inc hl			
inc hl			
bit 6,(hl)		
.DB $28 $04 ; < ['$28', '$04'] > < 0x40a8 > < 640a8 06 40A8 | 2804: jr z, $04 >
bit 7,(hl)		
.DB $20 $04 ; < ['$20', '$04'] > < 0x40ac > < 640ac 06 40AC | 2004: jr nz, $04 >
ld c,$c8		
and $7f			
bit 7,a			
.DB $20 $f8 ; < ['$20', '$f8'] > < 0x40b4 > < 640b4 06 40B4 | 20F8: jr nz, $F8 >
add $02			
swap a			
ld l,a			
rrca			
add l			
ld l,a			
ld h,$c0		
ld ($ffa8),sp		
ld sp,hl		
ld a,$04		
add c			
ld c,a			
bit 5,d			
jp nz,$40d3		
ld a,$0c		
ld l,$f8		
.DB $18 $04 ; < ['$18', '$04'] > < 0x40d1 > < 640d1 06 40D1 | 1804: jr $04 >
ld a,$fc		
ld l,$08		
add b			
ld b,a			
ld h,$10		
push de			
push bc			
ld a,c			
sub h			
ld c,a			
dec e			
dec e			
push de			
push bc			
ld a,c			
add h			
ld c,a			
ld a,b			
add l			
ld b,a			
dec e			
dec e			
push de			
push bc			
ld a,c			
sub h			
ld c,a			
dec e			
dec e			
push de			
push bc			
ld a,c			
add h			
ld c,a			
ld a,b			
add l			
ld b,a			
dec e			
dec e			
push de			
push bc			
ld a,c			
sub h			
ld c,a			
dec e			
dec e			
push de			
push bc			
ld hl,$ffa8		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld sp,hl		
ret			
rlabel_06_410E:
ld hl,$c314		
res 5,(hl)		
ld a,($c1ed)		
ld d,a			
ld a,($c1dd)		
ld e,a			
ld a,($c1cd)		
ld b,a			
ld a,($c1bd)		
ld c,a			
ld l,$20		
sub b			
.DB $30 $02 ; < ['$30', '$02'] > < 0x4126 > < 64126 06 4126 | 3002: jr nc, $02 >
cpl			
inc a			
sub l			
.DB $30 $31 ; < ['$30', '$31'] > < 0x412b > < 6412b 06 412B | 3031: jr nc, $31 >
ld a,c			
sub e			
.DB $30 $02 ; < ['$30', '$02'] > < 0x412f > < 6412f 06 412F | 3002: jr nc, $02 >
cpl			
inc a			
sub l			
.DB $30 $28 ; < ['$30', '$28'] > < 0x4134 > < 64134 06 4134 | 3028: jr nc, $28 >
ld a,c			
sub d			
.DB $30 $02 ; < ['$30', '$02'] > < 0x4138 > < 64138 06 4138 | 3002: jr nc, $02 >
cpl			
inc a			
sub l			
.DB $30 $1f ; < ['$30', '$1f'] > < 0x413d > < 6413d 06 413D | 301F: jr nc, $1F >
ld a,b			
sub e			
.DB $30 $02 ; < ['$30', '$02'] > < 0x4141 > < 64141 06 4141 | 3002: jr nc, $02 >
cpl			
inc a			
sub l			
.DB $30 $16 ; < ['$30', '$16'] > < 0x4146 > < 64146 06 4146 | 3016: jr nc, $16 >
ld a,b			
sub d			
.DB $30 $02 ; < ['$30', '$02'] > < 0x414a > < 6414a 06 414A | 3002: jr nc, $02 >
cpl			
inc a			
sub l			
.DB $30 $0d ; < ['$30', '$0d'] > < 0x414f > < 6414f 06 414F | 300D: jr nc, $0D >
ld a,e			
sub d			
.DB $30 $02 ; < ['$30', '$02'] > < 0x4153 > < 64153 06 4153 | 3002: jr nc, $02 >
.incbin "data/06_4155.data"
sub l			
.DB $30 $04 ; < ['$30', '$04'] > < 0x4158 > < 64158 06 4158 | 3004: jr nc, $04 >
ld l,$14		
set 5,(hl)		
ld bc,$0203		
ld de,$0001		
ld a,($c1bd)		
ld l,a			
ld a,($c1ed)		
ld h,a			
cp l			
.DB $30 $02 ; < ['$30', '$02'] > < 0x416d > < 6416d 06 416D | 3002: jr nc, $02 >
dec c			
inc d			
ld a,($c1dd)		
cp l			
.DB $30 $02 ; < ['$30', '$02'] > < 0x4175 > < 64175 06 4175 | 3002: jr nc, $02 >
dec c			
inc e			
ld a,($c1cd)		
cp l			
.DB $30 $02 ; < ['$30', '$02'] > < 0x417d > < 6417d 06 417D | 3002: jr nc, $02 >
dec c			
inc b			
ld l,a			
cp h			
.DB $38 $02 ; < ['$38', '$02'] > < 0x4183 > < 64183 06 4183 | 3802: jr c, $02 >
dec b			
inc d			
ld a,($c1dd)		
cp l			
.DB $30 $02 ; < ['$30', '$02'] > < 0x418b > < 6418b 06 418B | 3002: jr nc, $02 >
dec b			
inc e			
cp h			
.DB $38 $02 ; < ['$38', '$02'] > < 0x4190 > < 64190 06 4190 | 3802: jr c, $02 >
dec e			
inc d			
push de			
push bc			
ld a,c			
ld hl,$c1bd		
call  rlabel_06_4085 
pop bc			
ld a,b			
ld hl,$c1cd		
call  rlabel_06_4085 
pop de			
push de			
ld a,e			
ld hl,$c1dd		
call  rlabel_06_4085 
pop de			
ld hl,$c1ed		
ld a,d			
jp $4085		
.incbin "data/06_41B6.data"
ld a,$01		
ld ($c1ff),a		
ld a,$40		
ld ($c200),a		
ld e,$00		
ld a,e			
call  rlabel_00_0815 
ld a,$c8		
ld b,$00		
call  rlabel_00_083E 
ld b,$02		
call  rlabel_00_083E 
ld a,e			
ld b,$04		
call  rlabel_00_083E 
xor a			
ld b,$03		
call  rlabel_00_083E 
ld b,$01		
call  rlabel_00_083E 
ld b,$05		
call  rlabel_00_083E 
ld b,$06		
call  rlabel_00_083E 
ld b,$0f		
call  rlabel_00_083E 
inc e			
bit 2,e			
.DB $28 $cb ; < ['$28', '$cb'] > < 0x41f6 > < 641f6 06 41F6 | 28CB: jr z, $CB >
call  rlabel_06_41FC 
ret			
rlabel_06_41FC:
xor a			
ld ($ff00+$4f),a	
ld c,$8a		
call  rlabel_00_0A99 
ld hl,$4228		
ld de,$83e0		
call  rlabel_00_0654 
call  rlabel_00_0658 
call  rlabel_00_0658 
call  rlabel_00_0658 
ld a,$3e		
ld ($c09e),a		
ld a,$00		
ld ($c09f),a		
ld l,$01		
ld h,$07		
call  rlabel_00_0890 
ret			
.incbin "data/06_4228.data"
ld c,$8a		
call  rlabel_00_0A99 
ld a,($db38)		
rla			
ld hl,$4265		
.DB $30 $03 ; < ['$30', '$03'] > < 0x4254 > < 64254 06 4254 | 3003: jr nc, $03 >
.incbin "data/06_4256.data"
ld de,$83c0		
ld b,$06		
ld a,$04		
di			
call  rlabel_00_09C9 
reti			
.incbin "data/06_4265.data"
ld a,($ff00+$ff)	
ld ($ff00+$9c),a	
and $fd			
ld ($ff00+$ff),a	
ld b,c			
ld a,$05		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x42a7 > < 642a7 06 42A7 | 3001: jr nc, $01 >
.incbin "data/06_42A9.data"
ldi a,(hl)		
ld c,a			
ld a,(hl)		
or $03			
ldi (hl),a		
push hl			
inc hl			
xor a			
ldi (hl),a		
ld a,b			
ld (hl),a		
ld a,e			
add c			
ld e,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x42b9 > < 642b9 06 42B9 | 3001: jr nc, $01 >
.incbin "data/06_42BB.data"
call  rlabel_00_0603 
ld a,$04		
sub c			
add e			
ld e,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x42c4 > < 642c4 06 42C4 | 3001: jr nc, $01 >
inc d			
ld c,b			
ldi a,(hl)		
ld b,a			
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
inc hl			
inc hl			
ld a,c			
res 7,a			
ld (hl),a		
call  rlabel_00_0603 
ld a,$0f		
and b			
pop hl			
ldd (hl),a		
dec hl			
dec hl			
ld a,(hl)		
res 3,a			
rl c			
.DB $30 $02 ; < ['$30', '$02'] > < 0x42e3 > < 642e3 06 42E3 | 3002: jr nc, $02 >
set 3,a			
ld (hl),a		
ld a,($ff00+$9c)	
ld ($ff00+$ff),a	
ret			
rlabel_06_42ED:
ld hl,$c1ff		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ldi a,(hl)		
ld ($c201),a		
ldi a,(hl)		
ld ($c202),a		
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
ldi a,(hl)		
ld (de),a		
ld a,(hl)		
cp $01			
.DB $20 $03 ; < ['$20', '$03'] > < 0x4304 > < 64304 06 4304 | 2003: jr nz, $03 >
ld hl,$4001		
ld a,l			
ld ($c1ff),a		
ld a,h			
ld ($c200),a		
ld l,e			
ld h,d			
inc hl			
ld a,(hl)		
res 5,a			
bit 3,a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x4319 > < 64319 06 4319 | 2802: jr z, $02 >
set 5,a			
ldi (hl),a		
inc hl			
ld a,(hl)		
res 7,a			
bit 6,a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x4324 > < 64324 06 4324 | 2802: jr z, $02 >
set 7,a			
or $08			
ldi (hl),a		
cpl			
and $21			
.DB $28 $0b ; < ['$28', '$0b'] > < 0x432e > < 6432e 06 432E | 280B: jr z, $0B >
inc hl			
ld c,(hl)		
ld a,$04		
add l			
ld l,a			
.DB $30 $55 ; < ['$30', '$55'] > < 0x4336 > < 64336 06 4336 | 3055: jr nc, $55 >
.incbin "data/06_4338.data"
ld a,(hl)		
dec a			
ld (hl),a		
.DB $28 $0b ; < ['$28', '$0b'] > < 0x433e > < 6433e 06 433E | 280B: jr z, $0B >
inc hl			
ld c,(hl)		
ld a,$04		
add l			
ld l,a			
.DB $30 $45 ; < ['$30', '$45'] > < 0x4346 > < 64346 06 4346 | 3045: jr nc, $45 >
.incbin "data/06_4348.data"
push hl			
dec hl			
ld a,(hl)		
set 1,a			
ldi (hl),a		
inc hl			
ld a,(hl)		
ld c,a			
inc c			
ld a,c			
ldi (hl),a		
ldi a,(hl)		
ld b,a			
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
ld a,c			
srl a			
add e			
ld e,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4362 > < 64362 06 4362 | 3001: jr nc, $01 >
.incbin "data/06_4364.data"
call  rlabel_00_0603 
bit 0,c			
.DB $28 $02 ; < ['$28', '$02'] > < 0x436a > < 6436a 06 436A | 2802: jr z, $02 >
swap b			
ld a,$0f		
and b			
.DB $20 $0d ; < ['$20', '$0d'] > < 0x4371 > < 64371 06 4371 | 200D: jr nz, $0D >
pop de			
dec de			
ld a,(de)		
res 0,a			
ld (de),a		
inc de			
inc de			
dec c			
ld a,c			
ld (de),a		
.DB $18 $0d ; < ['$18', '$0d'] > < 0x437e > < 6437e 06 437E | 180D: jr $0D >
cp $0f			
.DB $20 $07 ; < ['$20', '$07'] > < 0x4382 > < 64382 06 4382 | 2007: jr nz, $07 >
ld c,$00		
pop hl			
push hl			
inc hl			
.DB $18 $ca ; < ['$18', '$ca'] > < 0x4389 > < 64389 06 4389 | 18CA: jr $CA >
pop de			
ld (de),a		
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
ld a,(hl)		
add c			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4393 > < 64393 06 4393 | 3001: jr nc, $01 >
.incbin "data/06_4395.data"
add e			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4397 > < 64397 06 4397 | 3001: jr nc, $01 >
inc d			
ld l,a			
ld h,d			
ld a,($c201)		
ld e,a			
ld a,($c202)		
ld d,a			
call  rlabel_00_09AE 
ret			
ld hl,$c1fd		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,$05		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x43b2 > < 643b2 06 43B2 | 3001: jr nc, $01 >
.incbin "data/06_43B4.data"
ld a,c			
cp (hl)			
ret z			
ldi (hl),a		
push hl			
inc hl			
inc hl			
inc hl			
ldi a,(hl)		
ld b,a			
ldi a,(hl)		
ld e,a			
ld a,(hl)		
ld d,a			
ld a,e			
sub $04			
ld e,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x43c7 > < 643c7 06 43C7 | 3001: jr nc, $01 >
.incbin "data/06_43C9.data"
pop hl			
ld a,(hl)		
or $03			
ldi (hl),a		
push hl			
inc hl			
inc hl			
jp $42b4		
rlabel_06_43D5:
ld hl,$c1ff		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
inc hl			
inc hl			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld d,h			
ld a,$0c		
add l			
ld e,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x43e5 > < 643e5 06 43E5 | 3001: jr nc, $01 >
.incbin "data/06_43E7.data"
push hl			
dec hl			
ldd a,(hl)		
add $04			
ld ($c09d),a		
ldd a,(hl)		
ld c,a			
ld a,(de)		
ld b,a			
ld a,(hl)		
sub b			
add $04			
ld ($c09c),a		
pop hl			
inc hl			
ldi a,(hl)		
res 3,a			
ld ($c09f),a		
inc hl			
ld a,(hl)		
cpl			
and $90			
.DB $20 $0a ; < ['$20', '$0a'] > < 0x4408 > < 64408 06 4408 | 200A: jr nz, $0A >
ld a,(de)		
cp c			
.DB $28 $06 ; < ['$28', '$06'] > < 0x440c > < 6440c 06 440C | 2806: jr z, $06 >
ld a,$3e		
ld ($c09e),a		
ret			
ld a,$a0		
ld ($c09c),a		
ret			
.incbin "data/06_441A.data"
call  rlabel_06_4F5C 
call  rlabel_06_4F64 
xor a			
ld ($c1be),a		
ld ($c1ce),a		
ld ($c1de),a		
ld ($c1ee),a		
ld hl,$c1c1		
res 4,(hl)		
ld hl,$c1d1		
res 4,(hl)		
ld hl,$c1e1		
res 4,(hl)		
ld hl,$c1f1		
res 4,(hl)		
ret			
.incbin "data/06_4469.data"
ld hl,$c1fd		
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,c			
inc a			
.DB $20 $0a ; < ['$20', '$0a'] > < 0x4485 > < 64485 06 4485 | 200A: jr nz, $0A >
ld a,$06		
call  rlabel_00_0462 
ld a,(hl)		
and $3f			
ld (hl),a		
ret			
push hl			
ld a,$05		
call  rlabel_00_0462 
ld (hl),d		
ld a,$07		
call  rlabel_00_0462 
push hl			
ld a,c			
ld hl,$44ff		
call  rlabel_00_04A7 
ld a,e			
add a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x44a7 > < 644a7 06 44A7 | 3001: jr nc, $01 >
.incbin "data/06_44A9.data"
add a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x44ab > < 644ab 06 44AB | 3001: jr nc, $01 >
.incbin "data/06_44AD.data"
add l			
.DB $30 $01 ; < ['$30', '$01'] > < 0x44af > < 644af 06 44AF | 3001: jr nc, $01 >
inc h			
ld l,a			
ldi a,(hl)		
ld c,a			
ldi a,(hl)		
ld b,a			
ldi a,(hl)		
ld e,a			
ld d,(hl)		
pop hl			
ld a,c			
ldi (hl),a		
ld (hl),b		
pop hl			
ld c,$06		
jp $429a		
.incbin "data/06_44C4.data"
ld hl,$c314		
res 6,(hl)		
call  rlabel_00_027C 
ld hl,$c1ff		
di			
ldi a,(hl)		
ld h,(hl)		
ei			
ld l,a			
inc hl			
inc hl			
ld a,(hl)		
cp $c0			
.DB $20 $ee ; < ['$20', '$ee'] > < 0x44fb > < 644fb 06 44FB | 20EE: jr nz, $EE >
ret			
.incbin "data/06_44FE.data"
ld c,$00		
ld de,$0000		
ld b,$06		
ld hl,$4f72		
rst $28			
ld bc,$c000		
call  rlabel_06_4F9B 
ld c,$00		
ld de,$0000		
ld b,$06		
ld hl,$4f79		
rst $28			
ld bc,$c078		
call  rlabel_06_4F9B 
ret			
.incbin "data/06_4EE0.data"
push bc			
ld bc,$c078		
call  rlabel_06_4F9B 
pop bc			
ld a,$50		
ld hl,$c214		
ldd (hl),a		
ld a,c			
ld bc,$8500		
and a			
ret z			
push bc			
push hl			
ld l,a			
ld h,$00		
ld c,a			
ld b,h			
add hl,hl		
add hl,hl		
add hl,bc		
add hl,bc		
add hl,bc		
ld bc,$5073		
add hl,bc		
ld c,l			
ld b,h			
pop hl			
ld a,(bc)		
inc bc			
ldd (hl),a		
ld a,d			
ldd (hl),a		
ld a,e			
ldd (hl),a		
ld a,$01		
ldd (hl),a		
ld a,(bc)		
inc bc			
ldd (hl),a		
ld a,(bc)		
inc bc			
ldd (hl),a		
ld a,$06		
ld (hl),a		
ld a,(bc)		
ld l,a			
inc bc			
ld a,(bc)		
ld h,a			
inc bc			
ld a,(bc)		
pop de			
push bc			
call  rlabel_00_06EE 
pop hl			
inc hl			
ld a,(hl)		
ld hl,$c33a		
and a			
.DB $28 $08 ; < ['$28', '$08'] > < 0x4f4f > < 64f4f 06 4F4F | 2808: jr z, $08 >
bit 3,(hl)		
.DB $20 $04 ; < ['$20', '$04'] > < 0x4f53 > < 64f53 06 4F53 | 2004: jr nz, $04 >
ld a,a			
call  rlabel_00_3071 
res 3,(hl)		
ret			
rlabel_06_4F5C:
ld hl,$c205		
ld bc,$c000		
.DB $18 $06 ; < ['$18', '$06'] > < 0x4f62 > < 64f62 06 4F62 | 1806: jr $06 >
rlabel_06_4F64:
ld hl,$c20d		
ld bc,$c078		
di			
xor a			
ld (hl),a		
call  rlabel_06_4F9B 
ei			
ret			
ld hl,$c205		
ld b,$40		
.DB $18 $05 ; < ['$18', '$05'] > < 0x4f77 > < 64f77 06 4F77 | 1805: jr $05 >
ld hl,$c20d		
ld b,$50		
ld a,c			
ldi (hl),a		
ld a,e			
ldi (hl),a		
ld a,d			
ldi (hl),a		
ld a,$01		
ldi (hl),a		
inc hl			
inc hl			
inc hl			
ld (hl),b		
ret			
dec hl			
dec hl			
dec hl			
.DB $18 $08 ; < ['$18', '$08'] > < 0x4f8f > < 64f8f 06 4F8F | 1808: jr $08 >
.incbin "data/06_4F91.data"
xor a			
ld (hl),a		
rlabel_06_4F9B:
ld a,$a0		
ld (bc),a		
inc c			
inc c			
inc c			
inc c			
ld (bc),a		
inc c			
inc c			
inc c			
inc c			
ld (bc),a		
inc c			
inc c			
inc c			
inc c			
ld (bc),a		
inc c			
inc c			
inc c			
inc c			
ld (bc),a		
inc c			
inc c			
inc c			
inc c			
ld (bc),a		
ret			
.incbin "data/06_4FB8.data"
call  rlabel_06_4F64 
ld bc,$c078		
call  rlabel_06_4F9B 
ld hl,$fe78		
.DB $18 $00 ; < ['$18', '$00'] > < 0x4fd2 > < 64fd2 06 4FD2 | 1800: jr , $00 >
di			
ld bc,$0341		
ld a,($ff00+c)		
and $03			
cp $02			
.DB $20 $f9 ; < ['$20', '$f9'] > < 0x4fdd > < 64fdd 06 4FDD | 20F9: jr nz, $F9 >
ld a,($ff00+c)		
and b			
.DB $20 $fc ; < ['$20', '$fc'] > < 0x4fe1 > < 64fe1 06 4FE1 | 20FC: jr nz, $FC >
xor a			
ldi (hl),a		
inc l			
inc l			
inc l			
ldi (hl),a		
inc l			
inc l			
inc l			
ldi (hl),a		
inc l			
inc l			
inc l			
ldi (hl),a		
inc l			
inc l			
inc l			
ldi (hl),a		
inc l			
inc l			
inc l			
ld (hl),a		
ei			
ret			
rlabel_06_4FFB:
ld hl,$c204		
ld a,(hl)		
xor $01			
and $01			
ld (hl),a		
.DB $20 $08 ; < ['$20', '$08'] > < 0x5004 > < 65004 06 5004 | 2008: jr nz, $08 >
ld hl,$c205		
ld bc,$c000		
.DB $18 $06 ; < ['$18', '$06'] > < 0x500c > < 6500c 06 500C | 1806: jr $06 >
ld hl,$c20d		
ld bc,$c078		
ldi a,(hl)		
and a			
ret z			
inc a			
ret z			
ldi a,(hl)		
ld e,a			
ldi a,(hl)		
ld d,a			
ld a,(hl)		
dec a			
ld (hl),a		
and a			
ret nz			
ld a,d			
and a			
jp z,$4f8c		
push hl			
inc hl			
inc hl			
inc hl			
push bc			
call  rlabel_06_4F9B 
pop bc			
ld a,(de)		
cp $80			
.DB $28 $32 ; < ['$28', '$32'] > < 0x5033 > < 65033 06 5033 | 2832: jr z, $32 >
ldd a,(hl)		
dec hl			
and $40			
ld a,(de)		
inc de			
.DB $28 $04 ; < ['$28', '$04'] > < 0x503b > < 6503b 06 503B | 2804: jr z, $04 >
.incbin "data/06_503D.data"
add (hl)		
inc hl			
add $10			
ld (bc),a		
inc bc			
inc hl			
ldd a,(hl)		
and $20			
ld a,(de)		
inc de			
.DB $28 $04 ; < ['$28', '$04'] > < 0x504d > < 6504d 06 504D | 2804: jr z, $04 >
.incbin "data/06_504F.data"
add (hl)		
inc hl			
inc hl			
add $08			
ld (bc),a		
inc bc			
ld a,(de)		
inc de			
add (hl)		
ld (bc),a		
inc bc			
dec hl			
ld a,(de)		
inc de			
xor (hl)		
ld (bc),a		
inc bc			
.DB $18 $c9 ; < ['$18', '$c9'] > < 0x5065 > < 65065 06 5065 | 18C9: jr $C9 >
inc de			
ld a,(de)		
inc de			
pop hl			
ldd (hl),a		
dec hl			
ld a,(de)		
inc de			
ldi (hl),a		
ld a,(de)		
ld (hl),a		
ret			
.incbin "data/06_5073.data"
inc de			
ld a,($ff00+$8b)	
ld hl,$72ea		
call  rlabel_00_04A7 
ld a,(de)		
push af			
call  rlabel_00_0462 
pop af			
ld b,(hl)		
bit 7,b			
.DB $28 $10 ; < ['$28', '$10'] > < 0x7258 > < 67258 06 7258 | 2810: jr z, $10 >
add b			
ld (de),a		
ld a,b			
cp $80			
.DB $20 $e6 ; < ['$20', '$e6'] > < 0x725f > < 6725f 06 725F | 20E6: jr nz, $E6 >
.incbin "data/06_7261.data"
inc a			
ld (de),a		
ld hl,$737f		
ld d,$40		
ld e,b			
call  rlabel_00_03F7 
add hl,de		
ld a,($c23c)		
rrca			
rrca			
ld de,$8400		
call  rlabel_00_045D 
ld bc,$0008		
ld a,$06		
call  rlabel_00_06FD 
ret			
.incbin "data/06_728A.data"
.DB $fa $16 $c3 ; < ['$fa', '$16', '$c3'] > < 0x7d3f > < 67d3f 06 7D3F | FA16C3: ld a, [$C316] >
ld c,a			
ld b,$07		
ld hl,$7a3d		
rst $28			
ld a,b			
cp $ff			
.DB $28 $3b ; < ['$28', '$3b'] > < 0x7d4c > < 67d4c 06 7D4C | 283B: jr z, $3B >
call  rlabel_00_084C 
ld b,$14		
call  rlabel_00_0876 
ld c,a			
ld b,$05		
ld hl,$43c3		
rst $28			
ld a,($c975)		
and $4f			
cp $04			
ret z			
push af			
ld b,$05		
call  rlabel_00_0832 
ld d,a			
call  rlabel_00_0812 
ld a,d			
add $02			
and $03			
ld c,a			
ld b,$06		
ld hl,$43a8		
rst $28			
ld b,$07		
ld hl,$7af9		
rst $28			
pop af			
ld a,($c23c)		
inc a			
jp $7ea7		
srl e			
srl e			
srl e			
srl d			
srl d			
srl d			
ld b,$07		
ld hl,$4eb2		
rst $28			
ld a,(hl)		
and a			
jp z,$7e7e		
ld c,a			
ld b,$05		
ld hl,$43c3		
rst $28			
ld a,($c975)		
and $40			
ret nz			
ld a,($c975)		
and $4f			
cp $07			
jp z,$7e7e		
cp $0a			
jp z,$7e7e		
cp $0b			
jp z,$7e7e		
cp $0c			
jp z,$7e7e		
cp $0d			
jp z,$7e7e		
cp $0e			
jp z,$7e7e		
cp $06			
jp z,$7e7e		
cp $02			
jp nz,$7e77		
.incbin "data/06_7DDA.data"
ld a,($c979)		
and a			
ret z			
.DB $18 $27 ; < ['$18', '$27'] > < 0x7e7c > < 67e7c 06 7E7C | 1827: jr $27 >
ld b,$07		
ld hl,$4eb7		
rst $28			
ld a,(hl)		
bit 3,a			
ret z			
swap a			
and $0f			
cp $0e			
ret c			
ld b,$0e		
ld hl,$686f		
rst $28			
ld a,b			
cp $0d			
.DB $30 $0b ; < ['$30', '$0b'] > < 0x7e98 > < 67e98 06 7E98 | 300B: jr nc, $0B >
ld c,a			
ld e,l			
ld d,h			
ld b,$07		
ld hl,$5fcc		
rst $28			
.incbin "data/06_7EA3.data"
add $04			
ld c,a			
ld b,$07		
ld hl,$4b03		
rst $28			
ld de,$c340		
ld b,$01		
call  rlabel_00_090C 
.incbin "data/06_7EB6.data"
