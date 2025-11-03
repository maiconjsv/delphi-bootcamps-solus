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
    procedure Button2Click(Sender: TObject);
  private
    FValorTotal: integer;
    FAliquota: double;
  public
    function CalculaValor: Integer;
    function CalculaTributo: double;
    procedure VisualizaMsg;
    function SomaValores(aValor1, aValor2: integer):integer;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  lValor: integer;
  FAliquotaFInal: double;
begin
  FValorTotal := 100;
  FAliquota:= 100;
  lValor:= CalculaValor;
  FAliquotaFInal:= CalculaTributo;
  Memo1.Lines.Add('hello, World.');
  Memo1.Lines.Add('===Método com retorno(Function)');
  memo1.Lines.Add(lValor.ToString);
  memo1.Lines.Add(CalculaTributo.ToString);
  VisualizaMsg;
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  lSoma: Integer;
begin
  lSoma := SomaValores(5,5);
  Memo1.Clear;
  Memo1.Lines.Add('==========soma==========');
  Memo1.Lines.Add(lSoma.ToString)
end;

function TForm2.CalculaTributo: double;
begin
  Result:= FAliquota * 0.1;
end;

function TForm2.CalculaValor: Integer;
begin
  Result := FValorTotal + 1;
end;

function TForm2.SomaValores(aValor1, aValor2: integer): integer;
begin
  Result:= aValor1 + aValor2;
end;

procedure TForm2.VisualizaMsg;
begin
  ShowMessage('Eai?');
end;

end.
