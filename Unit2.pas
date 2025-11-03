unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
  private
    FValorTotal: integer;
  public
    function CalculaValor: Integer;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  FValorTotal := 100;
  Memo1.Lines.Add('hello, World.');
  Memo1.Lines.Add('===Método com retorno(Function)');
end;

function TForm2.CalculaValor: Integer;
begin
  Result := FValorTotal + 1;
end;

end.
