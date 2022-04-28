program gamedoanso;
uses crt;
var TienUser,SoRD,TienCong,Many1Luot:Integer;
    SoLanThuLai,StartNum,SoDaRand,MaxRand,Session:Integer;
    CheckWin:Boolean;
begin clrscr;
  (*Config game*)
  (*Author: HexTran*)
  TienCong := 50;
  TienUser := 20;
  Many1Luot := 1;
  SoLanThuLai := 3;
  MaxRand := 10;
  (*Bat dau tro choi*)
  while True do begin
    clrscr();
    CheckWin := False;
    writeln('Ban hien co ',TienUser,', phi choi la ',Many1Luot);
    write('An enter de play: ');
    readln;
    if(TienUser >= Many1Luot) then begin
      TienUser := TienUser - Many1Luot;
      Randomize;
      SoRD := random(MaxRand);
      writeln('So random da co');
      writeln('Ban co ',SoLanThuLai,' thu lai');
      for StartNum:=1 to SoLanThuLai do begin
        write('[',StartNum,'] => Nhap du doan: ');
        readln(Session);
        if (Session = SoRD) then begin
          write('Ban dang thang duoc ',TienCong,',!');
          TienUser := TienUser + TienCong;
          StartNum:=SoLanThuLai;
          CheckWin:=True;
        end;
      end;
      if(CheckWin = False) then writeln('Ban da thua so random la ',SoRD);
      delay(1500);
      continue;
    end
    else
      writeln('Het tien roi thi nghi');
      break;
  end;
  write('Chuong trinh da ngung');
  delay(3000);
end.
