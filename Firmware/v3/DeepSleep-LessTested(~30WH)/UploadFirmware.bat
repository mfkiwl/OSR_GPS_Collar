IF NOT EXIST "C:\Program Files (x86)\Arduino\arduino.exe" (
echo "Arduino installation not found, please install the latest version of Arduino"
PAUSE
EXIT)
ELSE (
"C:\Program Files (x86)\Arduino\hardware\tools\avr/bin/avrdude.exe" -C "C:\Program Files (x86)\Arduino\hardware\tools\avr/etc/avrdude.conf" -v -patmega328p -cusbasp -Pusb -U lfuse:w:0xe2:m -U hfuse:w:0xd9:m -U efuse:w:0xff:m -U flash:w:DeepSleep-LessTested__30WH_.ino.hex
PAUSE
EXIT
)