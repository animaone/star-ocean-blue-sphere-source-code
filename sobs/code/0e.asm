.BANK $0e SLOT 1
.ORG 0
.incbin "data/0e_4000.data"
.DB $21 $ad $cd ; < ['$21', '$ad', '$cd'] > < 0x4001 > < e4001 0E 4001 | 21ADCD: ld hl, $CDAD >
.DB $01 $cc $01 ; < ['$01', '$cc', '$01'] > < 0x4004 > < e4004 0E 4004 | 01CC01: ld bc, $1CC >
.DB $16 $00 ; < ['$16', '$00'] > < 0x4007 > < e4007 0E 4007 | 1600: ld d, $00 >
ld (hl),d		
inc hl			
dec bc			
ld a,b			
or c			
.DB $20 $f9 ; < ['$20', '$f9'] > < 0x400e > < e400e 0E 400E | 20F9: jr nz, $F9 >
call  rlabel_0E_43B7 
ld hl,$cf74		
ld (hl),$44		
inc hl			
ld (hl),$cf		
ld a,$41		
ld ($cf3f),a		
ld a,$19		
ld ($cf40),a		
xor a			
ld ($cf78),a		
ret			
rlabel_0E_402A:
ld a,e			
ld ($cf41),a		
ld a,d			
ld ($cf42),a		
ld a,c			
ld ($cf43),a		
ret			
rlabel_0E_4037:
ld a,($cf41)		
ld e,a			
ld a,($cf42)		
ld d,a			
ld a,($cf43)		
ld c,a			
ret			
rlabel_0E_4044:
push bc			
push de			
push hl			
call  rlabel_0E_4037 
ld a,($cf74)		
ld l,a			
ld a,($cf75)		
ld h,a			
ld (hl),e		
inc hl			
ld (hl),d		
inc hl			
ld (hl),c		
inc hl			
ld a,l			
ld ($cf74),a		
ld a,h			
ld ($cf75),a		
pop hl			
pop de			
pop bc			
ret			
rlabel_0E_4064:
push bc			
push de			
push hl			
ld a,($cf74)		
ld l,a			
ld a,($cf75)		
ld h,a			
dec hl			
ld c,(hl)		
dec hl			
ld d,(hl)		
dec hl			
ld e,(hl)		
ld a,l			
ld ($cf74),a		
ld a,h			
ld ($cf75),a		
call  rlabel_0E_402A 
pop hl			
pop de			
pop bc			
ret			
rlabel_0E_4084:
call  rlabel_0E_4037 
bit 7,h			
.DB $20 $0e ; < ['$20', '$0e'] > < 0x4089 > < e4089 0E 4089 | 200E: jr nz, $0E >
add hl,de		
ld de,$c001		
bit 7,h			
.DB $28 $04 ; < ['$28', '$04'] > < 0x4091 > < e4091 0E 4091 | 2804: jr z, $04 >
add hl,de		
inc c			
.DB $18 $f8 ; < ['$18', '$f8'] > < 0x4095 > < e4095 0E 4095 | 18F8: jr $F8 >
.DB $18 $1a ; < ['$18', '$1a'] > < 0x4097 > < e4097 0E 4097 | 181A: jr $1A >
add hl,de		
ld de,$bfff		
add hl,de		
ld de,$3fff		
ld a,d			
cp h			
.DB $38 $06 ; < ['$38', '$06'] > < 0x40a3 > < e40a3 0E 40A3 | 3806: jr c, $06 >
.DB $20 $08 ; < ['$20', '$08'] > < 0x40a5 > < e40a5 0E 40A5 | 2008: jr nz, $08 >
.incbin "data/0e_40A7.data"
ld de,$4001		
add hl,de		
ld d,h			
ld e,l			
call  rlabel_0E_402A 
ret			
rlabel_0E_40B9:
push hl			
push bc			
ld hl,$cf43		
ld b,(hl)		
dec hl			
ldd a,(hl)		
ld l,(hl)		
ld h,a			
call  rlabel_00_2F0D 
inc hl			
bit 7,h			
.DB $28 $07 ; < ['$28', '$07'] > < 0x40c9 > < e40c9 0E 40C9 | 2807: jr z, $07 >
.incbin "data/0e_40CB.data"
ld a,h			
ld ($cf42),a		
ld a,l			
ld ($cf41),a		
ld a,b			
pop bc			
pop hl			
ret			
rlabel_0E_40DE:
call  rlabel_0E_40B9 
cp $5e			
.DB $28 $03 ; < ['$28', '$03'] > < 0x40e3 > < e40e3 0E 40E3 | 2803: jr z, $03 >
cp $5f			
ret nz			
push af			
call  rlabel_0E_40B9 
ld b,a			
pop af			
ret			
push bc			
call  rlabel_0E_4340 
call  rlabel_0E_402A 
pop bc			
ld e,c			
xor a			
ld d,a			
call  rlabel_0E_42DA 
ld b,$02		
ld hl,$7393		
rst $28			
xor a			
ld ($ff00+$4f),a	
ld a,$3d		
ld hl,$4101		
ld de,$88c0		
ld bc,$0080		
call  rlabel_00_0D83 
ld hl,$4253		
ld de,$88b0		
call  rlabel_00_0654 
call  rlabel_00_0658 
ld hl,$8800		
ld b,$ff		
ld c,$10		
call  rlabel_00_0519 
inc hl			
dec c			
.DB $20 $f9 ; < ['$20', '$f9'] > < 0x412c > < e412c 0E 412C | 20F9: jr nz, $F9 >
call  rlabel_0E_40B9 
ld b,a			
ld hl,$4148		
add a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4136 > < e4136 0E 4136 | 3001: jr nc, $01 >
inc h			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x413b > < e413b 0E 413B | 3001: jr nc, $01 >
inc h			
ldi a,(hl)		
ld h,(hl)		
ld l,a			
ld a,b			
call  rlabel_0E_4147 
.DB $18 $e7 ; < ['$18', '$e7'] > < 0x4145 > < e4145 0E 4145 | 18E7: jr $E7 >
rlabel_0E_4147:
jp hl			
.incbin "data/0e_4148.data"
rlabel_0E_4263:
call  rlabel_0E_40B9 
call  rlabel_00_3005 
.incbin "data/0e_4269.data"
call  rlabel_0E_40B9 
ld e,a			
ld d,$00		
ret			
call  rlabel_0E_40B9 
ld e,a			
call  rlabel_0E_40B9 
ld d,a			
ret			
call  rlabel_0E_40B9 
call  rlabel_0E_42E9 
ret			
.incbin "data/0e_4288.data"
rlabel_0E_4292:
call  rlabel_0E_40B9 
call  rlabel_00_3005 
.incbin "data/0e_4298.data"
call  rlabel_0E_40B9 
call  rlabel_0E_42DA 
ret			
.incbin "data/0e_42AF.data"
rlabel_0E_42DA:
push hl			
ld hl,$cdbf		
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x42e1 > < e42e1 0E 42E1 | 3001: jr nc, $01 >
.incbin "data/0e_42E3.data"
ld (hl),e		
inc hl			
ld (hl),d		
pop hl			
ret			
rlabel_0E_42E9:
push hl			
ld hl,$cdbf		
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x42f0 > < e42f0 0E 42F0 | 3001: jr nc, $01 >
.incbin "data/0e_42F2.data"
ld e,(hl)		
inc hl			
ld d,(hl)		
pop hl			
ret			
rlabel_0E_42F8:
push hl			
call  rlabel_0E_431A 
or (hl)			
ld (hl),a		
pop hl			
ret			
rlabel_0E_4300:
push hl			
call  rlabel_0E_431A 
cpl			
and (hl)		
ld (hl),a		
pop hl			
ret			
rlabel_0E_4309:
push hl			
call  rlabel_0E_431A 
and (hl)		
or a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x430f > < e430f 0E 430F | 2802: jr z, $02 >
ld a,$01		
pop hl			
ret			
call  rlabel_0E_4309 
ld c,a			
ret			
rlabel_0E_431A:
xor a			
srl d			
rr e			
rr a			
srl d			
rr e			
rr a			
srl d			
rr e			
rr a			
rrca			
swap a			
ld hl,$ce3f		
add hl,de		
ld e,$01		
or a			
.DB $28 $05 ; < ['$28', '$05'] > < 0x4337 > < e4337 0E 4337 | 2805: jr z, $05 >
sla e			
dec a			
.DB $20 $fb ; < ['$20', '$fb'] > < 0x433c > < e433c 0E 433C | 20FB: jr nz, $FB >
ld a,e			
ret			
rlabel_0E_4340:
ld h,d			
ld l,e			
add hl,hl		
add hl,de		
ld de,$4001		
add hl,de		
ld c,$89		
ld b,c			
call  rlabel_00_2F0D 
ld e,a			
inc hl			
ld b,c			
call  rlabel_00_2F0D 
ld d,a			
inc hl			
ld b,c			
call  rlabel_00_2F0D 
ld c,a			
ret			
rlabel_0E_435C:
push hl			
push de			
push bc			
ld a,a			
call  rlabel_00_3071 
pop bc			
pop de			
pop hl			
ret			
call  rlabel_0E_4A37 
pop af			
ret			
call  rlabel_00_027C 
call  rlabel_0E_40DE 
or a			
ret z			
cp $10			
.DB $38 $05 ; < ['$38', '$05'] > < 0x4376 > < e4376 0E 4376 | 3805: jr c, $05 >
call  rlabel_0E_489E 
.DB $18 $ef ; < ['$18', '$ef'] > < 0x437b > < e437b 0E 437B | 18EF: jr $EF >
ld hl,$438f		
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4383 > < e4383 0E 4383 | 3001: jr nc, $01 >
.incbin "data/0e_4385.data"
ldi a,(hl)		
ld h,(hl)		
ld l,a			
call  rlabel_0E_438E 
.DB $18 $de ; < ['$18', '$de'] > < 0x438c > < e438c 0E 438C | 18DE: jr $DE >
rlabel_0E_438E:
jp hl			
.incbin "data/0e_438F.data"
call  rlabel_0E_443F 
call  rlabel_0E_4413 
ret			
rlabel_0E_43B7:
ld hl,$43eb		
ld a,($cdb0)		
cp $ff			
.DB $20 $03 ; < ['$20', '$03'] > < 0x43bf > < e43bf 0E 43BF | 2003: jr nz, $03 >
inc hl			
inc hl			
inc hl			
ldi a,(hl)		
ld ($cdb4),a		
ldi a,(hl)		
ld ($cdb5),a		
ldi a,(hl)		
ld ($cdb6),a		
ld a,$96		
ld ($cdb3),a		
ld a,($cdb4)		
ld ($cdb1),a		
ld a,($cdae)		
or a			
.DB $20 $04 ; < ['$20', '$04'] > < 0x43df > < e43df 0E 43DF | 2004: jr nz, $04 >
ld a,$01		
.DB $18 $02 ; < ['$18', '$02'] > < 0x43e3 > < e43e3 0E 43E3 | 1802: jr $02 >
ld a,$0e		
ld ($cdb2),a		
ret			
.incbin "data/0e_43EB.data"
ld a,($cdb1)		
ld b,a			
ld a,($cdb4)		
cp b			
.DB $20 $09 ; < ['$20', '$09'] > < 0x43f9 > < e43f9 0E 43F9 | 2009: jr nz, $09 >
.incbin "data/0e_43FB.data"
ld a,($cdb4)		
ld ($cdb1),a		
ld a,($cdb2)		
inc a			
inc a			
ld ($cdb2),a		
ret			
rlabel_0E_4413:
push hl			
call  rlabel_0E_43B7 
ld a,($cdb2)		
ld b,a			
ld a,($cdb5)		
ld c,a			
call  rlabel_00_2F5C 
ld d,$03		
ld b,$80		
push hl			
ld a,($cdb6)		
ld c,a			
call  rlabel_00_0519 
call  rlabel_00_2F86 
dec c			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x4432 > < e4432 0E 4432 | 20F7: jr nz, $F7 >
pop hl			
dec d			
.DB $28 $05 ; < ['$28', '$05'] > < 0x4436 > < e4436 0E 4436 | 2805: jr z, $05 >
call  rlabel_00_2FAE 
.DB $18 $e9 ; < ['$18', '$e9'] > < 0x443b > < e443b 0E 443B | 18E9: jr $E9 >
pop hl			
ret			
rlabel_0E_443F:
ld b,$04		
ld a,($cdae)		
or a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x4445 > < e4445 0E 4445 | 2802: jr z, $02 >
ld b,$11		
ld c,$12		
call  rlabel_00_2F5C 
push hl			
ld a,$8a		
call  rlabel_00_0518 
ld bc,$ff00		
ld a,b			
inc a			
and $07			
ld b,a			
.DB $20 $18 ; < ['$20', '$18'] > < 0x445c > < e445c 0E 445C | 2018: jr nz, $18 >
ld a,c			
inc a			
and $03			
ld c,a			
swap a			
ld hl,$448f		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x446a > < e446a 0E 446A | 3001: jr nc, $01 >
.incbin "data/0e_446C.data"
ld de,$88a0		
call  rlabel_00_0654 
call  rlabel_00_0658 
push bc			
call  rlabel_00_027C 
pop bc			
ld a,($ff00+$a5)	
and $03			
.DB $28 $d6 ; < ['$28', '$d6'] > < 0x447f > < e447f 0E 447F | 28D6: jr z, $D6 >
push af			
ld a,$1b		
call  rlabel_0E_435C 
pop af			
pop hl			
ld a,$91		
call  rlabel_00_0518 
ret			
.incbin "data/0e_448F.data"
rlabel_0E_489E:
push hl			
push af			
push bc			
ld a,($cdb1)		
cp $13			
.DB $38 $0e ; < ['$38', '$0e'] > < 0x48a6 > < e48a6 0E 48A6 | 380E: jr c, $0E >
.incbin "data/0e_48A8.data"
ld a,($cdb2)		
cp $05			
.DB $28 $04 ; < ['$28', '$04'] > < 0x48bb > < e48bb 0E 48BB | 2804: jr z, $04 >
cp $12			
.DB $20 $03 ; < ['$20', '$03'] > < 0x48bf > < e48bf 0E 48BF | 2003: jr nz, $03 >
.incbin "data/0e_48C1.data"
pop bc			
pop af			
cp $5e			
.DB $20 $06 ; < ['$20', '$06'] > < 0x48c8 > < e48c8 0E 48C8 | 2006: jr nz, $06 >
ld de,$5001		
ld a,b			
.DB $18 $0d ; < ['$18', '$0d'] > < 0x48ce > < e48ce 0E 48CE | 180D: jr $0D >
cp $5f			
.DB $20 $06 ; < ['$20', '$06'] > < 0x48d2 > < e48d2 0E 48D2 | 2006: jr nz, $06 >
ld de,$6001		
ld a,b			
.DB $18 $03 ; < ['$18', '$03'] > < 0x48d8 > < e48d8 0E 48D8 | 1803: jr $03 >
ld de,$4001		
swap a			
ld h,a			
and $f0			
ld l,a			
ld a,h			
and $0f			
ld h,a			
add hl,de		
ld d,h			
ld e,l			
ld a,($cdb3)		
swap a			
ld h,a			
and $f0			
ld l,a			
ld a,h			
and $0f			
or $80			
ld h,a			
ld b,$3d		
ld c,$10		
call  rlabel_00_2FB9 
ld a,($cdb1)		
ld c,a			
ld a,($cdb2)		
ld b,a			
call  rlabel_00_2F5C 
ld a,($cdb3)		
call  rlabel_00_0518 
ld a,($cdb3)		
inc a			
cp $bc			
.DB $20 $02 ; < ['$20', '$02'] > < 0x4917 > < e4917 0E 4917 | 2002: jr nz, $02 >
.incbin "data/0e_4919.data"
ld ($cdb3),a		
ld a,($cdb1)		
inc a			
ld ($cdb1),a		
pop hl			
ret			
.incbin "data/0e_4927.data"
ld a,$0d		
.DB $18 $01 ; < ['$18', '$01'] > < 0x4984 > < e4984 0E 4984 | 1801: jr $01 >
xor a			
ld ($cdae),a		
ld a,($cdad)		
or a			
ret nz			
ld a,$01		
ld ($cdad),a		
call  rlabel_0E_68A8 
ld a,$ff		
ld ($cdb0),a		
call  rlabel_0E_43B7 
ld a,$0a		
ld ($cdaf),a		
.DB $18 $26 ; < ['$18', '$26'] > < 0x49a4 > < e49a4 0E 49A4 | 1826: jr $26 >
ld a,($cdae)		
ld b,a			
ld a,($cdaf)		
ld c,a			
call  rlabel_00_2F5C 
ld de,$4b20		
call  rlabel_0E_4AD6 
ld a,($cdae)		
ld b,a			
ld a,($cdaf)		
ld c,a			
ld a,$13		
sub c			
ld c,a			
call  rlabel_00_2F5C 
ld de,$4b20		
call  rlabel_0E_4AD6 
ld a,($cdae)		
ld b,a			
ld a,($cdaf)		
ld c,a			
dec c			
call  rlabel_00_2F5C 
push hl			
ld a,$01		
ld ($ff00+$4f),a	
ld b,$07		
ld c,$05		
ld a,($cbf2)		
and a			
call nz,$0519		
call  rlabel_00_2FAE 
dec c			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x49ec > < e49ec 0E 49EC | 20F7: jr nz, $F7 >
xor a			
ld ($ff00+$4f),a	
pop hl			
ld de,$4b1a		
call  rlabel_0E_4AD6 
ld a,($cdae)		
ld b,a			
ld a,($cdaf)		
ld c,a			
ld a,$14		
sub c			
ld c,a			
call  rlabel_00_2F5C 
push hl			
ld a,$01		
ld ($ff00+$4f),a	
ld b,$07		
ld c,$05		
ld a,($cbf2)		
and a			
call nz,$0519		
call  rlabel_00_2FAE 
dec c			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x4a1b > < e4a1b 0E 4A1B | 20F7: jr nz, $F7 >
xor a			
ld ($ff00+$4f),a	
pop hl			
ld de,$4b1d		
call  rlabel_0E_4AD6 
ld a,($cdaf)		
dec a			
ld ($cdaf),a		
ret z			
ld c,$28		
call  rlabel_00_08EE 
jp $49a6		
rlabel_0E_4A37:
ld a,($cdad)		
or a			
ret z			
ld a,$0a		
ld ($cdaf),a		
ld a,($cf78)		
or a			
.DB $28 $03 ; < ['$28', '$03'] > < 0x4a45 > < e4a45 0E 4A45 | 2803: jr z, $03 >
.incbin "data/0e_4A47.data"
ld a,($cdae)		
ld b,a			
ld a,($cdaf)		
ld c,a			
ld a,$0a		
sub c			
ld c,a			
ld e,a			
ld d,b			
call  rlabel_00_2F5C 
push hl			
push de			
ld a,$01		
ld ($ff00+$4f),a	
call  rlabel_00_2F36 
ld a,($cbf2)		
and a			
call nz,$4b04		
xor a			
ld ($ff00+$4f),a	
pop de			
pop hl			
push hl			
call  rlabel_00_2F1C 
call  rlabel_0E_4AF0 
pop hl			
call  rlabel_00_2F86 
ld de,$4b1a		
call  rlabel_0E_4AD6 
ld a,($cdae)		
ld b,a			
ld a,($cdaf)		
add $09			
ld c,a			
ld d,b			
ld e,c			
call  rlabel_00_2F5C 
push hl			
push de			
ld a,$01		
ld ($ff00+$4f),a	
call  rlabel_00_2F36 
ld a,($cbf2)		
and a			
call nz,$4b04		
xor a			
ld ($ff00+$4f),a	
pop de			
pop hl			
push hl			
call  rlabel_00_2F1C 
call  rlabel_0E_4AF0 
pop hl			
call  rlabel_00_2FA2 
ld a,($cdaf)		
cp $01			
.DB $28 $06 ; < ['$28', '$06'] > < 0x4ab5 > < e4ab5 0E 4AB5 | 2806: jr z, $06 >
ld de,$4b1d		
call  rlabel_0E_4AD6 
ld a,($cdaf)		
dec a			
ld ($cdaf),a		
.DB $28 $08 ; < ['$28', '$08'] > < 0x4ac4 > < e4ac4 0E 4AC4 | 2808: jr z, $08 >
ld c,$28		
call  rlabel_00_08EE 
jp $4a4a		
xor a			
ld ($cdad),a		
call  rlabel_0E_68C9 
ret			
rlabel_0E_4AD6:
ld a,(de)		
inc de			
call  rlabel_00_0518 
call  rlabel_00_2FAE 
ld c,$03		
ld a,(de)		
call  rlabel_00_0518 
call  rlabel_00_2FAE 
dec c			
.DB $20 $f6 ; < ['$20', '$f6'] > < 0x4ae8 > < e4ae8 0E 4AE8 | 20F6: jr nz, $F6 >
inc de			
ld a,(de)		
call  rlabel_00_0518 
ret			
rlabel_0E_4AF0:
ld c,$05		
ld a,(de)		
call  rlabel_00_0518 
call  rlabel_00_2FAE 
ld a,$14		
add e			
ld e,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4afd > < e4afd 0E 4AFD | 3001: jr nc, $01 >
.incbin "data/0e_4AFF.data"
dec c			
.DB $20 $ef ; < ['$20', '$ef'] > < 0x4b01 > < e4b01 0E 4B01 | 20EF: jr nz, $EF >
ret			
ld c,$05		
ld a,(de)		
and $07			
call  rlabel_00_0518 
call  rlabel_00_2FAE 
ld a,$14		
add e			
ld e,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4b13 > < e4b13 0E 4B13 | 3001: jr nc, $01 >
inc d			
dec c			
.DB $20 $ed ; < ['$20', '$ed'] > < 0x4b17 > < e4b17 0E 4B17 | 20ED: jr nz, $ED >
ret			
.incbin "data/0e_4B1A.data"
ld a,($cdad)		
or a			
call z,$498a		
call  rlabel_0E_40B9 
cp $ff			
jp z,$4bff		
cp $fe			
.DB $20 $05 ; < ['$20', '$05'] > < 0x4b37 > < e4b37 0E 4B37 | 2005: jr nz, $05 >
ld a,($c222)		
.DB $18 $0f ; < ['$18', '$0f'] > < 0x4b3c > < e4b3c 0E 4B3C | 180F: jr $0F >
cp $fb			
.DB $38 $0b ; < ['$38', '$0b'] > < 0x4b40 > < e4b40 0E 4B40 | 380B: jr c, $0B >
sub $fb			
ld hl,$c34c		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4b49 > < e4b49 0E 4B49 | 3001: jr nc, $01 >
.incbin "data/0e_4B4B.data"
ld a,(hl)		
ld ($cdb0),a		
add $30			
ld l,a			
ld h,$06		
call  rlabel_00_0892 
ld a,($cdae)		
or a			
.DB $28 $05 ; < ['$28', '$05'] > < 0x4b5c > < e4b5c 0E 4B5C | 2805: jr z, $05 >
ld bc,$0e01		
.DB $18 $03 ; < ['$18', '$03'] > < 0x4b61 > < e4b61 0E 4B61 | 1803: jr $03 >
ld bc,$0101		
call  rlabel_00_2F5C 
ld a,($cbf2)		
and a			
.DB $28 $30 ; < ['$28', '$30'] > < 0x4b6d > < e4b6d 0E 4B6D | 2830: jr z, $30 >
ld a,$01		
ld ($ff00+$4f),a	
ld b,$06		
ld c,$03		
ld d,$1f		
ld a,l			
and $e0			
ld e,a			
call  rlabel_00_0519 
ld a,l			
inc a			
and d			
or e			
ld l,a			
call  rlabel_00_0519 
ld a,l			
inc a			
and d			
or e			
ld l,a			
call  rlabel_00_0519 
dec l			
dec l			
ld a,l			
and d			
or e			
ld l,a			
call  rlabel_00_2FAE 
dec c			
.DB $20 $dd ; < ['$20', '$dd'] > < 0x4b9a > < e4b9a 0E 4B9A | 20DD: jr nz, $DD >
xor a			
ld ($ff00+$4f),a	
ld a,($cdb0)		
ld l,a			
ld h,$00		
ld d,h			
ld e,l			
add hl,hl		
add hl,hl		
add hl,hl		
add hl,de		
add hl,hl		
add hl,hl		
add hl,hl		
add hl,hl		
ld de,$4001		
add hl,de		
ld de,$8810		
ld bc,$0012		
ld a,$3e		
call  rlabel_00_06FD 
ld a,($cdae)		
or a			
.DB $28 $05 ; < ['$28', '$05'] > < 0x4bc2 > < e4bc2 0E 4BC2 | 2805: jr z, $05 >
ld bc,$0e01		
.DB $18 $03 ; < ['$18', '$03'] > < 0x4bc7 > < e4bc7 0E 4BC7 | 1803: jr $03 >
ld bc,$0101		
call  rlabel_00_2F5C 
ld b,$81		
ld c,$03		
ld d,$1f		
ld a,l			
and $e0			
ld e,a			
call  rlabel_00_0519 
inc b			
ld a,l			
inc a			
and d			
or e			
ld l,a			
call  rlabel_00_0519 
inc b			
ld a,l			
inc a			
and d			
or e			
ld l,a			
call  rlabel_00_0519 
inc b			
dec l			
dec l			
ld a,l			
and d			
or e			
ld l,a			
call  rlabel_00_2FAE 
dec c			
.DB $20 $da ; < ['$20', '$da'] > < 0x4bf9 > < e4bf9 0E 4BF9 | 20DA: jr nz, $DA >
call  rlabel_0E_4413 
ret			
.incbin "data/0e_4BFF.data"
rlabel_0E_4C46:
call  rlabel_0E_40B9 
ld l,a			
call  rlabel_0E_40B9 
ld h,a			
call  rlabel_0E_4084 
ret			
call  rlabel_0E_4263 
ld h,d			
ld l,e			
add hl,hl		
call  rlabel_0E_4084 
jp $4c46		
push af			
call  rlabel_0E_4263 
ld c,e			
ld b,d			
call  rlabel_0E_4263 
pop af			
sub $06			
and $03			
call  rlabel_00_3005 
.incbin "data/0e_4C6F.data"
ld a,b			
cp d			
.DB $20 $28 ; < ['$20', '$28'] > < 0x4c79 > < e4c79 0E 4C79 | 2028: jr nz, $28 >
ld a,c			
cp e			
.DB $20 $24 ; < ['$20', '$24'] > < 0x4c7d > < e4c7d 0E 4C7D | 2024: jr nz, $24 >
.DB $18 $1e ; < ['$18', '$1e'] > < 0x4c7f > < e4c7f 0E 4C7F | 181E: jr $1E >
ld a,b			
cp d			
.DB $20 $1a ; < ['$20', '$1a'] > < 0x4c83 > < e4c83 0E 4C83 | 201A: jr nz, $1A >
ld a,c			
cp e			
.DB $20 $16 ; < ['$20', '$16'] > < 0x4c87 > < e4c87 0E 4C87 | 2016: jr nz, $16 >
.DB $18 $18 ; < ['$18', '$18'] > < 0x4c89 > < e4c89 0E 4C89 | 1818: jr $18 >
.incbin "data/0e_4C8B.data"
ld a,b			
cp d			
.DB $38 $0e ; < ['$38', '$0e'] > < 0x4c93 > < e4c93 0E 4C93 | 380E: jr c, $0E >
.DB $20 $08 ; < ['$20', '$08'] > < 0x4c95 > < e4c95 0E 4C95 | 2008: jr nz, $08 >
ld a,c			
cp e			
.DB $28 $08 ; < ['$28', '$08'] > < 0x4c99 > < e4c99 0E 4C99 | 2808: jr z, $08 >
.DB $38 $06 ; < ['$38', '$06'] > < 0x4c9b > < e4c9b 0E 4C9B | 3806: jr c, $06 >
.incbin "data/0e_4C9D.data"
call  rlabel_0E_4C46 
ret			
ld hl,$0002		
call  rlabel_0E_4084 
ret			
ld a,$01		
.DB $18 $01 ; < ['$18', '$01'] > < 0x4cac > < e4cac 0E 4CAC | 1801: jr $01 >
.incbin "data/0e_4CAE.data"
ld ($ff00+$8d),a	
ld a,$ff		
ld ($ff00+$8a),a	
ld ($ff00+$8b),a	
xor a			
ld ($ff00+$8c),a	
call  rlabel_0E_4D7F 
ld a,$8a		
call  rlabel_00_0518 
ld a,($ff00+$8a)	
inc a			
and $07			
ld ($ff00+$8a),a	
.DB $20 $1a ; < ['$20', '$1a'] > < 0x4cc9 > < e4cc9 0E 4CC9 | 201A: jr nz, $1A >
ld a,($ff00+$8b)	
inc a			
and $03			
ld ($ff00+$8b),a	
swap a			
ld hl,$4d98		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4cd9 > < e4cd9 0E 4CD9 | 3001: jr nc, $01 >
.incbin "data/0e_4CDB.data"
ld de,$88a0		
call  rlabel_00_0654 
call  rlabel_00_0658 
push de			
call  rlabel_00_027C 
pop de			
ld a,($ff00+$a5)	
bit 6,a			
.DB $20 $20 ; < ['$20', '$20'] > < 0x4cee > < e4cee 0E 4CEE | 2020: jr nz, $20 >
bit 7,a			
.DB $20 $3e ; < ['$20', '$3e'] > < 0x4cf2 > < e4cf2 0E 4CF2 | 203E: jr nz, $3E >
bit 0,a			
.DB $20 $5d ; < ['$20', '$5d'] > < 0x4cf6 > < e4cf6 0E 4CF6 | 205D: jr nz, $5D >
bit 1,a			
.DB $28 $c6 ; < ['$28', '$c6'] > < 0x4cfa > < e4cfa 0E 4CFA | 28C6: jr z, $C6 >
ld a,($ff00+$8d)	
or a			
.DB $28 $c1 ; < ['$28', '$c1'] > < 0x4cff > < e4cff 0E 4CFF | 28C1: jr z, $C1 >
push af			
ld a,$1c		
call  rlabel_0E_435C 
pop af			
ld a,($ff00+$8c)	
or $02			
ld ($ff00+$8c),a	
.DB $18 $4c ; < ['$18', '$4c'] > < 0x4d0e > < e4d0e 0E 4D0E | 184C: jr $4C >
.incbin "data/0e_4D10.data"
ld a,($ff00+$8c)	
or a			
.DB $20 $8b ; < ['$20', '$8b'] > < 0x4d35 > < e4d35 0E 4D35 | 208B: jr nz, $8B >
push af			
ld a,$10		
call  rlabel_0E_435C 
pop af			
call  rlabel_0E_4D7F 
ld a,$80		
call  rlabel_00_0518 
ld a,$01		
ld ($ff00+$8c),a	
call  rlabel_0E_4D7F 
ld a,$8a		
call  rlabel_00_0518 
jp $4cc2		
push af			
ld a,$1b		
call  rlabel_0E_435C 
pop af			
ld a,($ff00+$8c)	
call  rlabel_0E_4D7F 
ld a,$80		
call  rlabel_00_0518 
ld a,($ff00+$8c)	
or a			
jp z,$4c46		
dec a			
.DB $20 $09 ; < ['$20', '$09'] > < 0x4d6d > < e4d6d 0E 4D6D | 2009: jr nz, $09 >
ld hl,$0002		
call  rlabel_0E_4084 
jp $4c46		
ld hl,$0004		
call  rlabel_0E_4084 
ret			
rlabel_0E_4D7F:
and $01			
.DB $28 $01 ; < ['$28', '$01'] > < 0x4d81 > < e4d81 0E 4D81 | 2801: jr z, $01 >
inc a			
ld b,a			
inc b			
ld a,($cdae)		
or a			
.DB $28 $04 ; < ['$28', '$04'] > < 0x4d8a > < e4d8a 0E 4D8A | 2804: jr z, $04 >
ld a,b			
add $0d			
ld b,a			
ld a,($cdb5)		
ld c,a			
call  rlabel_00_2F5C 
ret			
.incbin "data/0e_4D98.data"
call  rlabel_0E_40B9 
ld l,a			
call  rlabel_0E_40B9 
ld h,a			
call  rlabel_0E_4044 
call  rlabel_0E_4084 
ret			
call  rlabel_0E_4064 
ret			
.incbin "data/0e_4DEB.data"
call  rlabel_0E_40B9 
ld e,a			
call  rlabel_0E_40B9 
ld d,a			
call  rlabel_0E_40B9 
push af			
call  rlabel_0E_4044 
call  rlabel_0E_4340 
call  rlabel_0E_402A 
pop af			
ld e,a			
xor a			
ld d,a			
call  rlabel_0E_42DA 
ret			
call  rlabel_0E_4263 
call  rlabel_0E_4292 
ret			
.incbin "data/0e_4E29.data"
call  rlabel_0E_40B9 
call  rlabel_00_3027 
ld e,a			
xor a			
ld d,a			
call  rlabel_0E_42DA 
ret			
call  rlabel_0E_40B9 
ld b,a			
or a			
ret z			
call  rlabel_00_027C 
dec b			
.DB $20 $fa ; < ['$20', '$fa'] > < 0x4e6f > < e4e6f 0E 4E6F | 20FA: jr nz, $FA >
ret			
call  rlabel_0E_40B9 
dec a			
ld ($ff00+$8a),a	
add a			
ld b,a			
add a			
add b			
ld hl,$db39		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4e81 > < e4e81 0E 4E81 | 3001: jr nc, $01 >
.incbin "data/0e_4E83.data"
ldi a,(hl)		
and $1f			
ld d,a			
ldi a,(hl)		
and $1f			
ld e,a			
ldi a,(hl)		
and $1f			
sub d			
ld ($ff00+$8b),a	
ldi a,(hl)		
and $1f			
sub e			
ld ($ff00+$8c),a	
push bc			
ld h,$00		
ld l,e			
ld b,h			
ld c,l			
add hl,hl		
add hl,hl		
add hl,bc		
add hl,hl		
add hl,hl		
ld b,$00		
ld c,d			
add hl,bc		
ld bc,$d43d		
add hl,bc		
pop bc			
ld a,($ff00+$8b)	
ld ($ff00+$8d),a	
ld a,(hl)		
and $08			
.DB $28 $19 ; < ['$28', '$19'] > < 0x4eb3 > < e4eb3 0E 4EB3 | 2819: jr z, $19 >
push bc			
push hl			
call  rlabel_0E_686F 
pop hl			
pop bc			
ld c,a			
ld a,($ff00+$8a)	
cp c			
.DB $20 $0c ; < ['$20', '$0c'] > < 0x4ec0 > < e4ec0 0E 4EC0 | 200C: jr nz, $0C >
push de			
ld a,e			
ld e,d			
ld d,a			
call  rlabel_00_2F36 
ld a,(de)		
or $08			
ld (de),a		
pop de			
inc hl			
inc d			
ld a,($ff00+$8d)	
dec a			
ld ($ff00+$8d),a	
.DB $20 $d9 ; < ['$20', '$d9'] > < 0x4ed5 > < e4ed5 0E 4ED5 | 20D9: jr nz, $D9 >
ld a,($ff00+$8b)	
ld c,a			
ld a,d			
sub c			
ld d,a			
ld a,($ff00+$8b)	
ld c,a			
ld a,$14		
sub c			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4ee5 > < e4ee5 0E 4EE5 | 3001: jr nc, $01 >
.incbin "data/0e_4EE7.data"
inc e			
ld a,($ff00+$8c)	
dec a			
ld ($ff00+$8c),a	
.DB $20 $bc ; < ['$20', '$bc'] > < 0x4eee > < e4eee 0E 4EEE | 20BC: jr nz, $BC >
ret			
call  rlabel_0E_40B9 
dec a			
ld ($ff00+$8a),a	
add a			
ld b,a			
add a			
add b			
ld hl,$db39		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4f00 > < e4f00 0E 4F00 | 3001: jr nc, $01 >
.incbin "data/0e_4F02.data"
ldi a,(hl)		
and $1f			
ld c,a			
ldi a,(hl)		
and $1f			
ld b,a			
ldi a,(hl)		
and $1f			
sub c			
ld e,a			
ldi a,(hl)		
and $1f			
sub b			
ld d,a			
push de			
ld d,b			
ld e,c			
call  rlabel_00_2F36 
ld h,d			
ld l,e			
pop de			
ld a,e			
ld ($ff00+$8c),a	
ld a,(hl)		
ld ($ff00+$8b),a	
and $08			
.DB $28 $16 ; < ['$28', '$16'] > < 0x4f26 > < e4f26 0E 4F26 | 2816: jr z, $16 >
push bc			
push de			
push hl			
ld d,c			
ld e,b			
call  rlabel_0E_686F 
pop hl			
pop de			
ld b,a			
ld a,($ff00+$8a)	
cp b			
pop bc			
.DB $20 $05 ; < ['$20', '$05'] > < 0x4f37 > < e4f37 0E 4F37 | 2005: jr nz, $05 >
ld a,($ff00+$8b)	
and $f7			
ld (hl),a		
inc hl			
inc c			
ld a,($ff00+$8c)	
dec a			
ld ($ff00+$8c),a	
.DB $20 $da ; < ['$20', '$da'] > < 0x4f45 > < e4f45 0E 4F45 | 20DA: jr nz, $DA >
ld a,c			
sub e			
ld c,a			
ld a,$14		
sub e			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x4f4f > < e4f4f 0E 4F4F | 3001: jr nc, $01 >
inc h			
inc b			
dec d			
.DB $20 $c8 ; < ['$20', '$c8'] > < 0x4f54 > < e4f54 0E 4F54 | 20C8: jr nz, $C8 >
ret			
ld a,($c21d)		
ld d,$00		
ld e,a			
ld a,$00		
call  rlabel_0E_42DA 
ld a,($c219)		
ld d,$00		
ld e,a			
ld a,$01		
call  rlabel_0E_42DA 
ld a,($c316)		
call  rlabel_00_0815 
ld b,$05		
call  rlabel_00_0832 
ld e,a			
ld d,$00		
ld a,$02		
call  rlabel_0E_42DA 
ret			
call  rlabel_0E_40B9 
ld c,a			
ld b,$02		
ld hl,$4a04		
rst $28			
xor a			
ld d,a			
call  rlabel_0E_42DA 
ld e,c			
ld a,$01		
call  rlabel_0E_42DA 
ret			
ld a,($c351)		
ld e,a			
ld a,($c352)		
ld d,a			
xor a			
call  rlabel_0E_42DA 
ret			
ld d,$81		
ld e,$06		
ld c,$01		
ld a,($cdae)		
or a			
.DB $28 $02 ; < ['$28', '$02'] > < 0x4fae > < e4fae 0E 4FAE | 2802: jr z, $02 >
.incbin "data/0e_4FB0.data"
ld b,$03		
ld hl,$4ec6		
rst $28			
call  rlabel_0E_4263 
ld b,$03		
ld hl,$568e		
rst $28			
ld a,$fd		
ld ($cdb0),a		
call  rlabel_0E_4413 
ret			
.incbin "data/0e_4FCA.data"
call  rlabel_0E_40B9 
ld ($cb9b),a		
call  rlabel_0E_40B9 
ld ($cb9c),a		
call  rlabel_0E_4044 
ld b,$02		
ld hl,$4a3a		
rst $28			
ld b,$04		
ld hl,$402b		
rst $28			
push bc			
ld b,$02		
ld hl,$4a62		
rst $28			
call  rlabel_0E_4064 
pop de			
xor a			
ld d,a			
call  rlabel_0E_42DA 
ret			
call  rlabel_0E_40B9 
and $01			
ld ($c987),a		
ret			
call  rlabel_0E_40B9 
and $0f			
add a			
add a			
add a			
ld hl,$db93		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x5026 > < e5026 0E 5026 | 3001: jr nc, $01 >
.incbin "data/0e_5028.data"
call  rlabel_0E_40B9 
ldi (hl),a		
call  rlabel_0E_40B9 
ld (hl),a		
dec hl			
dec hl			
dec hl			
dec hl			
call  rlabel_0E_40B9 
ldi (hl),a		
call  rlabel_0E_40B9 
ldi (hl),a		
call  rlabel_0E_40B9 
ld (hl),a		
dec hl			
dec hl			
dec hl			
dec hl			
call  rlabel_0E_40B9 
ldi (hl),a		
call  rlabel_0E_40B9 
ld (hl),a		
dec hl			
dec hl			
ld a,$01		
ld (hl),a		
ret			
.incbin "data/0e_5053.data"
call  rlabel_0E_40B9 
ld c,a			
call  rlabel_0E_40B9 
ld b,a			
call  rlabel_0E_40B9 
ld d,b			
ld e,c			
call  rlabel_00_2F1C 
ld (de),a		
ret			
call  rlabel_0E_40B9 
ld c,a			
call  rlabel_0E_40B9 
ld b,a			
call  rlabel_0E_40B9 
and $0f			
swap a			
ld l,a			
ld e,c			
ld d,b			
call  rlabel_00_2F36 
ld a,(de)		
and $0f			
or l			
ld (de),a		
ret			
call  rlabel_0E_40B9 
ld c,a			
call  rlabel_0E_40B9 
ld b,a			
call  rlabel_0E_40B9 
and $07			
ld l,a			
ld e,c			
ld d,b			
call  rlabel_00_2F36 
ld a,(de)		
and $f8			
or l			
ld (de),a		
ret			
.incbin "data/0e_5111.data"
call  rlabel_0E_40B9 
ld ($c318),a		
call  rlabel_0E_40B9 
ld ($c319),a		
call  rlabel_0E_40B9 
ld ($c31b),a		
call  rlabel_0E_40B9 
ld ($c31a),a		
call  rlabel_0E_40B9 
ld ($c31c),a		
ld a,$04		
ld ($c317),a		
call  rlabel_0E_4044 
ld b,$02		
ld hl,$44a3		
rst $28			
call  rlabel_0E_4064 
ret			
call  rlabel_0E_40B9 
ld e,a			
call  rlabel_0E_40B9 
ld d,a			
call  rlabel_0E_40B9 
ld c,a			
ld b,$02		
ld hl,$4609		
rst $28			
ret			
ld hl,$cdb7		
call  rlabel_0E_40B9 
ld e,a			
call  rlabel_0E_40B9 
ld d,a			
call  rlabel_0E_40B9 
ldi (hl),a		
call  rlabel_0E_40B9 
ldi (hl),a		
call  rlabel_0E_40B9 
ldi (hl),a		
call  rlabel_0E_40B9 
ldi (hl),a		
call  rlabel_0E_40B9 
ld (hl),a		
call  rlabel_0E_40B9 
ld c,a			
ld b,$02		
ld hl,$46e4		
rst $28			
ret			
call  rlabel_0E_40B9 
ld e,a			
call  rlabel_0E_40B9 
ld d,a			
ld b,$02		
ld hl,$45c1		
rst $28			
ld e,c			
xor a			
ld d,a			
call  rlabel_0E_42DA 
ret			
call  rlabel_0E_4263 
call  rlabel_0E_40B9 
ld c,a			
ld b,$03		
ld hl,$51b4		
rst $28			
ret			
call  rlabel_0E_40B9 
ld e,a			
call  rlabel_0E_40B9 
ld d,a			
cp $ff			
.DB $20 $09 ; < ['$20', '$09'] > < 0x5238 > < e5238 0E 5238 | 2009: jr nz, $09 >
.incbin "data/0e_523A.data"
ld b,$03		
ld hl,$51b2		
rst $28			
ld e,c			
xor a			
ld d,a			
call  rlabel_0E_42DA 
ret			
call  rlabel_0E_40B9 
ld e,a			
call  rlabel_0E_40B9 
ld d,a			
call  rlabel_0E_4044 
ld a,$01		
ld ($cfd3),a		
ld b,$02		
ld hl,$488e		
rst $28			
call  rlabel_0E_4064 
ld a,c			
and $01			
ld e,a			
xor a			
ld d,a			
call  rlabel_0E_42DA 
ret			
.incbin "data/0e_5273.data"
call  rlabel_0E_40B9 
ld c,a			
ld b,$02		
ld hl,$7779		
rst $28			
ret			
ld hl,$cdb7		
call  rlabel_0E_40B9 
ldi (hl),a		
call  rlabel_0E_40B9 
ldi (hl),a		
call  rlabel_0E_40B9 
ldi (hl),a		
call  rlabel_0E_40B9 
ldi (hl),a		
call  rlabel_0E_40B9 
ldi (hl),a		
ld b,$07		
ld hl,$7c9d		
rst $28			
ret			
.incbin "data/0e_52A8.data"
call  rlabel_0E_40B9 
ld e,a			
call  rlabel_0E_40B9 
ld d,a			
call  rlabel_0E_40B9 
sub e			
inc a			
ld c,a			
call  rlabel_0E_40B9 
sub d			
inc a			
ld b,a			
call  rlabel_00_2F1C 
ld h,d			
ld l,e			
call  rlabel_0E_40B9 
ld e,a			
ld d,c			
ld a,e			
ld c,d			
push hl			
ldi (hl),a		
dec c			
.DB $20 $fc ; < ['$20', '$fc'] > < 0x5339 > < e5339 0E 5339 | 20FC: jr nz, $FC >
pop hl			
ld a,$14		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x5340 > < e5340 0E 5340 | 3001: jr nc, $01 >
inc h			
dec b			
.DB $20 $ee ; < ['$20', '$ee'] > < 0x5344 > < e5344 0E 5344 | 20EE: jr nz, $EE >
ret			
call  rlabel_0E_40B9 
ld e,a			
call  rlabel_0E_40B9 
ld d,a			
call  rlabel_0E_40B9 
sub e			
inc a			
ld c,a			
call  rlabel_0E_40B9 
sub d			
inc a			
ld b,a			
call  rlabel_00_2F36 
ld h,d			
ld l,e			
call  rlabel_0E_40B9 
and $0f			
swap a			
ld e,a			
ld d,c			
ld c,d			
push hl			
ld a,(hl)		
and $0f			
or e			
ldi (hl),a		
dec c			
.DB $20 $f8 ; < ['$20', '$f8'] > < 0x5371 > < e5371 0E 5371 | 20F8: jr nz, $F8 >
pop hl			
ld a,$14		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x5378 > < e5378 0E 5378 | 3001: jr nc, $01 >
inc h			
dec b			
.DB $20 $eb ; < ['$20', '$eb'] > < 0x537c > < e537c 0E 537C | 20EB: jr nz, $EB >
ret			
.incbin "data/0e_537F.data"
ld a,($cbf2)		
or a			
.DB $20 $07 ; < ['$20', '$07'] > < 0x538a > < e538a 0E 538A | 2007: jr nz, $07 >
.incbin "data/0e_538C.data"
call  rlabel_0E_40B9 
ld e,a			
call  rlabel_0E_40B9 
ld d,a			
call  rlabel_0E_40B9 
sub e			
inc a			
ld c,a			
call  rlabel_0E_40B9 
sub d			
inc a			
ld b,a			
call  rlabel_00_2F36 
ld h,d			
ld l,e			
call  rlabel_0E_40B9 
and $07			
ld e,a			
ld d,c			
ld c,d			
push hl			
ld a,(hl)		
and $f8			
or e			
ldi (hl),a		
dec c			
.DB $20 $f8 ; < ['$20', '$f8'] > < 0x53bb > < e53bb 0E 53BB | 20F8: jr nz, $F8 >
pop hl			
ld a,$14		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x53c2 > < e53c2 0E 53C2 | 3001: jr nc, $01 >
inc h			
dec b			
.DB $20 $eb ; < ['$20', '$eb'] > < 0x53c6 > < e53c6 0E 53C6 | 20EB: jr nz, $EB >
ret			
call  rlabel_0E_40B9 
ld c,a			
ld b,$02		
ld hl,$739c		
rst $28			
ret			
.incbin "data/0e_53D4.data"
call  rlabel_0E_40B9 
call  rlabel_00_084C 
call  rlabel_0E_40B9 
ld c,a			
call  rlabel_0E_40B9 
ld d,a			
call  rlabel_0E_40B9 
ld e,a			
ld b,$02		
ld hl,$73d6		
rst $28			
ret			
call  rlabel_0E_40B9 
ld c,a			
swap a			
and $0f			
call  rlabel_00_084C 
ld a,$0f		
and c			
ld c,a			
ld b,$02		
ld hl,$7457		
rst $28			
ret			
call  rlabel_0E_40B9 
call  rlabel_00_084C 
call  rlabel_0E_40B9 
ld c,a			
ld b,$02		
ld hl,$74bf		
rst $28			
ret			
call  rlabel_0E_40B9 
ld hl,$5435		
add a			
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x542a > < e542a 0E 542A | 3001: jr nc, $01 >
.incbin "data/0e_542C.data"
ldi a,(hl)		
ld h,(hl)		
ld l,a			
call  rlabel_0E_5434 
ret			
rlabel_0E_5434:
jp hl			
.incbin "data/0e_5435.data"
ld c,$01		
ld de,$0000		
call  rlabel_00_1311 
ret			
ld c,$01		
call  rlabel_00_132B 
ret			
.incbin "data/0e_5469.data"
call  rlabel_0E_565A 
ld hl,$54a6		
ld a,($ff00+$a1)	
ld b,a			
ld c,$20		
ld d,$20		
ld a,($c314)		
res 7,a			
ld ($c314),a		
ld a,($c314)		
bit 7,a			
.DB $28 $f9 ; < ['$28', '$f9'] > < 0x54e0 > < e54e0 0E 54E0 | 28F9: jr z, $F9 >
dec d			
.DB $20 $05 ; < ['$20', '$05'] > < 0x54e3 > < e54e3 0E 54E3 | 2005: jr nz, $05 >
ld hl,$54a6		
ld d,$20		
ldi a,(hl)		
add b			
ld ($ff00+$a1),a	
dec c			
.DB $20 $e2 ; < ['$20', '$e2'] > < 0x54ef > < e54ef 0E 54EF | 20E2: jr nz, $E2 >
ld a,b			
ld ($ff00+$a1),a	
ret			
.incbin "data/0e_54F5.data"
ld a,$01		
ld ($ff00+$4f),a	
ld b,$00		
ld a,($cbf2)		
and a			
call nz,$564a		
xor a			
ld ($ff00+$4f),a	
ld b,a			
ld hl,$9c00		
ld de,$0400		
call  rlabel_00_0519 
inc hl			
dec de			
ld a,d			
or e			
.DB $20 $f7 ; < ['$20', '$f7'] > < 0x5657 > < e5657 0E 5657 | 20F7: jr nz, $F7 >
ret			
rlabel_0E_565A:
ld bc,$0014		
call  rlabel_00_2F5C 
ld c,$07		
ld d,$12		
push hl			
ld e,$0c		
ld a,$01		
ld ($ff00+$4f),a	
ld b,c			
call  rlabel_00_0519 
xor a			
ld ($ff00+$4f),a	
call  rlabel_00_0518 
bit 5,l			
.DB $20 $05 ; < ['$20', '$05'] > < 0x5677 > < e5677 0E 5677 | 2005: jr nz, $05 >
inc l			
res 5,l			
.DB $18 $05 ; < ['$18', '$05'] > < 0x567c > < e567c 0E 567C | 1805: jr $05 >
res 5,l			
inc l			
set 5,l			
dec e			
.DB $20 $e1 ; < ['$20', '$e1'] > < 0x5684 > < e5684 0E 5684 | 20E1: jr nz, $E1 >
pop hl			
call  rlabel_00_2FAE 
dec d			
.DB $20 $d7 ; < ['$20', '$d7'] > < 0x568b > < e568b 0E 568B | 20D7: jr nz, $D7 >
ld d,$0e		
ld e,$20		
ld a,$01		
ld ($ff00+$4f),a	
ld b,c			
call  rlabel_00_0519 
xor a			
ld ($ff00+$4f),a	
call  rlabel_00_0518 
bit 5,l			
.DB $20 $05 ; < ['$20', '$05'] > < 0x56a1 > < e56a1 0E 56A1 | 2005: jr nz, $05 >
inc l			
res 5,l			
.DB $18 $05 ; < ['$18', '$05'] > < 0x56a6 > < e56a6 0E 56A6 | 1805: jr $05 >
res 5,l			
inc l			
set 5,l			
dec e			
.DB $20 $e1 ; < ['$20', '$e1'] > < 0x56ae > < e56ae 0E 56AE | 20E1: jr nz, $E1 >
call  rlabel_00_2FAE 
dec d			
.DB $20 $d9 ; < ['$20', '$d9'] > < 0x56b4 > < e56b4 0E 56B4 | 20D9: jr nz, $D9 >
ret			
call  rlabel_0E_40B9 
ld c,a			
ld b,$02		
ld hl,$6cf5		
rst $28			
ret			
.incbin "data/0e_56C2.data"
ld de,$07ff		
call  rlabel_0E_40B9 
ld c,a			
and $f8			
or d			
ld d,a			
ld a,c			
and $03			
ld c,a			
ld b,$02		
ld hl,$4609		
rst $28			
ret			
.incbin "data/0e_5E72.data"
ld a,($c358)		
ld e,a			
xor a			
ld d,a			
call  rlabel_0E_42DA 
ret			
.incbin "data/0e_5EDF.data"
call  rlabel_0E_4044 
ld b,$02		
ld hl,$4528		
rst $28			
call  rlabel_0E_4064 
ret			
.incbin "data/0e_5FB6.data"
ld b,$02		
ld hl,$7da7		
rst $28			
ret			
.incbin "data/0e_60B7.data"
jp $4a37		
jp $498a		
jp $4986		
jp $4982		
call  rlabel_0E_4A37 
jp $498a		
call  rlabel_0E_40B9 
ld c,a			
ld b,$02		
ld hl,$5827		
rst $28			
ret			
call  rlabel_0E_40B9 
ld e,a			
call  rlabel_0E_40B9 
ld d,a			
call  rlabel_0E_42F8 
ret			
call  rlabel_0E_40B9 
ld e,a			
call  rlabel_0E_40B9 
ld d,a			
call  rlabel_0E_4300 
ret			
call  rlabel_0E_40B9 
ld e,a			
call  rlabel_0E_40B9 
ld d,a			
call  rlabel_0E_4309 
or a			
.DB $28 $04 ; < ['$28', '$04'] > < 0x6132 > < e6132 0E 6132 | 2804: jr z, $04 >
call  rlabel_0E_4C46 
ret			
ld hl,$0002		
call  rlabel_0E_4084 
ret			
call  rlabel_0E_40B9 
ld e,a			
call  rlabel_0E_40B9 
ld d,a			
call  rlabel_0E_4309 
or a			
.DB $20 $04 ; < ['$20', '$04'] > < 0x614b > < e614b 0E 614B | 2004: jr nz, $04 >
call  rlabel_0E_4C46 
ret			
ld hl,$0002		
call  rlabel_0E_4084 
ret			
call  rlabel_0E_40B9 
cp $fe			
.DB $20 $05 ; < ['$20', '$05'] > < 0x615d > < e615d 0E 615D | 2005: jr nz, $05 >
.incbin "data/0e_615F.data"
cp $ff			
.DB $20 $05 ; < ['$20', '$05'] > < 0x6166 > < e6166 0E 6166 | 2005: jr nz, $05 >
.incbin "data/0e_6168.data"
cp $1f			
.DB $38 $01 ; < ['$38', '$01'] > < 0x616f > < e616f 0E 616F | 3801: jr c, $01 >
.incbin "data/0e_6171.data"
ld ($db84),a		
ld b,a			
ld a,($cad7)		
and a			
ret nz			
ld a,b			
call  rlabel_00_305E 
ret			
call  rlabel_0E_40B9 
cp $ff			
.DB $20 $05 ; < ['$20', '$05'] > < 0x6185 > < e6185 0E 6185 | 2005: jr nz, $05 >
.incbin "data/0e_6187.data"
call  rlabel_00_3071 
ret			
.incbin "data/0e_6190.data"
ld a,($c222)		
ld e,a			
xor a			
ld d,a			
call  rlabel_0E_42DA 
ret			
.incbin "data/0e_61D3.data"
ld c,$00		
ld b,$02		
ld hl,$739c		
rst $28			
ret			
call  rlabel_0E_40B9 
ld hl,$c34c		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x622c > < e622c 0E 622C | 3001: jr nc, $01 >
.incbin "data/0e_622E.data"
ld e,(hl)		
xor a			
ld d,a			
call  rlabel_0E_42DA 
ret			
.incbin "data/0e_6236.data"
push de			
push hl			
ld a,e			
call  rlabel_0E_63FD 
ld a,h			
or $80			
ld h,a			
push hl			
ld a,d			
call  rlabel_0E_63FD 
ld de,$4001		
ld a,b			
cp $5e			
.DB $20 $02 ; < ['$20', '$02'] > < 0x63e9 > < e63e9 0E 63E9 | 2002: jr nz, $02 >
ld d,$50		
cp $5f			
.DB $20 $02 ; < ['$20', '$02'] > < 0x63ef > < e63ef 0E 63EF | 2002: jr nz, $02 >
ld d,$60		
add hl,de		
pop de			
ld b,$3d		
call  rlabel_00_06DD 
pop hl			
pop de			
ret			
rlabel_0E_63FD:
swap a			
ld h,a			
and $f0			
ld l,a			
ld a,h			
and $0f			
ld h,a			
ret			
.incbin "data/0e_6408.data"
call  rlabel_0E_4044 
ld a,($cad8)		
and a			
push af			
.DB $20 $0e ; < ['$20', '$0e'] > < 0x6777 > < e6777 0E 6777 | 200E: jr nz, $0E >
.incbin "data/0e_6779.data"
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ld b,$a8		
ld hl,$4001		
rst $28			
ld hl,$c1a3		
ld de,$0729		
call  rlabel_00_0231 
ld a,$ff		
ld ($c96d),a		
ld ($c96e),a		
ld a,$82		
ld ($c120),a		
pop af			
.DB $20 $06 ; < ['$20', '$06'] > < 0x67ad > < e67ad 0E 67AD | 2006: jr nz, $06 >
.incbin "data/0e_67AF.data"
call  rlabel_0E_4064 
ret			
call  rlabel_0E_4044 
ld a,($cad8)		
and a			
push af			
.DB $20 $0e ; < ['$20', '$0e'] > < 0x67c1 > < e67c1 0E 67C1 | 200E: jr nz, $0E >
.incbin "data/0e_67C3.data"
ld hl,$c1a3		
ld de,$02e6		
call  rlabel_00_0231 
ld b,$a8		
ld hl,$401d		
rst $28			
ld hl,$c1a3		
ld de,$0729		
call  rlabel_00_0231 
ld a,$ff		
ld ($c96d),a		
ld ($c96e),a		
pop af			
.DB $20 $06 ; < ['$20', '$06'] > < 0x67f2 > < e67f2 0E 67F2 | 2006: jr nz, $06 >
.incbin "data/0e_67F4.data"
call  rlabel_0E_4064 
ret			
.incbin "data/0e_67FE.data"
rlabel_0E_686F:
ld b,$0c		
ld hl,$db39		
.DB $18 $0b ; < ['$18', '$0b'] > < 0x6874 > < e6874 0E 6874 | 180B: jr $0B >
pop hl			
dec b			
.DB $28 $29 ; < ['$28', '$29'] > < 0x6878 > < e6878 0E 6878 | 2829: jr z, $29 >
ld a,$06		
add l			
ld l,a			
.DB $30 $01 ; < ['$30', '$01'] > < 0x687e > < e687e 0E 687E | 3001: jr nc, $01 >
.incbin "data/0e_6880.data"
push hl			
ldi a,(hl)		
and $1f			
ld c,a			
ld a,d			
cp c			
.DB $38 $ec ; < ['$38', '$ec'] > < 0x6888 > < e6888 0E 6888 | 38EC: jr c, $EC >
ldi a,(hl)		
and $1f			
ld c,a			
ld a,e			
cp c			
.DB $38 $e4 ; < ['$38', '$e4'] > < 0x6890 > < e6890 0E 6890 | 38E4: jr c, $E4 >
ldi a,(hl)		
and $1f			
ld c,a			
ld a,d			
cp c			
.DB $30 $dc ; < ['$30', '$dc'] > < 0x6898 > < e6898 0E 6898 | 30DC: jr nc, $DC >
ldi a,(hl)		
and $1f			
ld c,a			
ld a,e			
cp c			
.DB $30 $d4 ; < ['$30', '$d4'] > < 0x68a0 > < e68a0 0E 68A0 | 30D4: jr nc, $D4 >
pop af			
ld a,$0c		
sub b			
ld b,a			
ret			
rlabel_0E_68A8:
ld b,$02		
ld hl,$49fd		
rst $28			
ld a,($ff00+$9b)	
and $fd			
ld ($c345),a		
ld a,($cdae)		
and a			
.DB $28 $07 ; < ['$28', '$07'] > < 0x68b9 > < e68b9 0E 68B9 | 2807: jr z, $07 >
ld de,$07c8		
ld c,$10		
.DB $18 $0c ; < ['$18', '$0c'] > < 0x68c0 > < e68c0 0E 68C0 | 180C: jr $0C >
ld de,$0785		
ld c,$00		
.DB $18 $05 ; < ['$18', '$05'] > < 0x68c7 > < e68c7 0E 68C7 | 1805: jr $05 >
rlabel_0E_68C9:
ld de,$0729		
ld c,$54		
ei			
nop			
di			
ld a,($ff00+$44)	
cp $84			
.DB $38 $f7 ; < ['$38', '$f7'] > < 0x68d5 > < e68d5 0E 68D5 | 38F7: jr c, $F7 >
ld hl,$c1a3		
call  rlabel_00_0231 
ld a,c			
ld ($ff00+$9a),a	
ld ($ff00+$45),a	
ei			
ret			
.incbin "data/0e_68E4.data"
