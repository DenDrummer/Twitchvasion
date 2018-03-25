///scr_ini_load()
var file = VERSION + ".ini";

ini_open(file);

global.highScore = ini_read_real("Score", "High score", 0);

ini_close();
