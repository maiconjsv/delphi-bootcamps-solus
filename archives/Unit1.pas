unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    n1: TEdit;
    n2: TEdit;
    result: TEdit;
    Label1: TLabel;
    somar: TButton;

  private

    function somaar(v1, v2: Integer) : Integer;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
function Tform1.somaar(v1, v2: Integer): Integer;
begin
  Result := v1 + v2;
end;
end.

