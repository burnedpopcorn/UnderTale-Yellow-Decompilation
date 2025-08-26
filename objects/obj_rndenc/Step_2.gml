if (instance_exists(obj_transition))
    exit;

var scripted_encounter_dist = false;

if (instance_exists(obj_scriptedencounters))
{
    with (obj_pl)
    {
        if (distance_to_object(obj_scriptedencounters) < 150)
            scripted_encounter_dist = true;
    }
}

if (ds_list_empty(global.encounter_list) || enc_disabled || scripted_encounter_dist == true || global.cutscene == true)
    exit;

var world_current = scr_determine_world_value_yellow();
var kill_area = global.kill_area[world_current][global.kill_area_current];
var kill_world = global.kill_number[world_current];

if (enc_time > 0)
{
    if (global.walking)
        enc_time -= enc_rate;
    
    if (obj_pl.is_sprinting)
        enc_time -= (enc_rate * 0.7);
}
else if (!enc_found)
{
    if (kill_area > 0 && kill_world > 0)
    {
        ds_list_shuffle(global.encounter_list);
        var rnd_enc = ds_list_find_value(global.encounter_list, 0);
        instance_create(obj_pl.x - 4, obj_pl.y - 26, obj_exclamation_mark);
        global.battle_enemy_name = rnd_enc;
        global.current_room_overworld = room_get_name(room);
        global.battling_boss = false;
        global.battle_start = true;
    }
    else if (kill_world <= 0)
    {
        global.battle_enemy_name = "nobody came";
        global.current_room_overworld = room_get_name(room);
        global.battling_boss = false;
        global.battle_start = true;
        instance_create(obj_pl.x - 4, obj_pl.y - 26, obj_exclamation_mark);
    }
    else if (kill_area <= 0)
    {
        instance_create(obj_pl.x - 4, obj_pl.y - 26, obj_exclamation_mark_fake);
    }
    
    enc_found = true;
}
