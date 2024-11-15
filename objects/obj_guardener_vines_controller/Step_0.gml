var i;

obj_fight.image_blend = c_white;
obj_act.image_blend = c_white;
obj_item.image_blend = c_white;
obj_mercy.image_blend = c_white;

if (vine_count[0] > 0)
    obj_fight.image_blend = c_gray;

if (vine_count[1] > 0)
    obj_act.image_blend = c_gray;

if (vine_count[2] > 0)
    obj_item.image_blend = c_gray;

if (vine_count[3] > 0)
    obj_mercy.image_blend = c_gray;

for (i = 0; i < 4; i++)
{
    if (vine_cut[i] == true)
    {
        obj_heart_battle_menu_guardener_fake.image_alpha = 0;
        vine_count[i] -= 1;
        vine_cut[i] = false;
        alarm[0] = 30;
        
        switch (vine_count[i])
        {
            case 2:
                instance_create_depth(vine_xx[i] + 46, vine_yy[i] + 22, depth - 1, obj_guardener_vine_piece);
                audio_play_sound(snd_guardener_vine_snip, 1, 0);
                break;
            
            case 1:
                instance_create_depth(vine_xx[i] + 18, vine_yy[i] + 22, depth - 1, obj_guardener_vine_piece);
                instance_create_depth(vine_xx[i] + 50, vine_yy[i] + 22, depth - 1, obj_guardener_vine_piece);
                instance_create_depth(vine_xx[i] + 81, vine_yy[i] + 22, depth - 1, obj_guardener_vine_piece);
                audio_play_sound(snd_guardener_vine_snip, 1, 0);
                break;
            
            case 0:
                instance_create_depth(vine_xx[i] + 42, vine_yy[i] + 22, depth - 1, obj_guardener_vine_piece);
                instance_create_depth(vine_xx[i] + 96, vine_yy[i] + 22, depth - 1, obj_guardener_vine_piece);
                audio_play_sound(snd_guardener_vine_crumble, 1, 0);
                break;
        }
        
        break;
    }
}

vine_percentage = ((vine_count[0] + vine_count[1] + vine_count[2] + vine_count[3]) / 12) * 100;

if (vine_percentage == 0 && global.enemy_mode == 0)
{
    global.action_amount = 3;
    global.enemy_mode = 1;
    global.turns_passed = 10;
    scr_determine_enemy_attack_yellow();
}

if (instance_exists(obj_battle_fade_out_screen))
    depth = obj_battle_fade_out_screen.depth + 1;
