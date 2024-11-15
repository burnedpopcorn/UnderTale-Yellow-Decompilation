var player_character, soul_mode;

image_speed = 0;
image_index = 0;

if (instance_exists(obj_text_battle_move_selected_enemy_fight_parent))
{
    for (counter = 0; counter < 2; counter += 1)
    {
        if (global.fight_number == 1 && !instance_exists(obj_text_battle_move_selected_enemy_fight))
            global.fight_number = 2;
        
        if (global.fight_number == 2 && !instance_exists(obj_text_battle_move_selected_enemy_fight_2))
            global.fight_number = 1;
        
        if (global.fight_number == 1 && !instance_exists(obj_text_battle_move_selected_enemy_fight))
            global.fight_number = 3;
        
        if (global.fight_number == 3 && !instance_exists(obj_text_battle_move_selected_enemy_fight_3))
            global.fight_number = 1;
    }
}

x = obj_dialogue_box_battle.x + 44;

if (global.fight_number == 1)
    y = obj_dialogue_box_battle.y + 36;
else if (global.fight_number == 2)
    y = obj_dialogue_box_battle.y + 68;
else if (global.fight_number == 3)
    y = obj_dialogue_box_battle.y + 100;

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
