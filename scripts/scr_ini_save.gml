///scr_ini_save()
var file = VERSION + ".ini";

ini_open(file);

ini_write_real("Score", "High score", global.highScore);

ini_close();
