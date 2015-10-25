///scrDecToHex(int)
///converts an integer to a hex string (in lower case)
///argument0 - input integer

var dec = argument0;
var h = "0123456789abcdef";
var hex, byte, hi, lo;

if (dec)
    hex = "";
else
    hex = "00";

while (dec)
{
    byte = dec & 255;
    hi = string_char_at(h, byte div 16 + 1);
    lo = string_char_at(h, byte mod 16 + 1);
    hex = hi + lo + hex;
    dec = dec >> 8;
}

return hex;
