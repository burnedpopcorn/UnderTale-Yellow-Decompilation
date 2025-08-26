var battle_enemy_name = global.battle_enemy_name;
var game_mode = global.game_mode;

if (game_mode == "customs")
{
}
else if (game_mode == "yellow")
{
    if (battle_enemy_name == "micro froggit")
        message[0] = "* You check the sole of your boot#  for signs of squished Froggit.#* You only find your dusty boot.";
}

message_current = 0;
message_end = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
