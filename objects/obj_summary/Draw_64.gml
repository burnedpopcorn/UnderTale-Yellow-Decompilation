if (live_call())
    return global.live_result;

display_set_gui_size(640, 480);
draw_set_color(c_black);
draw_set_alpha(draw_alpha);
draw_rectangle(0, 0, 640, 480, false);
draw_set_alpha(1);
draw_set_halign(fa_left);
var route = "Pacifist";

if (global.route == 1)
    route = "Neutral";

if (global.route == 3)
    route = "Geno";

var fullname = "Clover";

if (global.snowdin_flag[15] != 1)
    fullname = "Gun-Hat";

var slurpy = "No...";

if (global.snowdin_flag[3] == 2)
    slurpy = "Yes";

var enemies_killed = 0;

for (var i = 1; i < array_length_1d(global.kill_number); i++)
    enemies_killed += (20 - global.kill_number[i]);

var funvalue = string(global.fun_value);

if (funvalue == "100")
    funvalue = "420";

draw_set_font(fnt_battle);
draw_set_color(c_white);
var xx = 20;
var yy = 140;
draw_text(xx, yy - 20, "ROUTE: " + route);
draw_text(xx, yy, "FULL NAME: " + fullname);
draw_text(xx, yy + 20, "PLAYTIME: " + string(playtime));
draw_set_halign(fa_left);
draw_text(xx, yy + 55, "FUN VALUE: " + funvalue);
draw_text(xx, yy + 125, "BOSSES KILLED: " + string(killed_bosses));
draw_text(xx, yy + 145, "ENEMIES KILLED: " + string(enemies_killed));
draw_text(xx, yy + 165, "TIMES HIT: " + string(global.hit_tracker));
draw_text(xx, yy + 90, "GOLD SPENT: " + string(global.gold_spent));
draw_text(xx, yy + 240, "TIMES MO BROKE THE LAW: " + string(floor(monumber_current)));
draw_text(xx, yy + 270, "Share this in the\ncompletion cards channel!");
draw_set_halign(fa_right);
draw_text(xx + 220, yy - 20, "LEVEL: " + string(global.player_level));
draw_text(xx + 220, yy, "TOTAL EXP: " + string(global.player_exp));
draw_text(xx + 220, yy + 20, "DEATH COUNT: " + string(global.death_count_total));
draw_text(xx + 220, yy + 55, "SLRUPY SAVED: " + slurpy);
draw_text(xx + 220, yy + 90, "TOTAL GOLD: " + string(global.gold_amount_total));
draw_set_color(make_color_rgb(1, 1, 1));
draw_text(xx, yy + 340, "#breaktheshufflers");
