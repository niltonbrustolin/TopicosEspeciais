unit uModulo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmModulo = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    edNum: TEdit;
    btVerificar: TButton;
    lbRes: TLabel;
    Idade: TLabel;
    edIdade: TEdit;
    btQuartel: TButton;
    rgSexo: TRadioGroup;
    lbResQuartel: TLabel;
    TabSheet3: TTabSheet;
    Label2: TLabel;
    edQtd: TEdit;
    btWhile: TButton;
    lstLista: TListBox;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    btCriaSB: TButton;
    ListBox1: TListBox;
    Button1: TButton;
    TabSheet6: TTabSheet;
    btParImpar: TButton;
    lstParImpar: TListBox;
    btPrimo: TButton;
    lstPrimo: TListBox;
    btFatorial: TButton;
    lstFat: TListBox;
    btFibo: TButton;
    lstFibo: TListBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure btVerificarClick(Sender: TObject);
    procedure btQuartelClick(Sender: TObject);
    procedure btWhileClick(Sender: TObject);
    procedure btCriaSBClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModulo: TfrmModulo;

implementation

{$R *.dfm}

procedure TfrmModulo.btCriaSBClick(Sender: TObject);
var meuSB : array[1..50] of TspeedButton;
    qtd : integer;
    cont,meuLeft, meuTop: Integer;
begin
      qtd := StrToInt(InputBox('Quantidade',
                               'Qtd. de botões',
                               '1' ));
      cont :=1;
      meuLeft := 20;
      meutop := 100;
      repeat
        meuSB[cont] := TSpeedButton.Create(TabSheet5);
        with meuSB[cont] do
        begin
            Parent := TabSheet5; // um Form ou um Panel também serve.
            Name := 'Panel_'+IntToStr(cont);
            SetBounds(meuLeft,meuTop,23,23);
            Visible := true;
            meuLeft:= meuleft + 25;
            if cont mod 15 = 0 then
            begin
                 meuTop := meuTop + 25;
                 meuLeft := 20;
            end;
        end;
        inc(cont);
      until cont > qtd;
end;

procedure TfrmModulo.btQuartelClick(Sender: TObject);
var idade : integer;
    sexo : string[1];
begin
     if edIdade.Text = '' then
     begin
          MessageDlg('Falta digitar uma idade!',
                     mtError,
                     [mbOk],
                     0);
          edIdade.SetFocus;
          Exit;
     end;
     idade := StrToInt(edIdade.Text);
     case rgSexo.ItemIndex of
        0 : sexo := 'F';
        1 : sexo := 'M';
     end;
     if idade < 18 then
       lbResQuartel.Caption := 'Menor de idade'
     else
       if (idade = 18) and (sexo = 'M') then
         lbResQuartel.Caption := 'Serviço Militar'
       else
         lbResQuartel.Caption := 'Maior de Idade';
end;

procedure TfrmModulo.btVerificarClick(Sender: TObject);
var numero : integer;
begin
     if edNum.Text = '' then
     begin
          MessageDlg('Falta digitar um número!',
                     mtError,
                     [mbOk],
                     0);
          edNum.SetFocus;
          Exit;
     end;

     numero := StrToInt(ednum.text);

     if numero < 0 then
       numero := numero * (-1);

     lbRes.Caption := 'O módulo do número é : ' + IntToStr(numero);

end;

procedure TfrmModulo.btWhileClick(Sender: TObject);
var qtd, cont, num  : integer;
begin
     lstLista.Clear;
     qtd := StrToInt(edQtd.Text);
     cont := 1;
     while cont <= qtd do
     begin
          num := StrToInt(InputBox('Leitura',
                          'Digite um número ('+inttostr(cont)+'): ',
                          '0'));
          lstLista.Items.Add('Número ('+inttostr(cont)+'): ' + IntToStr(num));
          inc(cont);
     end;
end;

procedure TfrmModulo.Button1Click(Sender: TObject);
var f: integer;
    c: real;
begin
   for f:=-50 to 150 do
   begin
      c := 5 / 9 * (f - 32);
      ListBox1.Items.Add('F='+IntToStr(f)+'º '+
                         'C='+FormatFloat('0.00',c)+'º');
   end;
end;

end.
