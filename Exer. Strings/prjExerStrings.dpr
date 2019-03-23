program prjExerStrings;

uses
  Vcl.Forms,
  uResolucao in 'uResolucao.pas' {frmExerStrings};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExerStrings, frmExerStrings);
  Application.Run;
end.
