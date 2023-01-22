//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		                  /*Update Interval*/	    /*Update Signal*/
  {"^c#4fffe4^  ", "~/.config/dwm/scripts/music", 5, 0},
  {"^c#E06C75^ 🖥 ", "~/.config/dwm/scripts/cpu",        5,                      0 },
  {"^c#689D6A^ 🧠 ", "~/.config/dwm/scripts/ram",	      5,		                  0 },
  {"^c#C678DD^  ", "~/.config/dwm/scripts/volume",     1,                      10},
  {"^c#D65D0E^  ", "~/.config/dwm/scripts/pacupdate",  3600,                   0 },
	{"^c#fabd2f^  ", "~/.config/dwm/scripts/date",			  5,		                  0 },
  {"^c#56B6C2^  ", "~/.config/dwm/scripts/hour",       60,                     0 }
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " ";
static unsigned int delimLen = 5;
