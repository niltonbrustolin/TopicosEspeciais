unit uPrimeiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, {System.Variants,}
  System.Classes, Vcl.Graphics,
  {Vcl.Controls,} Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Controls;

type
  TfrmPrimeiro = class(TForm)
    Label1: TLabel;
    edNome: TEdit;
    btExecutar: TButton;
    btLimpar: TButton;
    btSair: TButton;
    Label2: TLabel;
    edN1: TEdit;
    edN2: TEdit;
    Label3: TLabel;
    btSomar: TButton;
    btSub: TButton;
    btMul: TButton;
    btDiv: TButton;
    edSenha: TEdit;
    Label4: TLabel;
    btDesabilitar: TButton;
    procedure btExecutarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure btSomarClick(Sender: TObject);
    procedure btSubClick(Sender: TObject);
    procedure btMulClick(Sender: TObject);
    procedure btDivClick(Sender: TObject);
    procedure btDesabilitarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrimeiro: TfrmPrimeiro;

implementation

{$R *.dfm}

procedure TfrmPrimeiro.btDesabilitarClick(Sender: TObject);
begin
  edSenha.Enabled := not(edSenha.Enabled);
end;

procedure TfrmPrimeiro.btDivClick(Sender: TObject);
var n1, n2, soma : real;
begin
     n1 := StrToFloat(edN1.Text);
     n2 := StrToFloat(edN2.Text);

     soma := n1 / n2;

     btDiv.Caption := 'Resultado = ' + FloatToStr(soma);

end;

procedure TfrmPrimeiro.btExecutarClick(Sender: TObject);
begin
     ShowMessage('Seja bem-vindo: ' + edNome.Text);
end;

procedure TfrmPrimeiro.btLimparClick(Sender: TObject);
begin
     edNome.Clear;
     edNome.SetFocus;
end;

procedure TfrmPrimeiro.btMulClick(Sender: TObject);
var n1, n2, soma : real;
begin
     n1 := StrToFloat(edN1.Text);
     n2 := StrToFloat(edN2.Text);

     soma := n1 * n2;

     btMul.Caption := 'Resultado = ' + FloatToStr(soma);

end;

procedure TfrmPrimeiro.btSairClick(Sender: TObject);
begin
     // close;              { Fecha um formulário }
     Application.Terminate; // Finaliza uma aplicação
end;

procedure TfrmPrimeiro.btSomarClick(Sender: TObject);
var n1, n2, soma : real;
begin
     n1 := StrToFloat(edN1.Text);
     n2 := StrToFloat(edN2.Text);

     soma := n1 + n2;

     btSomar.Caption := 'Resultado = ' + FloatToStr(soma);
end;

procedure TfrmPrimeiro.btSubClick(Sender: TObject);
var n1, n2, sub : real;
begin
     n1 := StrToFloat(edN1.Text);
     n2 := StrToFloat(edN2.Text);

     sub := n1 - n2;

     btSub.Caption := 'Resultado = ' + FloatToStr(sub);

end;

end.
