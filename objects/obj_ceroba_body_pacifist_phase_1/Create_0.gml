if (live_call())
    return global.live_result;

anim_loop_time = room_speed * 4;
anim_stretch_current = 1;
anim_stretch_max = 1.1;
anim_stage = 1;
anim_inc_multiplier = 2;
anim_inc_multiplier_max = 2;
anim_head_offset = y - obj_ceroba_head.y;
anim_hand_left_offset = y - obj_ceroba_hand_left.y;
anim_hand_right_offset = y - obj_ceroba_hand_right.y;
anim_staff_offset = y - obj_ceroba_staff.y;
anim_ponytail_offset = obj_ceroba_head.y - obj_ceroba_ponytail.y;
death_sprite = false;
image_speed = 0.33;
image_index = 0;
damage_disjoint_count = 0;
damage_disjoint_x = 0;
no_loop_damage_disjoint_count = false;
starting_point_x = x;
starting_point_y = y;
audio_play_sound(snd_ceroba_staff_spin, 1, 0);
