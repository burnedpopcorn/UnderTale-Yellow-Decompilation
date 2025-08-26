var item_slot = global.item_slot[3];

if (item_slot == "Hot Dog...?")
{
    audio_play_sound(snd_borfborf, 20, false);
    
    if (global.current_hp_self > global.max_hp_self)
        exit;
    
    global.current_hp_self += 20;
    
    if (global.current_hp_self > global.max_hp_self)
        global.current_hp_self = global.max_hp_self;
}

message_end = 1;
message_current += 1;
message_length = string_length(message[message_current]);
characters = 0;
message_draw = "";
