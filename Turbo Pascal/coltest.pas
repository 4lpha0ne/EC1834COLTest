program COLTest;
uses Crt;

const GDC_PARM=$3d0; GDC_STAT=$3d0; GDC_COMD=$3d2;
      COL_MODE=$3d8; COL_CTRL=$3de; COL_STAT=$3da;
      COL_COLMASK=$3d9;
      COL_PALR=$3db; COL_PALG=$3dd; COL_PALF=$3df;
      COL_CHARGEN=$3dc;
      FLAG_CHK = false;

COL_CTRL_SET_PAL     = $80;
COL_CTRL_SET_CHARGEN = $40;
COL_CTRL_640_480     = $20;
COL_CTRL_640_400     = $10;
COL_CTRL_PLANE0      = $01; {Bit3=0: RW Bit0}
COL_CTRL_PLANE1      = $02;
COL_CTRL_PLANE2      = $08;
COL_CTRL_PLANE3      = $0a;

var adr:integer;

Procedure gdccmd(b:byte);Begin port[GDC_COMD]:=b End;
Procedure putcmd1p(b,p:byte);Begin port[GDC_COMD]:=b;port[GDC_PARM]:=p End;
Procedure putvalb(b:byte);Begin port[GDC_PARM]:=b End;
Procedure putvalw(i:integer);Begin port[GDC_PARM]:=lo(i);port[GDC_PARM]:=hi(i) End;

procedure Init_640_480;
begin
  port[COL_CTRL] := COL_CTRL_640_480;
  port[COL_MODE] := $9;
end;

procedure setvmode(m: byte);
begin
  asm
    mov al, m
    mov ah, 0
    int 10h
  end;
end;

procedure setmask(m: integer);
begin
  asm
    mov al, 0
    mov ah, 0
    int 10h

  end;
end;

procedure waitfifofree;
begin
  if FLAG_CHK then
  begin
    repeat until port[GDC_STAT] and 4 > 0; {wait for free Fifo}
  end;
end;

procedure waitfordata;
begin
  if FLAG_CHK then
  begin
    repeat until port[GDC_STAT] and 1 > 0; {wait for data availability}
  end;
end;

procedure writewords(startadr, endadr, val: integer);
var c: integer;
begin
  port[COL_COLMASK]:=$2f;
  waitfifofree;
  port[GDC_COMD]:=$20; {CURD}
  port[GDC_PARM]:=lo(startadr); {EAD low}
  port[GDC_PARM]:=hi(startadr); {EAD high}
  port[GDC_PARM]:=0; {EAD 2 MSB and dot adress}
  port[GDC_COMD]:=$4a; {MASK}
  port[GDC_PARM]:=$ff;
  port[GDC_PARM]:=$ff;
  for c:=0 to endadr-startadr do
  begin
    waitfifofree;
    port[GDC_PARM]:=lo(val);
    port[GDC_PARM]:=hi(val);
  end;
end;

function readword(adr: integer) : integer;
begin
  waitfordata;
  readword := port[GDC_COMD];
end;

function readnextbyte: byte;
begin
  waitfordata;
  readnextbyte := port[GDC_COMD];
end;

begin
    setvmode(3); {textmode}
    writeln('Start');
    Init_640_480;
    writeln('Mode 640x480 initialisiert');
    writeln('Schreiben von 32k Worten auf allen Ebenen');
    writewords(0,32767,-32768);
    writewords(0,32767,0);
    textmode(BW80);
    writeln('Test abgeschlossen');
    {writeln(port[GDC_STAT]);
    repeat until keypressed;{}
end.
