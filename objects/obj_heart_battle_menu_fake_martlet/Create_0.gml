var player_character, soul_mode;

moveable = false;
no_loop = true;
no_loop_moveable = false;

if (global.battling_boss == true)
    no_loop_determine_sparing = true;
else
    no_loop_determine_sparing = false;

image_speed = 0;
image_index = 0;
image_alpha = 0;
text_deadlock_1 = false;
text_desdlock_contents_1 = 3016;
key_select_simulate = false;
fade_in = true;
player_character = global.player_character;

switch (player_character)
{
    case "CLOVER":
        sprite_index = spr_heart_yellow_down;
        break;
    
    default:
        soul_mode = global.soul_mode;
        
        if (soul_mode == "Red")
        {
            sprite_index = spr_heart_red;
            break;
        }
        
        if (soul_mode == "Blue")
        {
            sprite_index = spr_heart_blue_down;
            break;
        }
        
        if (soul_mode == "Yellow")
        {
            sprite_index = spr_heart_yellow_up_original;
            break;
        }
        
        if (soul_mode == "Yellow Rhythm")
            sprite_index = spr_heart_yellow_down;
}
