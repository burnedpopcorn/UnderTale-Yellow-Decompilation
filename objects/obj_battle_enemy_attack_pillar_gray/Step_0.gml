if (live_call())
    return global.live_result;

var bullet = instance_place(x, y, obj_battle_enemy_attack_bullet_impact);

if (bullet != -4)
{
    audio_play_sound(snd_rock_break, 1, 0);
    scr_screenshake_battle(4, 2);
    
    if (global.route != 3)
    {
        for (var i = 1; i <= 3; i++)
        {
            var left_debris = instance_create_depth(x, y - (20 * i), -100, obj_battle_enemy_attack_pillar_debris);
            
            with (left_debris)
            {
                hspeed = -0.25 - (0.7 * i);
                vspeed = -6 + random_range(-2, 2);
                gravity = 0.3;
            }
            
            var right_debris = instance_create_depth(x, y - (20 * i), -100, obj_battle_enemy_attack_pillar_debris);
            
            with (right_debris)
            {
                hspeed = 0.25 + (0.7 * i);
                vspeed = -6 + random_range(-2, 2);
                gravity = 0.3;
            }
            
            var small_debris = instance_create_depth(x, y - 60, -100, obj_battle_enemy_attack_pillar_debris);
            
            with (small_debris)
            {
                sprite_index = spr_ceroba_pillar_debris_small;
                vspeed = -7 + random_range(-1, 1);
                gravity = 0.3;
                hspeed = -6 + (3 * i);
            }
        }
    }
    else
    {
        for (var i = 1; i <= 2; i++)
        {
            var left_debris = instance_create_depth(x, y - (20 * i), -100, obj_battle_enemy_attack_pillar_debris);
            
            with (left_debris)
            {
                hspeed = -0.25 - (0.7 * i);
                vspeed = -7;
                gravity = 0.3;
            }
            
            var right_debris = instance_create_depth(x, y - (20 * i), -100, obj_battle_enemy_attack_pillar_debris);
            
            with (right_debris)
            {
                hspeed = 0.25 + (0.7 * i);
                vspeed = -7;
                gravity = 0.3;
            }
            
            var small_debris = instance_create_depth(x, y - 60, -100, obj_battle_enemy_attack_pillar_debris);
            
            with (small_debris)
            {
                sprite_index = spr_ceroba_pillar_debris_small;
                vspeed = -7;
                gravity = 0.3;
                hspeed = -6 + (3 * i);
            }
        }
    }
    
    instance_destroy();
}
