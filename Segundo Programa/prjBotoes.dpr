program prjBotoes;

uses
  Vcl.Forms,
  uBotoes in 'uBotoes.pas' {frmSegundo},
  uSegunda in 'uSegunda.pas' {frmAuxiliar},
  uTerceiro in 'uTerceiro.pas' {frmTerceiro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSegundo, frmSegundo);
  Application.CreateForm(TfrmAuxiliar, frmAuxiliar);
  Application.CreateForm(TfrmTerceiro, frmTerceiro);
  Application.Run;
end.
