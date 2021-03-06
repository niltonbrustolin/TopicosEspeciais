unit uEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmEditor = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Abrir1: TMenuItem;
    Salvar1: TMenuItem;
    Novo1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Editar1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    Recortar1: TMenuItem;
    N2: TMenuItem;
    SelecionarTudo1: TMenuItem;
    Fonte1: TMenuItem;
    Sobre1: TMenuItem;
    mmTexto: TMemo;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    FontDialog1: TFontDialog;
    ImageList1: TImageList;
    sbStatus: TStatusBar;
    Timer1: TTimer;
    procedure Novo1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure Salvar1Click(Sender: TObject);
    procedure Fonte1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Colar1Click(Sender: TObject);
    procedure Recortar1Click(Sender: TObject);
    procedure SelecionarTudo1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure mmTextoChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditor: TfrmEditor;

implementation

{$R *.dfm}

uses uABOUT;

procedure TfrmEditor.Abrir1Click(Sender: TObject);
begin
      if OpenDialog1.Execute then
        mmTexto.Lines.LoadFromFile(OpenDialog1.FileName);
end;

procedure TfrmEditor.Colar1Click(Sender: TObject);
begin
  mmTexto.PasteFromClipboard;
end;

procedure TfrmEditor.Copiar1Click(Sender: TObject);
begin
     if mmTexto.SelLength > 0 then
       mmTexto.CopyToClipboard;
end;

procedure TfrmEditor.Fonte1Click(Sender: TObject);
begin
    if FontDialog1.Execute then
      mmTexto.Font := FontDialog1.Font;
end;

procedure TfrmEditor.mmTextoChange(Sender: TObject);
begin
     sbStatus.Panels[0].Text := 'Qtd.Carac.: ' + IntToStr(Length(mmTexto.Text));
end;

procedure TfrmEditor.Novo1Click(Sender: TObject);
begin
     mmTexto.Clear;
end;

procedure TfrmEditor.Recortar1Click(Sender: TObject);
begin
     if mmTexto.SelLength > 0  then
       mmTexto.CutToClipboard;
end;

procedure TfrmEditor.Sair1Click(Sender: TObject);
begin
     Close;
end;

procedure TfrmEditor.Salvar1Click(Sender: TObject);
begin
     if SaveDialog1.Execute then
       mmTexto.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TfrmEditor.SelecionarTudo1Click(Sender: TObject);
begin
     mmTexto.SelectAll;
end;

procedure TfrmEditor.Sobre1Click(Sender: TObject);
begin
     AboutBox.showmodal;
end;

procedure TfrmEditor.Timer1Timer(Sender: TObject);
begin
     sbStatus.Panels[1].Text := TimeTostr(time);
end;

end.
