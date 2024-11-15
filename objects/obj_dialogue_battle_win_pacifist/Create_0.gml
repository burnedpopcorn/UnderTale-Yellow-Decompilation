global.player_gold += global.enemy_gold;

if (global.game_mode == "customs")
{
    message[0] = "* YOU WON!#* You earned 0 XP and " + string(global.enemy_gold) + " gold.";
}
else if (global.game_mode == "yellow")
{
    if (global.battle_enemy_name == "froggit intro")
    {
        message[0] = "* (The mysterious goat lady#  scared the Froggit away.)";
    }
    else if (global.battle_enemy_name == "decibat")
    {
        if (global.enemy_sparing == true)
            message[0] = "* Sweet silence...";
        else
            message[0] = "* Decibat flaps away to find#  someplace quieter.";
    }
    else
    {
        message[0] = "* YOU WON!#* You earned 0 XP and " + string(global.enemy_gold) + " gold.";
    }
}

message_current = 0;
message_end = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
moveable = true;
script_execute(scr_generate_text_counters);
