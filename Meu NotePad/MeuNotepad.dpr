program MeuNotepad;

uses
  Vcl.Forms,
  uEditor in 'uEditor.pas' {frmEditor},
  uABOUT in 'uABOUT.pas' {AboutBox},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Silver');
  Application.CreateForm(TfrmEditor, frmEditor);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.Run;
end.
