unit uResExercicios;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  //Adicionei as duas abaixo para funcionar a troca de Estilos
  Vcl.Themes, Vcl.Styles;

type
  TfrmResExercicios = class(TForm)
    PageControl1: TPageControl;
    tsRadioGroup: TTabSheet;
    tsLacos: TTabSheet;
    rgUnidMedida: TRadioGroup;
    edUnidMed: TEdit;
    btnConverter: TButton;
    pnRes: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btParImpar: TButton;
    lstParImpar: TListBox;
    btPrimo: TButton;
    lstPrimo: TListBox;
    btFatorial: TButton;
    lstFat: TListBox;
    btFibo: TButton;
    lstFibo: TListBox;
    lstStyles: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    tsProcedimento: TTabSheet;
    edtA: TEdit;
    edtB: TEdit;
    edtC: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lblX1: TLabel;
    lblX2: TLabel;
    btnBaskara: TButton;
    btnTroca: TButton;
    TabSheet1: TTabSheet;
    pbxEx: TPaintBox;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    pb: TProgressBar;
    tsStrings: TTabSheet;
    Label10: TLabel;
    edSt: TEdit;
    Label11: TLabel;
    btDelete: TButton;
    btInsert: TButton;
    edStAux: TEdit;
    lbTam: TLabel;
    btCopy: TButton;
    btPos: TButton;
    procedure btnConverterClick(Sender: TObject);
    procedure btParImparClick(Sender: TObject);
    procedure btPrimoClick(Sender: TObject);
    procedure btFatorialClick(Sender: TObject);
    procedure btFiboClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lstStylesClick(Sender: TObject);
    procedure btnBaskaraClick(Sender: TObject);
    procedure btnTrocaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure pbxExMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure edStChange(Sender: TObject);
    procedure btCopyClick(Sender: TObject);
    procedure btPosClick(Sender: TObject);

  private
    { Private declarations }
    // CTRL+SHIFT+C
    procedure coefInput(var k1, k2, k3 : real);
  public
    { Public declarations }
    procedure IniciarEstilos;
  end;

var
  frmResExercicios: TfrmResExercicios;

implementation

{$R *.dfm}

function Potencia(base, expoente : Real) : Real;
begin
     result := Exp(expoente * ln(Abs(base)));
end;

function Fatorial (num : integer) : integer;
var fat, cont : Integer;

begin
     if (num = 0) or (num = 1) then
       Result := 1
     else
       Result := num * Fatorial(num-1);

//    fat := 1;
//    cont := 1;
//    while (num > cont) do   // Repeat
//    begin                    //
//         fat := fat * cont;   //   fat := fat * num;
//         inc(cont);           //   inc(num);
//    end;
//    result := Fat;                     // Until (num > cont);

end;


procedure TfrmResExercicios.btCopyClick(Sender: TObject);
var auxSt : string;
    posini,
    qtd   : Integer;
begin
     auxSt := edSt.Text;
     //Leitura da Posi��o Inicial
     posini := StrToInt(InputBox('Leitura', // T�tulo da janela
                                 'Digite a pos. inicial', //Mensagem
                                 '1'));     //Valor padr�o
     //Leitura da Qtd
     qtd := StrToInt(InputBox('Leitura', // T�tulo da janela
                              'Digite a quantidade', //Mensagem
                              '1'));     //Valor padr�o

     edSt.Text := Copy(auxSt, posini, qtd);;
end;

procedure TfrmResExercicios.btDeleteClick(Sender: TObject);
var auxSt : string;
    posini,
    qtd   : Integer;
begin
     auxSt := edSt.Text;
     //Leitura da Posi��o Inicial
     posini := StrToInt(InputBox('Leitura', // T�tulo da janela
                                 'Digite a pos. inicial', //Mensagem
                                 '1'));     //Valor padr�o
     //Leitura da Qtd
     qtd := StrToInt(InputBox('Leitura', // T�tulo da janela
                              'Digite a quantidade', //Mensagem
                              '1'));     //Valor padr�o

     Delete(auxSt, posini, qtd);

     edSt.Text := auxSt;
end;

procedure TfrmResExercicios.btFatorialClick(Sender: TObject);
var fat, cont : Integer;
  num: Integer;
