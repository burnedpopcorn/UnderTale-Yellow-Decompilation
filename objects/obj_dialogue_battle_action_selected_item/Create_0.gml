var item_hold;

global.item_use_hold = id;
item_slot = global.item_slot[global.item_number_use];
game_mode = global.game_mode;
item_category = "nothing";
item_type = "nothing";
item_number = 0;
item_sound = snd_battle_item_eat;
con_keep_previous = true;
con_message_number = 1;

if (game_mode == "customs")
{
    if (item_slot == "Hot Dog...?")
    {
        message[0] = "* You eat the " + string(item_slot);
        message[1] = "#* Your HP was maxed out.";
    }
}
else if (game_mode == "yellow")
{
    script_execute(scr_item_use_text_yellow);
}

if (item_type == "weapon")
{
    item_hold = global.player_weapon;
    global.player_weapon = global.item_slot[global.item_number_use];
    global.item_slot[global.item_number_use] = item_hold;
    global.player_weapon_attack = script_execute(scr_determine_weapon_attack);
    audio_play_sound(item_sound, 20, 0);
}
else if (item_type == "armor")
{
    item_hold = global.player_armor;
    global.player_armor = global.item_slot[global.item_number_use];
    global.item_slot[global.item_number_use] = item_hold;
    global.player_armor_defense = script_execute(scr_determine_armor_defense);
    audio_play_sound(item_sound, 20, 0);
}
else if (item_type == "ammo")
{
    item_hold = global.player_weapon_modifier;
    global.player_weapon_modifier = global.item_slot[global.item_number_use];
    global.item_slot[global.item_number_use] = item_hold;
    global.player_weapon_modifier_attack = script_execute(scr_determine_weapon_modifier_attack);
    audio_play_sound(item_sound, 20, 0);
}
else if (item_type == "accessory")
{
    item_hold = global.player_armor_modifier;
    global.player_armor_modifier = global.item_slot[global.item_number_use];
    global.item_slot[global.item_number_use] = item_hold;
    global.player_armor_modifier_defense = script_execute(scr_determine_armor_modifier_defense);
    audio_play_sound(item_sound, 20, 0);
}

message_current = 0;
message_end = array_length_1d(message) - 1;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
no_loop = false;
script_execute(scr_generate_text_counters);
