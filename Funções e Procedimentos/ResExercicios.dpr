program ResExercicios;

uses
  Vcl.Forms,
  uResExercicios in 'uResExercicios.pas' {frmResExercicios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmResExercicios, frmResExercicios);
  Application.Run;
end.
