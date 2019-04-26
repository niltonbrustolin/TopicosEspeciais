unit uGabarito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Grids;

type
  TMat10x9 = array[1..10,1..9] of integer;
  Tvet90 = array[1..90] of integer;

  TForm1 = class(TForm)
    PageControl1: TPageControl;
    tsExer01: TTabSheet;
    tsExer02: TTabSheet;
    Memo1: TMemo;
    sgMat: TStringGrid;
    btGeraMat: TButton;
    sgPares: TStringGrid;
    sgImpares: TStringGrid;
    sgNaoRep: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btFazTudo: TButton;
    Memo2: TMemo;
    Label4: TLabel;
    edQtdTermos: TEdit;
    lstSemi: TListBox;
    btSerie: TButton;
    lstDiv: TListBox;
    procedure btGeraMatClick(Sender: TObject);
    procedure btFazTudoClick(Sender: TObject);
    procedure btSerieClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GeraPares(vMat : TMat10x9);
    procedure GeraImpares(vMat : TMat10x9);
    procedure GeraNaoRep(vMat : TMat10x9);
    procedure OrdenaDec(var vVet : TVet90);
    function ParOuImpar(N : Integer) : Boolean;
  end;

var
  Form1: TForm1;
  vMat10x9 : TMat10x9;
  vetPar, vetImpar, vetNaoRep : tVet90;
  fimpar, fimimpar, fimNaoRep : integer;

implementation

{$R *.dfm}

procedure TForm1.btFazTudoClick(Sender: TObject);
begin
     GeraPares(vMat10x9);
     GeraImpares(vMat10x9);
     GeraNaoRep(vMat10x9);
end;

procedure TForm1.btGeraMatClick(Sender: TObject);
var c,l : integer;
begin
     Randomize;
     for l := 1 to 10 do
     begin
       sgMat.Cells[0,l] := IntToStr(l);
       for c := 1 to 9 do
       begin
            sgMat.Cells[c,0] := IntToStr(c);
            vMat10x9[l,c] := random(100);
            sgMat.Cells[c,l] := IntToStr(vMat10x9[l,c]);
       end;
     end;
end;

procedure TForm1.btSerieClick(Sender: TObject);

   function SemiPerfeito(n:integer) : Boolean;
   var cont, np, ni : integer;
       linha : string;
   begin
        np := 0;
        ni := 0;
        linha := n.ToString + ' - ';

        for cont := 1 to n do
          if n mod cont = 0 then
          begin
            linha := linha + cont.ToString + ',';
            if ParOuImpar(cont) then
              inc(np)
            else
              inc(ni);
          end;
        delete(linha,length(linha),1);

        if np = ni then
        begin
             lstDiv.Items.Add(linha);
             Result := True
        end
        else
          Result := False;
   end;

var
  numTermos: integer;
  p, cont: Integer;
  vSemi: array of integer; //vetor dinâmico
  s: Real;

begin
     numTermos := StrToInt(edQtdTermos.Text);
     SetLength(vSemi, numTermos); // Tamanho dinâmico do vetor
     cont := 1;
     p := 1;
     repeat
           if SemiPerfeito(cont) then
           begin
                vSemi[p-1] := cont;
                inc(p);
           end;
           inc(cont);
     until p > numTermos;

     lstSemi.Clear;
     lstDiv.Clear;
     for p := 1 to numTermos do
     begin
          if ParOuImpar(p) then
            lstSemi.Items.Add(inttostr(vSemi[p-1])+'/'+inttostr(p))
          else
            lstSemi.Items.Add(inttostr(p)+'/'+inttostr(vSemi[p-1]));
     end;

     s := 0;
     for p := 1 to numTermos do
     begin
          if ParOuImpar(p) then
            s := s + p/vSemi[p-1]
          else
            s := s + vSemi[p-1]/p;
     end;
     lstSemi.Items.Add('Soma='+FormatFloat('0.0000', s));


end;

procedure TForm1.GeraImpares(vMat: TMat10x9);
var l,c : integer;
begin
     fimimpar := 1;
     for l := 1 to 10 do
       for c := 1 to 9 do
       begin
            if not(ParOuImpar(vMat10x9[l,c])) then
            begin
                 vetImpar[fimimpar] := vMat10x9[l,c];
                 sgImpares.Cells[fimimpar,0] := inttostr(fimimpar);
                 inc(fimimpar);
            end;
       end;
     sgpares.ColCount := fimpar;
     OrdenaDec(vetImpar);
     for c := 1 to fimimpar do
       sgImpares.Cells[c,1] := inttostr(vetImpar[c]);
end;

procedure TForm1.GeraNaoRep(vMat: TMat10x9);
var l,c : integer;

    function ExisteVet(num : integer) : Boolean;
    var p : integer;
    begin
         result := False;
         for p := 1 to fimNaoRep do
           if num = vetNaoRep[p] then
           begin
                result := True;
                break;
           end;
    end;

begin
     for l := 1 to 90 do
       vetNaoRep[l] := -1;

     fimNaoRep := 1;
     for l := 1 to 10 do
       for c := 1 to 9 do
         if not(ExisteVet(vMat[l,c])) then
         begin
              vetNaoRep[fimNaoRep] := vMat[l,c];
              inc(fimNaoRep);
         end;

     OrdenaDec(vetNaoRep);

     for c := 1 to fimNaoRep do
     begin
          sgNaoRep.Cells[c,0] := IntToStr(c);
          sgNaoRep.Cells[c,1] := IntToStr(vetNaoRep[c]);
     end;

end;

procedure TForm1.GeraPares(vMat: TMat10x9);
var l,c : integer;
begin
     fimpar := 1;
     for l := 1 to 10 do
       for c := 1 to 9 do
       begin
            if ParOuImpar(vMat10x9[l,c]) then
            begin
                 vetPar[fimpar] := vMat10x9[l,c];
                 sgPares.Cells[fimpar,0] := inttostr(fimpar);
                 inc(fimpar);
            end;
       end;
     sgpares.ColCount := fimpar;
     OrdenaDec(vetPar);
     for c := 1 to fimpar do
       sgPares.Cells[c,1] := inttostr(vetPar[c]);
end;

procedure TForm1.OrdenaDec(var vVet: TVet90);
var aux, x, y, p : integer;
begin
     for x := 1 to 89 do
       for y := x + 1 to 90 do
       begin
            if vVet[x] < vVet[y] then
            begin
                     aux := vVet[x];
                 vVet[x] := vVet[y];
                 vVet[y] := aux;
            end;
       end;
end;

function TForm1.ParOuImpar(N: Integer): Boolean;
begin
     result := not(Odd(n));
end;

end.
