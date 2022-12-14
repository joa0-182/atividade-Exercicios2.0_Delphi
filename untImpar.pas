unit untImpar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmImpar = class(TForm)
    pnlImpar: TPanel;
    Label1: TLabel;
    memResultado: TMemo;
    pnlGerar: TPanel;
    btnGerar: TSpeedButton;
    btnLimpar: TBitBtn;
    btnInfo: TBitBtn;
    btnVoltar: TBitBtn;
    procedure btnGerarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImpar: TfrmImpar;

implementation

{$R *.dfm}

procedure TfrmImpar.btnGerarClick(Sender: TObject);
var num1, num2, resImpar, i, ii: integer;
begin

      ii := 101;

      for i := 1 to 50 do
        begin
           memResultado.Lines.Add(IntToStr(i) + '? Valor = ' + IntToStr(ii));
           ii := ii + 2;
        end;

end;

procedure TfrmImpar.btnInfoClick(Sender: TObject);
begin
      Application.MessageBox('Escrever um algoritmo que gera e escreve os n?meros ?mpares entre 100 e 200. ', ' 2? Exerc?cio', MB_OK);
end;

procedure TfrmImpar.btnLimparClick(Sender: TObject);
begin
      memResultado.Clear;
end;

procedure TfrmImpar.btnVoltarClick(Sender: TObject);
begin
      frmImpar.Close;
end;

end.
