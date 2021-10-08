unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Math, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function calcSquareMeasure(b : real):real;

begin
  result := (180 / pi) * b;
end;

function isValid(a, b, c : real):boolean;

var areNumbersValid : Boolean;

begin

  areNumbersValid := true;

  if a + b < c then areNumbersValid := false;
  if b + c < a then areNumbersValid := false;
  if a + c < b then areNumbersValid := false;

  if areNumbersValid then showMessage('Die Dreiecksungleichung ist erfüllt!')
  else showMessage('Die Dreiecksungleichung ist nicht erfüllt!');

  result := areNumbersValid;

end;

procedure TForm1.Button1Click(Sender: TObject);

var a, b, c : Real;
    alpha, beta, gamma: Real;
    scope : Real;
    temp, surface : Real;

var canCalculate : Boolean;

begin

a := StrToFloat(Edit1.Text);
b := StrToFloat(Edit2.Text);
c := StrToFloat(Edit3.Text);

if (a = 0.0) or (b = 0.0) or (c = 0.0) then
  begin
    showMessage('Es ist keine Division durch 0 möglich!');
    exit;
  end;


canCalculate := isValid(a, b, c);
if not canCalculate then exit;

alpha := sqrt((sqr(a) + sqr(b) - sqr(c)) / (2 * (a * b)));
alpha := calcSquareMeasure(arccos(alpha));

beta := ((a * a) + (c * c) - (b * b)) / (2 * (a * c));
beta := calcSquareMeasure(arccos(beta));

gamma := ((b * b) + (c * c) - (a * a)) / (2 * (b * c));
gamma := calcSquareMeasure(arccos(gamma));

Label4.Caption := 'Alpha, Beta, Gamma: ' + FloatToStrF(alpha, fffixed, 8, 2) + '°, ' + FloatToStrF(beta, fffixed, 8, 2) + '°, ' + FloatToStrF(gamma, fffixed, 8, 2) + '°';

scope := a + b + c;
Label5.Caption := 'Umfang: ' + FloatToStrF(scope, fffixed, 8, 2) + ' cm²';

temp := scope / 2;
surface := sqrt(temp * ((temp - a) * (temp - b) * (temp - c)));

Label6.Caption := 'Flächeninhalt: ' + FloatToStrF(surface, fffixed, 8, 2) + ' cm³';

end;

end.
