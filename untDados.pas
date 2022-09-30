unit untDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmDados = class(TForm)
    pnlDados: TPanel;
    Label1: TLabel;
    edtValor1: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    Image1: TImage;
    pnlCalcular: TPanel;
    pnlLimpar: TPanel;
    btnCalcular: TSpeedButton;
    btnLimpar: TSpeedButton;
    Label4: TLabel;
    Opcoes: TRadioGroup;
    edtValor2: TEdit;
    btnInfo: TBitBtn;
    btnVoltar: TBitBtn;
    procedure OpcoesClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDados: TfrmDados;

implementation

{$R *.dfm}

procedure TfrmDados.btnCalcularClick(Sender: TObject);
var kb, mb, gb, valor: double;
begin

if edtValor1.Text = '' then
begin
  Application.MessageBox('Adicione um valor', 'Aten��o', MB_OK);
end
else
begin

      kb := 0;
      mb := 0;
      gb := 0;

      if (Opcoes.ItemIndex = 0) then
        begin
          valor :=  StrToFloat(edtValor1.text);

          kb := valor / 1024;
          edtValor2.Text := FloatToStr(kb);

        end;

      if (Opcoes.ItemIndex = 1) then
        begin
          valor :=  StrToFloat(edtValor1.text);


          mb := valor / 1024;
          edtValor2.Text := FloatToStr(mb);

        end;

      if (Opcoes.ItemIndex = 2) then
        begin
          valor :=  StrToFloat(edtValor1.text);


          gb := valor / 1024;
          edtValor2.Text := FloatToStr(gb);

        end;
end;
end;

procedure TfrmDados.btnInfoClick(Sender: TObject);
begin
      Application.MessageBox('Convers�o de Dados de Armazenamento', ' 4� Exerc�cio', MB_OK);
end;

procedure TfrmDados.btnLimparClick(Sender: TObject);
begin
      edtValor1.Clear;
      edtValor2.Clear;
end;

procedure TfrmDados.btnVoltarClick(Sender: TObject);
begin
      frmDados.Close;
end;

procedure TfrmDados.OpcoesClick(Sender: TObject);
begin
      if (Opcoes.ItemIndex = 0) then
        begin
          lbl1.Caption := 'Kilobyte';
          lbl2.Caption := 'Megabyte';
        end;

      if (Opcoes.ItemIndex = 1) then
        begin
          lbl1.Caption := 'Megabyte';
          lbl2.Caption := 'Gigabyte';
        end;

      if (Opcoes.ItemIndex = 2) then
        begin
          lbl1.Caption := 'Gigabyte';
          lbl2.Caption := 'Terabyte';
        end;

end;

end.
