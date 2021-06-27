static const unsigned int borderpx = 2;
static const unsigned int snap = 32;
static const int showbar = 0;
static const int topbar = 1;
static const char *fonts[] = {"JetBrainsMono:size=10"};
static const char dmenufont[] = "Symbola:size=10";
static const char col_gray1[] = "#000000";
static const char col_gray2[] = "#222222";
static const char col_gray3[] = "#444444";
static const char col_gray4[] = "#888888";
static const char col_cyan[] = "#e7e7e7";
static const char *colors[][3] = {
    [SchemeNorm] = {col_gray4, col_gray1, col_gray1},
    [SchemeSel] = {col_cyan, col_gray1, col_gray2},
};

static const char *tags[] = {"1", "2", "3", "4", "5", "6", "7", "8", "9"};

static const Rule rules[] = {
    {"Firefox", NULL, NULL, 1 << 1, 0, -1},
    {"mpv", NULL, NULL, 1 << 2, 0, -1},
    {"scrcpy", NULL, NULL, 1 << 8, 0, -1},
};

static const float mfact = 0.55;
static const int nmaster = 1;
static const int resizehints = 1;
static const int lockfullscreen = 1;

static const Layout layouts[] = {
    {"[]=", tile},
    {"><>", NULL},
    {"[M]", monocle},
};

#define MODKEY Mod4Mask
#define TAGKEYS(KEY, TAG)                                                      \
  {MODKEY, KEY, view, {.ui = 1 << TAG}},                                       \
      {MODKEY | ControlMask, KEY, toggleview, {.ui = 1 << TAG}},               \
      {MODKEY | ShiftMask, KEY, tag, {.ui = 1 << TAG}},                        \
      {MODKEY | ControlMask | ShiftMask, KEY, toggletag, {.ui = 1 << TAG}},
#define SHCMD(cmd)                                                             \
  {                                                                            \
    .v = (const char *[]) { "/bin/sh", "-c", cmd, NULL }                       \
  }

static char dmenumon[2] = "0";

static const char *dmenucmd[] = {"dmenu_run"};
static const char *termcmd[] = {"st", NULL};

#include <X11/XF86keysym.h>

static Key keys[] = {
    {MODKEY, XK_0, view, {.ui = ~0}},
    {MODKEY, XK_d, incnmaster, {.i = -1}},
    {MODKEY, XK_e, spawn, SHCMD("clipmenu")},
    {MODKEY, XK_f, setlayout, {.v = &layouts[1]}},
    {MODKEY, XK_h, setmfact, {.f = -0.05}},
    {MODKEY, XK_i, incnmaster, {.i = +1}},
    {MODKEY, XK_j, focusstack, {.i = +1}},
    {MODKEY, XK_k, focusstack, {.i = -1}},
    {MODKEY, XK_l, setmfact, {.f = +0.05}},
    {MODKEY, XK_m, setlayout, {.v = &layouts[2]}},
    {MODKEY, XK_o, spawn, SHCMD("nt")},
    {MODKEY, XK_p, spawn, {.v = dmenucmd}},
    {MODKEY, XK_s, togglesticky, {0}},
    {MODKEY, XK_t, setlayout, {.v = &layouts[0]}},
    {MODKEY, XK_comma, focusmon, {.i = -1}},
    {MODKEY, XK_equal, spawn, SHCMD("amixer set 'Master' 10%+")},
    {MODKEY, XK_grave, spawn, SHCMD("mc")},
    {MODKEY, XK_minus, spawn, SHCMD("amixer set 'Master' 10%-")},
    {MODKEY, XK_period, focusmon, {.i = +1}},
    {MODKEY, XK_space, setlayout, {0}},
    {MODKEY, XK_Return, zoom, {0}},
    {MODKEY, XK_Tab, view, {0}},
    {MODKEY | ShiftMask, XK_0, tag, {.ui = ~0}},
    {MODKEY | ShiftMask, XK_c, killclient, {0}},
    {MODKEY | ShiftMask, XK_p, spawn, SHCMD("$BROWSER")},
    {MODKEY | ShiftMask, XK_comma, tagmon, {.i = -1}},
    {MODKEY | ShiftMask, XK_equal, spawn, SHCMD("xbacklight -inc 10")},
    {MODKEY | ShiftMask, XK_minus, spawn, SHCMD("xbacklight -dec 10")},
    {MODKEY | ShiftMask, XK_period, tagmon, {.i = +1}},
    {MODKEY | ShiftMask, XK_space, togglefloating, {0}},
    {MODKEY | ShiftMask, XK_Return, spawn, {.v = termcmd}},
    TAGKEYS(XK_1, 0) TAGKEYS(XK_2, 1) TAGKEYS(XK_3, 2) TAGKEYS(XK_4, 3)
        TAGKEYS(XK_5, 4) TAGKEYS(XK_6, 5) TAGKEYS(XK_7, 6) TAGKEYS(XK_8, 7)
            TAGKEYS(XK_9, 8){MODKEY | ShiftMask, XK_q, quit, {0}},

};

static Button buttons[] = {
    {ClkClientWin, MODKEY, Button1, movemouse, {0}},
    {ClkClientWin, MODKEY, Button2, togglefloating, {0}},
    {ClkClientWin, MODKEY, Button3, resizemouse, {0}},
};
