//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		                  /*Update Interval*/	    /*Update Signal*/
  {"^d^ ^b#cc241d^^c#1d2021^ 🖥 ^b#fb4934^ " , "~/.config/dwm/scripts/cpu",        5,                      0 },
  {"^d^ ^b#689d6a^^c#1d2021^  ^b#8ec07c^ ", " ~/.config/dwm/scripts/ram",	      5,		                  0 },
  {"^d^ ^b#b16286^^c#1d2021^  ^b#d3869b^ ", "~/.config/dwm/scripts/volume",     1,                      10},
  {"^d^ ^b#d65d0e^^c#1d2021^  ^b#fe8019^ ", "~/.config/dwm/scripts/pacupdate",  3600,                   0 },
	{"^d^ ^b#d79921^^c#1d2021^  ^b#fabd2f^ ", "~/.config/dwm/scripts/date",			  3600,		                  0 },
  {"^d^ ^b#458588^^c#1d2021^  ^b#83a598^ ", "~/.config/dwm/scripts/hour",       60,                     0 },
  {"^d^ ", "",					0,	 0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " ";
static unsigned int delimLen = 5;
