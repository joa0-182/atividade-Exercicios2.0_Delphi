unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    pnlBotao1: TPanel;
    pnlBotao3: TPanel;
    pnlBotao2: TPanel;
    pnlBotao4: TPanel;
    btnIMC: TSpeedButton;
    btnPn: TSpeedButton;
    btnImpar: TSpeedButton;
    btnDados: TSpeedButton;
    pnlBottom: TPanel;
    MainMenu1: TMainMenu;
    GitHubAlunos1: TMenuItem;
    Exerccios1: TMenuItem;
    Sair1: TMenuItem;
    GitHubAlunos2: TMenuItem;
    CalculoIMC1: TMenuItem;
    Nmerosmpares1: TMenuItem;
    NmerosPositivoseNegativos1: TMenuItem;
    ConversodeDadosdeArmazenamento1: TMenuItem;
    Panel1: TPanel;
    pnlBotao5: TPanel;
    btnOrdem: TSpeedButton;
    NmerosemOrdemDecrescente1: TMenuItem;
    procedure btnIMCClick(Sender: TObject);
    procedure btnImparClick(Sender: TObject);
    procedure btnPnClick(Sender: TObject);
    procedure btnDadosClick(Sender: TObject);
    procedure CalculoIMC1Click(Sender: TObject);
    procedure Nmerosmpares1Click(Sender: TObject);
    procedure NmerosPositivoseNegativos1Click(Sender: TObject);
    procedure ConversodeDadosdeArmazenamento1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GitHubAlunos2Click(Sender: TObject);
    procedure btnOrdemClick(Sender: TObject);
    procedure NmerosemOrdemDecrescente1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses untIMC, untImpar, untPn, untDados, untGitHub, untOrdem;

procedure TfrmPrincipal.btnDadosClick(Sender: TObject);
begin
      frmDados.ShowModal;
end;

procedure TfrmPrincipal.btnIMCClick(Sender: TObject);
begin
      frmIMC.ShowModal;
end;

procedure TfrmPrincipal.btnImparClick(Sender: TObject);
begin
      frmImpar.ShowModal;
end;

procedure TfrmPrincipal.btnOrdemClick(Sender: TObject);
begin
      frmOrdem.ShowModal;
end;

procedure TfrmPrincipal.btnPnClick(Sender: TObject);
begin
      frmPn.ShowModal;
end;

procedure TfrmPrincipal.CalculoIMC1Click(Sender: TObject);
begin
      frmIMC.ShowModal;
end;

procedure TfrmPrincipal.ConversodeDadosdeArmazenamento1Click(Sender: TObject);
begin
      frmDados.ShowModal;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      if Application.MessageBox('Deseja Sair?', '  Confirme', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = id_yes then
        begin
          application.Terminate;
        end
      else
        begin
          abort;
        end;
end;

procedure TfrmPrincipal.GitHubAlunos2Click(Sender: TObject);
begin
      frmGitHub.ShowModal;
end;

procedure TfrmPrincipal.NmerosemOrdemDecrescente1Click(Sender: TObject);
begin
      frmOrdem.ShowModal;
end;

procedure TfrmPrincipal.Nmerosmpares1Click(Sender: TObject);
begin
      frmImpar.ShowModal;
end;

procedure TfrmPrincipal.NmerosPositivoseNegativos1Click(Sender: TObject);
begin
      frmPn.ShowModal;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
      if Application.MessageBox('Deseja Sair?', '  Confirme', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = id_yes then
        begin
          application.Terminate;
        end
      else
        begin
          abort;
        end;
end;

end.
