program prjModulo;

uses
  Vcl.Forms,
  uModulo in 'uModulo.pas' {frmModulo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmModulo, frmModulo);
  Application.Run;
end.
