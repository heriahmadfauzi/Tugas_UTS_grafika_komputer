unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BtnWarnaDinding: TButton;
    BtnWarnaAtap: TButton;
    BtnWarnaPintu: TButton;
    BtnWarnaJendela: TButton;
    BtnMulaiAnimasi: TButton;
    BtnBesarSkala: TButton;
    BtnKecilSkala: TButton;
    PaintBox1: TPaintBox;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);

  private
    DindingColor, AtapColor, PintuColor, JendelaColor: TColor;
    RumahX, RumahY, Skala, SHIFT_X: Integer;
    GerakX, GerakY: Integer;  // Variables for house translation (animation)
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.Button1Click(Sender: TObject);
begin
     // Initialize SHIFT_X if not set
  SHIFT_X := 0;

  // Access the canvas of PaintBox1 to draw
  with PaintBox1.Canvas do
  begin
    // Clear the area of the PaintBox
    Brush.Color := clWhite;
    FillRect(PaintBox1.ClientRect);

    // Draw the house's components with SHIFT_X for horizontal movement

    // Draw the house wall (yellow rectangle)
    Brush.Color := DindingColor;
    Rectangle(100 + SHIFT_X, 200, 300 + SHIFT_X, 350);

    // Draw the roof (red trapezoid)
    Brush.Color := AtapColor;
    Polygon([Point(80 + SHIFT_X, 200),
             Point(320 + SHIFT_X, 200),
             Point(270 + SHIFT_X, 150),
             Point(130 + SHIFT_X, 150)]);

    // Draw the door (red rectangle)
    Brush.Color := PintuColor;
    Rectangle(180 + SHIFT_X, 270, 220 + SHIFT_X, 350);

    // Draw door details (small rectangle in the middle)
    Brush.Color := clRed;
    Rectangle(185 + SHIFT_X, 275, 215 + SHIFT_X, 320);

    // Draw door handle (small black circle)
    Brush.Color := clBlack;
    Ellipse(210 + SHIFT_X, 315, 215 + SHIFT_X, 320);

    // Draw left window (light blue rectangle)
    Brush.Color := JendelaColor;
    Rectangle(110 + SHIFT_X, 230, 150 + SHIFT_X, 270);

    // Draw right window (light blue rectangle)
    Rectangle(250 + SHIFT_X, 230, 290 + SHIFT_X, 270);

    // Draw the base of the house (gray rectangle)
    Brush.Color := clGray;
    Rectangle(80 + SHIFT_X, 350, 320 + SHIFT_X, 370);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Brush.Color := clBlue;
  Button1Click(sender);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Brush.Color := clBlue;
  Button1Click(sender);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin

end;

procedure TForm1.Button5Click(Sender: TObject);
begin

end;


end.

