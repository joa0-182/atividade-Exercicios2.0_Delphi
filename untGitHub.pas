unit untGitHub;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Buttons, ShellAPI;

type
  TfrmGitHub = class(TForm)
    imgGit: TImage;
    Shape1: TShape;
    Shape2: TShape;
    pnlImg1: TPanel;
    pnlImg2: TPanel;
    btnGit1: TSpeedButton;
    btnGit2: TSpeedButton;
    Image1: TImage;
    Image2: TImage;
    procedure btnGit1Click(Sender: TObject);
    procedure btnGit2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGitHub: TfrmGitHub;

implementation

{$R *.dfm}

procedure TfrmGitHub.btnGit1Click(Sender: TObject);
begin
      ShellExecute(Handle,'open','https://github.com/joa0-182', '',nil,0);
end;

procedure TfrmGitHub.btnGit2Click(Sender: TObject);
begin
      ShellExecute(Handle,'open','https://github.com/willian1997', '',nil,0);
end;

end.
