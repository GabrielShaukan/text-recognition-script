#include <MsgBoxConstants.au3>
#include <IE.au3>
#include <ScreenCapture.au3>


$ImageToReadPath = @DesktopDir & "\word-random-text.png"
$ResultTextPath = @DesktopDir & "\Results"
$OutPutPath = $ResultTextPath & ".txt"
$TesseractExePath = "C:\Program Files (x86)\Tesseract-OCR\tesseract.exe"
ShellExecuteWait($TesseractExePath, '"' & $ImageToReadPath & '" "' & $ResultTextPath & '"', "", "", @SW_HIDE)
MsgBox($MB_SYSTEMMODAL, "Done Reading", "Done")