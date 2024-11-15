var item_slot, game_mode;

item_slot = global.item_slot[global.item_number_use];
game_mode = global.game_mode;

if (game_mode == "customs")
{
    if (item_slot == "Hot Dog...?")
    {
        global.current_hp_self += global.max_hp_self;
        
        if (global.current_hp_self > global.max_hp_self)
            global.current_hp_self = global.max_hp_self;
        
        audio_play_sound(snd_borfborf, 20, false);
    }
}
else if (game_mode == "yellow")
{
    if (item_type == "healing")
    {
        if (global.current_hp_self <= global.max_hp_self)
        {
            global.current_hp_self += item_number;
            
            if (global.current_hp_self > global.max_hp_self)
                global.current_hp_self = global.max_hp_self;
        }
    }
    else if (item_type == "protection")
    {
        global.current_pp_self += item_number;
        
        if (global.current_pp_self > global.max_pp_self)
            global.current_pp_self = global.max_pp_self;
    }
    else if (item_type == "speed")
    {
        global.current_sp_self += item_number;
        
        if (global.current_sp_self > global.max_sp_self)
            global.current_sp_self = global.max_sp_self;
    }
    else if (item_type == "restore")
    {
        global.current_rp_self += item_number;
        
        if (global.current_rp_self > global.max_rp_self)
            global.current_rp_self = global.max_rp_self;
        
        instance_create(0, 0, obj_cactus_damager);
    }
    
    audio_play_sound(item_sound, 20, false);
}

message_current += 1;
message_length = string_length(message[message_current]);
characters = 0;
message_draw = "";
