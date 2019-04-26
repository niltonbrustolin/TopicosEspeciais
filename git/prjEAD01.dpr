program prjEAD01;

uses
  Vcl.Forms,
  uGabarito in 'uGabarito.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amethyst Kamri');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
