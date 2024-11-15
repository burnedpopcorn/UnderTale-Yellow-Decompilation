var player_character, soul_mode;

moveable = true;
image_speed = 0;
image_index = 0;
execute_sparing_false = false;
x = obj_dialogue_box_battle.x + 44;

if (global.mercy_number == 1)
    y = obj_dialogue_box_battle.y + 36;
else if (global.mercy_number == 2)
    y = obj_dialogue_box_battle.y + 68;

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
        
        if (soul_mode == "Green")
        {
            sprite_index = spr_heart_green;
            break;
        }
        
        if (soul_mode == "Purple")
        {
            sprite_index = spr_heart_purple;
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
