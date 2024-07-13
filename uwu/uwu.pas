program ASCII_Dance;

uses
  Crt, Dos;  // Crt for clearing screen, Dos for delay function

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
  
  // Infinite loop for continuous animation
  while True do
  begin
    // Clear the screen
    ClrScr;
    
    // Display the current frame
    DisplayFrame(Frames[FrameIndex]);
    
    // Delay to control animation speed (in milliseconds)
    Delay(500);  // Adjust speed by changing delay value
    
    // Move to the next frame
    Inc(FrameIndex);
    if FrameIndex > FrameCount then
      FrameIndex := 1;  // Loop back to the first frame
  end;
end.
