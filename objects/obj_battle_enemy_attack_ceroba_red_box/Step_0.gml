var breath_percentage;

if (instance_exists(obj_ceroba_body))
{
    breath_percentage = (obj_ceroba_body.anim_stretch_current - 1) / (obj_ceroba_body.anim_stretch_max - 1);
}
else
{
    instance_destroy();
    exit;
}

color_number_current = 200 - (breath_percentage * 200);

if (instance_exists(obj_heart_battle_fighting_parent))
{
    if (obj_heart_battle_fighting_parent.bbox_left <= (obj_dialogue_box_battle_transformation_any.bbox_left + 5) || obj_heart_battle_fighting_parent.bbox_right >= (obj_dialogue_box_battle_transformation_any.bbox_right - 5) || obj_heart_battle_fighting_parent.bbox_bottom >= (obj_dialogue_box_battle_transformation_any.bbox_bottom - 5) || obj_heart_battle_fighting_parent.bbox_top <= (obj_dialogue_box_battle_transformation_any.bbox_top + 5))
    {
        if (obj_heart_battle_fighting_parent.vulnerable == true)
        {
            with (obj_heart_battle_fighting_parent)
            {
                if (global.current_pp_self > 0)
                {
                    instance_create(x, y, obj_heart_battle_effect_expand);
                    
                    for (i = 0; i < 5; i++)
                        instance_create(x, y, obj_heart_battle_effect_shard);
                    
                    global.current_pp_self -= 1;
                    audio_play_sound(snd_mirrorbreak1, 20, false);
                }
                else
                {
                    global.max_hp_self -= 3;
                    global.current_hp_self -= 3;
                    audio_play_sound(snd_ceroba_hurt_red, 1, 0);
                }
                
                vulnerable = false;
                global.hit_self = true;
                alarm[0] = global.invulnerability_self;
            }
        }
    }
}
