unit untPn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmPn = class(TForm)
    pnlPn: TPanel;
    Label1: TLabel;
    pnlGerar: TPanel;
    btnGerar: TSpeedButton;
    memPositivo: TMemo;
    pnlPosNeg: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    edtPositivo: TEdit;
    edtNegativo: TEdit;
    memNegativo: TMemo;
    btnInfo: TBitBtn;
    btnVoltar: TBitBtn;
    pnlLimpar: TPanel;
    btnLimpar: TSpeedButton;
    procedure btnGerarClick(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPn: TfrmPn;

implementation

{$R *.dfm}

procedure TfrmPn.btnGerarClick(Sender: TObject);
var somaP, somaN, i: integer;
begin

  somaP := 0;
  somaN := 0;
  for i := -20 to 20 do
    begin
      if i < 0 then
      begin
        somaN := somaN + i;
        memNegativo.Lines.Add(IntToStr(i));
      end
      else
      begin
        somaP := somaP + i;
        memPositivo.Lines.Add(IntToStr(i));
      end;
    end;

    edtNegativo.Text := IntToStr(somaN);
    edtPositivo.Text := IntToStr(somaP);



end;

procedure TfrmPn.btnInfoClick(Sender: TObject);
begin
      Application.MessageBox('Escrever um algoritmo que gere a soma dos n�meros positivos e negativos entre -20 e 20. ', ' 3� Exerc�cio', MB_OK);
end;

procedure TfrmPn.btnLimparClick(Sender: TObject);
begin
      memNegativo.Clear;
      memPositivo.Clear;
      edtNegativo.Clear;
      edtPositivo.Clear;

end;

procedure TfrmPn.btnVoltarClick(Sender: TObject);
begin
      frmPn.Close;
end;

end.