begin
     lstFat.Clear;
     cont := 1;
     while (cont <= 10) do
     begin
          fat := Fatorial(cont);

          lstFat.Items.Add(IntToStr(cont) + '! = ' + IntToStr(fat));
          inc(cont);
     end;
end;

procedure TfrmResExercicios.btFiboClick(Sender: TObject);
var cont, tn, t1, t2 : integer;
begin
     lstFibo.Clear;
     t1 := 0;
     lstFibo.Items.Add('1� - ' + IntToStr(t1));
     t2 := 1;
     lstFibo.Items.Add('2� - ' + IntToStr(t2));

     for cont := 3 to 10 do
     begin
          tn := t1 + t2;
          lstFibo.Items.Add(IntToStr(cont) + '� - ' + IntToStr(tn));
          t1 := t2;
          t2 := tn;
     end;
end;

procedure TfrmResExercicios.btInsertClick(Sender: TObject);
var st1, st2 : string;
    posini   : integer;
begin
     st1 := edSt.Text;
     st2 := edStAux.Text;
     posini := StrToint(InputBox('Leitura', 'Digite a pos. ini.','1'));

     Insert(st2, st1 , posini);

     edSt.Text := st1;
end;

procedure prn(Xf, Xs :Real);
begin
     frmResExercicios.lblX1.Caption := 'X1 = ' + FloatToStr(Xf);
     frmResExercicios.lblX2.Caption := 'X2 = ' + FloatToStr(Xs);
end;

procedure TfrmResExercicios.btnBaskaraClick(Sender: TObject);
var A, B, C, D, X1, X2 : Real;

   procedure calc(k1, k2, dis : real; var xf, xs: real);
   begin
        xf := (-k2 + sqrt(dis)) / (2*k1);
        xs := (-k2 - sqrt(dis)) / (2*k1);
   end;

begin
     coefInput(A, B, C);  // Leitura de A, B e C
     D := {sqr(B)} Potencia(B,2) - 4 * A * C;
     if D >= 0 then
     begin
          calc(A, B, D, X1, X2);
          prn(X1, X2);
     end
     else
     begin
       lblX1.Caption := 'N�o existe ra�zes reais!';
       lblX2.Caption := '';
     end;
end;

procedure TfrmResExercicios.btnConverterClick(Sender: TObject);
var unidmed, vlrConv : Real;
begin
     unidmed := StrToFloat(edUnidMed.Text);
     case rgUnidMedida.ItemIndex of
       0 : begin
             vlrConv := unidmed / 3.6;
             pnRes.Caption := FormatFloat('0.00',vlrConv) + ' m/s';
           end;
       1 : begin
             vlrConv := unidmed * 100000;
             pnRes.Caption := FormatFloat('0.00',vlrConv) + ' cm';
           end
       else
       begin
         MessageDlg('Selecione uma op��o!',
                    mtWarning,[mbOk],0);
         Exit;
       end;
     end;
end;

Procedure Troca (var vA, vB : Real);
var aux : Real;
begin
     aux := vA;
      vA := vB;
      vB := aux;
end;

procedure TfrmResExercicios.btnTrocaClick(Sender: TObject);
var A, B, C : Real;
begin
     coefInput(A, B, C);
     Troca(A, B);
     edtA.Text := FloatToStr(A);
     edtB.Text := FloatToStr(B);
end;

procedure TfrmResExercicios.btParImparClick(Sender: TObject);
var
  I: Integer;
begin
     lstParImpar.Clear;
     for I := 1 to 10 do
     begin
          if not(i mod 2 = 0) then  //if odd(i) then
            lstParImpar.Items.Add(IntToStr(I) + ' - � �mpar')
          else
            lstParImpar.Items.Add(IntToStr(I) + ' - � par')
     end;
end;

procedure TfrmResExercicios.btPosClick(Sender: TObject);
var st1, st2 : string;
begin
     st1 := edSt.Text;
     st2 := edStAux.Text;

     edStAux.Text := IntToStr(Pos(st2, st1));
end;

procedure TfrmResExercicios.btPrimoClick(Sender: TObject);
var ndiv, cont, num : integer;
begin
     lstPrimo.Clear;
     cont := 1;
     repeat
       ndiv := 0;
       num  := 1;
       repeat
         if (cont mod num = 0) then
           inc(ndiv);

         inc(num);
       until num > cont;
       if ndiv <= 2 then
         lstPrimo.Items.Add(IntToStr(cont) + ' - � primo')
       else
         lstPrimo.Items.Add(IntToStr(cont) + ' - n�o � primo');
       inc(cont);
     until cont > 10;
