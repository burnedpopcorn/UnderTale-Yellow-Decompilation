if (live_call())
    return global.live_result;

image_speed = 0.4;
image_index = 3;
var boom = audio_play_sound(snd_ceroba_boom, 20, 0);
audio_sound_set_track_position(boom, 0.35);
alarm[0] = 3 / image_speed;
screenshake = false;
screenshake_max = 5;
var pellet_number = 12;
var pellet_number_inc = 30;

for (var i = 0; i < pellet_number; i++)
{
    var bullet = instance_create_depth(x, y, -1000, obj_battle_enemy_attack_fpellets_simple);
    bullet.direction = (i + 1) * pellet_number_inc;
    bullet.speed = 7;
}

var xx = obj_flowey_1_attack_10_creator.flowey_face_x;
var yy = obj_flowey_1_attack_10_creator.flowey_face_y;

if (rectangle_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, xx - 124, yy - 84, xx + 124, yy + 84))
    obj_flowey_1_attack_10_creator.flowey_hit = true;
