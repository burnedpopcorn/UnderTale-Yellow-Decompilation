if (image_alpha < 1)
    image_alpha += 0.2;

vspeed += 0.33;

if (vspeed > fall_speed)
    vspeed = fall_speed;

var box = obj_dialogue_box_battle_transformation_any;

if (y >= (box.bbox_bottom - 12))
{
    instance_destroy();
    scr_screenshake_battle(6, 6);
    var break_sound = audio_play_sound(snd_rock_break, 1, 0);
    audio_sound_gain(break_sound, 0.7, 0);
    
    for (var i = 0; i < 2; i++)
    {
        var debris = instance_create_depth(x, y, depth - 1, obj_battle_enemy_attack_falling_boulders_boulder_piece);
        debris.hspeed = -2 + (i * 4);
    }
}
