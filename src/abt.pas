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

unit abt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm2 = class(TForm)
    RichEdit1: TRichEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses frm;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  form1.enabled:=true;
  form2.Visible:=false;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  form1.enabled:=true;
  form2.Visible:=false;
end;

end.
