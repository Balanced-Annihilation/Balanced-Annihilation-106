General = {
    {"Chat", title=true},
    {"enter",                     "Send chat message"},
    {"alt + enter",               "Send chat message to allies"},
    {"shift + enter",             "Send chat message to spectators"},
    {"ctrl + left click on name", "Ignore player"},
    {blankLine=true},    
    {"Menus", title=true},
    {"shift + esc",         "Quit menu"},
    {"f11",                 "Widget list"},
    {"ctrl + f11",          "Widget tweak mode"},  
    {"h",                   "Share units / resources"},
    {blankLine=true},
    {"Camera movement", title=true},
    {"scrollwheel",                 "Zoom camera"},
    {"arrow keys / mouse at screen edge", "Move camera"},
    {"ctrl + scrollwheel",          "Change camera angle"},
    {"middle click (+ drag)",       "Drag camera"},
    {"ctrl + shift + o",            "Flip camera"},
    {blankLine=true},
    {"Camera modes", title=true},
    {"ctrl + f1,2,3,4,5",           "Change camera type"},
    {"alt + backspace",             "Toggle fullscreen"},
    {"tab",                         "Toggle overview camera"},
    {"l",   "Toggle LOS view"},
    {"f1",  "Show height map"},
    {"f2",  "Show passability (for selected unit)"},
    {"f3",  "Cycle through map marks"},
    {"f4",  "Show metal map"},
    {"f5",  "Hide GUI"},
    {blankLine=true},
    {"Sound", title=true},
    {"-/+",                 "Change volume"},
    {"f6",                  "Toggle mute"},
}

Units_I_II = {
    {"Selecting units", title=true},           
    {"left mouse (+ drag)",      "Select or deselect units"},
    {blankLine=true},    
    {"Giving orders", title=true},           
    {"right mouse (single click)",   "Give order to unit(s)"},
    {"right mouse (drag)",           "Give formation order to unit(s)"},
    {blankLine=true},    
    {"Selecting orders", title=true},
    {"(none)", "default order (usually move)"},
    {"m",   "move"},
    {"a",   "attack"},
    {"y",   "set priority target"},
    {"r",   "repair"},
    {"e",   "reclaim"},
    {"o",   "resurrect"},
    {"f",   "fight"},
    {"p",   "patrol"},
    {"k",   "cloak"},
    {blankLine=true},    
    {"s",   "stop (clears order queue)"},
    {"w",   "wait (pause current command)"},
    {"j",   "cancel priority target"},
    {blankLine=true},    
    {"d",   "manual fire (dgun)"},
    {"ctrl + d", "self-destruct"},
    {blankLine=true},    
    {"Giving selected orders", title=true},
    {"left mouse (single click)",    "Give order to unit(s)"},
    {"right mouse (single click)",   "Revert to default order"},
    {"right mouse + drag",           "Give formation order to unit(s)"},
    {blankLine=true},    
    {"Queueing orders", title=true},
    {"shift + (some order)",         "Add order to end of order queue"},
    {"space + (some order)",         "Add order to start of order queue"},
}


Units_III = {
    {"Selecting build orders", title=true},
    {"(mouse)",    "Select from units build-menu"},
    {"z",         "Cycle through mexes"},
    {"x",         "Cycle through energy production"},
    {"c",         "Cycle through radar/defence/etc"},
    {"v",         "Cycle through factories"},
    {"[ and ], or o",   "Change facing of buildings"},
    {blankLine=true},    
    {"Giving build orders", title=true},
    {"left mouse",   "Give build order"},
    {"right mouse",  "De-select build order"},
    {"shift + (build order)", "Build in a line"},
    {"shift + alt + (build order)", "Build in a square"},
    {"b",           "Increase build spacing"},
    {"n",           "Decrease build spacing"},
    {blankLine=true},    
    {"Group selection", title=true},
    {"ctrl + a",                "Select all units"},
    {"ctrl + b",                "Select all constructors"},
    {"ctrl + (num)",            "Add units to group (num=1,2,..)"},
    {"(num)",                   "Select all units assigned to group (num)"},
    {"ctrl + z",                "Select all units of same type as current"},
    {blankLine=true},
    {"Drawing", title=true},
    {"q + dbl click",       "Place map mark"},
    {"q + drag left mouse", "Draw on map"},
    {"q + drag right mouse","Erase drawings and markers"},
    {blankLine=true},
    {"Console commands", title=true},
    {"/clearmapmarks",  "Erase all drawings and markes"},
    {"/clock",          "Toggle ingame clock"},
    {"/fps",            "Toggle ingame fps indicator"},
}
