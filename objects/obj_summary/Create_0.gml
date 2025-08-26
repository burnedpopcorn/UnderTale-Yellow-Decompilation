if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;
draw_alpha = 1;
obj_pl.image_alpha = 0;
var string_hours = string(global.elapsed_seconds div 3600);
var string_minutes = string((global.elapsed_seconds div 60) % 60);
var string_seconds = string(global.elapsed_seconds % 60);

if (real(string_hours) < 10)
    string_hours = "0" + string_hours;

if (real(string_minutes) < 10)
    string_minutes = "0" + string_minutes;

if (real(string_seconds) < 10)
    string_seconds = "0" + string_seconds;

playtime = string_hash_to_newline(string_hours + ":" + string_minutes + ":" + string_seconds);
boss_list = ds_list_create();

if (global.flag[17] == 2)
    ds_list_add(boss_list, "Da");

if (global.flag[15] == 3)
    ds_list_add(boss_list, "De");

if (global.dunes_flag[24] == 2)
    ds_list_add(boss_list, "St");

if (global.sworks_flag[31] == 3)
    ds_list_add(boss_list, "Ax");

killed_bosses = "";

for (var i = 0; i < ds_list_size(boss_list); i++)
{
    if (i != 0)
        killed_bosses = string_insert(", ", killed_bosses, string_length(killed_bosses) - 1);
    
    killed_bosses = string_insert(ds_list_find_value(boss_list, i), killed_bosses, string_length(killed_bosses) - 1);
}

if (killed_bosses == "")
    killed_bosses = "NONE";

monumber = irandom_range(100, 9000);
monumber_current = monumber;
