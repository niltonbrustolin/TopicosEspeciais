unit uBotoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmSegundo = class(TForm)
    btnHabilitar: TButton;
    btnNova: TButton;
    btnNewForm: TBitBtn;
    Panel1: TPanel;
    Button1: TButton;
    btnEsconder: TButton;
    chkNegrito: TCheckBox;
    Label1: TLabel;
    chkItalico: TCheckBox;
    chkSublinhado: TCheckBox;
    rbtTimes: TRadioButton;
    rbtArial: TRadioButton;
    rbtComic: TRadioButton;
    rgTam: TRadioGroup;
    Label2: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure btnHabilitarClick(Sender: TObject);
    procedure btnEsconderClick(Sender: TObject);
    procedure btnNovaClick(Sender: TObject);
    procedure btnNewFormClick(Sender: TObject);
    procedure chkNegritoClick(Sender: TObject);
    procedure chkItalicoClick(Sender: TObject);
    procedure chkSublinhadoClick(Sender: TObject);
    procedure rbtTimesClick(Sender: TObject);
    procedure rbtArialClick(Sender: TObject);
    procedure rbtComicClick(Sender: TObject);
    procedure rgTamClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSegundo: TfrmSegundo;

implementation

{$R *.dfm}

uses uSegunda, uTerceiro;

procedure TfrmSegundo.btnEsconderClick(Sender: TObject);
begin
   // .visible := False  == Hide

//      btnHabilitar.Caption := 'Mostrar';

   btnHabilitar.visible := not btnHabilitar.visible;
   if btnHabilitar.Visible then
     btnEsconder.Caption := 'Esconder'
   else
     btnEsconder.Caption := 'Mostrar';
end;

procedure TfrmSegundo.btnHabilitarClick(Sender: TObject);
begin
   btnEsconder.Enabled := True;
end;

procedure TfrmSegundo.btnNewFormClick(Sender: TObject);
begin
     frmTerceiro.showModal;
end;

procedure TfrmSegundo.btnNovaClick(Sender: TObject);
begin
     frmAuxiliar.Show;
end;

procedure TfrmSegundo.chkItalicoClick(Sender: TObject);
begin
     if chkItalico.Checked then
       Label1.Font.Style := Label1.Font.Style + [fsItalic]
     else  //antes else NAO vai ponto e vírgula
       Label1.Font.Style := Label1.Font.Style - [fsItalic];
end;

procedure TfrmSegundo.chkNegritoClick(Sender: TObject);
begin
     if chkNegrito.Checked then
       Label1.Font.Style := Label1.Font.Style + [fsBold]
     else  //antes else NAO vai ponto e vírgula
       Label1.Font.Style := Label1.Font.Style - [fsBold];
end;

procedure TfrmSegundo.chkSublinhadoClick(Sender: TObject);
begin
     if chkSublinhado.Checked then
       Label1.Font.Style := Label1.Font.Style + [fsUnderline]
     else  //antes else NAO vai ponto e vírgula
       Label1.Font.Style := Label1.Font.Style - [fsUnderline];
end;

procedure TfrmSegundo.rbtArialClick(Sender: TObject);
begin
     Label1.Font.Name := 'Arial';
end;

procedure TfrmSegundo.rbtComicClick(Sender: TObject);
begin
     Label1.Font.Name := 'Comic Sans MS';
end;

procedure TfrmSegundo.rbtTimesClick(Sender: TObject);
begin
     Label1.Font.Name := 'Times New Roman';
end;

procedure TfrmSegundo.rgTamClick(Sender: TObject);
begin
     case rgTam.ItemIndex of
       0 : Label1.Font.Size := 8;
       1 : Label1.Font.Size := 15;
       2 : Label1.Font.Size := 20;
       3 : Label1.Font.Size := 32;
     end;
end;

procedure TfrmSegundo.Timer1Timer(Sender: TObject);
begin
     Label2.Caption := TimeToStr(Time);

end;

procedure TfrmSegundo.Timer2Timer(Sender: TObject);
begin
  close;
end;

end.
