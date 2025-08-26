display_set_gui_size(640, 480);
draw_set_alpha(draw_alpha);
draw_set_font(fnt_mainb);
draw_set_halign(fa_center);
draw_text(320, 40, string_hash_to_newline("ROUNDUP"));
draw_set_halign(fa_left);
draw_text(40, 120, string_hash_to_newline("COMPLETION TIME:   " + string_minutes + ":" + string_seconds));
draw_text(40, 150, string_hash_to_newline("TOTAL DEATHS:   " + string(global.death_count_total)));
var dalv_killed = "No";

if (global.flag[17] == 2)
    dalv_killed = "Yes";

draw_text(40, 180, string_hash_to_newline("DALV KILLED:   " + dalv_killed));
var martlet_killed = "No";

if (global.snowdin_flag[13] == 2)
    martlet_killed = "Yes";

draw_text(40, 220, string_hash_to_newline("MARTLET CHASED OFF:   " + martlet_killed));
var enemies_killed = 0;

for (var i = 0; i < array_length_1d(global.kill_number); i++)
    enemies_killed += (20 - global.kill_number[i]);

draw_text(40, 260, string_hash_to_newline("ENEMIES KILLED:   " + string(enemies_killed)));
var mo_items = 0;

for (var i = 0; i < array_length_1d(global.extra_flag); i++)
{
    if (global.extra_flag[i] == true)
        mo_items += 1;
}

draw_text(40, 300, string_hash_to_newline("MO ITEMS BOUGHT:   " + string(mo_items)));
var slurpy_saved = "NO";

if (global.snowdin_flag[3] == 2)
    slurpy_saved = "YES";

draw_text(40, 320, string_hash_to_newline("SLURPY SAVED:   " + string(slurpy_saved)));
draw_set_alpha(1);
var micro_froggit = "NO";

if (global.flag[18] == 1)
    micro_froggit = "YES";

if (global.flag[18] == 2)
    micro_froggit = "KILLED";

draw_text(40, 340, string_hash_to_newline("MICRO FROGGIT FOUND:   " + string(slurpy_saved)));
draw_set_alpha(1);
