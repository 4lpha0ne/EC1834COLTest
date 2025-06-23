00000000  53                push bx
00000001  1E                push ds
00000002  06                push es
00000003  8B362316          mov si,[0x1623]
00000007  A12116            mov ax,[0x1621]
0000000A  8ED8              mov ds,ax
0000000C  8EC0              mov es,ax
0000000E  BBAAAA            mov bx,0xaaaa
00000011  8BC3              mov ax,bx
00000013  35FFFF            xor ax,0xffff
00000016  8AD3              mov dl,bl
00000018  8BCE              mov cx,si
0000001A  33FF              xor di,di
0000001C  FC                cld
0000001D  F3AB              rep stosw
0000001F  4F                dec di
00000020  4F                dec di
00000021  FD                std
00000022  E81D00            call word 0x42
00000025  33FF              xor di,di
00000027  FC                cld
00000028  E81700            call word 0x42
0000002B  3AC2              cmp al,dl
0000002D  93                xchg ax,bx
0000002E  75E8              jnz 0x18
00000030  0BDB              or bx,bx
00000032  7404              jz 0x38
00000034  33DB              xor bx,bx
00000036  EBD9              jmp short 0x11
00000038  F8                clc
00000039  FC                cld
0000003A  07                pop es
0000003B  1F                pop ds
0000003C  5B                pop bx
0000003D  C3                ret
0000003E  5B                pop bx
0000003F  F9                stc
00000040  EBF7              jmp short 0x39
00000042  8BCE              mov cx,si
00000044  93                xchg ax,bx
00000045  3B1D              cmp bx,[di]
00000047  AB                stosw
00000048  E1FB              loope 0x45
0000004A  E302              jcxz 0x4e
0000004C  EBF0              jmp short 0x3e
0000004E  C3                ret
0000004F  2122              and [bp+si],sp
00000051  292A              sub [bp+si],bp
00000053  0204              add al,[si]
00000055  0400              add al,0x0
00000057  FF                db 0xff
00000058  3F                aas
00000059  40                inc ax
0000005A  0D4269            or ax,0x6942
0000005D  7474              jz 0xd3
0000005F  65207761          and [gs:bx+0x61],dh
00000063  7274              jc 0xd9
00000065  656E              gs outsb
00000067  203A              and [bp+si],bh
00000069  42                inc dx
0000006A  696C647769        imul bp,[si+0x64],word 0x6977
0000006F  6564657268        gs jc 0xdc
00000074  6F                outsw
00000075  6C                insb
00000076  7370              jnc 0xe8
00000078  656963686572      imul sp,[gs:bp+di+0x68],word 0x7265
0000007E  7465              jz 0xe5
00000080  7374              jnc 0xf6
00000082  206461            and [si+0x61],ah
00000085  7565              jnz 0xec
00000087  7274              jc 0xfd
00000089  206361            and [bp+di+0x61],ah
0000008C  2E2032            and [cs:bp+si],dh
0000008F  352053            xor ax,0x5320
00000092  656B756E64        imul si,[gs:di+0x6e],byte +0x64
00000097  656E              gs outsb
00000099  0DF850            or ax,0x50f8
0000009C  53                push bx
0000009D  51                push cx
0000009E  52                push dx
0000009F  803E291604        cmp byte [0x1629],0x4
000000A4  7503              jnz 0xa9
000000A6  E9D601            jmp word 0x27f
000000A9  B002              mov al,0x2
000000AB  A29600            mov [0x96],al
000000AE  B004              mov al,0x4
000000B0  A29700            mov [0x97],al
000000B3  B80400            mov ax,0x4
000000B6  A39800            mov [0x98],ax
000000B9  B8FF3F            mov ax,0x3fff
000000BC  A39A00            mov [0x9a],ax
000000BF  B40F              mov ah,0xf
000000C1  CD84              int 0x84
000000C3  A2F915            mov [0x15f9],al
000000C6  B80800            mov ax,0x8
000000C9  CD10              int 0x10
000000CB  E81E01            call word 0x1ec
000000CE  B80FD2            mov ax,0xd20f
000000D1  E81101            call word 0x1e5
000000D4  B814D0            mov ax,0xd014
000000D7  E80B01            call word 0x1e5
000000DA  8B163311          mov dx,[0x1133]
000000DE  B001              mov al,0x1
000000E0  EE                out dx,al
000000E1  BDAAAA            mov bp,0xaaaa
000000E4  BE9200            mov si,0x92
000000E7  E81A01            call word 0x204
000000EA  BADE03            mov dx,0x3de
000000ED  8A04              mov al,[si]
000000EF  EE                out dx,al
000000F0  8B0E9800          mov cx,[0x98]
000000F4  D1E1              shl cx,1
000000F6  90                nop
000000F7  90                nop
000000F8  B849D2            mov ax,0xd249
000000FB  E8E700            call word 0x1e5
000000FE  B800D0            mov ax,0xd000
00000101  E8E100            call word 0x1e5
00000104  E8DE00            call word 0x1e5
00000107  B84AD2            mov ax,0xd24a
0000010A  E8D800            call word 0x1e5
0000010D  B8FFD0            mov ax,0xd0ff
00000110  E8D200            call word 0x1e5
00000113  E8CF00            call word 0x1e5
00000116  E8D300            call word 0x1ec
00000119  B84CD2            mov ax,0xd24c
0000011C  E8C600            call word 0x1e5
0000011F  B802D0            mov ax,0xd002
00000122  E8C000            call word 0x1e5
00000125  B8FFD0            mov ax,0xd0ff
00000128  E8BA00            call word 0x1e5
0000012B  B83FD0            mov ax,0xd03f
0000012E  E8B400            call word 0x1e5
00000131  B4D2              mov ah,0xd2
00000133  A09700            mov al,[0x97]
00000136  A801              test al,0x1
00000138  B030              mov al,0x30
0000013A  7402              jz 0x13e
0000013C  3418              xor al,0x18
0000013E  E8A400            call word 0x1e5
00000141  8BC5              mov ax,bp
00000143  B4D0              mov ah,0xd0
00000145  E89D00            call word 0x1e5
00000148  E89A00            call word 0x1e5
0000014B  E2C9              loop 0x116
0000014D  8B1E9800          mov bx,[0x98]
00000151  B849D2            mov ax,0xd249
00000154  E88E00            call word 0x1e5
00000157  B800D0            mov ax,0xd000
0000015A  E88800            call word 0x1e5
0000015D  E88500            call word 0x1e5
00000160  B84AD2            mov ax,0xd24a
00000163  E87F00            call word 0x1e5
00000166  B8FFD0            mov ax,0xd0ff
00000169  E87900            call word 0x1e5
0000016C  E87600            call word 0x1e5
0000016F  E87A00            call word 0x1ec
00000172  B84CD2            mov ax,0xd24c
00000175  E86D00            call word 0x1e5
00000178  B802D0            mov ax,0xd002
0000017B  E86700            call word 0x1e5
0000017E  B8FFD0            mov ax,0xd0ff
00000181  E86100            call word 0x1e5
00000184  B83FD0            mov ax,0xd03f
00000187  E85B00            call word 0x1e5
0000018A  B4D2              mov ah,0xd2
0000018C  A09700            mov al,[0x97]
0000018F  A801              test al,0x1
00000191  B0B0              mov al,0xb0
00000193  7402              jz 0x197
00000195  0408              add al,0x8
00000197  E84B00            call word 0x1e5
0000019A  8B0E9A00          mov cx,[0x9a]
0000019E  8BC5              mov ax,bp
000001A0  E83600            call word 0x1d9
000001A3  32E0              xor ah,al
000001A5  7403              jz 0x1aa
000001A7  E9CD00            jmp word 0x277
000001AA  E2F2              loop 0x19e
000001AC  FECB              dec bl
000001AE  75BF              jnz 0x16f
000001B0  46                inc si
000001B1  A09700            mov al,[0x97]
000001B4  FEC8              dec al
000001B6  A29700            mov [0x97],al
000001B9  7403              jz 0x1be
000001BB  E929FF            jmp word 0xe7
000001BE  B004              mov al,0x4
000001C0  A29700            mov [0x97],al
000001C3  8BC5              mov ax,bp
000001C5  F7D0              not ax
000001C7  8BE8              mov bp,ax
000001C9  A09600            mov al,[0x96]
000001CC  FEC8              dec al
000001CE  A29600            mov [0x96],al
000001D1  7403              jz 0x1d6
000001D3  E90EFF            jmp word 0xe4
000001D6  E99F00            jmp word 0x278
000001D9  BAD003            mov dx,0x3d0
000001DC  EC                in al,dx
000001DD  A801              test al,0x1
000001DF  74FB              jz 0x1dc
000001E1  42                inc dx
000001E2  42                inc dx
000001E3  EC                in al,dx
000001E4  C3                ret
000001E5  BAD003            mov dx,0x3d0
000001E8  8AD4              mov dl,ah
000001EA  EE                out dx,al
000001EB  C3                ret
000001EC  BAD003            mov dx,0x3d0
000001EF  EC                in al,dx
000001F0  A804              test al,0x4
000001F2  74FB              jz 0x1ef
000001F4  C3                ret
000001F5  BAD003            mov dx,0x3d0
000001F8  B404              mov ah,0x4
000001FA  EC                in al,dx
000001FB  A808              test al,0x8
000001FD  75FB              jnz 0x1fa
000001FF  FECC              dec ah
00000201  75F7              jnz 0x1fa
00000203  C3                ret
00000204  BADE03            mov dx,0x3de
00000207  B02F              mov al,0x2f
00000209  EE                out dx,al
0000020A  B90800            mov cx,0x8
0000020D  E8DCFF            call word 0x1ec
00000210  B80FD2            mov ax,0xd20f
00000213  E8CFFF            call word 0x1e5
00000216  B804D0            mov ax,0xd004
00000219  E8C9FF            call word 0x1e5
0000021C  B849D2            mov ax,0xd249
0000021F  E8C3FF            call word 0x1e5
00000222  B800D0            mov ax,0xd000
00000225  E8BDFF            call word 0x1e5
00000228  E8BAFF            call word 0x1e5
0000022B  B84AD2            mov ax,0xd24a
0000022E  E8B4FF            call word 0x1e5
00000231  B8FFD0            mov ax,0xd0ff
00000234  E8AEFF            call word 0x1e5
00000237  E8ABFF            call word 0x1e5
0000023A  E8AFFF            call word 0x1ec
0000023D  B84CD2            mov ax,0xd24c
00000240  E8A2FF            call word 0x1e5
00000243  B802D0            mov ax,0xd002
00000246  E89CFF            call word 0x1e5
00000249  B8FFD0            mov ax,0xd0ff
0000024C  E896FF            call word 0x1e5
0000024F  B83FD0            mov ax,0xd03f
00000252  E890FF            call word 0x1e5
00000255  B4D2              mov ah,0xd2
00000257  B020              mov al,0x20
00000259  E889FF            call word 0x1e5
0000025C  B800D0            mov ax,0xd000
0000025F  E883FF            call word 0x1e5
00000262  E880FF            call word 0x1e5
00000265  E2D3              loop 0x23a
00000267  E88BFF            call word 0x1f5
0000026A  B80FD2            mov ax,0xd20f
0000026D  E875FF            call word 0x1e5
00000270  B814D0            mov ax,0xd014
00000273  E86FFF            call word 0x1e5
00000276  C3                ret
00000277  F9                stc
00000278  B400              mov ah,0x0
0000027A  A0F915            mov al,[0x15f9]
0000027D  CD84              int 0x84
0000027F  8B163311          mov dx,[0x1133]
00000283  B009              mov al,0x9
00000285  EE                out dx,al
00000286  5A                pop dx
00000287  59                pop cx
00000288  5B                pop bx
00000289  58                pop ax
0000028A  C3                ret
0000028B  50                push ax
0000028C  53                push bx
0000028D  51                push cx
0000028E  E8F800            call word 0x389
00000291  B300              mov bl,0x0
00000293  E89600            call word 0x32c
00000296  D0D3              rcl bl,1
00000298  F6C301            test bl,0x1
0000029B  7416              jz 0x2b3
0000029D  BE5E0B            mov si,0xb5e
000002A0  8B3E360C          mov di,[0xc36]
000002A4  B92800            mov cx,0x28
000002A7  F3A4              rep movsb
000002A9  8306360C28        add word [0xc36],byte +0x28
000002AE  8006C90928        add byte [0x9c9],0x28
000002B3  E84AFD            call word 0x0
000002B6  D0D3              rcl bl,1
000002B8  F6C301            test bl,0x1
000002BB  7416              jz 0x2d3
000002BD  BE860B            mov si,0xb86
000002C0  8B3E360C          mov di,[0xc36]
000002C4  B92800            mov cx,0x28
000002C7  F3A4              rep movsb
000002C9  8306360C28        add word [0xc36],byte +0x28
000002CE  8006C90928        add byte [0x9c9],0x28
000002D3  E8C4FD            call word 0x9a
000002D6  D0D3              rcl bl,1
000002D8  F6C301            test bl,0x1
000002DB  7416              jz 0x2f3
000002DD  BEAE0B            mov si,0xbae
000002E0  8B3E360C          mov di,[0xc36]
000002E4  B92800            mov cx,0x28
000002E7  F3A4              rep movsb
000002E9  8306360C28        add word [0xc36],byte +0x28
000002EE  8006C90928        add byte [0x9c9],0x28
000002F3  E88012            call word 0x1576
000002F6  D0D3              rcl bl,1
000002F8  F6C301            test bl,0x1
000002FB  7416              jz 0x313
000002FD  BED60B            mov si,0xbd6
00000300  8B3E360C          mov di,[0xc36]
00000304  B92800            mov cx,0x28
00000307  F3A4              rep movsb
00000309  8306360C28        add word [0xc36],byte +0x28
0000030E  8006C90928        add byte [0x9c9],0x28
00000313  80FB00            cmp bl,0x0
00000316  740A              jz 0x322
00000318  800E380D01        or byte [0xd38],0x1
0000031D  FE06370D          inc byte [0xd37]
00000321  F9                stc
00000322  59                pop cx
00000323  5B                pop bx
00000324  58                pop ax
00000325  C3                ret
00000326  06                push es
00000327  07                pop es
00000328  100C              adc [si],cl
0000032A  1D1753            sbb ax,0x5317
0000032D  BA0000            mov dx,0x0
00000330  B91000            mov cx,0x10
00000333  BBFF7F            mov bx,0x7fff
00000336  8BC3              mov ax,bx
00000338  33C2              xor ax,dx
0000033A  25FF3F            and ax,0x3fff
0000033D  8BF8              mov di,ax
0000033F  E82F00            call word 0x371
00000342  E81800            call word 0x35d
00000345  25FF3F            and ax,0x3fff
00000348  3BC7              cmp ax,di
0000034A  750E              jnz 0x35a
0000034C  D1C3              rol bx,1
0000034E  E2E6              loop 0x336
00000350  80FAFF            cmp dl,0xff
00000353  7406              jz 0x35b
00000355  BAFFFF            mov dx,0xffff
00000358  EBD6              jmp short 0x330
0000035A  F9                stc
0000035B  5B                pop bx
0000035C  C3                ret
0000035D  52                push dx
0000035E  8B161F16          mov dx,[0x161f]
00000362  B00E              mov al,0xe
00000364  EE                out dx,al
00000365  42                inc dx
00000366  EC                in al,dx
00000367  8AE0              mov ah,al
00000369  4A                dec dx
0000036A  B00F              mov al,0xf
0000036C  EE                out dx,al
0000036D  42                inc dx
0000036E  EC                in al,dx
0000036F  5A                pop dx
00000370  C3                ret
00000371  50                push ax
00000372  52                push dx
00000373  50                push ax
00000374  8B161F16          mov dx,[0x161f]
00000378  B00E              mov al,0xe
0000037A  EE                out dx,al
0000037B  42                inc dx
0000037C  8AC4              mov al,ah
0000037E  EE                out dx,al
0000037F  4A                dec dx
00000380  B00F              mov al,0xf
00000382  EE                out dx,al
00000383  42                inc dx
00000384  58                pop ax
00000385  EE                out dx,al
00000386  5A                pop dx
00000387  58                pop ax
00000388  C3                ret
00000389  B400              mov ah,0x0
0000038B  B003              mov al,0x3
0000038D  CD84              int 0x84
0000038F  8B161916          mov dx,[0x1619]
00000393  B001              mov al,0x1
00000395  EE                out dx,al
00000396  C3                ret
00000397  100D              adc [di],cl
00000399  5A                pop dx
0000039A  45                inc bp
0000039B  49                dec cx
0000039C  43                inc bx
0000039D  48                dec ax
0000039E  45                inc bp
0000039F  4E                dec si
000003A0  53                push bx
000003A1  41                inc cx
000003A2  54                push sp
000003A3  5A                pop dx
000003A4  2031              and [bx+di],dh
000003A6  0D0D10            or ax,0x100d
000003A9  0D5A45            or ax,0x455a
000003AC  49                dec cx
000003AD  43                inc bx
000003AE  48                dec ax
000003AF  45                inc bp
000003B0  4E                dec si
000003B1  53                push bx
000003B2  41                inc cx
000003B3  54                push sp
000003B4  5A                pop dx
000003B5  2032              and [bp+si],dh
000003B7  0D0D20            or ax,0x200d
000003BA  0D4953            or ax,0x5349
000003BD  54                push sp
000003BE  204449            and [si+0x49],al
000003C1  45                inc bp
000003C2  20414E            and [bx+di+0x4e],al
000003C5  5A                pop dx
000003C6  45                inc bp
000003C7  49                dec cx
000003C8  47                inc di
000003C9  45                inc bp
000003CA  205249            and [bp+si+0x49],dl
000003CD  43                inc bx
000003CE  48                dec ax
000003CF  54                push sp
000003D0  49                dec cx
000003D1  47                inc di
000003D2  3F                aas
000003D3  2028              and [bx+si],ch
000003D5  4A                dec dx
000003D6  2F                das
000003D7  4E                dec si
000003D8  2920              sub [bx+si],sp
000003DA  010D              add [di],cx
000003DC  0100              add [bx+si],ax
000003DE  320D              xor cl,[di]
000003E0  54                push sp
000003E1  45                inc bp
000003E2  53                push bx
000003E3  54                push sp
000003E4  204445            and [si+0x45],al
000003E7  53                push bx
000003E8  204641            and [bp+0x41],al
000003EB  52                push dx
000003EC  42                inc dx
000003ED  2F                das
000003EE  47                inc di
000003EF  52                push dx
000003F0  41                inc cx
000003F1  46                inc si
000003F2  49                dec cx
000003F3  4B                dec bx
000003F4  2D4144            sub ax,0x4441
000003F7  41                inc cx
000003F8  50                push ax
000003F9  54                push sp
000003FA  45                inc bp
000003FB  52                push dx
000003FC  53                push bx
000003FD  204441            and [si+0x41],al
00000400  55                push bp
00000401  45                inc bp
00000402  52                push dx
00000403  54                push sp
00000404  204554            and [di+0x54],al
00000407  57                push di
00000408  41                inc cx
00000409  2031              and [bx+di],dh
0000040B  3020              xor [bx+si],ah
0000040D  4D                dec bp
0000040E  49                dec cx
0000040F  4E                dec si
00000410  2E140D            cs adc al,0xd
00000413  41                inc cx
00000414  4E                dec si
00000415  5A                pop dx
00000416  45                inc bp
00000417  49                dec cx
00000418  47                inc di
00000419  45                inc bp
0000041A  41                inc cx
0000041B  54                push sp
0000041C  54                push sp
0000041D  52                push dx
0000041E  49                dec cx
0000041F  42                inc dx
00000420  55                push bp
00000421  54                push sp
00000422  45                inc bp
00000423  200D              and [di],cl
00000425  0D040D            or ax,0xd04
00000428  DC                db 0xdc
00000429  DC                db 0xdc
0000042A  DC03              fadd qword [bp+di]
0000042C  DC                db 0xdc
0000042D  DC                db 0xdc
0000042E  DC03              fadd qword [bp+di]
00000430  2020              and [bx+si],ah
00000432  20062052          and [0x5220],al
00000436  4F                dec di
00000437  54                push sp
00000438  200D              and [di],cl
0000043A  0820              or [bx+si],ah
0000043C  47                inc di
0000043D  52                push dx
0000043E  55                push bp
0000043F  45                inc bp
00000440  4E                dec si
00000441  200D              and [di],cl
00000443  07                pop es
00000444  20424C            and [bp+si+0x4c],al
00000447  41                inc cx
00000448  55                push bp
00000449  200D              and [di],cl
0000044B  07                pop es
0000044C  204752            and [bx+0x52],al
0000044F  41                inc cx
00000450  55                push bp
00000451  200D              and [di],cl
00000453  110D              adc [di],cx
00000455  44                inc sp
00000456  49                dec cx
00000457  45                inc bp
00000458  53                push bx
00000459  45                inc bp
0000045A  205A45            and [bp+si+0x45],bl
0000045D  49                dec cx
0000045E  4C                dec sp
0000045F  45                inc bp
00000460  204953            and [bx+di+0x53],cl
00000463  54                push sp
00000464  2011              and [bx+di],dl
00000466  49                dec cx
00000467  4E                dec si
00000468  204E4F            and [bp+0x4f],cl
0000046B  52                push dx
0000046C  4D                dec bp
0000046D  41                inc cx
0000046E  4C                dec sp
0000046F  41                inc cx
00000470  4E                dec si
00000471  5A                pop dx
00000472  45                inc bp
00000473  49                dec cx
00000474  47                inc di
00000475  45                inc bp
00000476  2E13494E          adc cx,[cs:bx+di+0x4e]
0000047A  54                push sp
0000047B  45                inc bp
0000047C  4E                dec si
0000047D  53                push bx
0000047E  49                dec cx
0000047F  56                push si
00000480  20414E            and [bx+di+0x4e],al
00000483  47                inc di
00000484  45                inc bp
00000485  5A                pop dx
00000486  45                inc bp
00000487  49                dec cx
00000488  47                inc di
00000489  54                push sp
0000048A  2E11494E          adc [cs:bx+di+0x4e],cx
0000048E  20554D            and [di+0x4d],dl
00000491  4B                dec bx
00000492  45                inc bp
00000493  48                dec ax
00000494  52                push dx
00000495  41                inc cx
00000496  4E                dec si
00000497  5A                pop dx
00000498  45                inc bp
00000499  49                dec cx
0000049A  47                inc di
0000049B  45                inc bp
0000049C  2E09424C          or [cs:bp+si+0x4c],ax
000004A0  49                dec cx
000004A1  4E                dec si
000004A2  4B                dec bx
000004A3  45                inc bp
000004A4  4E                dec si
000004A5  44                inc sp
000004A6  2E104E49          adc [cs:bp+0x49],cl
000004AA  43                inc bx
000004AB  48                dec ax
000004AC  54                push sp
000004AD  20414E            and [bx+di+0x4e],al
000004B0  47                inc di
000004B1  45                inc bp
000004B2  5A                pop dx
000004B3  45                inc bp
000004B4  49                dec cx
000004B5  47                inc di
000004B6  54                push sp
000004B7  2E0E              cs push cs
000004B9  55                push bp
000004BA  4E                dec si
000004BB  54                push sp
000004BC  45                inc bp
000004BD  52                push dx
000004BE  53                push bx
000004BF  54                push sp
000004C0  52                push dx
000004C1  49                dec cx
000004C2  43                inc bx
000004C3  48                dec ax
000004C4  45                inc bp
000004C5  4E                dec si
000004C6  2E052042          cs add ax,0x4220
000004CA  4C                dec sp
000004CB  41                inc cx
000004CC  55                push bp
000004CD  06                push es
000004CE  204752            and [bx+0x52],al
000004D1  55                push bp
000004D2  45                inc bp
000004D3  4E                dec si
000004D4  0B20              or sp,[bx+si]
000004D6  4B                dec bx
000004D7  4F                dec di
000004D8  42                inc dx
000004D9  41                inc cx
000004DA  4C                dec sp
000004DB  54                push sp
000004DC  42                inc dx
000004DD  4C                dec sp
000004DE  41                inc cx
000004DF  55                push bp
000004E0  0420              add al,0x20
000004E2  52                push dx
000004E3  4F                dec di
000004E4  54                push sp
000004E5  0820              or [bx+si],ah
000004E7  56                push si
000004E8  49                dec cx
000004E9  4F                dec di
000004EA  4C                dec sp
000004EB  45                inc bp
000004EC  54                push sp
000004ED  54                push sp
000004EE  052047            add ax,0x4720
000004F1  45                inc bp
000004F2  4C                dec sp
000004F3  42                inc dx
000004F4  1020              adc [bx+si],ah
000004F6  57                push di
000004F7  45                inc bp
000004F8  49                dec cx
000004F9  53                push bx
000004FA  53                push bx
000004FB  2F                das
000004FC  49                dec cx
000004FD  4E                dec si
000004FE  54                push sp
000004FF  45                inc bp
00000500  4E                dec si
00000501  53                push bx
00000502  49                dec cx
00000503  56                push si
00000504  2010              and [bx+si],dl
00000506  20494E            and [bx+di+0x4e],cl
00000509  54                push sp
0000050A  45                inc bp
0000050B  4E                dec si
0000050C  53                push bx
0000050D  49                dec cx
0000050E  56                push si
0000050F  205745            and [bx+0x45],dl
00000512  49                dec cx
00000513  53                push bx
00000514  53                push bx
00000515  2007              and [bx],al
00000517  204252            and [bp+si+0x52],al
0000051A  41                inc cx
0000051B  55                push bp
0000051C  4E                dec si
0000051D  20700D            and [bx+si+0xd],dh
00000520  0D0D0D            or ax,0xd0d
00000523  0D0D31            or ax,0x310d
00000526  2D2D2D            sub ax,0x2d2d
00000529  2D2D2D            sub ax,0x2d2d
0000052C  2D2D2D            sub ax,0x2d2d
0000052F  2D2D2D            sub ax,0x2d2d
00000532  2D2D2D            sub ax,0x2d2d
00000535  2D2D2D            sub ax,0x2d2d
00000538  2D2D2D            sub ax,0x2d2d
0000053B  2D2D2D            sub ax,0x2d2d
0000053E  2D2D2D            sub ax,0x2d2d
00000541  2D2D2D            sub ax,0x2d2d
00000544  2D2D2D            sub ax,0x2d2d
00000547  2D2D2D            sub ax,0x2d2d
0000054A  2D3430            sub ax,0x3034
0000054D  0D0D0D            or ax,0xd0d
00000550  0D0D0D            or ax,0xd0d
00000553  45                inc bp
00000554  53                push bx
00000555  204455            and [si+0x55],al
00000558  45                inc bp
00000559  52                push dx
0000055A  46                inc si
0000055B  45                inc bp
0000055C  4E                dec si
0000055D  204E55            and [bp+0x55],cl
00000560  52                push dx
00000561  2034              and [si],dh
00000563  3020              xor [bx+si],ah
00000565  5A                pop dx
00000566  45                inc bp
00000567  49                dec cx
00000568  43                inc bx
00000569  48                dec ax
0000056A  45                inc bp
0000056B  4E                dec si
0000056C  53                push bx
0000056D  54                push sp
0000056E  45                inc bp
0000056F  4C                dec sp
00000570  4C                dec sp
00000571  45                inc bp
00000572  4E                dec si
00000573  0D5052            or ax,0x5250
00000576  4F                dec di
00000577  205A45            and [bp+si+0x45],bl
0000057A  49                dec cx
0000057B  4C                dec sp
0000057C  45                inc bp
0000057D  20414E            and [bx+di+0x4e],al
00000580  47                inc di
00000581  45                inc bp
00000582  5A                pop dx
00000583  45                inc bp
00000584  49                dec cx
00000585  47                inc di
00000586  54                push sp
00000587  205745            and [bx+0x45],dl
0000058A  52                push dx
0000058B  44                inc sp
0000058C  45                inc bp
0000058D  4E                dec si
0000058E  0D940D            or ax,0xd94
00000591  0D0D0D            or ax,0xd0d
00000594  0D0D31            or ax,0x310d
00000597  2D2D2D            sub ax,0x2d2d
0000059A  2D2D2D            sub ax,0x2d2d
0000059D  2D2D2D            sub ax,0x2d2d
000005A0  2D2D2D            sub ax,0x2d2d
000005A3  2D2D2D            sub ax,0x2d2d
000005A6  2D2D2D            sub ax,0x2d2d
000005A9  2D2D2D            sub ax,0x2d2d
000005AC  2D2D2D            sub ax,0x2d2d
000005AF  2D2D2D            sub ax,0x2d2d
000005B2  2D2D2D            sub ax,0x2d2d
000005B5  2D2D2D            sub ax,0x2d2d
000005B8  2D2D2D            sub ax,0x2d2d
000005BB  2D3430            sub ax,0x3034
000005BE  2D2D2D            sub ax,0x2d2d
000005C1  2D2D2D            sub ax,0x2d2d
000005C4  2D2D2D            sub ax,0x2d2d
000005C7  2D2D2D            sub ax,0x2d2d
000005CA  2D2D2D            sub ax,0x2d2d
000005CD  2D2D2D            sub ax,0x2d2d
000005D0  2D2D2D            sub ax,0x2d2d
000005D3  2D2D2D            sub ax,0x2d2d
000005D6  2D2D2D            sub ax,0x2d2d
000005D9  2D2D2D            sub ax,0x2d2d
000005DC  2D2D2D            sub ax,0x2d2d
000005DF  2D2D2D            sub ax,0x2d2d
000005E2  2D2D38            sub ax,0x382d
000005E5  300D              xor [di],cl
000005E7  0D0D0D            or ax,0xd0d
000005EA  0D0D45            or ax,0x450d
000005ED  53                push bx
000005EE  20534F            and [bp+di+0x4f],dl
000005F1  4C                dec sp
000005F2  4C                dec sp
000005F3  54                push sp
000005F4  45                inc bp
000005F5  4E                dec si
000005F6  2038              and [bx+si],bh
000005F8  3020              xor [bx+si],ah
000005FA  5A                pop dx
000005FB  45                inc bp
000005FC  49                dec cx
000005FD  43                inc bx
000005FE  48                dec ax
000005FF  45                inc bp
00000600  4E                dec si
00000601  53                push bx
00000602  54                push sp
00000603  45                inc bp
00000604  4C                dec sp
00000605  4C                dec sp
00000606  45                inc bp
00000607  4E                dec si
00000608  0D5052            or ax,0x5250
0000060B  4F                dec di
0000060C  205A45            and [bp+si+0x45],bl
0000060F  49                dec cx
00000610  4C                dec sp
00000611  45                inc bp
00000612  20414E            and [bx+di+0x4e],al
00000615  47                inc di
00000616  45                inc bp
00000617  5A                pop dx
00000618  45                inc bp
00000619  49                dec cx
0000061A  47                inc di
0000061B  54                push sp
0000061C  205745            and [bx+0x45],dl
0000061F  52                push dx
00000620  44                inc sp
00000621  45                inc bp
00000622  4E                dec si
00000623  0D130D            or ax,0xd13
00000626  2034              and [si],dh
00000628  305832            xor [bx+si+0x32],bl
0000062B  352042            xor ax,0x4220
0000062E  49                dec cx
0000062F  4C                dec sp
00000630  44                inc sp
00000631  53                push bx
00000632  43                inc bx
00000633  48                dec ax
00000634  49                dec cx
00000635  52                push dx
00000636  4D                dec bp
00000637  0D130D            or ax,0xd13
0000063A  2038              and [bx+si],bh
0000063C  305832            xor [bx+si+0x32],bl
0000063F  352042            xor ax,0x4220
00000642  49                dec cx
00000643  4C                dec sp
00000644  44                inc sp
00000645  53                push bx
00000646  43                inc bx
00000647  48                dec ax
00000648  49                dec cx
00000649  52                push dx
0000064A  4D                dec bp
0000064B  0D070F            or ax,0xf07
0000064E  7000              jo 0x650
00000650  8701              xchg ax,[bx+di]
00000652  192A              sbb [bp+si],bp
00000654  3B4C5D            cmp cx,[si+0x5d]
00000657  6E                outsb
00000658  7FA8              jg 0x602
0000065A  04BA              add al,0xba
0000065C  04CE              add al,0xce
0000065E  04EA              add al,0xea
00000660  04E0              add al,0xe0
00000662  04FB              add al,0xfb
00000664  040A              add al,0xa
00000666  051005            add ax,0x510
00000669  17                pop ss
0000066A  052305            add ax,0x523
0000066D  2805              sub [di],al
0000066F  59                pop cx
00000670  053705            add ax,0x537
00000673  48                dec ax
00000674  057604            add ax,0x476
00000677  7D04              jnl 0x67d
00000679  8604              xchg al,[si]
0000067B  8E04              mov es,[si]
0000067D  0000              add [bx+si],al
0000067F  D205              rol byte [di],cl
00000681  61                popaw
00000682  050200            add ax,0x2
00000685  0000              add [bx+si],al
00000687  7B06              jpo 0x68f
00000689  6706              push es
0000068B  7070              jo 0x6fd
0000068D  07                pop es
0000068E  07                pop es
0000068F  0000              add [bx+si],al
00000691  1F                pop ds
00000692  1F                pop ds
00000693  0000              add [bx+si],al
00000695  0000              add [bx+si],al
00000697  50                push ax
00000698  53                push bx
00000699  51                push cx
0000069A  E82906            call word 0xcc6
0000069D  BBDA03            mov bx,0x3da
000006A0  E83E06            call word 0xce1
000006A3  B00F              mov al,0xf
000006A5  CD87              int 0x87
000006A7  B00C              mov al,0xc
000006A9  8B161916          mov dx,[0x1619]
000006AD  803E181602        cmp byte [0x1618],0x2
000006B2  7202              jc 0x6b6
000006B4  0C01              or al,0x1
000006B6  EE                out dx,al
000006B7  B90800            mov cx,0x8
000006BA  B000              mov al,0x0
000006BC  C6063A0C00        mov byte [0xc3a],0x0
000006C1  90                nop
000006C2  C6063B0C00        mov byte [0xc3b],0x0
000006C7  90                nop
000006C8  C606960A00        mov byte [0xa96],0x0
000006CD  90                nop
000006CE  C706380C970A      mov word [0xc38],0xa97
000006D4  E8F600            call word 0x7cd
000006D7  E87B01            call word 0x855
000006DA  E87801            call word 0x855
000006DD  0420              add al,0x20
000006DF  E2F3              loop 0x6d4
000006E1  8B0E2516          mov cx,[0x1625]
000006E5  D1E9              shr cx,1
000006E7  B0F0              mov al,0xf0
000006E9  CD87              int 0x87
000006EB  B020              mov al,0x20
000006ED  E83901            call word 0x829
000006F0  50                push ax
000006F1  B070              mov al,0x70
000006F3  CD87              int 0x87
000006F5  58                pop ax
000006F6  E83001            call word 0x829
000006F9  E2EC              loop 0x6e7
000006FB  E85701            call word 0x855
000006FE  E8F500            call word 0x7f6
00000701  731C              jnc 0x71f
00000703  BEBB0A            mov si,0xabb
00000706  8B3E380C          mov di,[0xc38]
0000070A  B91100            mov cx,0x11
0000070D  F3A4              rep movsb
0000070F  8306380C11        add word [0xc38],byte +0x11
00000714  8006960A11        add byte [0xa96],0x11
00000719  C6063A0C01        mov byte [0xc3a],0x1
0000071E  90                nop
0000071F  803E291605        cmp byte [0x1629],0x5
00000724  7504              jnz 0x72a
00000726  59                pop cx
00000727  5B                pop bx
00000728  58                pop ax
00000729  C3                ret
0000072A  1E                push ds
0000072B  B84000            mov ax,0x40
0000072E  8ED8              mov ds,ax
00000730  A1E500            mov ax,[0xe5]
00000733  351000            xor ax,0x10
00000736  A3E500            mov [0xe5],ax
00000739  1F                pop ds
0000073A  E88905            call word 0xcc6
0000073D  BBEB03            mov bx,0x3eb
00000740  E89E05            call word 0xce1
00000743  B00F              mov al,0xf
00000745  CD87              int 0x87
00000747  B00C              mov al,0xc
00000749  8B161916          mov dx,[0x1619]
0000074D  803E181602        cmp byte [0x1618],0x2
00000752  7202              jc 0x756
00000754  0C01              or al,0x1
00000756  EE                out dx,al
00000757  B90800            mov cx,0x8
0000075A  B000              mov al,0x0
0000075C  E86E00            call word 0x7cd
0000075F  E8F300            call word 0x855
00000762  E8F000            call word 0x855
00000765  0420              add al,0x20
00000767  E2F3              loop 0x75c
00000769  8B0E2516          mov cx,[0x1625]
0000076D  D1E9              shr cx,1
0000076F  B0F0              mov al,0xf0
00000771  CD87              int 0x87
00000773  B020              mov al,0x20
00000775  E8B100            call word 0x829
00000778  50                push ax
00000779  B070              mov al,0x70
0000077B  CD87              int 0x87
0000077D  58                pop ax
0000077E  E8A800            call word 0x829
00000781  E2EC              loop 0x76f
00000783  E8CF00            call word 0x855
00000786  E86D00            call word 0x7f6
00000789  731C              jnc 0x7a7
0000078B  BECD0A            mov si,0xacd
0000078E  8B3E380C          mov di,[0xc38]
00000792  B91100            mov cx,0x11
00000795  F3A4              rep movsb
00000797  8306380C11        add word [0xc38],byte +0x11
0000079C  8006960A11        add byte [0xa96],0x11
000007A1  C6063B0C01        mov byte [0xc3b],0x1
000007A6  90                nop
000007A7  1E                push ds
000007A8  B84000            mov ax,0x40
000007AB  8ED8              mov ds,ax
000007AD  A1E500            mov ax,[0xe5]
000007B0  351000            xor ax,0x10
000007B3  A3E500            mov [0xe5],ax
000007B6  1F                pop ds
000007B7  803E3A0C01        cmp byte [0xc3a],0x1
000007BC  7407              jz 0x7c5
000007BE  803E3B0C01        cmp byte [0xc3b],0x1
000007C3  7505              jnz 0x7ca
000007C5  F9                stc
000007C6  59                pop cx
000007C7  5B                pop bx
000007C8  58                pop ax
000007C9  C3                ret
000007CA  F8                clc
000007CB  EBF9              jmp short 0x7c6
000007CD  50                push ax
000007CE  51                push cx
000007CF  B90200            mov cx,0x2
000007D2  50                push ax
000007D3  B020              mov al,0x20
000007D5  E85100            call word 0x829
000007D8  58                pop ax
000007D9  E2F7              loop 0x7d2
000007DB  B92000            mov cx,0x20
000007DE  E84800            call word 0x829
000007E1  803E251650        cmp byte [0x1625],0x50
000007E6  7507              jnz 0x7ef
000007E8  50                push ax
000007E9  B020              mov al,0x20
000007EB  E83B00            call word 0x829
000007EE  58                pop ax
000007EF  FEC0              inc al
000007F1  E2EB              loop 0x7de
000007F3  59                pop cx
000007F4  58                pop ax
000007F5  C3                ret
000007F6  B007              mov al,0x7
000007F8  CD87              int 0x87
000007FA  90                nop
000007FB  36803E620241      cmp byte [ss:0x262],0x41
00000801  750B              jnz 0x80e
00000803  B005              mov al,0x5
00000805  CD8D              int 0x8d
00000807  CD8E              int 0x8e
00000809  75FC              jnz 0x807
0000080B  EB09              jmp short 0x816
0000080D  90                nop
0000080E  E80600            call word 0x817
00000811  E84C00            call word 0x860
00000814  75F8              jnz 0x80e
00000816  C3                ret
00000817  51                push cx
00000818  52                push dx
00000819  BA0015            mov dx,0x1500
0000081C  B402              mov ah,0x2
0000081E  CD84              int 0x84
00000820  BBFC03            mov bx,0x3fc
00000823  E8C104            call word 0xce7
00000826  5A                pop dx
00000827  59                pop cx
00000828  C3                ret
00000829  50                push ax
0000082A  257F00            and ax,0x7f
0000082D  3C20              cmp al,0x20
0000082F  58                pop ax
00000830  7209              jc 0x83b
00000832  BB1F04            mov bx,0x41f
00000835  A22004            mov [0x420],al
00000838  E99904            jmp word 0xcd4
0000083B  50                push ax
0000083C  51                push cx
0000083D  50                push ax
0000083E  CD8A              int 0x8a
00000840  8AF8              mov bh,al
00000842  B90100            mov cx,0x1
00000845  CD88              int 0x88
00000847  8AD8              mov bl,al
00000849  58                pop ax
0000084A  B409              mov ah,0x9
0000084C  CD84              int 0x84
0000084E  B020              mov al,0x20
00000850  CD86              int 0x86
00000852  59                pop cx
00000853  58                pop ax
00000854  C3                ret
00000855  50                push ax
00000856  53                push bx
00000857  BB1D04            mov bx,0x41d
0000085A  E87704            call word 0xcd4
0000085D  5B                pop bx
0000085E  58                pop ax
0000085F  C3                ret
00000860  53                push bx
00000861  51                push cx
00000862  56                push si
00000863  CD92              int 0x92
00000865  F8                clc
00000866  0BC9              or cx,cx
00000868  740F              jz 0x879
0000086A  36A01201          mov al,[ss:0x112]
0000086E  24DF              and al,0xdf
00000870  3C4A              cmp al,0x4a
00000872  7405              jz 0x879
00000874  3C4E              cmp al,0x4e
00000876  7501              jnz 0x879
00000878  F9                stc
00000879  5E                pop si
0000087A  59                pop cx
0000087B  5B                pop bx
0000087C  C3                ret
0000087D  51                push cx
0000087E  57                push di
0000087F  06                push es
00000880  8B0E2116          mov cx,[0x1621]
00000884  8EC1              mov es,cx
00000886  8B0E2316          mov cx,[0x1623]
0000088A  33FF              xor di,di
0000088C  F3AB              rep stosw
0000088E  07                pop es
0000088F  5F                pop di
00000890  59                pop cx
00000891  C3                ret
00000892  50                push ax
00000893  53                push bx
00000894  51                push cx
00000895  2EC606D90601      mov byte [cs:0x6d9],0x1
0000089B  E82804            call word 0xcc6
0000089E  B90600            mov cx,0x6
000008A1  BF1816            mov di,0x1618
000008A4  33F6              xor si,si
000008A6  803D07            cmp byte [di],0x7
000008A9  741B              jz 0x8c6
000008AB  B80100            mov ax,0x1
000008AE  CD84              int 0x84
000008B0  E8950E            call word 0x1748
000008B3  8AF7              mov dh,bh
000008B5  BADA03            mov dx,0x3da
000008B8  EC                in al,dx
000008B9  BAC003            mov dx,0x3c0
000008BC  B010              mov al,0x10
000008BE  EE                out dx,al
000008BF  B008              mov al,0x8
000008C1  EE                out dx,al
000008C2  B020              mov al,0x20
000008C4  EE                out dx,al
000008C5  49                dec cx
000008C6  BB5404            mov bx,0x454
000008C9  E81504            call word 0xce1
000008CC  8A848F06          mov al,[si+0x68f]
000008D0  CD87              int 0x87
000008D2  BB9604            mov bx,0x496
000008D5  E8FC03            call word 0xcd4
000008D8  D1E6              shl si,1
000008DA  8B9C9C06          mov bx,[si+0x69c]
000008DE  D1EE              shr si,1
000008E0  E8F103            call word 0xcd4
000008E3  46                inc si
000008E4  E2E6              loop 0x8cc
000008E6  803D07            cmp byte [di],0x7
000008E9  7422              jz 0x90d
000008EB  E867FF            call word 0x855
000008EE  B90700            mov cx,0x7
000008F1  33F6              xor si,si
000008F3  8A849506          mov al,[si+0x695]
000008F7  CD87              int 0x87
000008F9  BB6904            mov bx,0x469
000008FC  E8D503            call word 0xcd4
000008FF  D1E6              shl si,1
00000901  8B9CA806          mov bx,[si+0x6a8]
00000905  E8D903            call word 0xce1
00000908  D1EE              shr si,1
0000090A  46                inc si
0000090B  E2E6              loop 0x8f3
0000090D  90                nop
0000090E  E8E5FE            call word 0x7f6
00000911  7201              jc 0x914
00000913  F8                clc
00000914  59                pop cx
00000915  5B                pop bx
00000916  58                pop ax
00000917  C3                ret
00000918  50                push ax
00000919  16                push ss
0000091A  1E                push ds
0000091B  06                push es
0000091C  8CD8              mov ax,ds
0000091E  8EC0              mov es,ax
00000920  B84000            mov ax,0x40
00000923  8ED8              mov ds,ax
00000925  2BC0              sub ax,ax
00000927  A08800            mov al,[0x88]
0000092A  07                pop es
0000092B  1F                pop ds
0000092C  240F              and al,0xf
0000092E  17                pop ss
0000092F  58                pop ax
00000930  F8                clc
00000931  C3                ret
00000932  50                push ax
00000933  53                push bx
00000934  51                push cx
00000935  2D0600            sub ax,0x6
00000938  8BD8              mov bx,ax
0000093A  8A87C606          mov al,[bx+0x6c6]
0000093E  B400              mov ah,0x0
00000940  CD84              int 0x84
00000942  803E181607        cmp byte [0x1618],0x7
00000947  7408              jz 0x951
00000949  BAD903            mov dx,0x3d9
0000094C  8A87D206          mov al,[bx+0x6d2]
00000950  EE                out dx,al
00000951  A02516            mov al,[0x1625]
00000954  A2D606            mov [0x6d6],al
00000957  8A87CE06          mov al,[bx+0x6ce]
0000095B  CD87              int 0x87
0000095D  53                push bx
0000095E  8B9FCA06          mov bx,[bx+0x6ca]
00000962  E86F03            call word 0xcd4
00000965  5B                pop bx
00000966  B007              mov al,0x7
00000968  CD87              int 0x87
0000096A  8B9FC206          mov bx,[bx+0x6c2]
0000096E  E86303            call word 0xcd4
00000971  E882FE            call word 0x7f6
00000974  A0D606            mov al,[0x6d6]
00000977  A22516            mov [0x1625],al
0000097A  59                pop cx
0000097B  5B                pop bx
0000097C  58                pop ax
0000097D  C3                ret
0000097E  50                push ax
0000097F  53                push bx
00000980  51                push cx
00000981  F8                clc
00000982  59                pop cx
00000983  5B                pop bx
00000984  58                pop ax
00000985  C3                ret
00000986  BB2030            mov bx,0x3020
00000989  202D              and [di],ch
0000098B  204249            and [bp+si+0x49],al
0000098E  4C                dec sp
0000098F  44                inc sp
00000990  53                push bx
00000991  43                inc bx
00000992  48                dec ax
00000993  49                dec cx
00000994  52                push dx
00000995  4D                dec bp
00000996  41                inc cx
00000997  44                inc sp
00000998  41                inc cx
00000999  50                push ax
0000099A  54                push sp
0000099B  45                inc bp
0000099C  52                push dx
0000099D  54                push sp
0000099E  45                inc bp
0000099F  53                push bx
000009A0  54                push sp
000009A1  0D2020            or ax,0x2020
000009A4  2020              and [bx+si],ah
000009A6  2020              and [bx+si],ah
000009A8  2020              and [bx+si],ah
000009AA  2020              and [bx+si],ah
000009AC  2020              and [bx+si],ah
000009AE  2020              and [bx+si],ah
000009B0  2020              and [bx+si],ah
000009B2  2020              and [bx+si],ah
000009B4  2020              and [bx+si],ah
000009B6  2020              and [bx+si],ah
000009B8  2020              and [bx+si],ah
000009BA  2020              and [bx+si],ah
000009BC  2020              and [bx+si],ah
000009BE  2020              and [bx+si],ah
000009C0  2020              and [bx+si],ah
000009C2  2020              and [bx+si],ah
000009C4  2020              and [bx+si],ah
000009C6  2020              and [bx+si],ah
000009C8  2020              and [bx+si],ah
000009CA  2020              and [bx+si],ah
000009CC  2020              and [bx+si],ah
000009CE  2020              and [bx+si],ah
000009D0  2020              and [bx+si],ah
000009D2  2020              and [bx+si],ah
000009D4  2020              and [bx+si],ah
000009D6  2020              and [bx+si],ah
000009D8  2020              and [bx+si],ah
000009DA  2020              and [bx+si],ah
000009DC  2020              and [bx+si],ah
000009DE  2020              and [bx+si],ah
000009E0  2020              and [bx+si],ah
000009E2  2020              and [bx+si],ah
000009E4  2020              and [bx+si],ah
000009E6  2020              and [bx+si],ah
000009E8  2020              and [bx+si],ah
000009EA  2020              and [bx+si],ah
000009EC  2020              and [bx+si],ah
000009EE  2020              and [bx+si],ah
000009F0  2020              and [bx+si],ah
000009F2  2020              and [bx+si],ah
000009F4  2020              and [bx+si],ah
000009F6  2020              and [bx+si],ah
000009F8  2020              and [bx+si],ah
000009FA  2020              and [bx+si],ah
000009FC  2020              and [bx+si],ah
000009FE  2020              and [bx+si],ah
00000A00  2020              and [bx+si],ah
00000A02  2020              and [bx+si],ah
00000A04  2020              and [bx+si],ah
00000A06  2020              and [bx+si],ah
00000A08  2020              and [bx+si],ah
00000A0A  2020              and [bx+si],ah
00000A0C  2020              and [bx+si],ah
00000A0E  2020              and [bx+si],ah
00000A10  2020              and [bx+si],ah
00000A12  2020              and [bx+si],ah
00000A14  2020              and [bx+si],ah
00000A16  2020              and [bx+si],ah
00000A18  2020              and [bx+si],ah
00000A1A  2020              and [bx+si],ah
00000A1C  2020              and [bx+si],ah
00000A1E  2020              and [bx+si],ah
00000A20  2020              and [bx+si],ah
00000A22  2020              and [bx+si],ah
00000A24  2020              and [bx+si],ah
00000A26  2020              and [bx+si],ah
00000A28  2020              and [bx+si],ah
00000A2A  2020              and [bx+si],ah
00000A2C  2020              and [bx+si],ah
00000A2E  2020              and [bx+si],ah
00000A30  2020              and [bx+si],ah
00000A32  2020              and [bx+si],ah
00000A34  2020              and [bx+si],ah
00000A36  2020              and [bx+si],ah
00000A38  2020              and [bx+si],ah
00000A3A  2020              and [bx+si],ah
00000A3C  2020              and [bx+si],ah
00000A3E  2020              and [bx+si],ah
00000A40  2020              and [bx+si],ah
00000A42  10414E            adc [bx+di+0x4e],al
00000A45  5A                pop dx
00000A46  45                inc bp
00000A47  49                dec cx
00000A48  47                inc di
00000A49  45                inc bp
00000A4A  41                inc cx
00000A4B  54                push sp
00000A4C  54                push sp
00000A4D  52                push dx
00000A4E  49                dec cx
00000A4F  42                inc dx
00000A50  55                push bp
00000A51  54                push sp
00000A52  45                inc bp
00000A53  2420              and al,0x20
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
00000A77  205A45            and [bp+si+0x45],bl
00000A7A  49                dec cx
00000A7B  43                inc bx
00000A7C  48                dec ax
00000A7D  45                inc bp
00000A7E  4E                dec si
00000A7F  53                push bx
00000A80  41                inc cx
00000A81  54                push sp
00000A82  5A                pop dx
00000A83  2031              and [bx+di],dh
00000A85  2020              and [bx+si],ah
00000A87  2020              and [bx+si],ah
00000A89  0D5A45            or ax,0x455a
00000A8C  49                dec cx
00000A8D  43                inc bx
00000A8E  48                dec ax
00000A8F  45                inc bp
00000A90  4E                dec si
00000A91  53                push bx
00000A92  41                inc cx
00000A93  54                push sp
00000A94  5A                pop dx
00000A95  2032              and [bp+si],dh
00000A97  2020              and [bx+si],ah
00000A99  2020              and [bx+si],ah
00000A9B  0D1120            or ax,0x2011
00000A9E  3830              cmp [bx+si],dh
00000AA0  58                pop ax
00000AA1  3235              xor dh,[di]
00000AA3  204249            and [bp+si+0x49],al
00000AA6  4C                dec sp
00000AA7  44                inc sp
00000AA8  53                push bx
00000AA9  43                inc bx
00000AAA  48                dec ax
00000AAB  49                dec cx
00000AAC  52                push dx
00000AAD  4D                dec bp
00000AAE  1120              adc [bx+si],sp
00000AB0  3430              xor al,0x30
00000AB2  58                pop ax
00000AB3  3235              xor dh,[di]
00000AB5  204249            and [bp+si+0x49],al
00000AB8  4C                dec sp
00000AB9  44                inc sp
00000ABA  53                push bx
00000ABB  43                inc bx
00000ABC  48                dec ax
00000ABD  49                dec cx
00000ABE  52                push dx
00000ABF  4D                dec bp
00000AC0  0F                db 0x0f
00000AC1  2033              and [bp+di],dh
00000AC3  3230              xor dh,[bx+si]
00000AC5  58                pop ax
00000AC6  3230              xor dh,[bx+si]
00000AC8  3020              xor [bx+si],ah
00000ACA  47                inc di
00000ACB  52                push dx
00000ACC  41                inc cx
00000ACD  46                inc si
00000ACE  49                dec cx
00000ACF  4B                dec bx
00000AD0  0F                db 0x0f
00000AD1  20363430          and [0x3034],dh
00000AD5  58                pop ax
00000AD6  3230              xor dh,[bx+si]
00000AD8  3020              xor [bx+si],ah
00000ADA  47                inc di
00000ADB  52                push dx
00000ADC  41                inc cx
00000ADD  46                inc si
00000ADE  49                dec cx
00000ADF  4B                dec bx
00000AE0  0F                db 0x0f
00000AE1  20363430          and [0x3034],dh
00000AE5  58                pop ax
00000AE6  3438              xor al,0x38
00000AE8  3020              xor [bx+si],ah
00000AEA  47                inc di
00000AEB  52                push dx
00000AEC  41                inc cx
00000AED  46                inc si
00000AEE  49                dec cx
00000AEF  4B                dec bx
00000AF0  0C5A              or al,0x5a
00000AF2  45                inc bp
00000AF3  49                dec cx
00000AF4  43                inc bx
00000AF5  48                dec ax
00000AF6  45                inc bp
00000AF7  4E                dec si
00000AF8  46                inc si
00000AF9  4F                dec di
00000AFA  4E                dec si
00000AFB  44                inc sp
00000AFC  200F              and [bx],cl
00000AFE  363430            ss xor al,0x30
00000B01  58                pop ax
00000B02  3430              xor al,0x30
00000B04  3020              xor [bx+si],ah
00000B06  47                inc di
00000B07  52                push dx
00000B08  41                inc cx
00000B09  46                inc si
00000B0A  49                dec cx
00000B0B  4B                dec bx
00000B0C  200D              and [di],cl
00000B0E  46                inc si
00000B0F  41                inc cx
00000B10  52                push dx
00000B11  42                inc dx
00000B12  53                push bx
00000B13  50                push ax
00000B14  45                inc bp
00000B15  49                dec cx
00000B16  43                inc bx
00000B17  48                dec ax
00000B18  45                inc bp
00000B19  52                push dx
00000B1A  204E4D            and [bp+0x4d],cl
00000B1D  49                dec cx
00000B1E  2D5445            sub ax,0x4554
00000B21  53                push bx
00000B22  54                push sp
00000B23  204245            and [bp+si+0x45],al
00000B26  49                dec cx
00000B27  204B55            and [bp+di+0x55],cl
00000B2A  52                push dx
00000B2B  53                push bx
00000B2C  4F                dec di
00000B2D  52                push dx
00000B2E  50                push ax
00000B2F  4F                dec di
00000B30  53                push bx
00000B31  49                dec cx
00000B32  54                push sp
00000B33  49                dec cx
00000B34  4F                dec di
00000B35  4E                dec si
00000B36  49                dec cx
00000B37  45                inc bp
00000B38  52                push dx
00000B39  55                push bp
00000B3A  4E                dec si
00000B3B  47                inc di
00000B3C  2020              and [bx+si],ah
00000B3E  2020              and [bx+si],ah
00000B40  2020              and [bx+si],ah
00000B42  0D4249            or ax,0x4942
00000B45  4C                dec sp
00000B46  44                inc sp
00000B47  57                push di
00000B48  49                dec cx
00000B49  45                inc bp
00000B4A  44                inc sp
00000B4B  45                inc bp
00000B4C  52                push dx
00000B4D  48                dec ax
00000B4E  4F                dec di
00000B4F  4C                dec sp
00000B50  53                push bx
00000B51  50                push ax
00000B52  45                inc bp
00000B53  49                dec cx
00000B54  43                inc bx
00000B55  48                dec ax
00000B56  45                inc bp
00000B57  52                push dx
00000B58  54                push sp
00000B59  45                inc bp
00000B5A  53                push bx
00000B5B  54                push sp
00000B5C  2020              and [bx+si],ah
00000B5E  2020              and [bx+si],ah
00000B60  2020              and [bx+si],ah
00000B62  2020              and [bx+si],ah
00000B64  2020              and [bx+si],ah
00000B66  2020              and [bx+si],ah
00000B68  2020              and [bx+si],ah
00000B6A  0D4249            or ax,0x4942
00000B6D  4C                dec sp
00000B6E  44                inc sp
00000B6F  57                push di
00000B70  49                dec cx
00000B71  45                inc bp
00000B72  44                inc sp
00000B73  45                inc bp
00000B74  52                push dx
00000B75  48                dec ax
00000B76  4F                dec di
00000B77  4C                dec sp
00000B78  53                push bx
00000B79  50                push ax
00000B7A  45                inc bp
00000B7B  49                dec cx
00000B7C  43                inc bx
00000B7D  48                dec ax
00000B7E  45                inc bp
00000B7F  52                push dx
00000B80  54                push sp
00000B81  45                inc bp
00000B82  53                push bx
00000B83  54                push sp
00000B84  20363430          and [0x3034],dh
00000B88  58                pop ax
00000B89  3438              xor al,0x38
00000B8B  3020              xor [bx+si],ah
00000B8D  2020              and [bx+si],ah
00000B8F  2020              and [bx+si],ah
00000B91  200D              and [di],cl
00000B93  42                inc dx
00000B94  49                dec cx
00000B95  4C                dec sp
00000B96  44                inc sp
00000B97  53                push bx
00000B98  43                inc bx
00000B99  48                dec ax
00000B9A  49                dec cx
00000B9B  52                push dx
00000B9C  4D                dec bp
00000B9D  41                inc cx
00000B9E  44                inc sp
00000B9F  41                inc cx
00000BA0  50                push ax
00000BA1  54                push sp
00000BA2  45                inc bp
00000BA3  52                push dx
00000BA4  54                push sp
00000BA5  45                inc bp
00000BA6  53                push bx
00000BA7  54                push sp
00000BA8  2020              and [bx+si],ah
00000BAA  2020              and [bx+si],ah
00000BAC  2020              and [bx+si],ah
00000BAE  2020              and [bx+si],ah
00000BB0  2020              and [bx+si],ah
00000BB2  2020              and [bx+si],ah
00000BB4  2020              and [bx+si],ah
00000BB6  2020              and [bx+si],ah
00000BB8  2020              and [bx+si],ah
00000BBA  0D1749            or ax,0x4917
00000BBD  53                push bx
00000BBE  54                push sp
00000BBF  204449            and [si+0x49],al
00000BC2  45                inc bp
00000BC3  53                push bx
00000BC4  205249            and [bp+si+0x49],dl
00000BC7  43                inc bx
00000BC8  48                dec ax
00000BC9  54                push sp
00000BCA  49                dec cx
00000BCB  47                inc di
00000BCC  2028              and [bx+si],ch
00000BCE  4A                dec dx
00000BCF  2F                das
00000BD0  4E                dec si
00000BD1  293F              sub [bx],di
00000BD3  3030              xor [bx+si],dh
00000BD5  3030              xor [bx+si],dh
00000BD7  3030              xor [bx+si],dh
00000BD9  0D3030            or ax,0x3030
00000BDC  0DC909            or ax,0x9c9
00000BDF  850A              test [bp+si],cx
00000BE1  96                xchg ax,si
00000BE2  0ADF              or bl,bh
00000BE4  0AF1              or dh,cl
00000BE6  0A03              or al,[bp+di]
00000BE8  0B13              or dx,[bp+di]
00000BEA  0B23              or sp,[bp+di]
00000BEC  0B400B            or ax,[bx+si+0xb]
00000BEF  330B              xor cx,[bp+di]
00000BF1  50                push ax
00000BF2  0BE5              or sp,bp
00000BF4  09970A01          or [bx+0x10a],dx
00000BF8  01CE              add si,cx
00000BFA  02D5              add dl,ch
00000BFC  08DA              or dl,bl
00000BFE  06                push es
00000BFF  7509              jnz 0xc0a
00000C01  7509              jnz 0xc0c
00000C03  2E0E              cs push cs
00000C05  2E0E              cs push cs
00000C07  7C10              jl 0xc19
00000C09  92                xchg ax,dx
00000C0A  1417              adc al,0x17
00000C0C  142B              adc al,0x2b
00000C0E  11C1              adc cx,ax
00000C10  09DF              or di,bx
00000C12  0CDF              or al,0xdf
00000C14  0C51              or al,0x51
00000C16  52                push dx
00000C17  56                push si
00000C18  57                push di
00000C19  50                push ax
00000C1A  C606C9091B        mov byte [0x9c9],0x1b
00000C1F  C706360CE509      mov word [0xc36],0x9e5
00000C25  B000              mov al,0x0
00000C27  A2380D            mov [0xd38],al
00000C2A  A2370D            mov [0xd37],al
00000C2D  803E291604        cmp byte [0x1629],0x4
00000C32  7407              jz 0xc3b
00000C34  803E291605        cmp byte [0x1629],0x5
00000C39  740A              jz 0xc45
00000C3B  B81F1E            mov ax,0x1e1f
00000C3E  803E181607        cmp byte [0x1618],0x7
00000C43  7403              jz 0xc48
00000C45  B8FF1F            mov ax,0x1fff
00000C48  A33F0D            mov [0xd3f],ax
00000C4B  25FFF9            and ax,0xf9ff
00000C4E  A3430D            mov [0xd43],ax
00000C51  58                pop ax
00000C52  8AC4              mov al,ah
00000C54  A22716            mov [0x1627],al
00000C57  8B1E3F0D          mov bx,[0xd3f]
00000C5B  EB16              jmp short 0xc73
00000C5D  90                nop
00000C5E  A3390D            mov [0xd39],ax
00000C61  B102              mov cl,0x2
00000C63  D2E0              shl al,cl
00000C65  0806380D          or [0xd38],al
00000C69  FE06370D          inc byte [0xd37]
00000C6D  E83100            call word 0xca1
00000C70  EB1E              jmp short 0xc90
00000C72  90                nop
00000C73  891E3B0D          mov [0xd3b],bx
00000C77  E84C00            call word 0xcc6
00000C7A  90                nop
00000C7B  A13B0D            mov ax,[0xd3b]
00000C7E  257FE1            and ax,0xe17f
00000C81  803E291604        cmp byte [0x1629],0x4
00000C86  7403              jz 0xc8b
00000C88  B8FF1F            mov ax,0x1fff
00000C8B  E81C00            call word 0xcaa
00000C8E  72CE              jc 0xc5e
00000C90  5F                pop di
00000C91  5E                pop si
00000C92  5A                pop dx
00000C93  59                pop cx
00000C94  A0380D            mov al,[0xd38]
00000C97  8A26370D          mov ah,[0xd37]
00000C9B  C3                ret
00000C9C  5A                pop dx
00000C9D  5A                pop dx
00000C9E  EBF0              jmp short 0xc90
00000CA0  C3                ret
00000CA1  8B1E390D          mov bx,[0xd39]
00000CA5  8B9F200C          mov bx,[bx+0xc20]
00000CA9  C3                ret
00000CAA  8BC8              mov cx,ax
00000CAC  33C0              xor ax,ax
00000CAE  F8                clc
00000CAF  E314              jcxz 0xcc5
00000CB1  F6C101            test cl,0x1
00000CB4  7409              jz 0xcbf
00000CB6  8BF0              mov si,ax
00000CB8  2EFF943C0C        call word [cs:si+0xc3c]
00000CBD  7206              jc 0xcc5
00000CBF  D1E9              shr cx,1
00000CC1  40                inc ax
00000CC2  40                inc ax
00000CC3  EBE9              jmp short 0xcae
00000CC5  C3                ret
00000CC6  50                push ax
00000CC7  B007              mov al,0x7
00000CC9  CD87              int 0x87
00000CCB  B400              mov ah,0x0
00000CCD  A01816            mov al,[0x1618]
00000CD0  CD84              int 0x84
00000CD2  58                pop ax
00000CD3  C3                ret
00000CD4  50                push ax
00000CD5  CD88              int 0x88
00000CD7  B409              mov ah,0x9
00000CD9  50                push ax
00000CDA  CD82              int 0x82
00000CDC  58                pop ax
00000CDD  CD87              int 0x87
00000CDF  58                pop ax
00000CE0  C3                ret
00000CE1  50                push ax
00000CE2  B007              mov al,0x7
00000CE4  EBF1              jmp short 0xcd7
00000CE6  90                nop
00000CE7  E8EAFF            call word 0xcd4
00000CEA  B400              mov ah,0x0
00000CEC  CD94              int 0x94
00000CEE  B403              mov ah,0x3
00000CF0  CD80              int 0x80
00000CF2  C3                ret
00000CF3  07                pop es
00000CF4  0000              add [bx+si],al
00000CF6  0000              add [bx+si],al
00000CF8  1100              adc [bx+si],ax
00000CFA  0100              add [bx+si],ax
00000CFC  0000              add [bx+si],al
00000CFE  1100              adc [bx+si],ax
00000D00  0000              add [bx+si],al
00000D02  92                xchg ax,dx
00000D03  0D920D            or ax,0xd92
00000D06  A5                movsw
00000D07  0DE30D            or ax,0xde3
00000D0A  07                pop es
00000D0B  0E                push cs
00000D0C  0400              add al,0x0
00000D0E  06                push es
00000D0F  000E000F          add [0xf00],cl
00000D13  0010              add [bx+si],dl
00000D15  0010              add [bx+si],dl
00000D17  005555            add [di+0x55],dl
00000D1A  AA                stosb
00000D1B  AA                stosb
00000D1C  FF                db 0xff
00000D1D  FF5555            call word [di+0x55]
00000D20  FF                db 0xff
00000D21  FFAAAA03          jmp word far [bp+si+0x3aa]
00000D25  030C              add cx,[si]
00000D27  0C0F              or al,0xf
00000D29  0F1E28            hint_nop53 word [bx+si]
00000D2C  1E                push ds
00000D2D  281E281E          sub [0x1e28],bl
00000D31  C81EC81E          enter 0xc81e,0x1e
00000D35  C8440699          enter 0x644,0x99
00000D39  0C6A              or al,0x6a
00000D3B  06                push es
00000D3C  C412              les dx,[bp+si]
00000D3E  1919              sbb [bx+di],bx
00000D40  EA12AA3106        jmp word 0x631:0xaa12
00000D45  6213              bound dx,[bp+di]
00000D47  0C03              or al,0x3
00000D49  0207              add al,[bx]
00000D4B  07                pop es
00000D4C  07                pop es
00000D4D  07                pop es
00000D4E  0312              add dx,[bp+si]
00000D50  0D2033            or ax,0x3320
00000D53  3230              xor dh,[bx+si]
00000D55  58                pop ax
00000D56  3230              xor dh,[bx+si]
00000D58  3020              xor [bx+si],ah
00000D5A  47                inc di
00000D5B  52                push dx
00000D5C  41                inc cx
00000D5D  46                inc si
00000D5E  49                dec cx
00000D5F  4B                dec bx
00000D60  0D0D3D            or ax,0x3d0d
00000D63  0D2036            or ax,0x3620
00000D66  3430              xor al,0x30
00000D68  58                pop ax
00000D69  3230              xor dh,[bx+si]
00000D6B  3020              xor [bx+si],ah
00000D6D  47                inc di
00000D6E  52                push dx
00000D6F  41                inc cx
00000D70  46                inc si
00000D71  49                dec cx
00000D72  4B                dec bx
00000D73  202D              and [di],ch
00000D75  205669            and [bp+0x69],dl
00000D78  657265            gs jc 0xde0
00000D7B  636B65            arpl [bp+di+0x65],bp
00000D7E  3A20              cmp ah,[bx+si]
00000D80  47                inc di
00000D81  52                push dx
00000D82  41                inc cx
00000D83  55                push bp
00000D84  2C20              sub al,0x20
00000D86  47                inc di
00000D87  52                push dx
00000D88  41                inc cx
00000D89  55                push bp
00000D8A  2C20              sub al,0x20
00000D8C  57                push di
00000D8D  45                inc bp
00000D8E  49                dec cx
00000D8F  53                push bx
00000D90  53                push bx
00000D91  204155            and [bx+di+0x55],al
00000D94  46                inc si
00000D95  205343            and [bp+di+0x43],dl
00000D98  48                dec ax
00000D99  57                push di
00000D9A  41                inc cx
00000D9B  52                push dx
00000D9C  5A                pop dx
00000D9D  200D              and [di],cl
00000D9F  0D2356            or ax,0x5623
00000DA2  6965726563        imul sp,[di+0x72],word 0x6365
00000DA7  6B653A20          imul sp,[di+0x3a],byte +0x20
00000DAB  47                inc di
00000DAC  52                push dx
00000DAD  55                push bp
00000DAE  45                inc bp
00000DAF  4E                dec si
00000DB0  2C20              sub al,0x20
00000DB2  52                push dx
00000DB3  4F                dec di
00000DB4  54                push sp
00000DB5  2C20              sub al,0x20
00000DB7  47                inc di
00000DB8  45                inc bp
00000DB9  4C                dec sp
00000DBA  42                inc dx
00000DBB  204155            and [bx+di+0x55],al
00000DBE  46                inc si
00000DBF  20424C            and [bp+si+0x4c],al
00000DC2  41                inc cx
00000DC3  55                push bp
00000DC4  2656              es push si
00000DC6  6965726563        imul sp,[di+0x72],word 0x6365
00000DCB  6B653A20          imul sp,[di+0x3a],byte +0x20
00000DCF  42                inc dx
00000DD0  4C                dec sp
00000DD1  41                inc cx
00000DD2  55                push bp
00000DD3  2C20              sub al,0x20
00000DD5  56                push si
00000DD6  49                dec cx
00000DD7  4F                dec di
00000DD8  4C                dec sp
00000DD9  45                inc bp
00000DDA  54                push sp
00000DDB  54                push sp
00000DDC  2C20              sub al,0x20
00000DDE  47                inc di
00000DDF  52                push dx
00000DE0  41                inc cx
00000DE1  55                push bp
00000DE2  204155            and [bx+di+0x55],al
00000DE5  46                inc si
00000DE6  20524F            and [bp+si+0x4f],dl
00000DE9  54                push sp
00000DEA  0D5053            or ax,0x5350
00000DED  51                push cx
00000DEE  33FF              xor di,di
00000DF0  2D0A00            sub ax,0xa
00000DF3  8BF0              mov si,ax
00000DF5  55                push bp
00000DF6  8BEF              mov bp,di
00000DF8  8A844F0D          mov al,[si+0xd4f]
00000DFC  B400              mov ah,0x0
00000DFE  CD85              int 0x85
00000E00  3E8A828B0D        mov al,[ds:bp+si+0xd8b]
00000E05  CD87              int 0x87
00000E07  8B9C470D          mov bx,[si+0xd47]
00000E0B  E8C6FE            call word 0xcd4
00000E0E  83FE00            cmp si,byte +0x0
00000E11  7508              jnz 0xe1b
00000E13  3E8B9B4B0D        mov bx,[ds:bp+di+0xd4b]
00000E18  E8B9FE            call word 0xcd4
00000E1B  E82900            call word 0xe47
00000E1E  5D                pop bp
00000E1F  E8D8F9            call word 0x7fa
00000E22  721B              jc 0xe3f
00000E24  83FE02            cmp si,byte +0x2
00000E27  7414              jz 0xe3d
00000E29  803E271601        cmp byte [0x1627],0x1
00000E2E  7504              jnz 0xe34
00000E30  B001              mov al,0x1
00000E32  CD8C              int 0x8c
00000E34  47                inc di
00000E35  83FF02            cmp di,byte +0x2
00000E38  72BB              jc 0xdf5
00000E3A  EB02              jmp short 0xe3e
00000E3C  90                nop
00000E3D  90                nop
00000E3E  F8                clc
00000E3F  B007              mov al,0x7
00000E41  CD87              int 0x87
00000E43  59                pop cx
00000E44  5B                pop bx
00000E45  58                pop ax
00000E46  C3                ret
00000E47  57                push di
00000E48  56                push si
00000E49  83FE02            cmp si,byte +0x2
00000E4C  7412              jz 0xe60
00000E4E  8A9D890D          mov bl,[di+0xd89]
00000E52  B700              mov bh,0x0
00000E54  B40B              mov ah,0xb
00000E56  CD85              int 0x85
00000E58  8BDF              mov bx,di
00000E5A  FEC7              inc bh
00000E5C  B40B              mov ah,0xb
00000E5E  CD85              int 0x85
00000E60  33F6              xor si,si
00000E62  8A845B0D          mov al,[si+0xd5b]
00000E66  8B9C6D0D          mov bx,[si+0xd6d]
00000E6A  8BAC790D          mov bp,[si+0xd79]
00000E6E  B900B8            mov cx,0xb800
00000E71  8EC1              mov es,cx
00000E73  33D2              xor dx,dx
00000E75  8AD3              mov dl,bl
00000E77  8BCA              mov cx,dx
00000E79  8BFD              mov di,bp
00000E7B  F3AA              rep stosb
00000E7D  8BFD              mov di,bp
00000E7F  81C70020          add di,0x2000
00000E83  8BCA              mov cx,dx
00000E85  F3AA              rep stosb
00000E87  83C550            add bp,byte +0x50
00000E8A  FECF              dec bh
00000E8C  75E9              jnz 0xe77
00000E8E  46                inc si
00000E8F  46                inc si
00000E90  83FE06            cmp si,byte +0x6
00000E93  72CD              jc 0xe62
00000E95  8CC8              mov ax,cs
00000E97  8EC0              mov es,ax
00000E99  5E                pop si
00000E9A  5F                pop di
00000E9B  C3                ret
00000E9C  1F                pop ds
00000E9D  2020              and [bx+si],ah
00000E9F  2020              and [bx+si],ah
00000EA1  2020              and [bx+si],ah
00000EA3  2020              and [bx+si],ah
00000EA5  2020              and [bx+si],ah
00000EA7  2020              and [bx+si],ah
00000EA9  2020              and [bx+si],ah
00000EAB  2020              and [bx+si],ah
00000EAD  2020              and [bx+si],ah
00000EAF  2020              and [bx+si],ah
00000EB1  2020              and [bx+si],ah
00000EB3  2020              and [bx+si],ah
00000EB5  2020              and [bx+si],ah
00000EB7  2020              and [bx+si],ah
00000EB9  2020              and [bx+si],ah
00000EBB  0D1E0D            or ax,0xd1e
00000EBE  46                inc si
00000EBF  41                inc cx
00000EC0  52                push dx
00000EC1  42                inc dx
00000EC2  53                push bx
00000EC3  50                push ax
00000EC4  45                inc bp
00000EC5  4B                dec bx
00000EC6  54                push sp
00000EC7  52                push dx
00000EC8  55                push bp
00000EC9  4D                dec bp
00000ECA  204752            and [bx+0x52],al
00000ECD  41                inc cx
00000ECE  46                inc si
00000ECF  49                dec cx
00000ED0  4B                dec bx
00000ED1  20363430          and [0x3034],dh
00000ED5  205820            and [bx+si+0x20],bl
00000ED8  3438              xor al,0x38
00000EDA  300C              xor [si],cl
00000EDC  2030              and [bx+si],dh
00000EDE  202D              and [di],ch
00000EE0  205343            and [bp+di+0x43],dl
00000EE3  48                dec ax
00000EE4  57                push di
00000EE5  41                inc cx
00000EE6  52                push dx
00000EE7  5A                pop dx
00000EE8  0920              or [bx+si],sp
00000EEA  3120              xor [bx+si],sp
00000EEC  2D2042            sub ax,0x4220
00000EEF  4C                dec sp
00000EF0  41                inc cx
00000EF1  55                push bp
00000EF2  0A20              or ah,[bx+si]
00000EF4  3220              xor ah,[bx+si]
00000EF6  2D2047            sub ax,0x4720
00000EF9  52                push dx
00000EFA  55                push bp
00000EFB  45                inc bp
00000EFC  4E                dec si
00000EFD  0F                db 0x0f
00000EFE  2033              and [bp+di],dh
00000F00  202D              and [di],ch
00000F02  204B4F            and [bp+di+0x4f],cl
00000F05  42                inc dx
00000F06  41                inc cx
00000F07  4C                dec sp
00000F08  54                push sp
00000F09  42                inc dx
00000F0A  4C                dec sp
00000F0B  41                inc cx
00000F0C  55                push bp
00000F0D  0820              or [bx+si],ah
00000F0F  3420              xor al,0x20
00000F11  2D2052            sub ax,0x5220
00000F14  4F                dec di
00000F15  54                push sp
00000F16  0C20              or al,0x20
00000F18  35202D            xor ax,0x2d20
00000F1B  205649            and [bp+0x49],dl
00000F1E  4F                dec di
00000F1F  4C                dec sp
00000F20  45                inc bp
00000F21  54                push sp
00000F22  54                push sp
00000F23  0A20              or ah,[bx+si]
00000F25  36202D            and [ss:di],ch
00000F28  204252            and [bp+si+0x52],al
00000F2B  41                inc cx
00000F2C  55                push bp
00000F2D  4E                dec si
00000F2E  0D2037            or ax,0x3720
00000F31  202D              and [di],ch
00000F33  204845            and [bx+si+0x45],cl
00000F36  4C                dec sp
00000F37  4C                dec sp
00000F38  47                inc di
00000F39  52                push dx
00000F3A  41                inc cx
00000F3B  55                push bp
00000F3C  0F                db 0x0f
00000F3D  2038              and [bx+si],bh
00000F3F  202D              and [di],ch
00000F41  204455            and [si+0x55],al
00000F44  4E                dec si
00000F45  4B                dec bx
00000F46  45                inc bp
00000F47  4C                dec sp
00000F48  47                inc di
00000F49  52                push dx
00000F4A  41                inc cx
00000F4B  55                push bp
00000F4C  0D2039            or ax,0x3920
00000F4F  202D              and [di],ch
00000F51  204845            and [bx+si+0x45],cl
00000F54  4C                dec sp
00000F55  4C                dec sp
00000F56  42                inc dx
00000F57  4C                dec sp
00000F58  41                inc cx
00000F59  55                push bp
00000F5A  0E                push cs
00000F5B  3130              xor [bx+si],si
00000F5D  202D              and [di],ch
00000F5F  204845            and [bx+si+0x45],cl
00000F62  4C                dec sp
00000F63  4C                dec sp
00000F64  47                inc di
00000F65  52                push dx
00000F66  55                push bp
00000F67  45                inc bp
00000F68  4E                dec si
00000F69  1331              adc si,[bx+di]
00000F6B  3120              xor [bx+si],sp
00000F6D  2D2048            sub ax,0x4820
00000F70  45                inc bp
00000F71  4C                dec sp
00000F72  4C                dec sp
00000F73  4B                dec bx
00000F74  4F                dec di
00000F75  42                inc dx
00000F76  41                inc cx
00000F77  4C                dec sp
00000F78  54                push sp
00000F79  42                inc dx
00000F7A  4C                dec sp
00000F7B  41                inc cx
00000F7C  55                push bp
00000F7D  0C31              or al,0x31
00000F7F  3220              xor ah,[bx+si]
00000F81  2D2048            sub ax,0x4820
00000F84  45                inc bp
00000F85  4C                dec sp
00000F86  4C                dec sp
00000F87  52                push dx
00000F88  4F                dec di
00000F89  54                push sp
00000F8A  1031              adc [bx+di],dh
00000F8C  3320              xor sp,[bx+si]
00000F8E  2D2048            sub ax,0x4820
00000F91  45                inc bp
00000F92  4C                dec sp
00000F93  4C                dec sp
00000F94  56                push si
00000F95  49                dec cx
00000F96  4F                dec di
00000F97  4C                dec sp
00000F98  45                inc bp
00000F99  54                push sp
00000F9A  54                push sp
00000F9B  0931              or [bx+di],si
00000F9D  3420              xor al,0x20
00000F9F  2D2047            sub ax,0x4720
00000FA2  45                inc bp
00000FA3  4C                dec sp
00000FA4  42                inc dx
00000FA5  0C31              or al,0x31
00000FA7  35202D            xor ax,0x2d20
00000FAA  205745            and [bx+0x45],dl
00000FAD  49                dec cx
00000FAE  53                push bx
00000FAF  53                push bx
00000FB0  0D0DFF            or ax,0xff0d
00000FB3  0E                push cs
00000FB4  1E                push ds
00000FB5  0F2B0F            movntps oword [bx],xmm1
00000FB8  350F40            xor ax,0x400f
00000FBB  0F500F            movmskps ecx,xmm12
00000FBE  59                pop cx
00000FBF  0F660F            pcmpgtd mm1,[bx]
00000FC2  710F              jno 0xfd3
00000FC4  7F0F              jg 0xfd5
00000FC6  8F                db 0x8f
00000FC7  0F                db 0x0f
00000FC8  9D                popfw
00000FC9  0FAC0FC0          shrd [bx],cx,0xc0
00000FCD  0F                db 0x0f
00000FCE  CD0F              int 0xf
00000FD0  DE0F              fimul word [bx]
00000FD2  E80FDB            call word 0xeae4
00000FD5  DBDB              fcmovnu st3
00000FD7  DBDB              fcmovnu st3
00000FD9  0004              add [si],al
00000FDB  0005              add [di],al
00000FDD  00060007          add [0x700],al
00000FE1  0008              add [bx+si],cl
00000FE3  0009              add [bx+di],cl
00000FE5  000A              add [bp+si],cl
00000FE7  000B              add [bp+di],cl
00000FE9  000C              add [si],cl
00000FEB  000D              add [di],cl
00000FED  000E000F          add [0xf00],cl
00000FF1  0010              add [bx+si],dl
00000FF3  0011              add [bx+di],dl
00000FF5  0012              add [bp+si],dl
00000FF7  0013              add [bp+di],dl
00000FF9  150415            adc ax,0x1504
00000FFC  051506            add ax,0x615
00000FFF  150715            adc ax,0x1507
00001002  0815              or [di],dl
00001004  0915              or [di],dx
00001006  0A15              or dl,[di]
00001008  0B15              or dx,[di]
0000100A  0C15              or al,0x15
0000100C  0D150E            or ax,0xe15
0000100F  150F15            adc ax,0x150f
00001012  1015              adc [di],dl
00001014  1115              adc [di],dx
00001016  1215              adc dl,[di]
00001018  1300              adc ax,[bx+si]
0000101A  0001              add [bx+di],al
0000101C  0002              add [bp+si],al
0000101E  0003              add [bp+di],al
00001020  0004              add [si],al
00001022  0005              add [di],al
00001024  00060007          add [0x700],al
00001028  0008              add [bx+si],cl
0000102A  0009              add [bx+di],cl
0000102C  000A              add [bp+si],cl
0000102E  000B              add [bp+di],cl
00001030  000C              add [si],cl
00001032  000D              add [di],cl
00001034  000E000F          add [0xf00],cl
00001038  005053            add [bx+si+0x53],dl
0000103B  51                push cx
0000103C  52                push dx
0000103D  56                push si
0000103E  B40F              mov ah,0xf
00001040  CD84              int 0x84
00001042  A2F915            mov [0x15f9],al
00001045  B80800            mov ax,0x8
00001048  CD10              int 0x10
0000104A  33FF              xor di,di
0000104C  8B2EF50F          mov bp,[0xff5]
00001050  45                inc bp
00001051  8B36F50F          mov si,[0xff5]
00001055  268A0C            mov cl,[es:si]
00001058  32ED              xor ch,ch
0000105A  BA0002            mov dx,0x200
0000105D  BB0700            mov bx,0x7
00001060  B80013            mov ax,0x1300
00001063  CD10              int 0x10
00001065  BD1710            mov bp,0x1017
00001068  33FF              xor di,di
0000106A  B90500            mov cx,0x5
0000106D  8B951C10          mov dx,[di+0x101c]
00001071  8B9D5C10          mov bx,[di+0x105c]
00001075  B80013            mov ax,0x1300
00001078  CD10              int 0x10
0000107A  47                inc di
0000107B  47                inc di
0000107C  83FF20            cmp di,byte +0x20
0000107F  75E9              jnz 0x106a
00001081  33FF              xor di,di
00001083  8BADF70F          mov bp,[di+0xff7]
00001087  45                inc bp
00001088  8BB5F70F          mov si,[di+0xff7]
0000108C  268A0C            mov cl,[es:si]
0000108F  32ED              xor ch,ch
00001091  8B953C10          mov dx,[di+0x103c]
00001095  BB0700            mov bx,0x7
00001098  B80013            mov ax,0x1300
0000109B  CD10              int 0x10
0000109D  47                inc di
0000109E  47                inc di
0000109F  83FF20            cmp di,byte +0x20
000010A2  75DF              jnz 0x1083
000010A4  36803E620241      cmp byte [ss:0x262],0x41
000010AA  750B              jnz 0x10b7
000010AC  B005              mov al,0x5
000010AE  CD8D              int 0x8d
000010B0  CD8E              int 0x8e
000010B2  75FC              jnz 0x10b0
000010B4  EB2C              jmp short 0x10e2
000010B6  90                nop
000010B7  BDFC03            mov bp,0x3fc
000010BA  45                inc bp
000010BB  BEFC03            mov si,0x3fc
000010BE  268A0C            mov cl,[es:si]
000010C1  32ED              xor ch,ch
000010C3  BA0017            mov dx,0x1700
000010C6  BB0700            mov bx,0x7
000010C9  B80013            mov ax,0x1300
000010CC  CD10              int 0x10
000010CE  B402              mov ah,0x2
000010D0  BA2017            mov dx,0x1720
000010D3  CD10              int 0x10
000010D5  B400              mov ah,0x0
000010D7  CD94              int 0x94
000010D9  B403              mov ah,0x3
000010DB  CD80              int 0x80
000010DD  E880F7            call word 0x860
000010E0  75C2              jnz 0x10a4
000010E2  5E                pop si
000010E3  5A                pop dx
000010E4  59                pop cx
000010E5  5B                pop bx
000010E6  58                pop ax
000010E7  C3                ret
000010E8  E92301            jmp word 0x120e
000010EB  0000              add [bx+si],al
000010ED  0000              add [bx+si],al
000010EF  00D8              add al,bl
000010F1  03D2              add dx,dx
000010F3  03D0              add dx,ax
000010F5  03DE              add bx,si
000010F7  0315              add dx,[di]
000010F9  46                inc si
000010FA  61                popaw
000010FB  7262              jc 0x115f
000010FD  7370              jnc 0x116f
000010FF  656963686572      imul sp,[gs:bp+di+0x68],word 0x7265
00001105  205374            and [bp+di+0x74],dl
00001108  61                popaw
00001109  6E                outsb
0000110A  6461              fs popaw
0000110C  7264              jc 0x1172
0000110E  FF11              call word [bx+di]
00001110  46                inc si
00001111  61                popaw
00001112  7262              jc 0x1176
00001114  7370              jnc 0x1186
00001116  656963686572      imul sp,[gs:bp+di+0x68],word 0x7265
0000111C  20726F            and [bp+si+0x6f],dh
0000111F  7420              jz 0x1141
00001121  134661            adc ax,[bp+0x61]
00001124  7262              jc 0x1188
00001126  7370              jnc 0x1198
00001128  656963686572      imul sp,[gs:bp+di+0x68],word 0x7265
0000112E  206772            and [bx+0x72],ah
00001131  7565              jnz 0x1198
00001133  6E                outsb
00001134  2014              and [si],dl
00001136  46                inc si
00001137  61                popaw
00001138  7262              jc 0x119c
0000113A  7370              jnc 0x11ac
0000113C  656963686572      imul sp,[gs:bp+di+0x68],word 0x7265
00001142  2020              and [bx+si],ah
00001144  20626C            and [bp+si+0x6c],ah
00001147  61                popaw
00001148  7520              jnz 0x116a
0000114A  1446              adc al,0x46
0000114C  61                popaw
0000114D  7262              jc 0x11b1
0000114F  7370              jnc 0x11c1
00001151  656963686572      imul sp,[gs:bp+di+0x68],word 0x7265
00001157  2020              and [bx+si],ah
00001159  206772            and [bx+0x72],ah
0000115C  61                popaw
0000115D  7520              jnz 0x117f
0000115F  16                push ss
00001160  46                inc si
00001161  61                popaw
00001162  7262              jc 0x11c6
00001164  7370              jnc 0x11d6
00001166  656963686572      imul sp,[gs:bp+di+0x68],word 0x7265
0000116C  206D6F            and [di+0x6f],ch
0000116F  6E                outsb
00001170  6F                outsw
00001171  636872            arpl [bx+si+0x72],bp
00001174  6F                outsw
00001175  6D                insw
00001176  DB03              fild dword [bp+di]
00001178  DD03              fld qword [bp+di]
0000117A  DF03              fild word [bp+di]
0000117C  A00000            mov al,[0x0]
0000117F  00A10000          add [bx+di+0x0],ah
00001183  0AA20609          or ah,[bp+si+0x906]
00001187  00A30009          add [bp+di+0x900],ah
0000118B  09A40900          or [si+0x9],sp
0000118F  00A50A00          add [di+0xa],ah
00001193  09A60B09          or [bp+0x90b],sp
00001197  00A70D0D          add [bx+0xd0d],ah
0000119B  0BA80909          or bp,[bx+si+0x909]
0000119F  09A90909          or [bx+di+0x909],bp
000011A3  0FAA              rsm
000011A5  090F              or [bx],cx
000011A7  05AB09            add ax,0x9ab
000011AA  0D0FAC            or ax,0xac0f
000011AD  0F0303            lsl ax,[bp+di]
000011B0  AD                lodsw
000011B1  0F030F            lsl cx,[bx]
000011B4  AE                scasb
000011B5  0F                db 0x0f
000011B6  0F                db 0x0f
000011B7  01AF0F0F          add [bx+0xf0f],bp
000011BB  0F00A00000        verr [bx+si+0x0]
000011C0  00A10000          add [bx+di+0x0],ah
000011C4  0AA20609          or ah,[bp+si+0x906]
000011C8  00A30009          add [bp+di+0x900],ah
000011CC  09A40900          or [si+0x9],sp
000011D0  00A50A00          add [di+0xa],ah
000011D4  09A60B09          or [bp+0x90b],sp
000011D8  00A70D0D          add [bx+0xd0d],ah
000011DC  0BA80909          or bp,[bx+si+0x909]
000011E0  09A90909          or [bx+di+0x909],bp
000011E4  0FAA              rsm
000011E6  090F              or [bx],cx
000011E8  05AB09            add ax,0x9ab
000011EB  0D0FAC            or ax,0xac0f
000011EE  0F0303            lsl ax,[bp+di]
000011F1  AD                lodsw
000011F2  0F030F            lsl cx,[bx]
000011F5  AE                scasb
000011F6  0F                db 0x0f
000011F7  0F                db 0x0f
000011F8  01AF0F0F          add [bx+0xf0f],bp
000011FC  0F0000            sldt [bx+si]
000011FF  0808              or [bx+si],cl
00001201  0909              or [bx+di],cx
00001203  0A0A              or cl,[bp+si]
00001205  0B0B              or cx,[bp+di]
00001207  0C0C              or al,0xc
00001209  0D0D0E            or ax,0xe0d
0000120C  0E                push cs
0000120D  0F505351          movmskps edx,xmm10
00001211  52                push dx
00001212  B80300            mov ax,0x3
00001215  CD10              int 0x10
00001217  0E                push cs
00001218  07                pop es
00001219  C6065111FF        mov byte [0x1151],0xff
0000121E  E8E500            call word 0x1306
00001221  803E511100        cmp byte [0x1151],0x0
00001226  7465              jz 0x128d
00001228  E88A00            call word 0x12b5
0000122B  BB0100            mov bx,0x1
0000122E  E83701            call word 0x1368
00001231  E8FD00            call word 0x1331
00001234  BD5211            mov bp,0x1152
00001237  E87A01            call word 0x13b4
0000123A  E88901            call word 0x13c6
0000123D  BB0200            mov bx,0x2
00001240  E82501            call word 0x1368
00001243  E8EB00            call word 0x1331
00001246  BD6411            mov bp,0x1164
00001249  E86801            call word 0x13b4
0000124C  E87701            call word 0x13c6
0000124F  BB0300            mov bx,0x3
00001252  E81301            call word 0x1368
00001255  E8D900            call word 0x1331
00001258  BD7811            mov bp,0x1178
0000125B  E85601            call word 0x13b4
0000125E  E86501            call word 0x13c6
00001261  BB0F00            mov bx,0xf
00001264  E80101            call word 0x1368
00001267  E8C700            call word 0x1331
0000126A  BD8D11            mov bp,0x118d
0000126D  E84401            call word 0x13b4
00001270  E85301            call word 0x13c6
00001273  FC                cld
00001274  8D360012          lea si,[0x1200]
00001278  8D3EBF11          lea di,[0x11bf]
0000127C  B94100            mov cx,0x41
0000127F  F3A4              rep movsb
00001281  E8AD00            call word 0x1331
00001284  BD3B11            mov bp,0x113b
00001287  E82A01            call word 0x13b4
0000128A  EB0D              jmp short 0x1299
0000128C  90                nop
0000128D  E8A100            call word 0x1331
00001290  E82200            call word 0x12b5
00001293  BDA211            mov bp,0x11a2
00001296  E81B01            call word 0x13b4
00001299  E85EF5            call word 0x7fa
0000129C  7205              jc 0x12a3
0000129E  5A                pop dx
0000129F  59                pop cx
000012A0  5B                pop bx
000012A1  58                pop ax
000012A2  C3                ret
000012A3  F9                stc
000012A4  EBF8              jmp short 0x129e
000012A6  8B163711          mov dx,[0x1137]
000012AA  EC                in al,dx
000012AB  A820              test al,0x20
000012AD  75FB              jnz 0x12aa
000012AF  EC                in al,dx
000012B0  A820              test al,0x20
000012B2  74FB              jz 0x12af
000012B4  C3                ret
000012B5  C6062E1100        mov byte [0x112e],0x0
000012BA  C606301119        mov byte [0x1130],0x19
000012BF  C6062F1100        mov byte [0x112f],0x0
000012C4  C606321100        mov byte [0x1132],0x0
000012C9  C606311110        mov byte [0x1131],0x10
000012CE  B402              mov ah,0x2
000012D0  B700              mov bh,0x0
000012D2  8A362E11          mov dh,[0x112e]
000012D6  8A162F11          mov dl,[0x112f]
000012DA  CD10              int 0x10
000012DC  B409              mov ah,0x9
000012DE  B0DB              mov al,0xdb
000012E0  B90500            mov cx,0x5
000012E3  8A1E3211          mov bl,[0x1132]
000012E7  B700              mov bh,0x0
000012E9  CD10              int 0x10
000012EB  80062F1105        add byte [0x112f],0x5
000012F0  8006321101        add byte [0x1132],0x1
000012F5  FE0E3111          dec byte [0x1131]
000012F9  75D3              jnz 0x12ce
000012FB  FE062E11          inc byte [0x112e]
000012FF  FE0E3011          dec byte [0x1130]
00001303  75BA              jnz 0x12bf
00001305  C3                ret
00001306  53                push bx
00001307  57                push di
00001308  2E8B163711        mov dx,[cs:0x1137]
0000130D  83C20A            add dx,byte +0xa
00001310  EC                in al,dx
00001311  A820              test al,0x20
00001313  7419              jz 0x132e
00001315  C606511100        mov byte [0x1151],0x0
0000131A  B91000            mov cx,0x10
0000131D  FC                cld
0000131E  BFBF11            mov di,0x11bf
00001321  BE4112            mov si,0x1241
00001324  AC                lodsb
00001325  2E884502          mov [cs:di+0x2],al
00001329  83C704            add di,byte +0x4
0000132C  E2F6              loop 0x1324
0000132E  5F                pop di
0000132F  5B                pop bx
00001330  C3                ret
00001331  BEBF11            mov si,0x11bf
00001334  8B163311          mov dx,[0x1133]
00001338  B001              mov al,0x1
0000133A  EE                out dx,al
0000133B  8A04              mov al,[si]
0000133D  3C00              cmp al,0x0
0000133F  741A              jz 0x135b
00001341  46                inc si
00001342  BBB911            mov bx,0x11b9
00001345  B90300            mov cx,0x3
00001348  8B163911          mov dx,[0x1139]
0000134C  EE                out dx,al
0000134D  8B17              mov dx,[bx]
0000134F  8A04              mov al,[si]
00001351  F6D0              not al
00001353  EE                out dx,al
00001354  46                inc si
00001355  43                inc bx
00001356  43                inc bx
00001357  E2F4              loop 0x134d
00001359  EBE0              jmp short 0x133b
0000135B  8B163911          mov dx,[0x1139]
0000135F  EE                out dx,al
00001360  8B163311          mov dx,[0x1133]
00001364  B009              mov al,0x9
00001366  EE                out dx,al
00001367  C3                ret
00001368  83FB0F            cmp bx,byte +0xf
0000136B  742A              jz 0x1397
0000136D  FC                cld
0000136E  B000              mov al,0x0
00001370  8D3EBF11          lea di,[0x11bf]
00001374  B91000            mov cx,0x10
00001377  51                push cx
00001378  47                inc di
00001379  B90300            mov cx,0x3
0000137C  F3AA              rep stosb
0000137E  59                pop cx
0000137F  E2F6              loop 0x1377
00001381  B91000            mov cx,0x10
00001384  32C0              xor al,al
00001386  FC                cld
00001387  BFBF11            mov di,0x11bf
0000138A  2E8801            mov [cs:bx+di],al
0000138D  FEC0              inc al
0000138F  83C704            add di,byte +0x4
00001392  E2F6              loop 0x138a
00001394  EB1D              jmp short 0x13b3
00001396  90                nop
00001397  B91000            mov cx,0x10
0000139A  32C0              xor al,al
0000139C  FC                cld
0000139D  BFBF11            mov di,0x11bf
000013A0  2E884501          mov [cs:di+0x1],al
000013A4  2E884502          mov [cs:di+0x2],al
000013A8  2E884503          mov [cs:di+0x3],al
000013AC  FEC0              inc al
000013AE  83C704            add di,byte +0x4
000013B1  E2ED              loop 0x13a0
000013B3  C3                ret
000013B4  52                push dx
000013B5  53                push bx
000013B6  BA2302            mov dx,0x223
000013B9  B402              mov ah,0x2
000013BB  CD84              int 0x84
000013BD  8BDD              mov bx,bp
000013BF  B401              mov ah,0x1
000013C1  CD82              int 0x82
000013C3  5B                pop bx
000013C4  5A                pop dx
000013C5  C3                ret
000013C6  B90A00            mov cx,0xa
000013C9  51                push cx
000013CA  B9FFFF            mov cx,0xffff
000013CD  90                nop
000013CE  E2FD              loop 0x13cd
000013D0  59                pop cx
000013D1  E2F6              loop 0x13c9
000013D3  C3                ret
000013D4  EB31              jmp short 0x1407
000013D6  90                nop
000013D7  17                pop ss
000013D8  B7A9              mov bh,0xa9
000013DA  105A65            adc [bp+si+0x65],bl
000013DD  696368656E        imul sp,[bp+di+0x68],word 0x6e65
000013E2  666F              outsd
000013E4  6E                outsb
000013E5  647465            fs jz 0x144d
000013E8  7374              jnc 0x145e
000013EA  201B              and [bp+di],bl
000013EC  46                inc si
000013ED  65686C65          gs push word 0x656c
000013F1  7220              jc 0x1413
000013F3  626569            bound sp,[di+0x69]
000013F6  205A65            and [bp+si+0x65],bl
000013F9  696368656E        imul sp,[bp+di+0x68],word 0x6e65
000013FE  666F              outsd
00001400  6E                outsb
00001401  647465            fs jz 0x1469
00001404  7374              jnc 0x147a
00001406  205053            and [bx+si+0x53],dl
00001409  51                push cx
0000140A  52                push dx
0000140B  1E                push ds
0000140C  B80300            mov ax,0x3
0000140F  CD10              int 0x10
00001411  BD1D14            mov bp,0x141d
00001414  E89DFF            call word 0x13b4
00001417  B91400            mov cx,0x14
0000141A  51                push cx
0000141B  B800A0            mov ax,0xa000
0000141E  8ED8              mov ds,ax
00001420  B300              mov bl,0x0
00001422  BA0000            mov dx,0x0
00001425  BE0000            mov si,0x0
00001428  FC                cld
00001429  B90010            mov cx,0x1000
0000142C  AC                lodsb
0000142D  32D8              xor bl,al
0000142F  98                cbw
00001430  03D0              add dx,ax
00001432  E2F8              loop 0x142c
00001434  0E                push cs
00001435  1F                pop ds
00001436  59                pop cx
00001437  3A1E1C14          cmp bl,[0x141c]
0000143B  750F              jnz 0x144c
0000143D  3B161A14          cmp dx,[0x141a]
00001441  7509              jnz 0x144c
00001443  E2D5              loop 0x141a
00001445  F8                clc
00001446  1F                pop ds
00001447  5A                pop dx
00001448  59                pop cx
00001449  5B                pop bx
0000144A  58                pop ax
0000144B  C3                ret
0000144C  F9                stc
0000144D  EBF7              jmp short 0x1446
0000144F  EB1E              jmp short 0x146f
00001451  90                nop
00001452  0000              add [bx+si],al
00001454  0000              add [bx+si],al
00001456  0000              add [bx+si],al
00001458  0000              add [bx+si],al
0000145A  0000              add [bx+si],al
0000145C  0000              add [bx+si],al
0000145E  0000              add [bx+si],al
00001460  0E                push cs
00001461  47                inc di
00001462  7261              jc 0x14c5
00001464  66696B2036343078  imul ebp,[bp+di+0x20],dword 0x78303436
0000146C  3430              xor al,0x30
0000146E  305053            xor [bx+si+0x53],dl
00001471  51                push cx
00001472  52                push dx
00001473  06                push es
00001474  B80900            mov ax,0x9
00001477  CD10              int 0x10
00001479  FC                cld
0000147A  B800B8            mov ax,0xb800
0000147D  8EC0              mov es,ax
0000147F  BE0080            mov si,0x8000
00001482  C7069F140000      mov word [0x149f],0x0
00001488  C706A1140300      mov word [0x14a1],0x3
0000148E  C7069D140000      mov word [0x149d],0x0
00001494  C7069B140000      mov word [0x149b],0x0
0000149A  B96400            mov cx,0x64
0000149D  51                push cx
0000149E  B90400            mov cx,0x4
000014A1  51                push cx
000014A2  8B3E9B14          mov di,[0x149b]
000014A6  B90A00            mov cx,0xa
000014A9  8BD9              mov bx,cx
000014AB  833E9F1400        cmp word [0x149f],byte +0x0
000014B0  7408              jz 0x14ba
000014B2  8B0E9F14          mov cx,[0x149f]
000014B6  33C0              xor ax,ax
000014B8  F3AB              rep stosw
000014BA  8BC6              mov ax,si
000014BC  86E0              xchg ah,al
000014BE  AB                stosw
000014BF  833EA11400        cmp word [0x14a1],byte +0x0
000014C4  7408              jz 0x14ce
000014C6  8B0EA114          mov cx,[0x14a1]
000014CA  33C0              xor ax,ax
000014CC  F3AB              rep stosw
000014CE  8BCB              mov cx,bx
000014D0  E2D7              loop 0x14a9
000014D2  D1CE              ror si,1
000014D4  7329              jnc 0x14ff
000014D6  FF069F14          inc word [0x149f]
000014DA  833E9F1404        cmp word [0x149f],byte +0x4
000014DF  7514              jnz 0x14f5
000014E1  C7069F140000      mov word [0x149f],0x0
000014E7  C706A1140300      mov word [0x14a1],0x3
000014ED  EB10              jmp short 0x14ff
000014EF  90                nop
000014F0  E2AB              loop 0x149d
000014F2  EB24              jmp short 0x1518
000014F4  90                nop
000014F5  B80300            mov ax,0x3
000014F8  2B069F14          sub ax,[0x149f]
000014FC  A3A114            mov [0x14a1],ax
000014FF  81069B140020      add word [0x149b],0x2000
00001505  59                pop cx
00001506  E299              loop 0x14a1
00001508  83069D1450        add word [0x149d],byte +0x50
0000150D  8B169D14          mov dx,[0x149d]
00001511  89169B14          mov [0x149b],dx
00001515  59                pop cx
00001516  EBD8              jmp short 0x14f0
00001518  C70699140100      mov word [0x1499],0x1
0000151E  C70695141E00      mov word [0x1495],0x1e
00001524  A19514            mov ax,[0x1495]
00001527  F7269914          mul word [0x1499]
0000152B  D1C8              ror ax,1
0000152D  D1C8              ror ax,1
0000152F  A39714            mov [0x1497],ax
00001532  E83200            call word 0x1567
00001535  FF069514          inc word [0x1495]
00001539  B85802            mov ax,0x258
0000153C  33D2              xor dx,dx
0000153E  F7369914          div word [0x1499]
00001542  3B069514          cmp ax,[0x1495]
00001546  7FDC              jg 0x1524
00001548  FF069914          inc word [0x1499]
0000154C  833E99140B        cmp word [0x1499],byte +0xb
00001551  7CCB              jl 0x151e
00001553  BD400B            mov bp,0xb40
00001556  E85BFE            call word 0x13b4
00001559  E89EF2            call word 0x7fa
0000155C  7206              jc 0x1564
0000155E  07                pop es
0000155F  5A                pop dx
00001560  59                pop cx
00001561  5B                pop bx
00001562  58                pop ax
00001563  C3                ret
00001564  F9                stc
00001565  EBF7              jmp short 0x155e
00001567  B40C              mov ah,0xc
00001569  8B0E9514          mov cx,[0x1495]
0000156D  8B169714          mov dx,[0x1497]
00001571  B041              mov al,0x41
00001573  CD10              int 0x10
00001575  C3                ret
00001576  53                push bx
00001577  57                push di
00001578  BE0300            mov si,0x3
0000157B  B80000            mov ax,0x0
0000157E  E8FCF2            call word 0x87d
00001581  B90C00            mov cx,0xc
00001584  BBDF0E            mov bx,0xedf
00001587  50                push ax
00001588  B070              mov al,0x70
0000158A  CD87              int 0x87
0000158C  58                pop ax
0000158D  E844F7            call word 0xcd4
00001590  E2F2              loop 0x1584
00001592  8B161916          mov dx,[0x1619]
00001596  B029              mov al,0x29
00001598  EE                out dx,al
00001599  5F                pop di
0000159A  5B                pop bx
0000159B  C3                ret
0000159C  0000              add [bx+si],al
0000159E  0000              add [bx+si],al
000015A0  0000              add [bx+si],al
000015A2  3F                aas
000015A3  0000              add [bx+si],al
000015A5  0000              add [bx+si],al
000015A7  0000              add [bx+si],al
000015A9  0000              add [bx+si],al
000015AB  0000              add [bx+si],al
000015AD  0000              add [bx+si],al
000015AF  0000              add [bx+si],al
000015B1  0000              add [bx+si],al
000015B3  0000              add [bx+si],al
000015B5  0000              add [bx+si],al
000015B7  07                pop es
000015B8  B803BA            mov ax,0xba03
000015BB  02BB03B4          add bh,[bp+di-0x4bfd]
000015BF  0300              add ax,[bx+si]
000015C1  B000              mov al,0x0
000015C3  085000            or [bx+si+0x0],dl
000015C6  01D8              add ax,bx
000015C8  03DA              add bx,dx
000015CA  03DB              add bx,bx
000015CC  03D4              add dx,sp
000015CE  0300              add ax,[bx+si]
000015D0  B80020            mov ax,0x2000
000015D3  2800              sub [bx+si],al
000015D5  0000              add [bx+si],al
000015D7  0000              add [bx+si],al
000015D9  0000              add [bx+si],al
000015DB  0000              add [bx+si],al
000015DD  0000              add [bx+si],al
000015DF  0000              add [bx+si],al
000015E1  0000              add [bx+si],al
000015E3  0000              add [bx+si],al
000015E5  0000              add [bx+si],al
000015E7  0000              add [bx+si],al
000015E9  0080FC03          add [bx+si+0x3fc],al
000015ED  742B              jz 0x161a
000015EF  50                push ax
000015F0  E80401            call word 0x16f7
000015F3  BEFA15            mov si,0x15fa
000015F6  E8F500            call word 0x16ee
000015F9  BB3000            mov bx,0x30
000015FC  E80401            call word 0x1703
000015FF  BBE30C            mov bx,0xce3
00001602  891E440C          mov [0xc44],bx
00001606  BBC909            mov bx,0x9c9
00001609  891E200C          mov [0xc20],bx
0000160D  58                pop ax
0000160E  C606291604        mov byte [0x1629],0x4
00001613  E8FFF5            call word 0xc15
00001616  E80101            call word 0x171a
00001619  CB                retf
0000161A  C6062C1601        mov byte [0x162c],0x1
0000161F  06                push es
00001620  52                push dx
00001621  E8F4F2            call word 0x918
00001624  BAC203            mov dx,0x3c2
00001627  B0A4              mov al,0xa4
00001629  EE                out dx,al
0000162A  5A                pop dx
0000162B  B800B0            mov ax,0xb000
0000162E  8EC0              mov es,ax
00001630  B85555            mov ax,0x5555
00001633  268A3EFF0F        mov bh,[es:0xfff]
00001638  26A2FF0F          mov [es:0xfff],al
0000163C  26A0FF0F          mov al,[es:0xfff]
00001640  26883EFF0F        mov [es:0xfff],bh
00001645  50                push ax
00001646  E8EF00            call word 0x1738
00001649  52                push dx
0000164A  E8CBF2            call word 0x918
0000164D  BAC203            mov dx,0x3c2
00001650  B023              mov al,0x23
00001652  EE                out dx,al
00001653  5A                pop dx
00001654  58                pop ax
00001655  07                pop es
00001656  3AE0              cmp ah,al
00001658  7515              jnz 0x166f
0000165A  803E2C1601        cmp byte [0x162c],0x1
0000165F  7405              jz 0x1666
00001661  E8F700            call word 0x175b
00001664  7409              jz 0x166f
00001666  C6062C1600        mov byte [0x162c],0x0
0000166B  B80100            mov ax,0x1
0000166E  CB                retf
0000166F  C6062C1600        mov byte [0x162c],0x0
00001674  33C0              xor ax,ax
00001676  CB                retf
00001677  80FC03            cmp ah,0x3
0000167A  7511              jnz 0x168d
0000167C  06                push es
0000167D  52                push dx
0000167E  E897F2            call word 0x918
00001681  BAC203            mov dx,0x3c2
00001684  B021              mov al,0x21
00001686  EE                out dx,al
00001687  5A                pop dx
00001688  B800B8            mov ax,0xb800
0000168B  EBA1              jmp short 0x162e
0000168D  50                push ax
0000168E  53                push bx
0000168F  51                push cx
00001690  52                push dx
00001691  BB9C00            mov bx,0x9c
00001694  B401              mov ah,0x1
00001696  CD82              int 0x82
00001698  B005              mov al,0x5
0000169A  CD8D              int 0x8d
0000169C  CD8E              int 0x8e
0000169E  75FC              jnz 0x169c
000016A0  5A                pop dx
000016A1  59                pop cx
000016A2  5B                pop bx
000016A3  58                pop ax
000016A4  50                push ax
000016A5  E84F00            call word 0x16f7
000016A8  BE0916            mov si,0x1609
000016AB  E84000            call word 0x16ee
000016AE  803EF51507        cmp byte [0x15f5],0x7
000016B3  7411              jz 0x16c6
000016B5  803EF51502        cmp byte [0x15f5],0x2
000016BA  720A              jc 0x16c6
000016BC  C606181603        mov byte [0x1618],0x3
000016C1  C606251650        mov byte [0x1625],0x50
000016C6  BB1000            mov bx,0x10
000016C9  E83700            call word 0x1703
000016CC  BB7509            mov bx,0x975
000016CF  891E440C          mov [0xc44],bx
000016D3  BBF10A            mov bx,0xaf1
000016D6  891E280C          mov [0xc28],bx
000016DA  BBC909            mov bx,0x9c9
000016DD  891E200C          mov [0xc20],bx
000016E1  C606291605        mov byte [0x1629],0x5
000016E6  58                pop ax
000016E7  E82BF5            call word 0xc15
000016EA  E82D00            call word 0x171a
000016ED  CB                retf
000016EE  BF1816            mov di,0x1618
000016F1  B90F00            mov cx,0xf
000016F4  F3A4              rep movsb
000016F6  C3                ret
000016F7  B40F              mov ah,0xf
000016F9  CD84              int 0x84
000016FB  A2F515            mov [0x15f5],al
000016FE  8826F615          mov [0x15f6],ah
00001702  C3                ret
00001703  1E                push ds
00001704  B84000            mov ax,0x40
00001707  8ED8              mov ds,ax
00001709  A11000            mov ax,[0x10]
0000170C  2EA3F715          mov [cs:0x15f7],ax
00001710  25CFFF            and ax,0xffcf
00001713  0BC3              or ax,bx
00001715  A31000            mov [0x10],ax
00001718  1F                pop ds
00001719  C3                ret
0000171A  50                push ax
0000171B  53                push bx
0000171C  1E                push ds
0000171D  B84000            mov ax,0x40
00001720  8ED8              mov ds,ax
00001722  2EA1F715          mov ax,[cs:0x15f7]
00001726  A31000            mov [0x10],ax
00001729  1F                pop ds
0000172A  B007              mov al,0x7
0000172C  CD87              int 0x87
0000172E  B400              mov ah,0x0
00001730  A0F515            mov al,[0x15f5]
00001733  CD84              int 0x84
00001735  5B                pop bx
00001736  58                pop ax
00001737  C3                ret
00001738  1E                push ds
00001739  16                push ss
0000173A  B84000            mov ax,0x40
0000173D  8ED8              mov ds,ax
0000173F  E80600            call word 0x1748
00001742  E80600            call word 0x174b
00001745  17                pop ss
00001746  1F                pop ds
00001747  C3                ret
00001748  B703              mov bh,0x3
0000174A  C3                ret
0000174B  B703              mov bh,0x3
0000174D  8AE7              mov ah,bh
0000174F  80E401            and ah,0x1
00001752  80C401            add ah,0x1
00001755  A08700            mov al,[0x87]
00001758  22C4              and al,ah
0000175A  C3                ret
0000175B  50                push ax
0000175C  52                push dx
0000175D  53                push bx
0000175E  BA00C6            mov dx,0xc600
00001761  8EC2              mov es,dx
00001763  BBD403            mov bx,0x3d4
00001766  268A27            mov ah,[es:bx]
00001769  26C60728          mov byte [es:bx],0x28
0000176D  BAD403            mov dx,0x3d4
00001770  EC                in al,dx
00001771  268827            mov [es:bx],ah
00001774  5B                pop bx
00001775  5A                pop dx
00001776  3C28              cmp al,0x28
00001778  58                pop ax
00001779  C3                ret
0000177A  90                nop
0000177B  F8                clc
0000177C  C3                ret
0000177D  1A23              sbb ah,[bp+di]
0000177F  2323              and sp,[bp+di]
00001781  40                inc ax
00001782  40                inc ax
00001783  40                inc ax
00001784  204550            and [di+0x50],al
00001787  43                inc bx
00001788  204452            and [si+0x52],al
0000178B  314144            xor [bx+di+0x44],ax
0000178E  47                inc di
0000178F  3220              xor ah,[bx+si]
00001791  56                push si
00001792  312E3031          xor [0x3130],bp
00001796  2031              and [bx+di],dh
00001798  3331              xor si,[bx+di]
0000179A  3238              xor bh,[bx+si]
0000179C  380D              cmp [di],cl
0000179E  0A1A              or bl,[bp+si]
000017A0  00                db 0x00
