unit uResolucao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmExerStrings = class(TForm)
    edEx1: TEdit;
    btTroca2apor3a: TButton;
    btTrocaEspaco: TButton;
    lbEx2: TLabel;
    procedure btTroca2apor3aClick(Sender: TObject);
    procedure btTrocaEspacoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExerStrings: TfrmExerStrings;

implementation

{$R *.dfm}

procedure TfrmExerStrings.btTroca2apor3aClick(Sender: TObject);
var st, st2 : string;
    p,p2  : integer;

begin
     st := edEx1.Text;
     //  ABC#DEFGHI KLOPI
     p := POS(#32, st); // Encontra o espaço
     st[p] := '#';
     p2 := POS(#32, st); // Encontra o espaço
     st[p] := ' ';
     st2 := Copy(st, p, p2-p);

     delete(st, p, p2-p);

     Insert(st2, st, Length(st)+1 );

     edEx1.Text := st;
end;

procedure TfrmExerStrings.btTrocaEspacoClick(Sender: TObject);
var st: String;

begin
     st := edEx1.Text;

     while Pos(' ', st) > 0 do
       st[Pos(' ', st)] := '!';

     lbEx2.Caption := st;
end;

end.
