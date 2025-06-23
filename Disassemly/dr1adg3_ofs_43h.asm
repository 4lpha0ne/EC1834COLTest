00000000  E92A16            jmp word 0x162d
00000003  041B              add al,0x1b
00000005  4D                dec bp
00000006  4F                dec di
00000007  4E                dec si
00000008  4F                dec di
00000009  43                inc bx
0000000A  48                dec ax
0000000B  52                push dx
0000000C  4F                dec di
0000000D  4D                dec bp
0000000E  2D4249            sub ax,0x4942
00000011  4C                dec sp
00000012  44                inc sp
00000013  53                push bx
00000014  43                inc bx
00000015  48                dec ax
00000016  49                dec cx
00000017  52                push dx
00000018  4D                dec bp
00000019  41                inc cx
0000001A  44                inc sp
0000001B  41                inc cx
0000001C  50                push ax
0000001D  54                push sp
0000001E  45                inc bp
0000001F  52                push dx
00000020  E99716            jmp word 0x16ba
00000023  051D46            add ax,0x461d
00000026  41                inc cx
00000027  52                push dx
00000028  42                inc dx
00000029  2F                das
0000002A  47                inc di
0000002B  52                push dx
0000002C  41                inc cx
0000002D  46                inc si
0000002E  49                dec cx
0000002F  4B                dec bx
00000030  204249            and [bp+si+0x49],al
00000033  4C                dec sp
00000034  44                inc sp
00000035  53                push bx
00000036  43                inc bx
00000037  48                dec ax
00000038  49                dec cx
00000039  52                push dx
0000003A  4D                dec bp
0000003B  41                inc cx
0000003C  44                inc sp
0000003D  41                inc cx
0000003E  50                push ax
0000003F  54                push sp
00000040  45                inc bp
00000041  52                push dx
00000042  00531E            add [bp+di+0x1e],dl
00000045  06                push es
00000046  8B362316          mov si,[0x1623]
0000004A  A12116            mov ax,[0x1621]
0000004D  8ED8              mov ds,ax
0000004F  8EC0              mov es,ax
00000051  BBAAAA            mov bx,0xaaaa
00000054  8BC3              mov ax,bx
00000056  35FFFF            xor ax,0xffff
00000059  8AD3              mov dl,bl
0000005B  8BCE              mov cx,si
0000005D  33FF              xor di,di
0000005F  FC                cld
00000060  F3AB              rep stosw
00000062  4F                dec di
00000063  4F                dec di
00000064  FD                std
00000065  E81D00            call word 0x85
00000068  33FF              xor di,di
0000006A  FC                cld
0000006B  E81700            call word 0x85
0000006E  3AC2              cmp al,dl
00000070  93                xchg ax,bx
00000071  75E8              jnz 0x5b
00000073  0BDB              or bx,bx
00000075  7404              jz 0x7b
00000077  33DB              xor bx,bx
00000079  EBD9              jmp short 0x54
0000007B  F8                clc
0000007C  FC                cld
0000007D  07                pop es
0000007E  1F                pop ds
0000007F  5B                pop bx
00000080  C3                ret
00000081  5B                pop bx
00000082  F9                stc
00000083  EBF7              jmp short 0x7c
00000085  8BCE              mov cx,si
00000087  93                xchg ax,bx
00000088  3B1D              cmp bx,[di]
0000008A  AB                stosw
0000008B  E1FB              loope 0x88
0000008D  E302              jcxz 0x91
0000008F  EBF0              jmp short 0x81
00000091  C3                ret
00000092  2122              and [bp+si],sp
00000094  292A              sub [bp+si],bp
00000096  0204              add al,[si]
00000098  0400              add al,0x0
0000009A  FF                db 0xff
0000009B  3F                aas
0000009C  40                inc ax
0000009D  0D4269            or ax,0x6942
000000A0  7474              jz 0x116
000000A2  65207761          and [gs:bx+0x61],dh
000000A6  7274              jc 0x11c
000000A8  656E              gs outsb
000000AA  203A              and [bp+si],bh
000000AC  42                inc dx
000000AD  696C647769        imul bp,[si+0x64],word 0x6977
000000B2  6564657268        gs jc 0x11f
000000B7  6F                outsw
000000B8  6C                insb
000000B9  7370              jnc 0x12b
000000BB  656963686572      imul sp,[gs:bp+di+0x68],word 0x7265
000000C1  7465              jz 0x128
000000C3  7374              jnc 0x139
000000C5  206461            and [si+0x61],ah
000000C8  7565              jnz 0x12f
000000CA  7274              jc 0x140
000000CC  206361            and [bp+di+0x61],ah
000000CF  2E2032            and [cs:bp+si],dh
000000D2  352053            xor ax,0x5320
000000D5  656B756E64        imul si,[gs:di+0x6e],byte +0x64
000000DA  656E              gs outsb
000000DC  0DF850            or ax,0x50f8
000000DF  53                push bx
000000E0  51                push cx
000000E1  52                push dx
000000E2  803E291604        cmp byte [0x1629],0x4
000000E7  7503              jnz 0xec
000000E9  E9D601            jmp word 0x2c2
000000EC  B002              mov al,0x2
000000EE  A29600            mov [0x96],al
000000F1  B004              mov al,0x4
000000F3  A29700            mov [0x97],al
000000F6  B80400            mov ax,0x4
000000F9  A39800            mov [0x98],ax
000000FC  B8FF3F            mov ax,0x3fff
000000FF  A39A00            mov [0x9a],ax
00000102  B40F              mov ah,0xf
00000104  CD84              int 0x84
00000106  A2F915            mov [0x15f9],al
00000109  B80800            mov ax,0x8
0000010C  CD10              int 0x10
0000010E  E81E01            call word 0x22f
00000111  B80FD2            mov ax,0xd20f
00000114  E81101            call word 0x228
00000117  B814D0            mov ax,0xd014
0000011A  E80B01            call word 0x228
0000011D  8B163311          mov dx,[0x1133]
00000121  B001              mov al,0x1
00000123  EE                out dx,al
00000124  BDAAAA            mov bp,0xaaaa
00000127  BE9200            mov si,0x92
0000012A  E81A01            call word 0x247
0000012D  BADE03            mov dx,0x3de
00000130  8A04              mov al,[si]
00000132  EE                out dx,al
00000133  8B0E9800          mov cx,[0x98]
00000137  D1E1              shl cx,1
00000139  90                nop
0000013A  90                nop
0000013B  B849D2            mov ax,0xd249
0000013E  E8E700            call word 0x228
00000141  B800D0            mov ax,0xd000
00000144  E8E100            call word 0x228
00000147  E8DE00            call word 0x228
0000014A  B84AD2            mov ax,0xd24a
0000014D  E8D800            call word 0x228
00000150  B8FFD0            mov ax,0xd0ff
00000153  E8D200            call word 0x228
00000156  E8CF00            call word 0x228
00000159  E8D300            call word 0x22f
0000015C  B84CD2            mov ax,0xd24c
0000015F  E8C600            call word 0x228
00000162  B802D0            mov ax,0xd002
00000165  E8C000            call word 0x228
00000168  B8FFD0            mov ax,0xd0ff
0000016B  E8BA00            call word 0x228
0000016E  B83FD0            mov ax,0xd03f
00000171  E8B400            call word 0x228
00000174  B4D2              mov ah,0xd2
00000176  A09700            mov al,[0x97]
00000179  A801              test al,0x1
0000017B  B030              mov al,0x30
0000017D  7402              jz 0x181
0000017F  3418              xor al,0x18
00000181  E8A400            call word 0x228
00000184  8BC5              mov ax,bp
00000186  B4D0              mov ah,0xd0
00000188  E89D00            call word 0x228
0000018B  E89A00            call word 0x228
0000018E  E2C9              loop 0x159
00000190  8B1E9800          mov bx,[0x98]
00000194  B849D2            mov ax,0xd249
00000197  E88E00            call word 0x228
0000019A  B800D0            mov ax,0xd000
0000019D  E88800            call word 0x228
000001A0  E88500            call word 0x228
000001A3  B84AD2            mov ax,0xd24a
000001A6  E87F00            call word 0x228
000001A9  B8FFD0            mov ax,0xd0ff
000001AC  E87900            call word 0x228
000001AF  E87600            call word 0x228
000001B2  E87A00            call word 0x22f
000001B5  B84CD2            mov ax,0xd24c
000001B8  E86D00            call word 0x228
000001BB  B802D0            mov ax,0xd002
000001BE  E86700            call word 0x228
000001C1  B8FFD0            mov ax,0xd0ff
000001C4  E86100            call word 0x228
000001C7  B83FD0            mov ax,0xd03f
000001CA  E85B00            call word 0x228
000001CD  B4D2              mov ah,0xd2
000001CF  A09700            mov al,[0x97]
000001D2  A801              test al,0x1
000001D4  B0B0              mov al,0xb0
000001D6  7402              jz 0x1da
000001D8  0408              add al,0x8
000001DA  E84B00            call word 0x228
000001DD  8B0E9A00          mov cx,[0x9a]
000001E1  8BC5              mov ax,bp
000001E3  E83600            call word 0x21c
000001E6  32E0              xor ah,al
000001E8  7403              jz 0x1ed
000001EA  E9CD00            jmp word 0x2ba
000001ED  E2F2              loop 0x1e1
000001EF  FECB              dec bl
000001F1  75BF              jnz 0x1b2
000001F3  46                inc si
000001F4  A09700            mov al,[0x97]
000001F7  FEC8              dec al
000001F9  A29700            mov [0x97],al
000001FC  7403              jz 0x201
000001FE  E929FF            jmp word 0x12a
00000201  B004              mov al,0x4
00000203  A29700            mov [0x97],al
00000206  8BC5              mov ax,bp
00000208  F7D0              not ax
0000020A  8BE8              mov bp,ax
0000020C  A09600            mov al,[0x96]
0000020F  FEC8              dec al
00000211  A29600            mov [0x96],al
00000214  7403              jz 0x219
00000216  E90EFF            jmp word 0x127
00000219  E99F00            jmp word 0x2bb
0000021C  BAD003            mov dx,0x3d0
0000021F  EC                in al,dx
00000220  A801              test al,0x1
00000222  74FB              jz 0x21f
00000224  42                inc dx
00000225  42                inc dx
00000226  EC                in al,dx
00000227  C3                ret
00000228  BAD003            mov dx,0x3d0
0000022B  8AD4              mov dl,ah
0000022D  EE                out dx,al
0000022E  C3                ret
0000022F  BAD003            mov dx,0x3d0
00000232  EC                in al,dx
00000233  A804              test al,0x4
00000235  74FB              jz 0x232
00000237  C3                ret
00000238  BAD003            mov dx,0x3d0
0000023B  B404              mov ah,0x4
0000023D  EC                in al,dx
0000023E  A808              test al,0x8
00000240  75FB              jnz 0x23d
00000242  FECC              dec ah
00000244  75F7              jnz 0x23d
00000246  C3                ret
00000247  BADE03            mov dx,0x3de
0000024A  B02F              mov al,0x2f
0000024C  EE                out dx,al
0000024D  B90800            mov cx,0x8
00000250  E8DCFF            call word 0x22f
00000253  B80FD2            mov ax,0xd20f
00000256  E8CFFF            call word 0x228
00000259  B804D0            mov ax,0xd004
0000025C  E8C9FF            call word 0x228
0000025F  B849D2            mov ax,0xd249
00000262  E8C3FF            call word 0x228
00000265  B800D0            mov ax,0xd000
00000268  E8BDFF            call word 0x228
0000026B  E8BAFF            call word 0x228
0000026E  B84AD2            mov ax,0xd24a
00000271  E8B4FF            call word 0x228
00000274  B8FFD0            mov ax,0xd0ff
00000277  E8AEFF            call word 0x228
0000027A  E8ABFF            call word 0x228
0000027D  E8AFFF            call word 0x22f
00000280  B84CD2            mov ax,0xd24c
00000283  E8A2FF            call word 0x228
00000286  B802D0            mov ax,0xd002
00000289  E89CFF            call word 0x228
0000028C  B8FFD0            mov ax,0xd0ff
0000028F  E896FF            call word 0x228
00000292  B83FD0            mov ax,0xd03f
00000295  E890FF            call word 0x228
00000298  B4D2              mov ah,0xd2
0000029A  B020              mov al,0x20
0000029C  E889FF            call word 0x228
0000029F  B800D0            mov ax,0xd000
000002A2  E883FF            call word 0x228
000002A5  E880FF            call word 0x228
000002A8  E2D3              loop 0x27d
000002AA  E88BFF            call word 0x238
000002AD  B80FD2            mov ax,0xd20f
000002B0  E875FF            call word 0x228
000002B3  B814D0            mov ax,0xd014
000002B6  E86FFF            call word 0x228
000002B9  C3                ret
000002BA  F9                stc
000002BB  B400              mov ah,0x0
000002BD  A0F915            mov al,[0x15f9]
000002C0  CD84              int 0x84
000002C2  8B163311          mov dx,[0x1133]
000002C6  B009              mov al,0x9
000002C8  EE                out dx,al
000002C9  5A                pop dx
000002CA  59                pop cx
000002CB  5B                pop bx
000002CC  58                pop ax
000002CD  C3                ret
000002CE  50                push ax
000002CF  53                push bx
000002D0  51                push cx
000002D1  E8F800            call word 0x3cc
000002D4  B300              mov bl,0x0
000002D6  E89600            call word 0x36f
000002D9  D0D3              rcl bl,1
000002DB  F6C301            test bl,0x1
000002DE  7416              jz 0x2f6
000002E0  BE5E0B            mov si,0xb5e
000002E3  8B3E360C          mov di,[0xc36]
000002E7  B92800            mov cx,0x28
000002EA  F3A4              rep movsb
000002EC  8306360C28        add word [0xc36],byte +0x28
000002F1  8006C90928        add byte [0x9c9],0x28
000002F6  E84AFD            call word 0x43
000002F9  D0D3              rcl bl,1
000002FB  F6C301            test bl,0x1
000002FE  7416              jz 0x316
00000300  BE860B            mov si,0xb86
00000303  8B3E360C          mov di,[0xc36]
00000307  B92800            mov cx,0x28
0000030A  F3A4              rep movsb
0000030C  8306360C28        add word [0xc36],byte +0x28
00000311  8006C90928        add byte [0x9c9],0x28
00000316  E8C4FD            call word 0xdd
00000319  D0D3              rcl bl,1
0000031B  F6C301            test bl,0x1
0000031E  7416              jz 0x336
00000320  BEAE0B            mov si,0xbae
00000323  8B3E360C          mov di,[0xc36]
00000327  B92800            mov cx,0x28
0000032A  F3A4              rep movsb
0000032C  8306360C28        add word [0xc36],byte +0x28
00000331  8006C90928        add byte [0x9c9],0x28
00000336  E88012            call word 0x15b9
00000339  D0D3              rcl bl,1
0000033B  F6C301            test bl,0x1
0000033E  7416              jz 0x356
00000340  BED60B            mov si,0xbd6
00000343  8B3E360C          mov di,[0xc36]
00000347  B92800            mov cx,0x28
0000034A  F3A4              rep movsb
0000034C  8306360C28        add word [0xc36],byte +0x28
00000351  8006C90928        add byte [0x9c9],0x28
00000356  80FB00            cmp bl,0x0
00000359  740A              jz 0x365
0000035B  800E380D01        or byte [0xd38],0x1
00000360  FE06370D          inc byte [0xd37]
00000364  F9                stc
00000365  59                pop cx
00000366  5B                pop bx
00000367  58                pop ax
00000368  C3                ret
00000369  06                push es
0000036A  07                pop es
0000036B  100C              adc [si],cl
0000036D  1D1753            sbb ax,0x5317
00000370  BA0000            mov dx,0x0
00000373  B91000            mov cx,0x10
00000376  BBFF7F            mov bx,0x7fff
00000379  8BC3              mov ax,bx
0000037B  33C2              xor ax,dx
0000037D  25FF3F            and ax,0x3fff
00000380  8BF8              mov di,ax
00000382  E82F00            call word 0x3b4
00000385  E81800            call word 0x3a0
00000388  25FF3F            and ax,0x3fff
0000038B  3BC7              cmp ax,di
0000038D  750E              jnz 0x39d
0000038F  D1C3              rol bx,1
00000391  E2E6              loop 0x379
00000393  80FAFF            cmp dl,0xff
00000396  7406              jz 0x39e
00000398  BAFFFF            mov dx,0xffff
0000039B  EBD6              jmp short 0x373
0000039D  F9                stc
0000039E  5B                pop bx
0000039F  C3                ret
000003A0  52                push dx
000003A1  8B161F16          mov dx,[0x161f]
000003A5  B00E              mov al,0xe
000003A7  EE                out dx,al
000003A8  42                inc dx
000003A9  EC                in al,dx
000003AA  8AE0              mov ah,al
000003AC  4A                dec dx
000003AD  B00F              mov al,0xf
000003AF  EE                out dx,al
000003B0  42                inc dx
000003B1  EC                in al,dx
000003B2  5A                pop dx
000003B3  C3                ret
000003B4  50                push ax
000003B5  52                push dx
000003B6  50                push ax
000003B7  8B161F16          mov dx,[0x161f]
000003BB  B00E              mov al,0xe
000003BD  EE                out dx,al
000003BE  42                inc dx
000003BF  8AC4              mov al,ah
000003C1  EE                out dx,al
000003C2  4A                dec dx
000003C3  B00F              mov al,0xf
000003C5  EE                out dx,al
000003C6  42                inc dx
000003C7  58                pop ax
000003C8  EE                out dx,al
000003C9  5A                pop dx
000003CA  58                pop ax
000003CB  C3                ret
000003CC  B400              mov ah,0x0
000003CE  B003              mov al,0x3
000003D0  CD84              int 0x84
000003D2  8B161916          mov dx,[0x1619]
000003D6  B001              mov al,0x1
000003D8  EE                out dx,al
000003D9  C3                ret
000003DA  100D              adc [di],cl
000003DC  5A                pop dx
000003DD  45                inc bp
000003DE  49                dec cx
000003DF  43                inc bx
000003E0  48                dec ax
000003E1  45                inc bp
000003E2  4E                dec si
000003E3  53                push bx
000003E4  41                inc cx
000003E5  54                push sp
000003E6  5A                pop dx
000003E7  2031              and [bx+di],dh
000003E9  0D0D10            or ax,0x100d
000003EC  0D5A45            or ax,0x455a
000003EF  49                dec cx
000003F0  43                inc bx
000003F1  48                dec ax
000003F2  45                inc bp
000003F3  4E                dec si
000003F4  53                push bx
000003F5  41                inc cx
000003F6  54                push sp
000003F7  5A                pop dx
000003F8  2032              and [bp+si],dh
000003FA  0D0D20            or ax,0x200d
000003FD  0D4953            or ax,0x5349
00000400  54                push sp
00000401  204449            and [si+0x49],al
00000404  45                inc bp
00000405  20414E            and [bx+di+0x4e],al
00000408  5A                pop dx
00000409  45                inc bp
0000040A  49                dec cx
0000040B  47                inc di
0000040C  45                inc bp
0000040D  205249            and [bp+si+0x49],dl
00000410  43                inc bx
00000411  48                dec ax
00000412  54                push sp
00000413  49                dec cx
00000414  47                inc di
00000415  3F                aas
00000416  2028              and [bx+si],ch
00000418  4A                dec dx
00000419  2F                das
0000041A  4E                dec si
0000041B  2920              sub [bx+si],sp
0000041D  010D              add [di],cx
0000041F  0100              add [bx+si],ax
00000421  320D              xor cl,[di]
00000423  54                push sp
00000424  45                inc bp
00000425  53                push bx
00000426  54                push sp
00000427  204445            and [si+0x45],al
0000042A  53                push bx
0000042B  204641            and [bp+0x41],al
0000042E  52                push dx
0000042F  42                inc dx
00000430  2F                das
00000431  47                inc di
00000432  52                push dx
00000433  41                inc cx
00000434  46                inc si
00000435  49                dec cx
00000436  4B                dec bx
00000437  2D4144            sub ax,0x4441
0000043A  41                inc cx
0000043B  50                push ax
0000043C  54                push sp
0000043D  45                inc bp
0000043E  52                push dx
0000043F  53                push bx
00000440  204441            and [si+0x41],al
00000443  55                push bp
00000444  45                inc bp
00000445  52                push dx
00000446  54                push sp
00000447  204554            and [di+0x54],al
0000044A  57                push di
0000044B  41                inc cx
0000044C  2031              and [bx+di],dh
0000044E  3020              xor [bx+si],ah
00000450  4D                dec bp
00000451  49                dec cx
00000452  4E                dec si
00000453  2E140D            cs adc al,0xd
00000456  41                inc cx
00000457  4E                dec si
00000458  5A                pop dx
00000459  45                inc bp
0000045A  49                dec cx
0000045B  47                inc di
0000045C  45                inc bp
0000045D  41                inc cx
0000045E  54                push sp
0000045F  54                push sp
00000460  52                push dx
00000461  49                dec cx
00000462  42                inc dx
00000463  55                push bp
00000464  54                push sp
00000465  45                inc bp
00000466  200D              and [di],cl
00000468  0D040D            or ax,0xd04
0000046B  DC                db 0xdc
0000046C  DC                db 0xdc
0000046D  DC03              fadd qword [bp+di]
0000046F  DC                db 0xdc
00000470  DC                db 0xdc
00000471  DC03              fadd qword [bp+di]
00000473  2020              and [bx+si],ah
00000475  20062052          and [0x5220],al
00000479  4F                dec di
0000047A  54                push sp
0000047B  200D              and [di],cl
0000047D  0820              or [bx+si],ah
0000047F  47                inc di
00000480  52                push dx
00000481  55                push bp
00000482  45                inc bp
00000483  4E                dec si
00000484  200D              and [di],cl
00000486  07                pop es
00000487  20424C            and [bp+si+0x4c],al
0000048A  41                inc cx
0000048B  55                push bp
0000048C  200D              and [di],cl
0000048E  07                pop es
0000048F  204752            and [bx+0x52],al
00000492  41                inc cx
00000493  55                push bp
00000494  200D              and [di],cl
00000496  110D              adc [di],cx
00000498  44                inc sp
00000499  49                dec cx
0000049A  45                inc bp
0000049B  53                push bx
0000049C  45                inc bp
0000049D  205A45            and [bp+si+0x45],bl
000004A0  49                dec cx
000004A1  4C                dec sp
000004A2  45                inc bp
000004A3  204953            and [bx+di+0x53],cl
000004A6  54                push sp
000004A7  2011              and [bx+di],dl
000004A9  49                dec cx
000004AA  4E                dec si
000004AB  204E4F            and [bp+0x4f],cl
000004AE  52                push dx
000004AF  4D                dec bp
000004B0  41                inc cx
000004B1  4C                dec sp
000004B2  41                inc cx
000004B3  4E                dec si
000004B4  5A                pop dx
000004B5  45                inc bp
000004B6  49                dec cx
000004B7  47                inc di
000004B8  45                inc bp
000004B9  2E13494E          adc cx,[cs:bx+di+0x4e]
000004BD  54                push sp
000004BE  45                inc bp
000004BF  4E                dec si
000004C0  53                push bx
000004C1  49                dec cx
000004C2  56                push si
000004C3  20414E            and [bx+di+0x4e],al
000004C6  47                inc di
000004C7  45                inc bp
000004C8  5A                pop dx
000004C9  45                inc bp
000004CA  49                dec cx
000004CB  47                inc di
000004CC  54                push sp
000004CD  2E11494E          adc [cs:bx+di+0x4e],cx
000004D1  20554D            and [di+0x4d],dl
000004D4  4B                dec bx
000004D5  45                inc bp
000004D6  48                dec ax
000004D7  52                push dx
000004D8  41                inc cx
000004D9  4E                dec si
000004DA  5A                pop dx
000004DB  45                inc bp
000004DC  49                dec cx
000004DD  47                inc di
000004DE  45                inc bp
000004DF  2E09424C          or [cs:bp+si+0x4c],ax
000004E3  49                dec cx
000004E4  4E                dec si
000004E5  4B                dec bx
000004E6  45                inc bp
000004E7  4E                dec si
000004E8  44                inc sp
000004E9  2E104E49          adc [cs:bp+0x49],cl
000004ED  43                inc bx
000004EE  48                dec ax
000004EF  54                push sp
000004F0  20414E            and [bx+di+0x4e],al
000004F3  47                inc di
000004F4  45                inc bp
000004F5  5A                pop dx
000004F6  45                inc bp
000004F7  49                dec cx
000004F8  47                inc di
000004F9  54                push sp
000004FA  2E0E              cs push cs
000004FC  55                push bp
000004FD  4E                dec si
000004FE  54                push sp
000004FF  45                inc bp
00000500  52                push dx
00000501  53                push bx
00000502  54                push sp
00000503  52                push dx
00000504  49                dec cx
00000505  43                inc bx
00000506  48                dec ax
00000507  45                inc bp
00000508  4E                dec si
00000509  2E052042          cs add ax,0x4220
0000050D  4C                dec sp
0000050E  41                inc cx
0000050F  55                push bp
00000510  06                push es
00000511  204752            and [bx+0x52],al
00000514  55                push bp
00000515  45                inc bp
00000516  4E                dec si
00000517  0B20              or sp,[bx+si]
00000519  4B                dec bx
0000051A  4F                dec di
0000051B  42                inc dx
0000051C  41                inc cx
0000051D  4C                dec sp
0000051E  54                push sp
0000051F  42                inc dx
00000520  4C                dec sp
00000521  41                inc cx
00000522  55                push bp
00000523  0420              add al,0x20
00000525  52                push dx
00000526  4F                dec di
00000527  54                push sp
00000528  0820              or [bx+si],ah
0000052A  56                push si
0000052B  49                dec cx
0000052C  4F                dec di
0000052D  4C                dec sp
0000052E  45                inc bp
0000052F  54                push sp
00000530  54                push sp
00000531  052047            add ax,0x4720
00000534  45                inc bp
00000535  4C                dec sp
00000536  42                inc dx
00000537  1020              adc [bx+si],ah
00000539  57                push di
0000053A  45                inc bp
0000053B  49                dec cx
0000053C  53                push bx
0000053D  53                push bx
0000053E  2F                das
0000053F  49                dec cx
00000540  4E                dec si
00000541  54                push sp
00000542  45                inc bp
00000543  4E                dec si
00000544  53                push bx
00000545  49                dec cx
00000546  56                push si
00000547  2010              and [bx+si],dl
00000549  20494E            and [bx+di+0x4e],cl
0000054C  54                push sp
0000054D  45                inc bp
0000054E  4E                dec si
0000054F  53                push bx
00000550  49                dec cx
00000551  56                push si
00000552  205745            and [bx+0x45],dl
00000555  49                dec cx
00000556  53                push bx
00000557  53                push bx
00000558  2007              and [bx],al
0000055A  204252            and [bp+si+0x52],al
0000055D  41                inc cx
0000055E  55                push bp
0000055F  4E                dec si
00000560  20700D            and [bx+si+0xd],dh
00000563  0D0D0D            or ax,0xd0d
00000566  0D0D31            or ax,0x310d
00000569  2D2D2D            sub ax,0x2d2d
0000056C  2D2D2D            sub ax,0x2d2d
0000056F  2D2D2D            sub ax,0x2d2d
00000572  2D2D2D            sub ax,0x2d2d
00000575  2D2D2D            sub ax,0x2d2d
00000578  2D2D2D            sub ax,0x2d2d
0000057B  2D2D2D            sub ax,0x2d2d
0000057E  2D2D2D            sub ax,0x2d2d
00000581  2D2D2D            sub ax,0x2d2d
00000584  2D2D2D            sub ax,0x2d2d
00000587  2D2D2D            sub ax,0x2d2d
0000058A  2D2D2D            sub ax,0x2d2d
0000058D  2D3430            sub ax,0x3034
00000590  0D0D0D            or ax,0xd0d
00000593  0D0D0D            or ax,0xd0d
00000596  45                inc bp
00000597  53                push bx
00000598  204455            and [si+0x55],al
0000059B  45                inc bp
0000059C  52                push dx
0000059D  46                inc si
0000059E  45                inc bp
0000059F  4E                dec si
000005A0  204E55            and [bp+0x55],cl
000005A3  52                push dx
000005A4  2034              and [si],dh
000005A6  3020              xor [bx+si],ah
000005A8  5A                pop dx
000005A9  45                inc bp
000005AA  49                dec cx
000005AB  43                inc bx
000005AC  48                dec ax
000005AD  45                inc bp
000005AE  4E                dec si
000005AF  53                push bx
000005B0  54                push sp
000005B1  45                inc bp
000005B2  4C                dec sp
000005B3  4C                dec sp
000005B4  45                inc bp
000005B5  4E                dec si
000005B6  0D5052            or ax,0x5250
000005B9  4F                dec di
000005BA  205A45            and [bp+si+0x45],bl
000005BD  49                dec cx
000005BE  4C                dec sp
000005BF  45                inc bp
000005C0  20414E            and [bx+di+0x4e],al
000005C3  47                inc di
000005C4  45                inc bp
000005C5  5A                pop dx
000005C6  45                inc bp
000005C7  49                dec cx
000005C8  47                inc di
000005C9  54                push sp
000005CA  205745            and [bx+0x45],dl
000005CD  52                push dx
000005CE  44                inc sp
000005CF  45                inc bp
000005D0  4E                dec si
000005D1  0D940D            or ax,0xd94
000005D4  0D0D0D            or ax,0xd0d
000005D7  0D0D31            or ax,0x310d
000005DA  2D2D2D            sub ax,0x2d2d
000005DD  2D2D2D            sub ax,0x2d2d
000005E0  2D2D2D            sub ax,0x2d2d
000005E3  2D2D2D            sub ax,0x2d2d
000005E6  2D2D2D            sub ax,0x2d2d
000005E9  2D2D2D            sub ax,0x2d2d
000005EC  2D2D2D            sub ax,0x2d2d
000005EF  2D2D2D            sub ax,0x2d2d
000005F2  2D2D2D            sub ax,0x2d2d
000005F5  2D2D2D            sub ax,0x2d2d
000005F8  2D2D2D            sub ax,0x2d2d
000005FB  2D2D2D            sub ax,0x2d2d
000005FE  2D3430            sub ax,0x3034
00000601  2D2D2D            sub ax,0x2d2d
00000604  2D2D2D            sub ax,0x2d2d
00000607  2D2D2D            sub ax,0x2d2d
0000060A  2D2D2D            sub ax,0x2d2d
0000060D  2D2D2D            sub ax,0x2d2d
00000610  2D2D2D            sub ax,0x2d2d
00000613  2D2D2D            sub ax,0x2d2d
00000616  2D2D2D            sub ax,0x2d2d
00000619  2D2D2D            sub ax,0x2d2d
0000061C  2D2D2D            sub ax,0x2d2d
0000061F  2D2D2D            sub ax,0x2d2d
00000622  2D2D2D            sub ax,0x2d2d
00000625  2D2D38            sub ax,0x382d
00000628  300D              xor [di],cl
0000062A  0D0D0D            or ax,0xd0d
0000062D  0D0D45            or ax,0x450d
00000630  53                push bx
00000631  20534F            and [bp+di+0x4f],dl
00000634  4C                dec sp
00000635  4C                dec sp
00000636  54                push sp
00000637  45                inc bp
00000638  4E                dec si
00000639  2038              and [bx+si],bh
0000063B  3020              xor [bx+si],ah
0000063D  5A                pop dx
0000063E  45                inc bp
0000063F  49                dec cx
00000640  43                inc bx
00000641  48                dec ax
00000642  45                inc bp
00000643  4E                dec si
00000644  53                push bx
00000645  54                push sp
00000646  45                inc bp
00000647  4C                dec sp
00000648  4C                dec sp
00000649  45                inc bp
0000064A  4E                dec si
0000064B  0D5052            or ax,0x5250
0000064E  4F                dec di
0000064F  205A45            and [bp+si+0x45],bl
00000652  49                dec cx
00000653  4C                dec sp
00000654  45                inc bp
00000655  20414E            and [bx+di+0x4e],al
00000658  47                inc di
00000659  45                inc bp
0000065A  5A                pop dx
0000065B  45                inc bp
0000065C  49                dec cx
0000065D  47                inc di
0000065E  54                push sp
0000065F  205745            and [bx+0x45],dl
00000662  52                push dx
00000663  44                inc sp
00000664  45                inc bp
00000665  4E                dec si
00000666  0D130D            or ax,0xd13
00000669  2034              and [si],dh
0000066B  305832            xor [bx+si+0x32],bl
0000066E  352042            xor ax,0x4220
00000671  49                dec cx
00000672  4C                dec sp
00000673  44                inc sp
00000674  53                push bx
00000675  43                inc bx
00000676  48                dec ax
00000677  49                dec cx
00000678  52                push dx
00000679  4D                dec bp
0000067A  0D130D            or ax,0xd13
0000067D  2038              and [bx+si],bh
0000067F  305832            xor [bx+si+0x32],bl
00000682  352042            xor ax,0x4220
00000685  49                dec cx
00000686  4C                dec sp
00000687  44                inc sp
00000688  53                push bx
00000689  43                inc bx
0000068A  48                dec ax
0000068B  49                dec cx
0000068C  52                push dx
0000068D  4D                dec bp
0000068E  0D070F            or ax,0xf07
00000691  7000              jo 0x693
00000693  8701              xchg ax,[bx+di]
00000695  192A              sbb [bp+si],bp
00000697  3B4C5D            cmp cx,[si+0x5d]
0000069A  6E                outsb
0000069B  7FA8              jg 0x645
0000069D  04BA              add al,0xba
0000069F  04CE              add al,0xce
000006A1  04EA              add al,0xea
000006A3  04E0              add al,0xe0
000006A5  04FB              add al,0xfb
000006A7  040A              add al,0xa
000006A9  051005            add ax,0x510
000006AC  17                pop ss
000006AD  052305            add ax,0x523
000006B0  2805              sub [di],al
000006B2  59                pop cx
000006B3  053705            add ax,0x537
000006B6  48                dec ax
000006B7  057604            add ax,0x476
000006BA  7D04              jnl 0x6c0
000006BC  8604              xchg al,[si]
000006BE  8E04              mov es,[si]
000006C0  0000              add [bx+si],al
000006C2  D205              rol byte [di],cl
000006C4  61                popaw
000006C5  050200            add ax,0x2
000006C8  0000              add [bx+si],al
000006CA  7B06              jpo 0x6d2
000006CC  6706              push es
000006CE  7070              jo 0x740
000006D0  07                pop es
000006D1  07                pop es
000006D2  0000              add [bx+si],al
000006D4  1F                pop ds
000006D5  1F                pop ds
000006D6  0000              add [bx+si],al
000006D8  0000              add [bx+si],al
000006DA  50                push ax
000006DB  53                push bx
000006DC  51                push cx
000006DD  E82906            call word 0xd09
000006E0  BBDA03            mov bx,0x3da
000006E3  E83E06            call word 0xd24
000006E6  B00F              mov al,0xf
000006E8  CD87              int 0x87
000006EA  B00C              mov al,0xc
000006EC  8B161916          mov dx,[0x1619]
000006F0  803E181602        cmp byte [0x1618],0x2
000006F5  7202              jc 0x6f9
000006F7  0C01              or al,0x1
000006F9  EE                out dx,al
000006FA  B90800            mov cx,0x8
000006FD  B000              mov al,0x0
000006FF  C6063A0C00        mov byte [0xc3a],0x0
00000704  90                nop
00000705  C6063B0C00        mov byte [0xc3b],0x0
0000070A  90                nop
0000070B  C606960A00        mov byte [0xa96],0x0
00000710  90                nop
00000711  C706380C970A      mov word [0xc38],0xa97
00000717  E8F600            call word 0x810
0000071A  E87B01            call word 0x898
0000071D  E87801            call word 0x898
00000720  0420              add al,0x20
00000722  E2F3              loop 0x717
00000724  8B0E2516          mov cx,[0x1625]
00000728  D1E9              shr cx,1
0000072A  B0F0              mov al,0xf0
0000072C  CD87              int 0x87
0000072E  B020              mov al,0x20
00000730  E83901            call word 0x86c
00000733  50                push ax
00000734  B070              mov al,0x70
00000736  CD87              int 0x87
00000738  58                pop ax
00000739  E83001            call word 0x86c
0000073C  E2EC              loop 0x72a
0000073E  E85701            call word 0x898
00000741  E8F500            call word 0x839
00000744  731C              jnc 0x762
00000746  BEBB0A            mov si,0xabb
00000749  8B3E380C          mov di,[0xc38]
0000074D  B91100            mov cx,0x11
00000750  F3A4              rep movsb
00000752  8306380C11        add word [0xc38],byte +0x11
00000757  8006960A11        add byte [0xa96],0x11
0000075C  C6063A0C01        mov byte [0xc3a],0x1
00000761  90                nop
00000762  803E291605        cmp byte [0x1629],0x5
00000767  7504              jnz 0x76d
00000769  59                pop cx
0000076A  5B                pop bx
0000076B  58                pop ax
0000076C  C3                ret
0000076D  1E                push ds
0000076E  B84000            mov ax,0x40
00000771  8ED8              mov ds,ax
00000773  A1E500            mov ax,[0xe5]
00000776  351000            xor ax,0x10
00000779  A3E500            mov [0xe5],ax
0000077C  1F                pop ds
0000077D  E88905            call word 0xd09
00000780  BBEB03            mov bx,0x3eb
00000783  E89E05            call word 0xd24
00000786  B00F              mov al,0xf
00000788  CD87              int 0x87
0000078A  B00C              mov al,0xc
0000078C  8B161916          mov dx,[0x1619]
00000790  803E181602        cmp byte [0x1618],0x2
00000795  7202              jc 0x799
00000797  0C01              or al,0x1
00000799  EE                out dx,al
0000079A  B90800            mov cx,0x8
0000079D  B000              mov al,0x0
0000079F  E86E00            call word 0x810
000007A2  E8F300            call word 0x898
000007A5  E8F000            call word 0x898
000007A8  0420              add al,0x20
000007AA  E2F3              loop 0x79f
000007AC  8B0E2516          mov cx,[0x1625]
000007B0  D1E9              shr cx,1
000007B2  B0F0              mov al,0xf0
000007B4  CD87              int 0x87
000007B6  B020              mov al,0x20
000007B8  E8B100            call word 0x86c
000007BB  50                push ax
000007BC  B070              mov al,0x70
000007BE  CD87              int 0x87
000007C0  58                pop ax
000007C1  E8A800            call word 0x86c
000007C4  E2EC              loop 0x7b2
000007C6  E8CF00            call word 0x898
000007C9  E86D00            call word 0x839
000007CC  731C              jnc 0x7ea
000007CE  BECD0A            mov si,0xacd
000007D1  8B3E380C          mov di,[0xc38]
000007D5  B91100            mov cx,0x11
000007D8  F3A4              rep movsb
000007DA  8306380C11        add word [0xc38],byte +0x11
000007DF  8006960A11        add byte [0xa96],0x11
000007E4  C6063B0C01        mov byte [0xc3b],0x1
000007E9  90                nop
000007EA  1E                push ds
000007EB  B84000            mov ax,0x40
000007EE  8ED8              mov ds,ax
000007F0  A1E500            mov ax,[0xe5]
000007F3  351000            xor ax,0x10
000007F6  A3E500            mov [0xe5],ax
000007F9  1F                pop ds
000007FA  803E3A0C01        cmp byte [0xc3a],0x1
000007FF  7407              jz 0x808
00000801  803E3B0C01        cmp byte [0xc3b],0x1
00000806  7505              jnz 0x80d
00000808  F9                stc
00000809  59                pop cx
0000080A  5B                pop bx
0000080B  58                pop ax
0000080C  C3                ret
0000080D  F8                clc
0000080E  EBF9              jmp short 0x809
00000810  50                push ax
00000811  51                push cx
00000812  B90200            mov cx,0x2
00000815  50                push ax
00000816  B020              mov al,0x20
00000818  E85100            call word 0x86c
0000081B  58                pop ax
0000081C  E2F7              loop 0x815
0000081E  B92000            mov cx,0x20
00000821  E84800            call word 0x86c
00000824  803E251650        cmp byte [0x1625],0x50
00000829  7507              jnz 0x832
0000082B  50                push ax
0000082C  B020              mov al,0x20
0000082E  E83B00            call word 0x86c
00000831  58                pop ax
00000832  FEC0              inc al
00000834  E2EB              loop 0x821
00000836  59                pop cx
00000837  58                pop ax
00000838  C3                ret
00000839  B007              mov al,0x7
0000083B  CD87              int 0x87
0000083D  90                nop
0000083E  36803E620241      cmp byte [ss:0x262],0x41
00000844  750B              jnz 0x851
00000846  B005              mov al,0x5
00000848  CD8D              int 0x8d
0000084A  CD8E              int 0x8e
0000084C  75FC              jnz 0x84a
0000084E  EB09              jmp short 0x859
00000850  90                nop
00000851  E80600            call word 0x85a
00000854  E84C00            call word 0x8a3
00000857  75F8              jnz 0x851
00000859  C3                ret
0000085A  51                push cx
0000085B  52                push dx
0000085C  BA0015            mov dx,0x1500
0000085F  B402              mov ah,0x2
00000861  CD84              int 0x84
00000863  BBFC03            mov bx,0x3fc
00000866  E8C104            call word 0xd2a
00000869  5A                pop dx
0000086A  59                pop cx
0000086B  C3                ret
0000086C  50                push ax
0000086D  257F00            and ax,0x7f
00000870  3C20              cmp al,0x20
00000872  58                pop ax
00000873  7209              jc 0x87e
00000875  BB1F04            mov bx,0x41f
00000878  A22004            mov [0x420],al
0000087B  E99904            jmp word 0xd17
0000087E  50                push ax
0000087F  51                push cx
00000880  50                push ax
00000881  CD8A              int 0x8a
00000883  8AF8              mov bh,al
00000885  B90100            mov cx,0x1
00000888  CD88              int 0x88
0000088A  8AD8              mov bl,al
0000088C  58                pop ax
0000088D  B409              mov ah,0x9
0000088F  CD84              int 0x84
00000891  B020              mov al,0x20
00000893  CD86              int 0x86
00000895  59                pop cx
00000896  58                pop ax
00000897  C3                ret
00000898  50                push ax
00000899  53                push bx
0000089A  BB1D04            mov bx,0x41d
0000089D  E87704            call word 0xd17
000008A0  5B                pop bx
000008A1  58                pop ax
000008A2  C3                ret
000008A3  53                push bx
000008A4  51                push cx
000008A5  56                push si
000008A6  CD92              int 0x92
000008A8  F8                clc
000008A9  0BC9              or cx,cx
000008AB  740F              jz 0x8bc
000008AD  36A01201          mov al,[ss:0x112]
000008B1  24DF              and al,0xdf
000008B3  3C4A              cmp al,0x4a
000008B5  7405              jz 0x8bc
000008B7  3C4E              cmp al,0x4e
000008B9  7501              jnz 0x8bc
000008BB  F9                stc
000008BC  5E                pop si
000008BD  59                pop cx
000008BE  5B                pop bx
000008BF  C3                ret
000008C0  51                push cx
000008C1  57                push di
000008C2  06                push es
000008C3  8B0E2116          mov cx,[0x1621]
000008C7  8EC1              mov es,cx
000008C9  8B0E2316          mov cx,[0x1623]
000008CD  33FF              xor di,di
000008CF  F3AB              rep stosw
000008D1  07                pop es
000008D2  5F                pop di
000008D3  59                pop cx
000008D4  C3                ret
000008D5  50                push ax
000008D6  53                push bx
000008D7  51                push cx
000008D8  2EC606D90601      mov byte [cs:0x6d9],0x1
000008DE  E82804            call word 0xd09
000008E1  B90600            mov cx,0x6
000008E4  BF1816            mov di,0x1618
000008E7  33F6              xor si,si
000008E9  803D07            cmp byte [di],0x7
000008EC  741B              jz 0x909
000008EE  B80100            mov ax,0x1
000008F1  CD84              int 0x84
000008F3  E8950E            call word 0x178b
000008F6  8AF7              mov dh,bh
000008F8  BADA03            mov dx,0x3da
000008FB  EC                in al,dx
000008FC  BAC003            mov dx,0x3c0
000008FF  B010              mov al,0x10
00000901  EE                out dx,al
00000902  B008              mov al,0x8
00000904  EE                out dx,al
00000905  B020              mov al,0x20
00000907  EE                out dx,al
00000908  49                dec cx
00000909  BB5404            mov bx,0x454
0000090C  E81504            call word 0xd24
0000090F  8A848F06          mov al,[si+0x68f]
00000913  CD87              int 0x87
00000915  BB9604            mov bx,0x496
00000918  E8FC03            call word 0xd17
0000091B  D1E6              shl si,1
0000091D  8B9C9C06          mov bx,[si+0x69c]
00000921  D1EE              shr si,1
00000923  E8F103            call word 0xd17
00000926  46                inc si
00000927  E2E6              loop 0x90f
00000929  803D07            cmp byte [di],0x7
0000092C  7422              jz 0x950
0000092E  E867FF            call word 0x898
00000931  B90700            mov cx,0x7
00000934  33F6              xor si,si
00000936  8A849506          mov al,[si+0x695]
0000093A  CD87              int 0x87
0000093C  BB6904            mov bx,0x469
0000093F  E8D503            call word 0xd17
00000942  D1E6              shl si,1
00000944  8B9CA806          mov bx,[si+0x6a8]
00000948  E8D903            call word 0xd24
0000094B  D1EE              shr si,1
0000094D  46                inc si
0000094E  E2E6              loop 0x936
00000950  90                nop
00000951  E8E5FE            call word 0x839
00000954  7201              jc 0x957
00000956  F8                clc
00000957  59                pop cx
00000958  5B                pop bx
00000959  58                pop ax
0000095A  C3                ret
0000095B  50                push ax
0000095C  16                push ss
0000095D  1E                push ds
0000095E  06                push es
0000095F  8CD8              mov ax,ds
00000961  8EC0              mov es,ax
00000963  B84000            mov ax,0x40
00000966  8ED8              mov ds,ax
00000968  2BC0              sub ax,ax
0000096A  A08800            mov al,[0x88]
0000096D  07                pop es
0000096E  1F                pop ds
0000096F  240F              and al,0xf
00000971  17                pop ss
00000972  58                pop ax
00000973  F8                clc
00000974  C3                ret
00000975  50                push ax
00000976  53                push bx
00000977  51                push cx
00000978  2D0600            sub ax,0x6
0000097B  8BD8              mov bx,ax
0000097D  8A87C606          mov al,[bx+0x6c6]
00000981  B400              mov ah,0x0
00000983  CD84              int 0x84
00000985  803E181607        cmp byte [0x1618],0x7
0000098A  7408              jz 0x994
0000098C  BAD903            mov dx,0x3d9
0000098F  8A87D206          mov al,[bx+0x6d2]
00000993  EE                out dx,al
00000994  A02516            mov al,[0x1625]
00000997  A2D606            mov [0x6d6],al
0000099A  8A87CE06          mov al,[bx+0x6ce]
0000099E  CD87              int 0x87
000009A0  53                push bx
000009A1  8B9FCA06          mov bx,[bx+0x6ca]
000009A5  E86F03            call word 0xd17
000009A8  5B                pop bx
000009A9  B007              mov al,0x7
000009AB  CD87              int 0x87
000009AD  8B9FC206          mov bx,[bx+0x6c2]
000009B1  E86303            call word 0xd17
000009B4  E882FE            call word 0x839
000009B7  A0D606            mov al,[0x6d6]
000009BA  A22516            mov [0x1625],al
000009BD  59                pop cx
000009BE  5B                pop bx
000009BF  58                pop ax
000009C0  C3                ret
000009C1  50                push ax
000009C2  53                push bx
000009C3  51                push cx
000009C4  F8                clc
000009C5  59                pop cx
000009C6  5B                pop bx
000009C7  58                pop ax
000009C8  C3                ret
000009C9  BB2030            mov bx,0x3020
000009CC  202D              and [di],ch
000009CE  204249            and [bp+si+0x49],al
000009D1  4C                dec sp
000009D2  44                inc sp
000009D3  53                push bx
000009D4  43                inc bx
000009D5  48                dec ax
000009D6  49                dec cx
000009D7  52                push dx
000009D8  4D                dec bp
000009D9  41                inc cx
000009DA  44                inc sp
000009DB  41                inc cx
000009DC  50                push ax
000009DD  54                push sp
000009DE  45                inc bp
000009DF  52                push dx
000009E0  54                push sp
000009E1  45                inc bp
000009E2  53                push bx
000009E3  54                push sp
000009E4  0D2020            or ax,0x2020
000009E7  2020              and [bx+si],ah
000009E9  2020              and [bx+si],ah
000009EB  2020              and [bx+si],ah
000009ED  2020              and [bx+si],ah
000009EF  2020              and [bx+si],ah
000009F1  2020              and [bx+si],ah
000009F3  2020              and [bx+si],ah
000009F5  2020              and [bx+si],ah
000009F7  2020              and [bx+si],ah
000009F9  2020              and [bx+si],ah
000009FB  2020              and [bx+si],ah
000009FD  2020              and [bx+si],ah
000009FF  2020              and [bx+si],ah
00000A01  2020              and [bx+si],ah
00000A03  2020              and [bx+si],ah
00000A05  2020              and [bx+si],ah
00000A07  2020              and [bx+si],ah
00000A09  2020              and [bx+si],ah
00000A0B  2020              and [bx+si],ah
00000A0D  2020              and [bx+si],ah
00000A0F  2020              and [bx+si],ah
00000A11  2020              and [bx+si],ah
00000A13  2020              and [bx+si],ah
00000A15  2020              and [bx+si],ah
00000A17  2020              and [bx+si],ah
00000A19  2020              and [bx+si],ah
00000A1B  2020              and [bx+si],ah
00000A1D  2020              and [bx+si],ah
00000A1F  2020              and [bx+si],ah
00000A21  2020              and [bx+si],ah
00000A23  2020              and [bx+si],ah
00000A25  2020              and [bx+si],ah
00000A27  2020              and [bx+si],ah
00000A29  2020              and [bx+si],ah
00000A2B  2020              and [bx+si],ah
00000A2D  2020              and [bx+si],ah
00000A2F  2020              and [bx+si],ah
00000A31  2020              and [bx+si],ah
00000A33  2020              and [bx+si],ah
00000A35  2020              and [bx+si],ah
00000A37  2020              and [bx+si],ah
00000A39  2020              and [bx+si],ah
00000A3B  2020              and [bx+si],ah
00000A3D  2020              and [bx+si],ah
00000A3F  2020              and [bx+si],ah
00000A41  2020              and [bx+si],ah
00000A43  2020              and [bx+si],ah
00000A45  2020              and [bx+si],ah
00000A47  2020              and [bx+si],ah
00000A49  2020              and [bx+si],ah
00000A4B  2020              and [bx+si],ah
00000A4D  2020              and [bx+si],ah
00000A4F  2020              and [bx+si],ah
00000A51  2020              and [bx+si],ah
00000A53  2020              and [bx+si],ah
00000A55  2020              and [bx+si],ah
00000A57  2020              and [bx+si],ah
00000A59  2020              and [bx+si],ah
00000A5B  2020              and [bx+si],ah
00000A5D  2020              and [bx+si],ah
00000A5F  2020              and [bx+si],ah
00000A61  2020              and [bx+si],ah
00000A63  2020              and [bx+si],ah
00000A65  2020              and [bx+si],ah
00000A67  2020              and [bx+si],ah
00000A69  2020              and [bx+si],ah
00000A6B  2020              and [bx+si],ah
00000A6D  2020              and [bx+si],ah
00000A6F  2020              and [bx+si],ah
00000A71  2020              and [bx+si],ah
00000A73  2020              and [bx+si],ah
00000A75  2020              and [bx+si],ah
00000A77  2020              and [bx+si],ah
00000A79  2020              and [bx+si],ah
00000A7B  2020              and [bx+si],ah
00000A7D  2020              and [bx+si],ah
00000A7F  2020              and [bx+si],ah
00000A81  2020              and [bx+si],ah
00000A83  2020              and [bx+si],ah
00000A85  10414E            adc [bx+di+0x4e],al
00000A88  5A                pop dx
00000A89  45                inc bp
00000A8A  49                dec cx
00000A8B  47                inc di
00000A8C  45                inc bp
00000A8D  41                inc cx
00000A8E  54                push sp
00000A8F  54                push sp
00000A90  52                push dx
00000A91  49                dec cx
00000A92  42                inc dx
00000A93  55                push bp
00000A94  54                push sp
00000A95  45                inc bp
00000A96  2420              and al,0x20
00000A98  2020              and [bx+si],ah
00000A9A  2020              and [bx+si],ah
00000A9C  2020              and [bx+si],ah
00000A9E  2020              and [bx+si],ah
00000AA0  2020              and [bx+si],ah
00000AA2  2020              and [bx+si],ah
00000AA4  2020              and [bx+si],ah
00000AA6  2020              and [bx+si],ah
00000AA8  2020              and [bx+si],ah
00000AAA  2020              and [bx+si],ah
00000AAC  2020              and [bx+si],ah
00000AAE  2020              and [bx+si],ah
00000AB0  2020              and [bx+si],ah
00000AB2  2020              and [bx+si],ah
00000AB4  2020              and [bx+si],ah
00000AB6  2020              and [bx+si],ah
00000AB8  2020              and [bx+si],ah
00000ABA  205A45            and [bp+si+0x45],bl
00000ABD  49                dec cx
00000ABE  43                inc bx
00000ABF  48                dec ax
00000AC0  45                inc bp
00000AC1  4E                dec si
00000AC2  53                push bx
00000AC3  41                inc cx
00000AC4  54                push sp
00000AC5  5A                pop dx
00000AC6  2031              and [bx+di],dh
00000AC8  2020              and [bx+si],ah
00000ACA  2020              and [bx+si],ah
00000ACC  0D5A45            or ax,0x455a
00000ACF  49                dec cx
00000AD0  43                inc bx
00000AD1  48                dec ax
00000AD2  45                inc bp
00000AD3  4E                dec si
00000AD4  53                push bx
00000AD5  41                inc cx
00000AD6  54                push sp
00000AD7  5A                pop dx
00000AD8  2032              and [bp+si],dh
00000ADA  2020              and [bx+si],ah
00000ADC  2020              and [bx+si],ah
00000ADE  0D1120            or ax,0x2011
00000AE1  3830              cmp [bx+si],dh
00000AE3  58                pop ax
00000AE4  3235              xor dh,[di]
00000AE6  204249            and [bp+si+0x49],al
00000AE9  4C                dec sp
00000AEA  44                inc sp
00000AEB  53                push bx
00000AEC  43                inc bx
00000AED  48                dec ax
00000AEE  49                dec cx
00000AEF  52                push dx
00000AF0  4D                dec bp
00000AF1  1120              adc [bx+si],sp
00000AF3  3430              xor al,0x30
00000AF5  58                pop ax
00000AF6  3235              xor dh,[di]
00000AF8  204249            and [bp+si+0x49],al
00000AFB  4C                dec sp
00000AFC  44                inc sp
00000AFD  53                push bx
00000AFE  43                inc bx
00000AFF  48                dec ax
00000B00  49                dec cx
00000B01  52                push dx
00000B02  4D                dec bp
00000B03  0F                db 0x0f
00000B04  2033              and [bp+di],dh
00000B06  3230              xor dh,[bx+si]
00000B08  58                pop ax
00000B09  3230              xor dh,[bx+si]
00000B0B  3020              xor [bx+si],ah
00000B0D  47                inc di
00000B0E  52                push dx
00000B0F  41                inc cx
00000B10  46                inc si
00000B11  49                dec cx
00000B12  4B                dec bx
00000B13  0F                db 0x0f
00000B14  20363430          and [0x3034],dh
00000B18  58                pop ax
00000B19  3230              xor dh,[bx+si]
00000B1B  3020              xor [bx+si],ah
00000B1D  47                inc di
00000B1E  52                push dx
00000B1F  41                inc cx
00000B20  46                inc si
00000B21  49                dec cx
00000B22  4B                dec bx
00000B23  0F                db 0x0f
00000B24  20363430          and [0x3034],dh
00000B28  58                pop ax
00000B29  3438              xor al,0x38
00000B2B  3020              xor [bx+si],ah
00000B2D  47                inc di
00000B2E  52                push dx
00000B2F  41                inc cx
00000B30  46                inc si
00000B31  49                dec cx
00000B32  4B                dec bx
00000B33  0C5A              or al,0x5a
00000B35  45                inc bp
00000B36  49                dec cx
00000B37  43                inc bx
00000B38  48                dec ax
00000B39  45                inc bp
00000B3A  4E                dec si
00000B3B  46                inc si
00000B3C  4F                dec di
00000B3D  4E                dec si
00000B3E  44                inc sp
00000B3F  200F              and [bx],cl
00000B41  363430            ss xor al,0x30
00000B44  58                pop ax
00000B45  3430              xor al,0x30
00000B47  3020              xor [bx+si],ah
00000B49  47                inc di
00000B4A  52                push dx
00000B4B  41                inc cx
00000B4C  46                inc si
00000B4D  49                dec cx
00000B4E  4B                dec bx
00000B4F  200D              and [di],cl
00000B51  46                inc si
00000B52  41                inc cx
00000B53  52                push dx
00000B54  42                inc dx
00000B55  53                push bx
00000B56  50                push ax
00000B57  45                inc bp
00000B58  49                dec cx
00000B59  43                inc bx
00000B5A  48                dec ax
00000B5B  45                inc bp
00000B5C  52                push dx
00000B5D  204E4D            and [bp+0x4d],cl
00000B60  49                dec cx
00000B61  2D5445            sub ax,0x4554
00000B64  53                push bx
00000B65  54                push sp
00000B66  204245            and [bp+si+0x45],al
00000B69  49                dec cx
00000B6A  204B55            and [bp+di+0x55],cl
00000B6D  52                push dx
00000B6E  53                push bx
00000B6F  4F                dec di
00000B70  52                push dx
00000B71  50                push ax
00000B72  4F                dec di
00000B73  53                push bx
00000B74  49                dec cx
00000B75  54                push sp
00000B76  49                dec cx
00000B77  4F                dec di
00000B78  4E                dec si
00000B79  49                dec cx
00000B7A  45                inc bp
00000B7B  52                push dx
00000B7C  55                push bp
00000B7D  4E                dec si
00000B7E  47                inc di
00000B7F  2020              and [bx+si],ah
00000B81  2020              and [bx+si],ah
00000B83  2020              and [bx+si],ah
00000B85  0D4249            or ax,0x4942
00000B88  4C                dec sp
00000B89  44                inc sp
00000B8A  57                push di
00000B8B  49                dec cx
00000B8C  45                inc bp
00000B8D  44                inc sp
00000B8E  45                inc bp
00000B8F  52                push dx
00000B90  48                dec ax
00000B91  4F                dec di
00000B92  4C                dec sp
00000B93  53                push bx
00000B94  50                push ax
00000B95  45                inc bp
00000B96  49                dec cx
00000B97  43                inc bx
00000B98  48                dec ax
00000B99  45                inc bp
00000B9A  52                push dx
00000B9B  54                push sp
00000B9C  45                inc bp
00000B9D  53                push bx
00000B9E  54                push sp
00000B9F  2020              and [bx+si],ah
00000BA1  2020              and [bx+si],ah
00000BA3  2020              and [bx+si],ah
00000BA5  2020              and [bx+si],ah
00000BA7  2020              and [bx+si],ah
00000BA9  2020              and [bx+si],ah
00000BAB  2020              and [bx+si],ah
00000BAD  0D4249            or ax,0x4942
00000BB0  4C                dec sp
00000BB1  44                inc sp
00000BB2  57                push di
00000BB3  49                dec cx
00000BB4  45                inc bp
00000BB5  44                inc sp
00000BB6  45                inc bp
00000BB7  52                push dx
00000BB8  48                dec ax
00000BB9  4F                dec di
00000BBA  4C                dec sp
00000BBB  53                push bx
00000BBC  50                push ax
00000BBD  45                inc bp
00000BBE  49                dec cx
00000BBF  43                inc bx
00000BC0  48                dec ax
00000BC1  45                inc bp
00000BC2  52                push dx
00000BC3  54                push sp
00000BC4  45                inc bp
00000BC5  53                push bx
00000BC6  54                push sp
00000BC7  20363430          and [0x3034],dh
00000BCB  58                pop ax
00000BCC  3438              xor al,0x38
00000BCE  3020              xor [bx+si],ah
00000BD0  2020              and [bx+si],ah
00000BD2  2020              and [bx+si],ah
00000BD4  200D              and [di],cl
00000BD6  42                inc dx
00000BD7  49                dec cx
00000BD8  4C                dec sp
00000BD9  44                inc sp
00000BDA  53                push bx
00000BDB  43                inc bx
00000BDC  48                dec ax
00000BDD  49                dec cx
00000BDE  52                push dx
00000BDF  4D                dec bp
00000BE0  41                inc cx
00000BE1  44                inc sp
00000BE2  41                inc cx
00000BE3  50                push ax
00000BE4  54                push sp
00000BE5  45                inc bp
00000BE6  52                push dx
00000BE7  54                push sp
00000BE8  45                inc bp
00000BE9  53                push bx
00000BEA  54                push sp
00000BEB  2020              and [bx+si],ah
00000BED  2020              and [bx+si],ah
00000BEF  2020              and [bx+si],ah
00000BF1  2020              and [bx+si],ah
00000BF3  2020              and [bx+si],ah
00000BF5  2020              and [bx+si],ah
00000BF7  2020              and [bx+si],ah
00000BF9  2020              and [bx+si],ah
00000BFB  2020              and [bx+si],ah
00000BFD  0D1749            or ax,0x4917
00000C00  53                push bx
00000C01  54                push sp
00000C02  204449            and [si+0x49],al
00000C05  45                inc bp
00000C06  53                push bx
00000C07  205249            and [bp+si+0x49],dl
00000C0A  43                inc bx
00000C0B  48                dec ax
00000C0C  54                push sp
00000C0D  49                dec cx
00000C0E  47                inc di
00000C0F  2028              and [bx+si],ch
00000C11  4A                dec dx
00000C12  2F                das
00000C13  4E                dec si
00000C14  293F              sub [bx],di
00000C16  3030              xor [bx+si],dh
00000C18  3030              xor [bx+si],dh
00000C1A  3030              xor [bx+si],dh
00000C1C  0D3030            or ax,0x3030
00000C1F  0DC909            or ax,0x9c9
00000C22  850A              test [bp+si],cx
00000C24  96                xchg ax,si
00000C25  0ADF              or bl,bh
00000C27  0AF1              or dh,cl
00000C29  0A03              or al,[bp+di]
00000C2B  0B13              or dx,[bp+di]
00000C2D  0B23              or sp,[bp+di]
00000C2F  0B400B            or ax,[bx+si+0xb]
00000C32  330B              xor cx,[bp+di]
00000C34  50                push ax
00000C35  0BE5              or sp,bp
00000C37  09970A01          or [bx+0x10a],dx
00000C3B  01CE              add si,cx
00000C3D  02D5              add dl,ch
00000C3F  08DA              or dl,bl
00000C41  06                push es
00000C42  7509              jnz 0xc4d
00000C44  7509              jnz 0xc4f
00000C46  2E0E              cs push cs
00000C48  2E0E              cs push cs
00000C4A  7C10              jl 0xc5c
00000C4C  92                xchg ax,dx
00000C4D  1417              adc al,0x17
00000C4F  142B              adc al,0x2b
00000C51  11C1              adc cx,ax
00000C53  09DF              or di,bx
00000C55  0CDF              or al,0xdf
00000C57  0C51              or al,0x51
00000C59  52                push dx
00000C5A  56                push si
00000C5B  57                push di
00000C5C  50                push ax
00000C5D  C606C9091B        mov byte [0x9c9],0x1b
00000C62  C706360CE509      mov word [0xc36],0x9e5
00000C68  B000              mov al,0x0
00000C6A  A2380D            mov [0xd38],al
00000C6D  A2370D            mov [0xd37],al
00000C70  803E291604        cmp byte [0x1629],0x4
00000C75  7407              jz 0xc7e
00000C77  803E291605        cmp byte [0x1629],0x5
00000C7C  740A              jz 0xc88
00000C7E  B81F1E            mov ax,0x1e1f
00000C81  803E181607        cmp byte [0x1618],0x7
00000C86  7403              jz 0xc8b
00000C88  B8FF1F            mov ax,0x1fff
00000C8B  A33F0D            mov [0xd3f],ax
00000C8E  25FFF9            and ax,0xf9ff
00000C91  A3430D            mov [0xd43],ax
00000C94  58                pop ax
00000C95  8AC4              mov al,ah
00000C97  A22716            mov [0x1627],al
00000C9A  8B1E3F0D          mov bx,[0xd3f]
00000C9E  EB16              jmp short 0xcb6
00000CA0  90                nop
00000CA1  A3390D            mov [0xd39],ax
00000CA4  B102              mov cl,0x2
00000CA6  D2E0              shl al,cl
00000CA8  0806380D          or [0xd38],al
00000CAC  FE06370D          inc byte [0xd37]
00000CB0  E83100            call word 0xce4
00000CB3  EB1E              jmp short 0xcd3
00000CB5  90                nop
00000CB6  891E3B0D          mov [0xd3b],bx
00000CBA  E84C00            call word 0xd09
00000CBD  90                nop
00000CBE  A13B0D            mov ax,[0xd3b]
00000CC1  257FE1            and ax,0xe17f
00000CC4  803E291604        cmp byte [0x1629],0x4
00000CC9  7403              jz 0xcce
00000CCB  B8FF1F            mov ax,0x1fff
00000CCE  E81C00            call word 0xced
00000CD1  72CE              jc 0xca1
00000CD3  5F                pop di
00000CD4  5E                pop si
00000CD5  5A                pop dx
00000CD6  59                pop cx
00000CD7  A0380D            mov al,[0xd38]
00000CDA  8A26370D          mov ah,[0xd37]
00000CDE  C3                ret
00000CDF  5A                pop dx
00000CE0  5A                pop dx
00000CE1  EBF0              jmp short 0xcd3
00000CE3  C3                ret
00000CE4  8B1E390D          mov bx,[0xd39]
00000CE8  8B9F200C          mov bx,[bx+0xc20]
00000CEC  C3                ret
00000CED  8BC8              mov cx,ax
00000CEF  33C0              xor ax,ax
00000CF1  F8                clc
00000CF2  E314              jcxz 0xd08
00000CF4  F6C101            test cl,0x1
00000CF7  7409              jz 0xd02
00000CF9  8BF0              mov si,ax
00000CFB  2EFF943C0C        call word [cs:si+0xc3c]
00000D00  7206              jc 0xd08
00000D02  D1E9              shr cx,1
00000D04  40                inc ax
00000D05  40                inc ax
00000D06  EBE9              jmp short 0xcf1
00000D08  C3                ret
00000D09  50                push ax
00000D0A  B007              mov al,0x7
00000D0C  CD87              int 0x87
00000D0E  B400              mov ah,0x0
00000D10  A01816            mov al,[0x1618]
00000D13  CD84              int 0x84
00000D15  58                pop ax
00000D16  C3                ret
00000D17  50                push ax
00000D18  CD88              int 0x88
00000D1A  B409              mov ah,0x9
00000D1C  50                push ax
00000D1D  CD82              int 0x82
00000D1F  58                pop ax
00000D20  CD87              int 0x87
00000D22  58                pop ax
00000D23  C3                ret
00000D24  50                push ax
00000D25  B007              mov al,0x7
00000D27  EBF1              jmp short 0xd1a
00000D29  90                nop
00000D2A  E8EAFF            call word 0xd17
00000D2D  B400              mov ah,0x0
00000D2F  CD94              int 0x94
00000D31  B403              mov ah,0x3
00000D33  CD80              int 0x80
00000D35  C3                ret
00000D36  07                pop es
00000D37  0000              add [bx+si],al
00000D39  0000              add [bx+si],al
00000D3B  1100              adc [bx+si],ax
00000D3D  0100              add [bx+si],ax
00000D3F  0000              add [bx+si],al
00000D41  1100              adc [bx+si],ax
00000D43  0000              add [bx+si],al
00000D45  92                xchg ax,dx
00000D46  0D920D            or ax,0xd92
00000D49  A5                movsw
00000D4A  0DE30D            or ax,0xde3
00000D4D  07                pop es
00000D4E  0E                push cs
00000D4F  0400              add al,0x0
00000D51  06                push es
00000D52  000E000F          add [0xf00],cl
00000D56  0010              add [bx+si],dl
00000D58  0010              add [bx+si],dl
00000D5A  005555            add [di+0x55],dl
00000D5D  AA                stosb
00000D5E  AA                stosb
00000D5F  FF                db 0xff
00000D60  FF5555            call word [di+0x55]
00000D63  FF                db 0xff
00000D64  FFAAAA03          jmp word far [bp+si+0x3aa]
00000D68  030C              add cx,[si]
00000D6A  0C0F              or al,0xf
00000D6C  0F1E28            hint_nop53 word [bx+si]
00000D6F  1E                push ds
00000D70  281E281E          sub [0x1e28],bl
00000D74  C81EC81E          enter 0xc81e,0x1e
00000D78  C8440699          enter 0x644,0x99
00000D7C  0C6A              or al,0x6a
00000D7E  06                push es
00000D7F  C412              les dx,[bp+si]
00000D81  1919              sbb [bx+di],bx
00000D83  EA12AA3106        jmp word 0x631:0xaa12
00000D88  6213              bound dx,[bp+di]
00000D8A  0C03              or al,0x3
00000D8C  0207              add al,[bx]
00000D8E  07                pop es
00000D8F  07                pop es
00000D90  07                pop es
00000D91  0312              add dx,[bp+si]
00000D93  0D2033            or ax,0x3320
00000D96  3230              xor dh,[bx+si]
00000D98  58                pop ax
00000D99  3230              xor dh,[bx+si]
00000D9B  3020              xor [bx+si],ah
00000D9D  47                inc di
00000D9E  52                push dx
00000D9F  41                inc cx
00000DA0  46                inc si
00000DA1  49                dec cx
00000DA2  4B                dec bx
00000DA3  0D0D3D            or ax,0x3d0d
00000DA6  0D2036            or ax,0x3620
00000DA9  3430              xor al,0x30
00000DAB  58                pop ax
00000DAC  3230              xor dh,[bx+si]
00000DAE  3020              xor [bx+si],ah
00000DB0  47                inc di
00000DB1  52                push dx
00000DB2  41                inc cx
00000DB3  46                inc si
00000DB4  49                dec cx
00000DB5  4B                dec bx
00000DB6  202D              and [di],ch
00000DB8  205669            and [bp+0x69],dl
00000DBB  657265            gs jc 0xe23
00000DBE  636B65            arpl [bp+di+0x65],bp
00000DC1  3A20              cmp ah,[bx+si]
00000DC3  47                inc di
00000DC4  52                push dx
00000DC5  41                inc cx
00000DC6  55                push bp
00000DC7  2C20              sub al,0x20
00000DC9  47                inc di
00000DCA  52                push dx
00000DCB  41                inc cx
00000DCC  55                push bp
00000DCD  2C20              sub al,0x20
00000DCF  57                push di
00000DD0  45                inc bp
00000DD1  49                dec cx
00000DD2  53                push bx
00000DD3  53                push bx
00000DD4  204155            and [bx+di+0x55],al
00000DD7  46                inc si
00000DD8  205343            and [bp+di+0x43],dl
00000DDB  48                dec ax
00000DDC  57                push di
00000DDD  41                inc cx
00000DDE  52                push dx
00000DDF  5A                pop dx
00000DE0  200D              and [di],cl
00000DE2  0D2356            or ax,0x5623
00000DE5  6965726563        imul sp,[di+0x72],word 0x6365
00000DEA  6B653A20          imul sp,[di+0x3a],byte +0x20
00000DEE  47                inc di
00000DEF  52                push dx
00000DF0  55                push bp
00000DF1  45                inc bp
00000DF2  4E                dec si
00000DF3  2C20              sub al,0x20
00000DF5  52                push dx
00000DF6  4F                dec di
00000DF7  54                push sp
00000DF8  2C20              sub al,0x20
00000DFA  47                inc di
00000DFB  45                inc bp
00000DFC  4C                dec sp
00000DFD  42                inc dx
00000DFE  204155            and [bx+di+0x55],al
00000E01  46                inc si
00000E02  20424C            and [bp+si+0x4c],al
00000E05  41                inc cx
00000E06  55                push bp
00000E07  2656              es push si
00000E09  6965726563        imul sp,[di+0x72],word 0x6365
00000E0E  6B653A20          imul sp,[di+0x3a],byte +0x20
00000E12  42                inc dx
00000E13  4C                dec sp
00000E14  41                inc cx
00000E15  55                push bp
00000E16  2C20              sub al,0x20
00000E18  56                push si
00000E19  49                dec cx
00000E1A  4F                dec di
00000E1B  4C                dec sp
00000E1C  45                inc bp
00000E1D  54                push sp
00000E1E  54                push sp
00000E1F  2C20              sub al,0x20
00000E21  47                inc di
00000E22  52                push dx
00000E23  41                inc cx
00000E24  55                push bp
00000E25  204155            and [bx+di+0x55],al
00000E28  46                inc si
00000E29  20524F            and [bp+si+0x4f],dl
00000E2C  54                push sp
00000E2D  0D5053            or ax,0x5350
00000E30  51                push cx
00000E31  33FF              xor di,di
00000E33  2D0A00            sub ax,0xa
00000E36  8BF0              mov si,ax
00000E38  55                push bp
00000E39  8BEF              mov bp,di
00000E3B  8A844F0D          mov al,[si+0xd4f]
00000E3F  B400              mov ah,0x0
00000E41  CD85              int 0x85
00000E43  3E8A828B0D        mov al,[ds:bp+si+0xd8b]
00000E48  CD87              int 0x87
00000E4A  8B9C470D          mov bx,[si+0xd47]
00000E4E  E8C6FE            call word 0xd17
00000E51  83FE00            cmp si,byte +0x0
00000E54  7508              jnz 0xe5e
00000E56  3E8B9B4B0D        mov bx,[ds:bp+di+0xd4b]
00000E5B  E8B9FE            call word 0xd17
00000E5E  E82900            call word 0xe8a
00000E61  5D                pop bp
00000E62  E8D8F9            call word 0x83d
00000E65  721B              jc 0xe82
00000E67  83FE02            cmp si,byte +0x2
00000E6A  7414              jz 0xe80
00000E6C  803E271601        cmp byte [0x1627],0x1
00000E71  7504              jnz 0xe77
00000E73  B001              mov al,0x1
00000E75  CD8C              int 0x8c
00000E77  47                inc di
00000E78  83FF02            cmp di,byte +0x2
00000E7B  72BB              jc 0xe38
00000E7D  EB02              jmp short 0xe81
00000E7F  90                nop
00000E80  90                nop
00000E81  F8                clc
00000E82  B007              mov al,0x7
00000E84  CD87              int 0x87
00000E86  59                pop cx
00000E87  5B                pop bx
00000E88  58                pop ax
00000E89  C3                ret
00000E8A  57                push di
00000E8B  56                push si
00000E8C  83FE02            cmp si,byte +0x2
00000E8F  7412              jz 0xea3
00000E91  8A9D890D          mov bl,[di+0xd89]
00000E95  B700              mov bh,0x0
00000E97  B40B              mov ah,0xb
00000E99  CD85              int 0x85
00000E9B  8BDF              mov bx,di
00000E9D  FEC7              inc bh
00000E9F  B40B              mov ah,0xb
00000EA1  CD85              int 0x85
00000EA3  33F6              xor si,si
00000EA5  8A845B0D          mov al,[si+0xd5b]
00000EA9  8B9C6D0D          mov bx,[si+0xd6d]
00000EAD  8BAC790D          mov bp,[si+0xd79]
00000EB1  B900B8            mov cx,0xb800
00000EB4  8EC1              mov es,cx
00000EB6  33D2              xor dx,dx
00000EB8  8AD3              mov dl,bl
00000EBA  8BCA              mov cx,dx
00000EBC  8BFD              mov di,bp
00000EBE  F3AA              rep stosb
00000EC0  8BFD              mov di,bp
00000EC2  81C70020          add di,0x2000
00000EC6  8BCA              mov cx,dx
00000EC8  F3AA              rep stosb
00000ECA  83C550            add bp,byte +0x50
00000ECD  FECF              dec bh
00000ECF  75E9              jnz 0xeba
00000ED1  46                inc si
00000ED2  46                inc si
00000ED3  83FE06            cmp si,byte +0x6
00000ED6  72CD              jc 0xea5
00000ED8  8CC8              mov ax,cs
00000EDA  8EC0              mov es,ax
00000EDC  5E                pop si
00000EDD  5F                pop di
00000EDE  C3                ret
00000EDF  1F                pop ds
00000EE0  2020              and [bx+si],ah
00000EE2  2020              and [bx+si],ah
00000EE4  2020              and [bx+si],ah
00000EE6  2020              and [bx+si],ah
00000EE8  2020              and [bx+si],ah
00000EEA  2020              and [bx+si],ah
00000EEC  2020              and [bx+si],ah
00000EEE  2020              and [bx+si],ah
00000EF0  2020              and [bx+si],ah
00000EF2  2020              and [bx+si],ah
00000EF4  2020              and [bx+si],ah
00000EF6  2020              and [bx+si],ah
00000EF8  2020              and [bx+si],ah
00000EFA  2020              and [bx+si],ah
00000EFC  2020              and [bx+si],ah
00000EFE  0D1E0D            or ax,0xd1e
00000F01  46                inc si
00000F02  41                inc cx
00000F03  52                push dx
00000F04  42                inc dx
00000F05  53                push bx
00000F06  50                push ax
00000F07  45                inc bp
00000F08  4B                dec bx
00000F09  54                push sp
00000F0A  52                push dx
00000F0B  55                push bp
00000F0C  4D                dec bp
00000F0D  204752            and [bx+0x52],al
00000F10  41                inc cx
00000F11  46                inc si
00000F12  49                dec cx
00000F13  4B                dec bx
00000F14  20363430          and [0x3034],dh
00000F18  205820            and [bx+si+0x20],bl
00000F1B  3438              xor al,0x38
00000F1D  300C              xor [si],cl
00000F1F  2030              and [bx+si],dh
00000F21  202D              and [di],ch
00000F23  205343            and [bp+di+0x43],dl
00000F26  48                dec ax
00000F27  57                push di
00000F28  41                inc cx
00000F29  52                push dx
00000F2A  5A                pop dx
00000F2B  0920              or [bx+si],sp
00000F2D  3120              xor [bx+si],sp
00000F2F  2D2042            sub ax,0x4220
00000F32  4C                dec sp
00000F33  41                inc cx
00000F34  55                push bp
00000F35  0A20              or ah,[bx+si]
00000F37  3220              xor ah,[bx+si]
00000F39  2D2047            sub ax,0x4720
00000F3C  52                push dx
00000F3D  55                push bp
00000F3E  45                inc bp
00000F3F  4E                dec si
00000F40  0F                db 0x0f
00000F41  2033              and [bp+di],dh
00000F43  202D              and [di],ch
00000F45  204B4F            and [bp+di+0x4f],cl
00000F48  42                inc dx
00000F49  41                inc cx
00000F4A  4C                dec sp
00000F4B  54                push sp
00000F4C  42                inc dx
00000F4D  4C                dec sp
00000F4E  41                inc cx
00000F4F  55                push bp
00000F50  0820              or [bx+si],ah
00000F52  3420              xor al,0x20
00000F54  2D2052            sub ax,0x5220
00000F57  4F                dec di
00000F58  54                push sp
00000F59  0C20              or al,0x20
00000F5B  35202D            xor ax,0x2d20
00000F5E  205649            and [bp+0x49],dl
00000F61  4F                dec di
00000F62  4C                dec sp
00000F63  45                inc bp
00000F64  54                push sp
00000F65  54                push sp
00000F66  0A20              or ah,[bx+si]
00000F68  36202D            and [ss:di],ch
00000F6B  204252            and [bp+si+0x52],al
00000F6E  41                inc cx
00000F6F  55                push bp
00000F70  4E                dec si
00000F71  0D2037            or ax,0x3720
00000F74  202D              and [di],ch
00000F76  204845            and [bx+si+0x45],cl
00000F79  4C                dec sp
00000F7A  4C                dec sp
00000F7B  47                inc di
00000F7C  52                push dx
00000F7D  41                inc cx
00000F7E  55                push bp
00000F7F  0F                db 0x0f
00000F80  2038              and [bx+si],bh
00000F82  202D              and [di],ch
00000F84  204455            and [si+0x55],al
00000F87  4E                dec si
00000F88  4B                dec bx
00000F89  45                inc bp
00000F8A  4C                dec sp
00000F8B  47                inc di
00000F8C  52                push dx
00000F8D  41                inc cx
00000F8E  55                push bp
00000F8F  0D2039            or ax,0x3920
00000F92  202D              and [di],ch
00000F94  204845            and [bx+si+0x45],cl
00000F97  4C                dec sp
00000F98  4C                dec sp
00000F99  42                inc dx
00000F9A  4C                dec sp
00000F9B  41                inc cx
00000F9C  55                push bp
00000F9D  0E                push cs
00000F9E  3130              xor [bx+si],si
00000FA0  202D              and [di],ch
00000FA2  204845            and [bx+si+0x45],cl
00000FA5  4C                dec sp
00000FA6  4C                dec sp
00000FA7  47                inc di
00000FA8  52                push dx
00000FA9  55                push bp
00000FAA  45                inc bp
00000FAB  4E                dec si
00000FAC  1331              adc si,[bx+di]
00000FAE  3120              xor [bx+si],sp
00000FB0  2D2048            sub ax,0x4820
00000FB3  45                inc bp
00000FB4  4C                dec sp
00000FB5  4C                dec sp
00000FB6  4B                dec bx
00000FB7  4F                dec di
00000FB8  42                inc dx
00000FB9  41                inc cx
00000FBA  4C                dec sp
00000FBB  54                push sp
00000FBC  42                inc dx
00000FBD  4C                dec sp
00000FBE  41                inc cx
00000FBF  55                push bp
00000FC0  0C31              or al,0x31
00000FC2  3220              xor ah,[bx+si]
00000FC4  2D2048            sub ax,0x4820
00000FC7  45                inc bp
00000FC8  4C                dec sp
00000FC9  4C                dec sp
00000FCA  52                push dx
00000FCB  4F                dec di
00000FCC  54                push sp
00000FCD  1031              adc [bx+di],dh
00000FCF  3320              xor sp,[bx+si]
00000FD1  2D2048            sub ax,0x4820
00000FD4  45                inc bp
00000FD5  4C                dec sp
00000FD6  4C                dec sp
00000FD7  56                push si
00000FD8  49                dec cx
00000FD9  4F                dec di
00000FDA  4C                dec sp
00000FDB  45                inc bp
00000FDC  54                push sp
00000FDD  54                push sp
00000FDE  0931              or [bx+di],si
00000FE0  3420              xor al,0x20
00000FE2  2D2047            sub ax,0x4720
00000FE5  45                inc bp
00000FE6  4C                dec sp
00000FE7  42                inc dx
00000FE8  0C31              or al,0x31
00000FEA  35202D            xor ax,0x2d20
00000FED  205745            and [bx+0x45],dl
00000FF0  49                dec cx
00000FF1  53                push bx
00000FF2  53                push bx
00000FF3  0D0DFF            or ax,0xff0d
00000FF6  0E                push cs
00000FF7  1E                push ds
00000FF8  0F2B0F            movntps oword [bx],xmm1
00000FFB  350F40            xor ax,0x400f
00000FFE  0F500F            movmskps ecx,xmm12
00001001  59                pop cx
00001002  0F660F            pcmpgtd mm1,[bx]
00001005  710F              jno 0x1016
00001007  7F0F              jg 0x1018
00001009  8F                db 0x8f
0000100A  0F                db 0x0f
0000100B  9D                popfw
0000100C  0FAC0FC0          shrd [bx],cx,0xc0
00001010  0F                db 0x0f
00001011  CD0F              int 0xf
00001013  DE0F              fimul word [bx]
00001015  E80FDB            call word 0xeb27
00001018  DBDB              fcmovnu st3
0000101A  DBDB              fcmovnu st3
0000101C  0004              add [si],al
0000101E  0005              add [di],al
00001020  00060007          add [0x700],al
00001024  0008              add [bx+si],cl
00001026  0009              add [bx+di],cl
00001028  000A              add [bp+si],cl
0000102A  000B              add [bp+di],cl
0000102C  000C              add [si],cl
0000102E  000D              add [di],cl
00001030  000E000F          add [0xf00],cl
00001034  0010              add [bx+si],dl
00001036  0011              add [bx+di],dl
00001038  0012              add [bp+si],dl
0000103A  0013              add [bp+di],dl
0000103C  150415            adc ax,0x1504
0000103F  051506            add ax,0x615
00001042  150715            adc ax,0x1507
00001045  0815              or [di],dl
00001047  0915              or [di],dx
00001049  0A15              or dl,[di]
0000104B  0B15              or dx,[di]
0000104D  0C15              or al,0x15
0000104F  0D150E            or ax,0xe15
00001052  150F15            adc ax,0x150f
00001055  1015              adc [di],dl
00001057  1115              adc [di],dx
00001059  1215              adc dl,[di]
0000105B  1300              adc ax,[bx+si]
0000105D  0001              add [bx+di],al
0000105F  0002              add [bp+si],al
00001061  0003              add [bp+di],al
00001063  0004              add [si],al
00001065  0005              add [di],al
00001067  00060007          add [0x700],al
0000106B  0008              add [bx+si],cl
0000106D  0009              add [bx+di],cl
0000106F  000A              add [bp+si],cl
00001071  000B              add [bp+di],cl
00001073  000C              add [si],cl
00001075  000D              add [di],cl
00001077  000E000F          add [0xf00],cl
0000107B  005053            add [bx+si+0x53],dl
0000107E  51                push cx
0000107F  52                push dx
00001080  56                push si
00001081  B40F              mov ah,0xf
00001083  CD84              int 0x84
00001085  A2F915            mov [0x15f9],al
00001088  B80800            mov ax,0x8
0000108B  CD10              int 0x10
0000108D  33FF              xor di,di
0000108F  8B2EF50F          mov bp,[0xff5]
00001093  45                inc bp
00001094  8B36F50F          mov si,[0xff5]
00001098  268A0C            mov cl,[es:si]
0000109B  32ED              xor ch,ch
0000109D  BA0002            mov dx,0x200
000010A0  BB0700            mov bx,0x7
000010A3  B80013            mov ax,0x1300
000010A6  CD10              int 0x10
000010A8  BD1710            mov bp,0x1017
000010AB  33FF              xor di,di
000010AD  B90500            mov cx,0x5
000010B0  8B951C10          mov dx,[di+0x101c]
000010B4  8B9D5C10          mov bx,[di+0x105c]
000010B8  B80013            mov ax,0x1300
000010BB  CD10              int 0x10
000010BD  47                inc di
000010BE  47                inc di
000010BF  83FF20            cmp di,byte +0x20
000010C2  75E9              jnz 0x10ad
000010C4  33FF              xor di,di
000010C6  8BADF70F          mov bp,[di+0xff7]
000010CA  45                inc bp
000010CB  8BB5F70F          mov si,[di+0xff7]
000010CF  268A0C            mov cl,[es:si]
000010D2  32ED              xor ch,ch
000010D4  8B953C10          mov dx,[di+0x103c]
000010D8  BB0700            mov bx,0x7
000010DB  B80013            mov ax,0x1300
000010DE  CD10              int 0x10
000010E0  47                inc di
000010E1  47                inc di
000010E2  83FF20            cmp di,byte +0x20
000010E5  75DF              jnz 0x10c6
000010E7  36803E620241      cmp byte [ss:0x262],0x41
000010ED  750B              jnz 0x10fa
000010EF  B005              mov al,0x5
000010F1  CD8D              int 0x8d
000010F3  CD8E              int 0x8e
000010F5  75FC              jnz 0x10f3
000010F7  EB2C              jmp short 0x1125
000010F9  90                nop
000010FA  BDFC03            mov bp,0x3fc
000010FD  45                inc bp
000010FE  BEFC03            mov si,0x3fc
00001101  268A0C            mov cl,[es:si]
00001104  32ED              xor ch,ch
00001106  BA0017            mov dx,0x1700
00001109  BB0700            mov bx,0x7
0000110C  B80013            mov ax,0x1300
0000110F  CD10              int 0x10
00001111  B402              mov ah,0x2
00001113  BA2017            mov dx,0x1720
00001116  CD10              int 0x10
00001118  B400              mov ah,0x0
0000111A  CD94              int 0x94
0000111C  B403              mov ah,0x3
0000111E  CD80              int 0x80
00001120  E880F7            call word 0x8a3
00001123  75C2              jnz 0x10e7
00001125  5E                pop si
00001126  5A                pop dx
00001127  59                pop cx
00001128  5B                pop bx
00001129  58                pop ax
0000112A  C3                ret
0000112B  E92301            jmp word 0x1251
0000112E  0000              add [bx+si],al
00001130  0000              add [bx+si],al
00001132  00D8              add al,bl
00001134  03D2              add dx,dx
00001136  03D0              add dx,ax
00001138  03DE              add bx,si
0000113A  0315              add dx,[di]
0000113C  46                inc si
0000113D  61                popaw
0000113E  7262              jc 0x11a2
00001140  7370              jnc 0x11b2
00001142  656963686572      imul sp,[gs:bp+di+0x68],word 0x7265
00001148  205374            and [bp+di+0x74],dl
0000114B  61                popaw
0000114C  6E                outsb
0000114D  6461              fs popaw
0000114F  7264              jc 0x11b5
00001151  FF11              call word [bx+di]
00001153  46                inc si
00001154  61                popaw
00001155  7262              jc 0x11b9
00001157  7370              jnc 0x11c9
00001159  656963686572      imul sp,[gs:bp+di+0x68],word 0x7265
0000115F  20726F            and [bp+si+0x6f],dh
00001162  7420              jz 0x1184
00001164  134661            adc ax,[bp+0x61]
00001167  7262              jc 0x11cb
00001169  7370              jnc 0x11db
0000116B  656963686572      imul sp,[gs:bp+di+0x68],word 0x7265
00001171  206772            and [bx+0x72],ah
00001174  7565              jnz 0x11db
00001176  6E                outsb
00001177  2014              and [si],dl
00001179  46                inc si
0000117A  61                popaw
0000117B  7262              jc 0x11df
0000117D  7370              jnc 0x11ef
0000117F  656963686572      imul sp,[gs:bp+di+0x68],word 0x7265
00001185  2020              and [bx+si],ah
00001187  20626C            and [bp+si+0x6c],ah
0000118A  61                popaw
0000118B  7520              jnz 0x11ad
0000118D  1446              adc al,0x46
0000118F  61                popaw
00001190  7262              jc 0x11f4
00001192  7370              jnc 0x1204
00001194  656963686572      imul sp,[gs:bp+di+0x68],word 0x7265
0000119A  2020              and [bx+si],ah
0000119C  206772            and [bx+0x72],ah
0000119F  61                popaw
000011A0  7520              jnz 0x11c2
000011A2  16                push ss
000011A3  46                inc si
000011A4  61                popaw
000011A5  7262              jc 0x1209
000011A7  7370              jnc 0x1219
000011A9  656963686572      imul sp,[gs:bp+di+0x68],word 0x7265
000011AF  206D6F            and [di+0x6f],ch
000011B2  6E                outsb
000011B3  6F                outsw
000011B4  636872            arpl [bx+si+0x72],bp
000011B7  6F                outsw
000011B8  6D                insw
000011B9  DB03              fild dword [bp+di]
000011BB  DD03              fld qword [bp+di]
000011BD  DF03              fild word [bp+di]
000011BF  A00000            mov al,[0x0]
000011C2  00A10000          add [bx+di+0x0],ah
000011C6  0AA20609          or ah,[bp+si+0x906]
000011CA  00A30009          add [bp+di+0x900],ah
000011CE  09A40900          or [si+0x9],sp
000011D2  00A50A00          add [di+0xa],ah
000011D6  09A60B09          or [bp+0x90b],sp
000011DA  00A70D0D          add [bx+0xd0d],ah
000011DE  0BA80909          or bp,[bx+si+0x909]
000011E2  09A90909          or [bx+di+0x909],bp
000011E6  0FAA              rsm
000011E8  090F              or [bx],cx
000011EA  05AB09            add ax,0x9ab
000011ED  0D0FAC            or ax,0xac0f
000011F0  0F0303            lsl ax,[bp+di]
000011F3  AD                lodsw
000011F4  0F030F            lsl cx,[bx]
000011F7  AE                scasb
000011F8  0F                db 0x0f
000011F9  0F                db 0x0f
000011FA  01AF0F0F          add [bx+0xf0f],bp
000011FE  0F00A00000        verr [bx+si+0x0]
00001203  00A10000          add [bx+di+0x0],ah
00001207  0AA20609          or ah,[bp+si+0x906]
0000120B  00A30009          add [bp+di+0x900],ah
0000120F  09A40900          or [si+0x9],sp
00001213  00A50A00          add [di+0xa],ah
00001217  09A60B09          or [bp+0x90b],sp
0000121B  00A70D0D          add [bx+0xd0d],ah
0000121F  0BA80909          or bp,[bx+si+0x909]
00001223  09A90909          or [bx+di+0x909],bp
00001227  0FAA              rsm
00001229  090F              or [bx],cx
0000122B  05AB09            add ax,0x9ab
0000122E  0D0FAC            or ax,0xac0f
00001231  0F0303            lsl ax,[bp+di]
00001234  AD                lodsw
00001235  0F030F            lsl cx,[bx]
00001238  AE                scasb
00001239  0F                db 0x0f
0000123A  0F                db 0x0f
0000123B  01AF0F0F          add [bx+0xf0f],bp
0000123F  0F0000            sldt [bx+si]
00001242  0808              or [bx+si],cl
00001244  0909              or [bx+di],cx
00001246  0A0A              or cl,[bp+si]
00001248  0B0B              or cx,[bp+di]
0000124A  0C0C              or al,0xc
0000124C  0D0D0E            or ax,0xe0d
0000124F  0E                push cs
00001250  0F505351          movmskps edx,xmm10
00001254  52                push dx
00001255  B80300            mov ax,0x3
00001258  CD10              int 0x10
0000125A  0E                push cs
0000125B  07                pop es
0000125C  C6065111FF        mov byte [0x1151],0xff
00001261  E8E500            call word 0x1349
00001264  803E511100        cmp byte [0x1151],0x0
00001269  7465              jz 0x12d0
0000126B  E88A00            call word 0x12f8
0000126E  BB0100            mov bx,0x1
00001271  E83701            call word 0x13ab
00001274  E8FD00            call word 0x1374
00001277  BD5211            mov bp,0x1152
0000127A  E87A01            call word 0x13f7
0000127D  E88901            call word 0x1409
00001280  BB0200            mov bx,0x2
00001283  E82501            call word 0x13ab
00001286  E8EB00            call word 0x1374
00001289  BD6411            mov bp,0x1164
0000128C  E86801            call word 0x13f7
0000128F  E87701            call word 0x1409
00001292  BB0300            mov bx,0x3
00001295  E81301            call word 0x13ab
00001298  E8D900            call word 0x1374
0000129B  BD7811            mov bp,0x1178
0000129E  E85601            call word 0x13f7
000012A1  E86501            call word 0x1409
000012A4  BB0F00            mov bx,0xf
000012A7  E80101            call word 0x13ab
000012AA  E8C700            call word 0x1374
000012AD  BD8D11            mov bp,0x118d
000012B0  E84401            call word 0x13f7
000012B3  E85301            call word 0x1409
000012B6  FC                cld
000012B7  8D360012          lea si,[0x1200]
000012BB  8D3EBF11          lea di,[0x11bf]
000012BF  B94100            mov cx,0x41
000012C2  F3A4              rep movsb
000012C4  E8AD00            call word 0x1374
000012C7  BD3B11            mov bp,0x113b
000012CA  E82A01            call word 0x13f7
000012CD  EB0D              jmp short 0x12dc
000012CF  90                nop
000012D0  E8A100            call word 0x1374
000012D3  E82200            call word 0x12f8
000012D6  BDA211            mov bp,0x11a2
000012D9  E81B01            call word 0x13f7
000012DC  E85EF5            call word 0x83d
000012DF  7205              jc 0x12e6
000012E1  5A                pop dx
000012E2  59                pop cx
000012E3  5B                pop bx
000012E4  58                pop ax
000012E5  C3                ret
000012E6  F9                stc
000012E7  EBF8              jmp short 0x12e1
000012E9  8B163711          mov dx,[0x1137]
000012ED  EC                in al,dx
000012EE  A820              test al,0x20
000012F0  75FB              jnz 0x12ed
000012F2  EC                in al,dx
000012F3  A820              test al,0x20
000012F5  74FB              jz 0x12f2
000012F7  C3                ret
000012F8  C6062E1100        mov byte [0x112e],0x0
000012FD  C606301119        mov byte [0x1130],0x19
00001302  C6062F1100        mov byte [0x112f],0x0
00001307  C606321100        mov byte [0x1132],0x0
0000130C  C606311110        mov byte [0x1131],0x10
00001311  B402              mov ah,0x2
00001313  B700              mov bh,0x0
00001315  8A362E11          mov dh,[0x112e]
00001319  8A162F11          mov dl,[0x112f]
0000131D  CD10              int 0x10
0000131F  B409              mov ah,0x9
00001321  B0DB              mov al,0xdb
00001323  B90500            mov cx,0x5
00001326  8A1E3211          mov bl,[0x1132]
0000132A  B700              mov bh,0x0
0000132C  CD10              int 0x10
0000132E  80062F1105        add byte [0x112f],0x5
00001333  8006321101        add byte [0x1132],0x1
00001338  FE0E3111          dec byte [0x1131]
0000133C  75D3              jnz 0x1311
0000133E  FE062E11          inc byte [0x112e]
00001342  FE0E3011          dec byte [0x1130]
00001346  75BA              jnz 0x1302
00001348  C3                ret
00001349  53                push bx
0000134A  57                push di
0000134B  2E8B163711        mov dx,[cs:0x1137]
00001350  83C20A            add dx,byte +0xa
00001353  EC                in al,dx
00001354  A820              test al,0x20
00001356  7419              jz 0x1371
00001358  C606511100        mov byte [0x1151],0x0
0000135D  B91000            mov cx,0x10
00001360  FC                cld
00001361  BFBF11            mov di,0x11bf
00001364  BE4112            mov si,0x1241
00001367  AC                lodsb
00001368  2E884502          mov [cs:di+0x2],al
0000136C  83C704            add di,byte +0x4
0000136F  E2F6              loop 0x1367
00001371  5F                pop di
00001372  5B                pop bx
00001373  C3                ret
00001374  BEBF11            mov si,0x11bf
00001377  8B163311          mov dx,[0x1133]
0000137B  B001              mov al,0x1
0000137D  EE                out dx,al
0000137E  8A04              mov al,[si]
00001380  3C00              cmp al,0x0
00001382  741A              jz 0x139e
00001384  46                inc si
00001385  BBB911            mov bx,0x11b9
00001388  B90300            mov cx,0x3
0000138B  8B163911          mov dx,[0x1139]
0000138F  EE                out dx,al
00001390  8B17              mov dx,[bx]
00001392  8A04              mov al,[si]
00001394  F6D0              not al
00001396  EE                out dx,al
00001397  46                inc si
00001398  43                inc bx
00001399  43                inc bx
0000139A  E2F4              loop 0x1390
0000139C  EBE0              jmp short 0x137e
0000139E  8B163911          mov dx,[0x1139]
000013A2  EE                out dx,al
000013A3  8B163311          mov dx,[0x1133]
000013A7  B009              mov al,0x9
000013A9  EE                out dx,al
000013AA  C3                ret
000013AB  83FB0F            cmp bx,byte +0xf
000013AE  742A              jz 0x13da
000013B0  FC                cld
000013B1  B000              mov al,0x0
000013B3  8D3EBF11          lea di,[0x11bf]
000013B7  B91000            mov cx,0x10
000013BA  51                push cx
000013BB  47                inc di
000013BC  B90300            mov cx,0x3
000013BF  F3AA              rep stosb
000013C1  59                pop cx
000013C2  E2F6              loop 0x13ba
000013C4  B91000            mov cx,0x10
000013C7  32C0              xor al,al
000013C9  FC                cld
000013CA  BFBF11            mov di,0x11bf
000013CD  2E8801            mov [cs:bx+di],al
000013D0  FEC0              inc al
000013D2  83C704            add di,byte +0x4
000013D5  E2F6              loop 0x13cd
000013D7  EB1D              jmp short 0x13f6
000013D9  90                nop
000013DA  B91000            mov cx,0x10
000013DD  32C0              xor al,al
000013DF  FC                cld
000013E0  BFBF11            mov di,0x11bf
000013E3  2E884501          mov [cs:di+0x1],al
000013E7  2E884502          mov [cs:di+0x2],al
000013EB  2E884503          mov [cs:di+0x3],al
000013EF  FEC0              inc al
000013F1  83C704            add di,byte +0x4
000013F4  E2ED              loop 0x13e3
000013F6  C3                ret
000013F7  52                push dx
000013F8  53                push bx
000013F9  BA2302            mov dx,0x223
000013FC  B402              mov ah,0x2
000013FE  CD84              int 0x84
00001400  8BDD              mov bx,bp
00001402  B401              mov ah,0x1
00001404  CD82              int 0x82
00001406  5B                pop bx
00001407  5A                pop dx
00001408  C3                ret
00001409  B90A00            mov cx,0xa
0000140C  51                push cx
0000140D  B9FFFF            mov cx,0xffff
00001410  90                nop
00001411  E2FD              loop 0x1410
00001413  59                pop cx
00001414  E2F6              loop 0x140c
00001416  C3                ret
00001417  EB31              jmp short 0x144a
00001419  90                nop
0000141A  17                pop ss
0000141B  B7A9              mov bh,0xa9
0000141D  105A65            adc [bp+si+0x65],bl
00001420  696368656E        imul sp,[bp+di+0x68],word 0x6e65
00001425  666F              outsd
00001427  6E                outsb
00001428  647465            fs jz 0x1490
0000142B  7374              jnc 0x14a1
0000142D  201B              and [bp+di],bl
0000142F  46                inc si
00001430  65686C65          gs push word 0x656c
00001434  7220              jc 0x1456
00001436  626569            bound sp,[di+0x69]
00001439  205A65            and [bp+si+0x65],bl
0000143C  696368656E        imul sp,[bp+di+0x68],word 0x6e65
00001441  666F              outsd
00001443  6E                outsb
00001444  647465            fs jz 0x14ac
00001447  7374              jnc 0x14bd
00001449  205053            and [bx+si+0x53],dl
0000144C  51                push cx
0000144D  52                push dx
0000144E  1E                push ds
0000144F  B80300            mov ax,0x3
00001452  CD10              int 0x10
00001454  BD1D14            mov bp,0x141d
00001457  E89DFF            call word 0x13f7
0000145A  B91400            mov cx,0x14
0000145D  51                push cx
0000145E  B800A0            mov ax,0xa000
00001461  8ED8              mov ds,ax
00001463  B300              mov bl,0x0
00001465  BA0000            mov dx,0x0
00001468  BE0000            mov si,0x0
0000146B  FC                cld
0000146C  B90010            mov cx,0x1000
0000146F  AC                lodsb
00001470  32D8              xor bl,al
00001472  98                cbw
00001473  03D0              add dx,ax
00001475  E2F8              loop 0x146f
00001477  0E                push cs
00001478  1F                pop ds
00001479  59                pop cx
0000147A  3A1E1C14          cmp bl,[0x141c]
0000147E  750F              jnz 0x148f
00001480  3B161A14          cmp dx,[0x141a]
00001484  7509              jnz 0x148f
00001486  E2D5              loop 0x145d
00001488  F8                clc
00001489  1F                pop ds
0000148A  5A                pop dx
0000148B  59                pop cx
0000148C  5B                pop bx
0000148D  58                pop ax
0000148E  C3                ret
0000148F  F9                stc
00001490  EBF7              jmp short 0x1489
00001492  EB1E              jmp short 0x14b2
00001494  90                nop
00001495  0000              add [bx+si],al
00001497  0000              add [bx+si],al
00001499  0000              add [bx+si],al
0000149B  0000              add [bx+si],al
0000149D  0000              add [bx+si],al
0000149F  0000              add [bx+si],al
000014A1  0000              add [bx+si],al
000014A3  0E                push cs
000014A4  47                inc di
000014A5  7261              jc 0x1508
000014A7  66696B2036343078  imul ebp,[bp+di+0x20],dword 0x78303436
000014AF  3430              xor al,0x30
000014B1  305053            xor [bx+si+0x53],dl
000014B4  51                push cx
000014B5  52                push dx
000014B6  06                push es
000014B7  B80900            mov ax,0x9
000014BA  CD10              int 0x10
000014BC  FC                cld
000014BD  B800B8            mov ax,0xb800
000014C0  8EC0              mov es,ax
000014C2  BE0080            mov si,0x8000
000014C5  C7069F140000      mov word [0x149f],0x0
000014CB  C706A1140300      mov word [0x14a1],0x3
000014D1  C7069D140000      mov word [0x149d],0x0
000014D7  C7069B140000      mov word [0x149b],0x0
000014DD  B96400            mov cx,0x64
000014E0  51                push cx
000014E1  B90400            mov cx,0x4
000014E4  51                push cx
000014E5  8B3E9B14          mov di,[0x149b]
000014E9  B90A00            mov cx,0xa
000014EC  8BD9              mov bx,cx
000014EE  833E9F1400        cmp word [0x149f],byte +0x0
000014F3  7408              jz 0x14fd
000014F5  8B0E9F14          mov cx,[0x149f]
000014F9  33C0              xor ax,ax
000014FB  F3AB              rep stosw
000014FD  8BC6              mov ax,si
000014FF  86E0              xchg ah,al
00001501  AB                stosw
00001502  833EA11400        cmp word [0x14a1],byte +0x0
00001507  7408              jz 0x1511
00001509  8B0EA114          mov cx,[0x14a1]
0000150D  33C0              xor ax,ax
0000150F  F3AB              rep stosw
00001511  8BCB              mov cx,bx
00001513  E2D7              loop 0x14ec
00001515  D1CE              ror si,1
00001517  7329              jnc 0x1542
00001519  FF069F14          inc word [0x149f]
0000151D  833E9F1404        cmp word [0x149f],byte +0x4
00001522  7514              jnz 0x1538
00001524  C7069F140000      mov word [0x149f],0x0
0000152A  C706A1140300      mov word [0x14a1],0x3
00001530  EB10              jmp short 0x1542
00001532  90                nop
00001533  E2AB              loop 0x14e0
00001535  EB24              jmp short 0x155b
00001537  90                nop
00001538  B80300            mov ax,0x3
0000153B  2B069F14          sub ax,[0x149f]
0000153F  A3A114            mov [0x14a1],ax
00001542  81069B140020      add word [0x149b],0x2000
00001548  59                pop cx
00001549  E299              loop 0x14e4
0000154B  83069D1450        add word [0x149d],byte +0x50
00001550  8B169D14          mov dx,[0x149d]
00001554  89169B14          mov [0x149b],dx
00001558  59                pop cx
00001559  EBD8              jmp short 0x1533
0000155B  C70699140100      mov word [0x1499],0x1
00001561  C70695141E00      mov word [0x1495],0x1e
00001567  A19514            mov ax,[0x1495]
0000156A  F7269914          mul word [0x1499]
0000156E  D1C8              ror ax,1
00001570  D1C8              ror ax,1
00001572  A39714            mov [0x1497],ax
00001575  E83200            call word 0x15aa
00001578  FF069514          inc word [0x1495]
0000157C  B85802            mov ax,0x258
0000157F  33D2              xor dx,dx
00001581  F7369914          div word [0x1499]
00001585  3B069514          cmp ax,[0x1495]
00001589  7FDC              jg 0x1567
0000158B  FF069914          inc word [0x1499]
0000158F  833E99140B        cmp word [0x1499],byte +0xb
00001594  7CCB              jl 0x1561
00001596  BD400B            mov bp,0xb40
00001599  E85BFE            call word 0x13f7
0000159C  E89EF2            call word 0x83d
0000159F  7206              jc 0x15a7
000015A1  07                pop es
000015A2  5A                pop dx
000015A3  59                pop cx
000015A4  5B                pop bx
000015A5  58                pop ax
000015A6  C3                ret
000015A7  F9                stc
000015A8  EBF7              jmp short 0x15a1
000015AA  B40C              mov ah,0xc
000015AC  8B0E9514          mov cx,[0x1495]
000015B0  8B169714          mov dx,[0x1497]
000015B4  B041              mov al,0x41
000015B6  CD10              int 0x10
000015B8  C3                ret
000015B9  53                push bx
000015BA  57                push di
000015BB  BE0300            mov si,0x3
000015BE  B80000            mov ax,0x0
000015C1  E8FCF2            call word 0x8c0
000015C4  B90C00            mov cx,0xc
000015C7  BBDF0E            mov bx,0xedf
000015CA  50                push ax
000015CB  B070              mov al,0x70
000015CD  CD87              int 0x87
000015CF  58                pop ax
000015D0  E844F7            call word 0xd17
000015D3  E2F2              loop 0x15c7
000015D5  8B161916          mov dx,[0x1619]
000015D9  B029              mov al,0x29
000015DB  EE                out dx,al
000015DC  5F                pop di
000015DD  5B                pop bx
000015DE  C3                ret
000015DF  0000              add [bx+si],al
000015E1  0000              add [bx+si],al
000015E3  0000              add [bx+si],al
000015E5  3F                aas
000015E6  0000              add [bx+si],al
000015E8  0000              add [bx+si],al
000015EA  0000              add [bx+si],al
000015EC  0000              add [bx+si],al
000015EE  0000              add [bx+si],al
000015F0  0000              add [bx+si],al
000015F2  0000              add [bx+si],al
000015F4  0000              add [bx+si],al
000015F6  0000              add [bx+si],al
000015F8  0000              add [bx+si],al
000015FA  07                pop es
000015FB  B803BA            mov ax,0xba03
000015FE  02BB03B4          add bh,[bp+di-0x4bfd]
00001602  0300              add ax,[bx+si]
00001604  B000              mov al,0x0
00001606  085000            or [bx+si+0x0],dl
00001609  01D8              add ax,bx
0000160B  03DA              add bx,dx
0000160D  03DB              add bx,bx
0000160F  03D4              add dx,sp
00001611  0300              add ax,[bx+si]
00001613  B80020            mov ax,0x2000
00001616  2800              sub [bx+si],al
00001618  0000              add [bx+si],al
0000161A  0000              add [bx+si],al
0000161C  0000              add [bx+si],al
0000161E  0000              add [bx+si],al
00001620  0000              add [bx+si],al
00001622  0000              add [bx+si],al
00001624  0000              add [bx+si],al
00001626  0000              add [bx+si],al
00001628  0000              add [bx+si],al
0000162A  0000              add [bx+si],al
0000162C  0080FC03          add [bx+si+0x3fc],al
00001630  742B              jz 0x165d
00001632  50                push ax
00001633  E80401            call word 0x173a
00001636  BEFA15            mov si,0x15fa
00001639  E8F500            call word 0x1731
0000163C  BB3000            mov bx,0x30
0000163F  E80401            call word 0x1746
00001642  BBE30C            mov bx,0xce3
00001645  891E440C          mov [0xc44],bx
00001649  BBC909            mov bx,0x9c9
0000164C  891E200C          mov [0xc20],bx
00001650  58                pop ax
00001651  C606291604        mov byte [0x1629],0x4
00001656  E8FFF5            call word 0xc58
00001659  E80101            call word 0x175d
0000165C  CB                retf
0000165D  C6062C1601        mov byte [0x162c],0x1
00001662  06                push es
00001663  52                push dx
00001664  E8F4F2            call word 0x95b
00001667  BAC203            mov dx,0x3c2
0000166A  B0A4              mov al,0xa4
0000166C  EE                out dx,al
0000166D  5A                pop dx
0000166E  B800B0            mov ax,0xb000
00001671  8EC0              mov es,ax
00001673  B85555            mov ax,0x5555
00001676  268A3EFF0F        mov bh,[es:0xfff]
0000167B  26A2FF0F          mov [es:0xfff],al
0000167F  26A0FF0F          mov al,[es:0xfff]
00001683  26883EFF0F        mov [es:0xfff],bh
00001688  50                push ax
00001689  E8EF00            call word 0x177b
0000168C  52                push dx
0000168D  E8CBF2            call word 0x95b
00001690  BAC203            mov dx,0x3c2
00001693  B023              mov al,0x23
00001695  EE                out dx,al
00001696  5A                pop dx
00001697  58                pop ax
00001698  07                pop es
00001699  3AE0              cmp ah,al
0000169B  7515              jnz 0x16b2
0000169D  803E2C1601        cmp byte [0x162c],0x1
000016A2  7405              jz 0x16a9
000016A4  E8F700            call word 0x179e
000016A7  7409              jz 0x16b2
000016A9  C6062C1600        mov byte [0x162c],0x0
000016AE  B80100            mov ax,0x1
000016B1  CB                retf
000016B2  C6062C1600        mov byte [0x162c],0x0
000016B7  33C0              xor ax,ax
000016B9  CB                retf
000016BA  80FC03            cmp ah,0x3
000016BD  7511              jnz 0x16d0
000016BF  06                push es
000016C0  52                push dx
000016C1  E897F2            call word 0x95b
000016C4  BAC203            mov dx,0x3c2
000016C7  B021              mov al,0x21
000016C9  EE                out dx,al
000016CA  5A                pop dx
000016CB  B800B8            mov ax,0xb800
000016CE  EBA1              jmp short 0x1671
000016D0  50                push ax
000016D1  53                push bx
000016D2  51                push cx
000016D3  52                push dx
000016D4  BB9C00            mov bx,0x9c
000016D7  B401              mov ah,0x1
000016D9  CD82              int 0x82
000016DB  B005              mov al,0x5
000016DD  CD8D              int 0x8d
000016DF  CD8E              int 0x8e
000016E1  75FC              jnz 0x16df
000016E3  5A                pop dx
000016E4  59                pop cx
000016E5  5B                pop bx
000016E6  58                pop ax
000016E7  50                push ax
000016E8  E84F00            call word 0x173a
000016EB  BE0916            mov si,0x1609
000016EE  E84000            call word 0x1731
000016F1  803EF51507        cmp byte [0x15f5],0x7
000016F6  7411              jz 0x1709
000016F8  803EF51502        cmp byte [0x15f5],0x2
000016FD  720A              jc 0x1709
000016FF  C606181603        mov byte [0x1618],0x3
00001704  C606251650        mov byte [0x1625],0x50
00001709  BB1000            mov bx,0x10
0000170C  E83700            call word 0x1746
0000170F  BB7509            mov bx,0x975
00001712  891E440C          mov [0xc44],bx
00001716  BBF10A            mov bx,0xaf1
00001719  891E280C          mov [0xc28],bx
0000171D  BBC909            mov bx,0x9c9
00001720  891E200C          mov [0xc20],bx
00001724  C606291605        mov byte [0x1629],0x5
00001729  58                pop ax
0000172A  E82BF5            call word 0xc58
0000172D  E82D00            call word 0x175d
00001730  CB                retf
00001731  BF1816            mov di,0x1618
00001734  B90F00            mov cx,0xf
00001737  F3A4              rep movsb
00001739  C3                ret
0000173A  B40F              mov ah,0xf
0000173C  CD84              int 0x84
0000173E  A2F515            mov [0x15f5],al
00001741  8826F615          mov [0x15f6],ah
00001745  C3                ret
00001746  1E                push ds
00001747  B84000            mov ax,0x40
0000174A  8ED8              mov ds,ax
0000174C  A11000            mov ax,[0x10]
0000174F  2EA3F715          mov [cs:0x15f7],ax
00001753  25CFFF            and ax,0xffcf
00001756  0BC3              or ax,bx
00001758  A31000            mov [0x10],ax
0000175B  1F                pop ds
0000175C  C3                ret
0000175D  50                push ax
0000175E  53                push bx
0000175F  1E                push ds
00001760  B84000            mov ax,0x40
00001763  8ED8              mov ds,ax
00001765  2EA1F715          mov ax,[cs:0x15f7]
00001769  A31000            mov [0x10],ax
0000176C  1F                pop ds
0000176D  B007              mov al,0x7
0000176F  CD87              int 0x87
00001771  B400              mov ah,0x0
00001773  A0F515            mov al,[0x15f5]
00001776  CD84              int 0x84
00001778  5B                pop bx
00001779  58                pop ax
0000177A  C3                ret
0000177B  1E                push ds
0000177C  16                push ss
0000177D  B84000            mov ax,0x40
00001780  8ED8              mov ds,ax
00001782  E80600            call word 0x178b
00001785  E80600            call word 0x178e
00001788  17                pop ss
00001789  1F                pop ds
0000178A  C3                ret
0000178B  B703              mov bh,0x3
0000178D  C3                ret
0000178E  B703              mov bh,0x3
00001790  8AE7              mov ah,bh
00001792  80E401            and ah,0x1
00001795  80C401            add ah,0x1
00001798  A08700            mov al,[0x87]
0000179B  22C4              and al,ah
0000179D  C3                ret
0000179E  50                push ax
0000179F  52                push dx
000017A0  53                push bx
000017A1  BA00C6            mov dx,0xc600
000017A4  8EC2              mov es,dx
000017A6  BBD403            mov bx,0x3d4
000017A9  268A27            mov ah,[es:bx]
000017AC  26C60728          mov byte [es:bx],0x28
000017B0  BAD403            mov dx,0x3d4
000017B3  EC                in al,dx
000017B4  268827            mov [es:bx],ah
000017B7  5B                pop bx
000017B8  5A                pop dx
000017B9  3C28              cmp al,0x28
000017BB  58                pop ax
000017BC  C3                ret
000017BD  90                nop
000017BE  F8                clc
000017BF  C3                ret
000017C0  1A23              sbb ah,[bp+di]
000017C2  2323              and sp,[bp+di]
000017C4  40                inc ax
000017C5  40                inc ax
000017C6  40                inc ax
000017C7  204550            and [di+0x50],al
000017CA  43                inc bx
000017CB  204452            and [si+0x52],al
000017CE  314144            xor [bx+di+0x44],ax
000017D1  47                inc di
000017D2  3220              xor ah,[bx+si]
000017D4  56                push si
000017D5  312E3031          xor [0x3130],bp
000017D9  2031              and [bx+di],dh
000017DB  3331              xor si,[bx+di]
000017DD  3238              xor bh,[bx+si]
000017DF  380D              cmp [di],cl
000017E1  0A1A              or bl,[bp+si]
000017E3  00                db 0x00
