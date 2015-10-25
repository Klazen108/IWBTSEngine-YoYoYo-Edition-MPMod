///scrReadBytes(file,numbytes)
///reads a variable from a file over a certain number of bytes, returns value
///argument0 - open file
///argument1 - how many bytes to read

var f = argument0
var byteNum = argument1;
var tem = 0;
var num;

for (var i = byteNum; i > 0; i -= 1)
{
    num = file_bin_read_byte(f);            //read the current byte
    global.md5StrIn += string(num);         //add it to the md5 input string
    tem += num * power(256, i-1);           //add it to the number being read
}

return tem;
