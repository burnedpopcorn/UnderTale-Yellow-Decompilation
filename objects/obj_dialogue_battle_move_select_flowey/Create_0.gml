if (live_call())
    return global.live_result;

var random_text_move_select = irandom_range(1, 9);
script_execute(asset_get_index("scr_battle_core_directory_flavor_text_enemy_1_default_" + string(random_text_move_select)));
message_current = 0;
message_end = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
message_original = message[0];
randomize_counter = 3;
randomize_counter_max = 4;
draw_alpha = 1;
draw_alpha_target = 0.5;
draw_alpha_target_countdown = 10;
