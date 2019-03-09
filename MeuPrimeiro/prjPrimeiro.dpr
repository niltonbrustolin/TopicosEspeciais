program prjPrimeiro;

uses
  Vcl.Forms,
  uPrimeiro in 'uPrimeiro.pas' {frmPrimeiro},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Graphite');
  Application.CreateForm(TfrmPrimeiro, frmPrimeiro);
  Application.Run;
end.
