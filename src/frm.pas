{
Potential Flow Generator
Copyright (C) 2006, Brendan James Gray

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see http://www.gnu.org/licenses/.
}

unit frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls,Math, Menus, XPMan;

type
  TForm1 = class(TForm)
    ews: TEdit;
    edx: TEdit;
    ehl: TEdit;
    eag: TEdit;
    emk: TEdit;
    emc: TEdit;
    emd: TEdit;
    eex: TEdit;
    elv: TEdit;
    esal: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    eid: TEdit;
    RichEdit1: TRichEdit;
    Button3: TButton;
    ListBox1: TListBox;
    ename: TEdit;
    Label6: TLabel;
    Label12: TLabel;
    acc: TEdit;
    Accuracy: TLabel;
    bom: TEdit;
    Label13: TLabel;
    RP: TEdit;
    Label14: TLabel;
    DP: TEdit;
    Label15: TLabel;
    door: TEdit;
    Label16: TLabel;
    Button1: TButton;
    Label17: TLabel;
    ap: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    apmax: TEdit;
    Button2: TButton;
    Button4: TButton;
    Bevel1: TBevel;
    Button5: TButton;
    Label20: TLabel;
    pdr: TEdit;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    MainMenu1: TMainMenu;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    XPManifest1: TXPManifest;
    File1: TMenuItem;
    Save1: TMenuItem;
    Save2: TMenuItem;
    N2: TMenuItem;
    Exit1: TMenuItem;
    Edit1: TMenuItem;
    ResetAll1: TMenuItem;
    ResetMerc1: TMenuItem;
    N1: TMenuItem;
    Salary1: TMenuItem;
    Autoadjustsalary1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    N3: TMenuItem;
    RecalculateStatistics1: TMenuItem;
    SetValues1: TMenuItem;
    N4: TMenuItem;
    GenerateSaveFile1: TMenuItem;
    Label21: TLabel;
    Randomize1: TMenuItem;
    MaxAllStats1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure RichEdit1Change(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ResetMerc1Click(Sender: TObject);
    procedure SetValues1Click(Sender: TObject);
    procedure ResetAll1Click(Sender: TObject);
    procedure Randomize1Click(Sender: TObject);
    procedure GenerateSaveFile1Click(Sender: TObject);
    procedure RecalculateStatistics1Click(Sender: TObject);
    procedure Save2Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Autoadjustsalary1Click(Sender: TObject);
    procedure MaxAllStats1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type merc=record
       name:string[6];
       Full:string[40];
       salary:integer;
       hlth,dex,wis,agl,med,expl,mech,marks:0..100;
       lvl:0..15;
      end;
     mf=array[1..60] of merc;

var
  Form1: TForm1;
  new:merc;
  fl,fl2:textfile;
  ms:mf;
  sv,fin:string;

implementation

uses abt;

{$R *.dfm}

procedure TForm1.Button3Click(Sender: TObject);
var x,m,dead:integer;
    nm:string[6];
    fn:string;
    it,orig,that:string;
    sal,hl,ag,ws,md,ex,mc,dx,mk,lv:integer;
    endnm:boolean;
begin
  richedit1.lines.add('');
  richedit1.lines.add('Loading standard Jagged Alliance characters');
  assignfile(fl,'data.txt');
  reset(fl);
  readln(fl,orig);
  closefile(fl);
  that:=orig;
  for x:= 1 to (length(that)div 2) do begin
    sv:=sv+chr(strtoint('$'+that[1]+that[2]));
    delete(that,1,2);
   end;
{WRITING THE SAVE FILE}
  richedit1.lines.add('Creating tempary save file... Please Wait...');
  assignfile(fl2,'end.txt');
  Reset(fl2);
  readln(fl2,fin);
  assignfile(fl,'GAME0.SAV');
  rewrite(fl);
  Write(fl,#0#0'D754 INSTANT GAME');
  for x:= 19 to 4123 do write(fl,#0);
  write(fl,sv);
  while length(fin)>1 do begin
    write(fl,chr(strtoint('$'+fin[1]+fin[2])));
    delete(fin,1,2);
   end;
  closefile(fl);
  closefile(fl2);
{END SAVE WRITE}
  richedit1.Lines.Add('Temp file created sucsessfully');
  listbox1.Items.Clear;
  for m:=1 to 60 do begin
    nm:='';fn:='';
    it:='  '+orig;
    dead:=0;
    endnm:=false;
    for x := 1 to 6 do begin
      delete(it,1,2);dead:=dead+2;
      if (it[1]+it[2])='00' then endnm:=true;
      if not endnm then nm:=nm+chr(strtoint('$'+it[1]+it[2]));
     end;
    delete(it,1,10);dead:=dead+10;
    while it[1]<>'0' do begin
      fn:=fn+chr(strtoint('$'+it[1]+it[2]));
      delete(it,1,2);dead:=dead+2;
     end;
    repeat
      delete(it,1,2);dead:=dead+2;
     until dead>80;
    sal:=strtoint('$'+it[3]+it[4]+it[1]+it[2]);
    delete(it,1,4);dead:=dead+4;
    hl:=strtoint('$'+it[1]+it[2]);
    delete(it,1,4);dead:=dead+4;
    ag:=strtoint('$'+it[1]+it[2]);
    delete(it,1,2);dead:=dead+4;
    mk:=strtoint('$'+it[1]+it[2]);
    delete(it,1,2);dead:=dead+4;
    ws:=strtoint('$'+it[1]+it[2]);
    delete(it,1,4);dead:=dead+4;
    delete(it,1,32);dead:=dead+4;
    md:=strtoint('$'+it[1]+it[2]);
    delete(it,1,2);dead:=dead+4;
    mc:=strtoint('$'+it[1]+it[2]);
    delete(it,1,2);dead:=dead+4;
    dx:=strtoint('$'+it[1]+it[2]);
    delete(it,1,2);dead:=dead+4;
    ex:=strtoint('$'+it[1]+it[2]);
    delete(it,1,2);dead:=dead+4;
    lv:=strtoint('$'+it[1]+it[2]);
    delete(it,1,2);dead:=dead+4;
    repeat
      delete(it,1,2);dead:=dead+2;
     until dead>180;
    delete(orig,1,180);
    ms[m].name   :=nm;
    ms[m].Full   :=fn;
    ms[m].salary :=sal;
    ms[m].hlth   :=hl;
    ms[m].agl    :=ag;
    ms[m].wis    :=ws;
    ms[m].expl   :=ex;
    ms[m].mech   :=mc;
    ms[m].med    :=md;
    ms[m].marks  :=mk;
    ms[m].lvl    :=lv;
    ms[m].dex    :=dx;
    ListBox1.Items.Add(ms[m].name);
   end;
  richedit1.Lines.Add('Statistics uploaded into character matrix');
  listbox1.ItemIndex:=0;
  richedit1.Lines.Add('Default character set loaded');
  richedit1change(sender);
  ListBox1Click(sender);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Button3Click(sender);
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  richedit1.lines.add('');
  richedit1.lines.Add('Reading matrix...');
  ename.Text:=         ms[listbox1.itemindex+1].full    ;
  esal.Text:=inttostr( ms[listbox1.itemindex+1].salary  );
  ehl.Text:= inttostr( ms[listbox1.itemindex+1].hlth    );
  ews.Text:= inttostr( ms[listbox1.itemindex+1].wis     );
  eex.Text:= inttostr( ms[listbox1.itemindex+1].expl    );
  emd.Text:= inttostr( ms[listbox1.itemindex+1].med     );
  emc.Text:= inttostr( ms[listbox1.itemindex+1].mech    );
  emk.Text:= inttostr( ms[listbox1.itemindex+1].marks   );
  eag.Text:= inttostr( ms[listbox1.itemindex+1].agl     );
  edx.Text:= inttostr( ms[listbox1.itemindex+1].dex     );
  elv.Text:= inttostr( ms[listbox1.itemindex+1].lvl     );
  eid.Text:=           ms[listbox1.itemindex+1].name    ;
  Button1Click(sender);
  richedit1.lines.add('');
  richedit1.lines.add('Loaded statistics');
  richedit1change(sender);
end;

procedure TForm1.Button1Click(Sender: TObject);
var hlth  ,
    wis   ,
    expl  ,
    med    ,
    mech   ,
    marks  ,
    agl    ,
    dex     ,
    lvl     :integer;
begin
  richedit1.lines.add('');
  richedit1.lines.add('Checking Profile');
  hlth   :=  round(strtofloat( ehl.Text ));
  wis    :=  round(strtofloat( ews.Text ));
  expl   :=  round(strtofloat( eex.Text ));
  med    :=  round(strtofloat( emd.Text ));
  mech   :=  round(strtofloat( emc.Text ));
  marks  :=  round(strtofloat( emk.Text ));
  agl    :=  round(strtofloat( eag.Text ));
  dex    :=  round(strtofloat( edx.Text ));
  lvl    :=  round(strtofloat( elv.Text ));
  richedit1.lines.add('Performing calculations');
  acc.Text:=floattostrf( Power((hlth*dex*marks*marks),1/4)+(lvl-10),fffixed,6,2)+' %';
  bom.Text:=floattostrf( Power((wis*dex*expl*expl),1/4)+(lvl-10),fffixed,6,2)+' %';
  if bom.Text[1]='-' then bom.Text:='0.00 %';
  RP.Text:=inttostr(round(mech*dex*0.015));
  DP.Text:=inttostr(2*round(dex*med/500+wis*med/100-med/5));
  door.Text:=inttostr(round(wis*dex*mech/202+256*lvl));
  pdr.Text:=inttostr(round(strtoint(door.Text)/65))+' %';
  AP.text:=inttostr(round(hlth/20+agl/10+dex/20+(lvl)/2));
  richedit1.lines.add('Checking action point validity');
  case ap.Text[1] of
    '1':  apmax.Text:=inttostr(round(hlth/20+agl/10+dex/20+(lvl)/2)+5);
    '2': apmax.Text:='25';
    '3'.. '8': begin ap.Text:='8';apmax.Text:='13'; end;
    '9':  apmax.Text:=inttostr(round(hlth/20+agl/10+dex/20+(lvl)/2)+5);
   end;
  richedit1.lines.add('Calculations completed');
  richedit1change(sender);
end;

procedure TForm1.Button2Click(Sender: TObject);
var ssal:string[4];
    n,x,m:integer;
begin
  richedit1.lines.add('');
  richedit1.Lines.Add('Writing save file... Please Wait...');
  richedit1.lines.add('');
  for m := 1 to 60 do begin
    richedit1.lines.Strings[richedit1.Lines.Capacity-1]:=richedit1.lines.Strings[richedit1.Lines.Capacity-1]+'_';
    n:=(m-1)*90;
    for x:= 1 to length(ms[m].name) do sv[n+x] := ms[m].name[x];
    sv[n+length(ms[m].name)+1]:=#0;
    for x:= 1 to length(ms[m].full) do sv[n+x+10] := ms[m].full[x];
    sv[n+length(ms[m].full)+11]:=#0;
    ssal:=inttohex(ms[m].salary,4);
    sv[n+42]:=chr(strtoint('$'+ssal[1]+ssal[2]));
    sv[n+41]:=chr(strtoint('$'+ssal[3]+ssal[4]));
    sv[n+43]:=chr(ms[m].hlth);
    sv[n+45]:=chr(ms[m].agl);
    sv[n+46]:=chr(ms[m].marks);
    sv[n+47]:=chr(ms[m].wis);
    sv[n+68]:=chr(ms[m].expl);
    sv[n+65]:=chr(ms[m].med);
    sv[n+66]:=chr(ms[m].mech);
    sv[n+67]:=chr(ms[m].dex);
    sv[n+69]:=chr(ms[m].lvl);
   end;
{WRITING THE SAVE FILE}
  assignfile(fl2,'end.txt');
  Reset(fl2);
  readln(fl2,fin);
  assignfile(fl,'D:\JAGGED\GAME0.SAV');
  rewrite(fl);
  Write(fl,#0#0'D754 INSTANT GAME');
  for x:= 19 to 4123 do write(fl,#0);
  write(fl,sv);
  while length(fin)>1 do begin
    write(fl,chr(strtoint('$'+fin[1]+fin[2])));
    delete(fin,1,2);
   end;
  richedit1.Lines.Add('File saved');
  richedit1.Lines.Add('  ''D:\JAGGED\GAME0.SAV'' successfully written to disc');
  closefile(fl);
  closefile(fl2);
{END SAVE WRITE}
  richedit1.Lines.Add('Save file generated. Ready to play...');
  richedit1change(sender);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  richedit1.Lines.Add('');
  richedit1.Lines.Add('New character statistics recognised');
  ms[listbox1.itemindex+1].full   :=            ename.Text ;
  ms[listbox1.itemindex+1].salary := strtoint(  esal.Text ) ;
  ms[listbox1.itemindex+1].hlth   := strtoint(  ehl.Text  ) ;
  ms[listbox1.itemindex+1].wis    := strtoint(  ews.Text  ) ;
  ms[listbox1.itemindex+1].expl   := strtoint(  eex.Text  ) ;
  ms[listbox1.itemindex+1].med    := strtoint(  emd.Text  ) ;
  ms[listbox1.itemindex+1].mech   := strtoint(  emc.Text  ) ;
  ms[listbox1.itemindex+1].marks  := strtoint(  emk.Text  ) ;
  ms[listbox1.itemindex+1].agl    := strtoint(  eag.Text  ) ;
  ms[listbox1.itemindex+1].dex    := strtoint(  edx.Text  ) ;
  ms[listbox1.itemindex+1].lvl    := strtoint(  elv.Text  ) ;
  ms[listbox1.itemindex+1].name   :=            eid.Text   ;
  richedit1.Lines.Add('Character matrix rewritten');
  richedit1.Lines.Add('Mercenary profile saved');
  richedit1change(sender);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  richedit1.Lines.Add('');
  richedit1.Lines.Add('Uploading previous matrix');
  ListBox1Click(sender);
  richedit1.Lines.Add('Caracter statistics reset');
  richedit1change(sender);
end;

procedure TForm1.RichEdit1Change(Sender: TObject);
begin
  if richedit1.Lines.Capacity>20 then  repeat
    richedit1.Lines.Delete(1);
   until richedit1.Lines.Capacity<=20
end;

procedure TForm1.Button6Click(Sender: TObject);
var m:integer;
begin
  richedit1.Lines.Add('');
  richedit1.Lines.Add('Randomizing mercenary profiles');
  randomize;
  richedit1.Lines.Add('Rerolling statistics');
  for m := 1 to 60 do begin
    ms[m].hlth    := round(sqrt(random(70)/70)*70)+30;
    ms[m].wis     := round(sqrt(random(100)/100)*100);
    ms[m].expl    := round(sqr(random(10000)/10000)*100);
    ms[m].med     := round(sqr(random(10000)/10000)*100);
    ms[m].mech    := round(sqr(random(10000)/10000)*100);
    ms[m].marks   := round(sqrt(sqrt(random(90)/90))*90)+10;
    ms[m].agl     := round(sqrt(sqrt(random(90)/90))*90)+10;
    ms[m].dex     := round(sqrt(sqrt(random(90)/90))*90)+10;
    ms[m].lvl     := round(sqr((random(9))/9)*9)+1;
    ms[m].salary  := round(power((((ms[m].hlth * ms[m].wis * ms[m].agl * ms[m].dex)/10000+(ms[m].mech * ms[m].expl * ms[m].med * ms[m].marks)/5000) * power(1.25,ms[m].lvl))/10*2,1));
    ms[m].salary  := ms[m].salary div 100 * 100 +100;
   end;
  richedit1.Lines.Add('Rewriting character matrix');
  richedit1.Lines.Add('New statistics accepted');
  richedit1change(sender);
  listbox1click(sender);
end;

procedure TForm1.ResetMerc1Click(Sender: TObject);
begin
  button5click(sender);
end;

procedure TForm1.SetValues1Click(Sender: TObject);
begin
  button4click(sender);
end;

procedure TForm1.ResetAll1Click(Sender: TObject);
begin
  button3click(sender);
end;

procedure TForm1.Randomize1Click(Sender: TObject);
begin
  button6click(sender);
end;

procedure TForm1.GenerateSaveFile1Click(Sender: TObject);
begin
  button2click(sender);
end;

procedure TForm1.RecalculateStatistics1Click(Sender: TObject);
begin
  button1click(sender);
end;

procedure TForm1.Save2Click(Sender: TObject);
begin
  button7click(sender);
end;

procedure TForm1.Save1Click(Sender: TObject);
begin
  button8click(sender);
end;

procedure TForm1.About1Click(Sender: TObject);
begin
  form1.Enabled:=false;
  form2.visible:=true;
end;

procedure TForm1.Button7Click(Sender: TObject);
var sv:file of mf;
begin
  savedialog1.Execute;
  if savedialog1.FileName<>'' then begin
    assignfile(sv,savedialog1.Filename);
    Rewrite(sv);
    Write(sv,ms);
    Closefile(sv);
   end;
end;

procedure TForm1.Button8Click(Sender: TObject);
var op:file of mf;
begin
  opendialog1.Execute;
  if opendialog1.FileName<>'' then begin
    assignfile(op,opendialog1.Filename);
    Reset(op);
    Read(op,ms);
    Closefile(op);
   end;
end;

procedure TForm1.Autoadjustsalary1Click(Sender: TObject);
var hlth  ,
    wis   ,
    expl  ,
    med    ,
    mech   ,
    marks  ,
    agl    ,
    dex    ,
    sal    ,
    lvl    :integer;
begin
  richedit1.lines.add('');
  richedit1.lines.add('Checking Profile');
  hlth   :=  round(strtofloat( ehl.Text ));
  wis    :=  round(strtofloat( ews.Text ));
  expl   :=  round(strtofloat( eex.Text ));
  med    :=  round(strtofloat( emd.Text ));
  mech   :=  round(strtofloat( emc.Text ));
  marks  :=  round(strtofloat( emk.Text ));
  agl    :=  round(strtofloat( eag.Text ));
  dex    :=  round(strtofloat( edx.Text ));
  lvl    :=  round(strtofloat( elv.Text ));
  richedit1.lines.add('Calculating mercinary value');
  sal:= round(power((((hlth * wis * agl * dex)/10000+(mech * expl * med * marks)/5000) * power(1.25,lvl))/10*2,1));
  richedit1.lines.add('Mercenary value calculated at '+inttostr(round(sqrt(sal))));
  richedit1.lines.add('Auto-adjusting salary');
  sal:= sal div 100 * 100 + 100;
  esal.Text:=inttostr(sal);
  richedit1.lines.add('New Salary applied');
  richedit1change(sender);
end;

procedure TForm1.MaxAllStats1Click(Sender: TObject);
var m:integer;
begin
  richedit1.Lines.Add('');
  richedit1.Lines.Add('Randomizing mercenary profiles');
  randomize;
  richedit1.Lines.Add('Rerolling statistics');
  for m := 1 to 60 do begin
    ms[m].hlth    := 100;
    ms[m].wis     := 100;
    ms[m].expl    := 100;
    ms[m].med     := 100;
    ms[m].mech    := 100;
    ms[m].marks   := 100;
    ms[m].agl     := 100;
    ms[m].dex     := 100;
    ms[m].lvl     := 9;
   end;
  richedit1.Lines.Add('Rewriting character matrix');
  richedit1.Lines.Add('New statistics accepted');
  richedit1change(sender);
  listbox1click(sender);
end;

end.





