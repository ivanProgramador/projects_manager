program Projects_manager;

uses
  Vcl.Forms,
  uUsuarios in 'Telas\uUsuarios.pas' {frmUsuarios},
  uTelaPrincipal in 'Telas\uTelaPrincipal.pas' {frmTelaPrincipal},
  uDmDados in 'componentes\uDmDados.pas' {dtmDados: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTelaPrincipal, frmTelaPrincipal);
  Application.CreateForm(TfrmUsuarios, frmUsuarios);
  Application.CreateForm(TfrmUsuarios, frmUsuarios);
  Application.CreateForm(TfrmUsuarios, frmUsuarios);
  Application.CreateForm(TfrmTelaPrincipal, frmTelaPrincipal);
  Application.CreateForm(TfrmUsuarios, frmUsuarios);
  Application.CreateForm(TfrmUsuarios, frmUsuarios);
  Application.CreateForm(TfrmTelaPrincipal, frmTelaPrincipal);
  Application.CreateForm(TfrmTelaPrincipal, frmTelaPrincipal);
  Application.CreateForm(TfrmTelaPrincipal, frmTelaPrincipal);
  Application.CreateForm(TdtmDados, dtmDados);
  Application.CreateForm(TdtmDados, dtmDados);
  Application.Run;
end.
