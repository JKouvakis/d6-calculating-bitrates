unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, StrUtils, ExtCtrls, ComCtrls, OleCtrls, SHDocVw,
  ScktComp ;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit6: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    RadioButton3: TRadioButton;
    ComboBox2: TComboBox;
    RadioButton4: TRadioButton;
    Edit2: TEdit;
    GroupBox3: TGroupBox;
    ComboBox1: TComboBox;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    TabSheet3: TTabSheet;
    Memo3: TMemo;
    Memo4: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    WebBrowser1: TWebBrowser;
    procedure FormShow(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Label2Clichk(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Lenghtchk, SizeChk: Boolean;
  SizeReal,NumbCD,Soundbr: Integer;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
  ComboBox1.ItemIndex := 5;
  ComboBox2.ItemIndex := 0;
  RadioButton2.Checked := True;
  RadioButton3.Checked := True;
  SizeReal := 650;
  NumbCD := 1;
  Soundbr := 144;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  If RadioButton1.Checked = True Then
   begin
    Edit6.Enabled := False;
    Edit1.Enabled := True;
    Edit3.Enabled := True;
    LenghtChk := False;
   end;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  If RadioButton2.Checked = True Then
   begin
    Edit6.Enabled := True;
    Edit1.Enabled := False;
    Edit3.Enabled := False;
    LenghtChk := True;
   end;
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
  If RadioButton3.Checked = True Then
   begin
    ComboBox2.Enabled := True;
    Edit2.Enabled := False;
    Sizechk := False
   end;
end;

procedure TForm1.RadioButton4Click(Sender: TObject);
begin
  If RadioButton4.Checked = True Then
   begin
    ComboBox2.Enabled := False;
    Edit2.Enabled := True;
    Sizechk := True;
   end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  reallenght : Integer;

begin

  If Lenghtchk = True Then
    Reallenght := strtoint(Edit6.Text)*60
  else Reallenght := (strtoint(Edit1.Text)*60 + strtoint(Edit3.Text))*60;

  If NumbCD > 1 Then
    Memo2.Text := floattostr(Reallenght / NumbCD)
  else Memo2.Text := inttostr(Reallenght);

  If Sizechk = False Then
    Memo1.Text := floattostr(Sizereal*1024*8 div Reallenght-SoundBr)
  else Memo1.Text := 'True';
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
  Case ComboBox2.ItemIndex of
   0: SizeReal:=650;
   1: SizeReal:=700;
   2: SizeReal:=1300;
   3: SizeReal:=1400;
   4: SizeReal:=1950;
   5: Sizereal:=2100;
   6: Sizereal:=2600;
   7: Sizereal:=2800;
  end;
  Case ComboBox2.ItemIndex of
   0..1: NumbCD:=1;
   2..3: NumbCD:=2;
   4..5: NumbCD:=3;
   6..7: NumbCD:=4;
  end;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  Case ComboBox1.ItemIndex of
   0: Soundbr:=360;
   1: Soundbr:=288;
   2: Soundbr:=252;
   3: Soundbr:=216;
   4: Soundbr:=180;
   5: Soundbr:=144;
   6: Soundbr:=126;
   7: Soundbr:=108;
   8: Soundbr:=72;
   9: Soundbr:=53;
  end;
end;

procedure TForm1.Label2Clichk(Sender: TObject);
begin
 WebBrowser1.Navigate('mailto:s99051@math.aegean.gr');
 
end;

end.
