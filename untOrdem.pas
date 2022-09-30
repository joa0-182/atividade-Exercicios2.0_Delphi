unit untOrdem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmOrdem = class(TForm)
    pnlOrdenar: TPanel;
    memOrdenacao: TMemo;
    btnOrdenar: TSpeedButton;
    pnlBotao5: TPanel;
    lblTitulo: TLabel;
    btnInfo: TBitBtn;
    edtValor1: TEdit;
    edtValor2: TEdit;
    edtValor3: TEdit;
    Panel1: TPanel;
    lblValor1: TLabel;
    lblValor2: TLabel;
    lblValor3: TLabel;
    btnLimpar: TBitBtn;
    btnVoltar: TBitBtn;
    procedure btnOrdenarClick(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrdem: TfrmOrdem;

implementation

{$R *.dfm}

procedure TfrmOrdem.btnInfoClick(Sender: TObject);
begin
      Application.MessageBox('Desenvolva um algoritmo que leia 3 valores inteiros e os apresente em ordem decrescente.', '  5° Exercício', MB_OK);
end;

procedure TfrmOrdem.btnLimparClick(Sender: TObject);
begin
      edtValor1.clear;
      edtValor2.clear;
      edtValor3.clear;
      memOrdenacao.clear;
end;

procedure TfrmOrdem.btnOrdenarClick(Sender: TObject);
var n1, n2, n3: real;

begin
if (edtValor1.Text = '') or (edtValor2.Text = '') or (edtValor3.Text = '') then
begin
  Application.MessageBox('Coloque algum número', ' Atenção', MB_OK);
end
else
begin

      n1 := StrToFloat(edtValor1.Text);
      n2 := StrToFloat(edtValor2.Text);
      n3 := StrToFloat(edtValor3.Text);

      if (n1 > n2) and (n1 > n3) then
        begin
          if n2 > n3 then
            begin
              memOrdenacao.Lines.Add(FloatToStr(n1));
              memOrdenacao.Lines.Add(FloatToStr(n2));
              memOrdenacao.Lines.Add(FloatToStr(n3));
            end
              else
            begin
              memOrdenacao.Lines.Add(FloatToStr(n1));
              memOrdenacao.Lines.Add(FloatToStr(n3));
              memOrdenacao.Lines.Add(FloatToStr(n2));
            end;

        end
      else if (n2 > n1) and (n2 > n3) then
        begin
          if n1 > n3 then
            begin
              memOrdenacao.Lines.Add(FloatToStr(n2));
              memOrdenacao.Lines.Add(FloatToStr(n1));
              memOrdenacao.Lines.Add(FloatToStr(n3));
            end
              else
            begin
              memOrdenacao.Lines.Add(FloatToStr(n2));
              memOrdenacao.Lines.Add(FloatToStr(n3));
              memOrdenacao.Lines.Add(FloatToStr(n1));
            end;

        end
      else
        begin
          if n1 > n2 then
            begin
              memOrdenacao.Lines.Add(FloatToStr(n3));
              memOrdenacao.Lines.Add(FloatToStr(n1));
              memOrdenacao.Lines.Add(FloatToStr(n2));
            end
              else
            begin
              memOrdenacao.Lines.Add(FloatToStr(n3));
              memOrdenacao.Lines.Add(FloatToStr(n2));
              memOrdenacao.Lines.Add(FloatToStr(n1));
            end;

        end;
end;


end;

procedure TfrmOrdem.btnVoltarClick(Sender: TObject);
begin
      frmOrdem.Close;
end;

end.