end;

procedure TfrmResExercicios.Button1Click(Sender: TObject);
var x0, y0 : integer;
begin
     x0 := pbxEx.Width  div 2;
     y0 := pbxEx.Height div 2;

     pbxEx.Canvas.Pen.Color := clRed;
     pbxEx.Canvas.Pen.Width := 3;

     pbxEx.Canvas.Brush.Color := clGreen;

     //ponto
     pbxEx.Canvas.Pixels[x0,y0] := clBlue;

     //Linha
     pbxEx.Canvas.LineTo(x0,y0);

     pbxEx.Canvas.MoveTo(100,100);
     pbxEx.Canvas.LineTo(100,200);

     //retangulo
     pbxEx.Canvas.Rectangle(300,20, 450, 90);

     // C�rculo
     pbxEx.Canvas.Ellipse(50,50,200,300);


end;

procedure TfrmResExercicios.Button2Click(Sender: TObject);
var x1,y1,x2,y2 : integer;
begin
     // Ligar o gerador de n�meros aleat�rios
     Randomize;

     pbxEx.Canvas.Brush.Color := Random(MAXLONG);
      // num := Random(10);    0..9
     x1 := Random(pbxEx.Width div 2);
     y1 := Random(pbxEx.Height div 2);
     x2 := Random(pbxEx.Width);
     y2 := Random(pbxEx.Height);

     pbxEx.Canvas.Rectangle(x1,y1,x2,y2);
end;

procedure TfrmResExercicios.Button3Click(Sender: TObject);
begin
     with pbxEx.Canvas do
     begin
          Rectangle(100,100,200,200);
          MoveTo(100,100);
          LineTo(150,50);
          MoveTo(150,50);
          LineTo(200,100);
          //3D
          MoveTo(200,100);
          LineTo(300,50);
          MoveTo(300,50);
          LineTo(270,15);
          MoveTo(270,15);
          LineTo(150,50);
          MoveTo(300,50);
          LineTo(300,150);
          MoveTo(300,150);
          LineTo(200,200);
     end;
end;

procedure TfrmResExercicios.Button4Click(Sender: TObject);
var x1,y1, x2, y2 ,qtd : integer;
begin
     for qtd := 1 to 100 do
     begin
          x1 := Random(pbxEx.Width);
          y1 := Random(pbxEx.Height);
          x2 := Random(pbxEx.Width);
          y2 := Random(pbxEx.Height);

          pbxEx.Canvas.Pen.Color := Random(MAXLONG);
          pbxEx.Canvas.Pen.Width := Random(10);

          pbxEx.Canvas.MoveTo(x1,y1);
          pbxEx.Canvas.LineTo(x2,y2);
          Sleep(5); // Processador n�o faz nada durante 50 milisegundos
          pb.Position := qtd;
     end;
end;

procedure TfrmResExercicios.coefInput(var k1, k2, k3: real);
begin
     k1 := StrToFloat(edtA.Text);
     k2 := StrToFloat(edtB.Text);
     k3 := StrToFloat(edtC.Text);
end;

procedure TfrmResExercicios.edStChange(Sender: TObject);
begin
     lbTam.Caption := IntToStr( Length(edSt.Text) );
end;

procedure TfrmResExercicios.IniciarEstilos;
var
  v :String;
  vIndice :Integer;
begin
  lstStyles.Clear;

  //Cria uma lista com os temas habilitados para o execut�vel
  for v in TStyleManager.StyleNames do
    lstStyles.Items.Add(v);

  lstStyles.Sorted := True;
  //Pega o nome do tema atual e seleciona na lista de temas
  vIndice :=  lstStyles.Items.IndexOf(TStyleManager.ActiveStyle.Name);
  lstStyles.ItemIndex := vIndice;
end;

procedure TfrmResExercicios.lstStylesClick(Sender: TObject);
begin
     TStyleManager.SetStyle(lstStyles.Items[lstStyles.ItemIndex]);
end;

procedure TfrmResExercicios.pbxExMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     pbxEx.Canvas.Pixels[x,y] := Random(MaxLongInt);
end;

procedure TfrmResExercicios.FormCreate(Sender: TObject);
begin
     IniciarEstilos;
end;

end.
