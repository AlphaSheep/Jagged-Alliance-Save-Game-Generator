program Jedit2005;

uses
  Forms,
  frm in 'frm.pas' {Form1},
  abt in 'abt.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
