program prjExercicioDelphi;

uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untIMC in 'untIMC.pas' {frmIMC},
  untImpar in 'untImpar.pas' {frmImpar},
  untPn in 'untPn.pas' {frmPn},
  untDados in 'untDados.pas' {frmDados},
  untGitHub in 'untGitHub.pas' {frmGitHub},
  untOrdem in 'untOrdem.pas' {frmOrdem};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmIMC, frmIMC);
  Application.CreateForm(TfrmImpar, frmImpar);
  Application.CreateForm(TfrmPn, frmPn);
  Application.CreateForm(TfrmDados, frmDados);
  Application.CreateForm(TfrmGitHub, frmGitHub);
  Application.CreateForm(TfrmOrdem, frmOrdem);
  Application.Run;
end.
