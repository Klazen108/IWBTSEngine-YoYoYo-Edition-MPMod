///saves current config settings

var f;
f = file_bin_open(working_directory+"Data\config",1);

file_bin_write_byte(f,global.leftbutton);
file_bin_write_byte(f,global.rightbutton);
file_bin_write_byte(f,global.upbutton);
file_bin_write_byte(f,global.downbutton);
file_bin_write_byte(f,global.jumpbutton);
file_bin_write_byte(f,global.shotbutton);
file_bin_write_byte(f,global.restartbutton);
file_bin_write_byte(f,global.skipbutton);
file_bin_write_byte(f,global.suicidebutton);
file_bin_write_byte(f,global.pausebutton);
file_bin_write_byte(f,global.aAlignButton);
file_bin_write_byte(f,global.dAlignButton);
file_bin_write_byte(f,global.muteMusic);
file_bin_write_byte(f,global.volumeLevel);
file_bin_write_byte(f,global.fullscreenMode);
file_bin_write_byte(f,global.smoothingMode);

file_bin_close(f);
