///scrWriteBytes(file,value,numbytes)
///writes a variable to a file over a certain number of bytes
///argument0 - open file
///argument1 - variable to write
///argument2 - how many bytes to write

var f = argument0;
var tem = argument1;
var byteNum = argument2;
var num;

for (var i = byteNum; i > 0; i -= 1)
{
    num = clamp(tem div power(256,i-1),0,255);      //calculate the current byte to write
    global.md5StrIn += string(num);                 //add it to the md5 input string
    file_bin_write_byte(f,num);                     //write it to the file
    tem = tem mod power(256, i-1);                  //trim the part of the number that was written
}
