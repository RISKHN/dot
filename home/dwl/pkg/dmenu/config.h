static int topbar = 1;
static int centered = 0;
static int min_width = 300;
static const char *fonts[] = {"JetBrainsMono:size=10",
                              "Symbola:size=14:antialias=true:autohint=true"};

static const char *prompt = NULL;
static const char *colors[SchemeLast][2] = {
    [SchemeNorm] = {"#808080", "#000000"},
    [SchemeSel] = {"#a0a0a0", "#080808"},
    [SchemeOut] = {"#808080", "#808080"}
};

static unsigned int lines = 0;

static const char worddelimiters[] = " ";

/*
 * -vi option; if nonzero, vi mode is always enabled and can be
 * accessed with the global_esc keysym + mod mask
 */
static unsigned int vi_mode = 1;
static unsigned int start_mode = 0;			/* mode to use when -vi is passed. 0 = insert mode, 1 = normal mode */
static Key global_esc = { XK_n, Mod1Mask };	/* escape key when vi mode is not enabled explicitly */
static Key quit_keys[] = {
	/* keysym	modifier */
	{ XK_q,		0 }
};
