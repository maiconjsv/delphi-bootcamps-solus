unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    edtValor1: TEdit;
    edtValor2: TEdit;
    lbResultado: TLabel;
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnMultiplicar: TButton;
    btnDividir: TButton;
    btnLimpar: TButton;
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnDividirClick(Sender: TObject);
var
  num1, num2, resultado: Double;
begin
  num1 := StrToFloat(edtValor1.Text);
  num2 := StrToFloat(edtValor2.Text);
  resultado:= num1 / num2;
  lbResultado.Caption := FloatToStr(resultado);
end;

procedure TForm2.btnLimparClick(Sender: TObject);
begin
  edtValor1.Clear;
  edtValor2.Clear;
  lbResultado.Caption := '';
  edtValor1.SetFocus
end;

procedure TForm2.btnMultiplicarClick(Sender: TObject);
var
  num1, num2, resultado: Double;
begin
  num1 := StrToFloat(edtValor1.Text);
  num2 := StrToFloat(edtValor2.Text);
  resultado:= num1 * num2;
  lbResultado.Caption := FloatToStr(resultado);
end;

procedure TForm2.btnSomarClick(Sender: TObject);
var
  num1, num2, resultado: Double;
begin
  num1 := StrToFloat(edtValor1.Text);
  num2 := StrToFloat(edtValor2.Text);
  resultado:= num1 + num2;
  lbResultado.Caption := FloatToStr(resultado);
end;

procedure TForm2.btnSubtrairClick(Sender: TObject);
var
  num1, num2, resultado: Double;
begin
  num1 := StrToFloat(edtValor1.Text);
  num2 := StrToFloat(edtValor2.Text);
  resultado:= num1 - num2;
  lbResultado.Caption := FloatToStr(resultado);

end;

end.
