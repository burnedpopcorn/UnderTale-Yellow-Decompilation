if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;

if (image_alpha < 1)
    image_alpha += 0.2;

scr_enemy_attack_bullet_hit();

if (bullet_destroy_self)
{
    instance_destroy();
    instance_create_depth(x, y, depth - 1, obj_fmartlet_star_destroy);
    audio_play_sound(snd_rock_break, 1, 0);
    obj_fmartlet_star_destroy.sprite_index = destroy_sprite;
    
    if (object_index != obj_fmartlet_meteor_small)
    {
        for (var i = 0; i < 2; i++)
        {
            var meteor = instance_create_depth(x, y, -105, obj_fmartlet_meteor_small);
            meteor.vspeed = -6;
            meteor.hspeed = -3 + (i * 6);
        }
    }
}

if ((bbox_bottom + vspeed) > battle_box.bbox_bottom && (bbox_left > battle_box.bbox_left && bbox_right < battle_box.bbox_right))
{
    scr_screenshake_battle(1, 1);
    audio_play_sound(snd_rock_break, 1, 0);
    instance_create_depth(x, y, depth - 1, obj_fmartlet_star_destroy);
    instance_create_depth(x, y, -100, obj_fmartlet_star_explosion_hurt);
    instance_destroy();
}

part_emitter_region(global.ps_meteors, self_emitter, x - 2, x + 2, y - 2, y + 2, 0, 0);
part_emitter_stream(global.ps_meteors, self_emitter, global.pt_trail, 2);
