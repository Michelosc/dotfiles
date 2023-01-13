//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		                  /*Update Interval*/	    /*Update Signal*/
  {"🖥 ", "~/.config/dwm/scripts/cpu",        5,                      0 },
  {"🧠 ", "~/.config/dwm/scripts/ram",	      5,		                  0 },
  {" ", "~/.config/dwm/scripts/volume",      1,                      10},
  {" ", "~/.config/dwm/scripts/pacupdate",   3600,                   0 },
	{" ", "date '+%a %b %d |  %H:%M '",			  5,		                  0 },
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "| ";
static unsigned int delimLen = 5;
