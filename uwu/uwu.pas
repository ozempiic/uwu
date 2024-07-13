program ASCII_Dance;

uses
  Crt, Dos;

const
  Frames: array[1..4] of string = (
    '(^_^)',
    '(-_-)',
    '(~_^)',
    '(*_*)'
  );
  FrameCount = 4;

var
  FrameIndex: Integer;

procedure DisplayFrame(Frame: string);
begin
  WriteLn(Frame);
end;

begin
  FrameIndex := 1;

  while True do
  begin
    ClrScr;
    
    DisplayFrame(Frames[FrameIndex]);
    
    Delay(500); 
    
    Inc(FrameIndex);
    if FrameIndex > FrameCount then
      FrameIndex := 1;
  end;
end.
