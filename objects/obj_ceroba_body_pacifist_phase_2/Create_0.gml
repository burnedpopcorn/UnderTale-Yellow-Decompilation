if (live_call())
    return global.live_result;

no_loop_create_clouds = false;
can_talk_no_loop = false;
blend_color = 16777215;
blend_color_current = 16777215;
damage_disjoint_count = 0;
damage_disjoint_x = 0;
damage_disjoint_timer = 2;
damage_disjoint_timer_max = 2;
no_loop_damage_disjoint_count = false;
starting_point_x = x;
starting_point_y = y;
disjoint_offset = 0;

if (!instance_exists(obj_ceroba_cape_1))
    instance_create_depth(x - 8, y - 178, depth - 2, obj_ceroba_cape_1);

if (!instance_exists(obj_ceroba_cape_2))
    instance_create_depth(x - 30, y - 190, depth + 3, obj_ceroba_cape_2);

if (!instance_exists(obj_ceroba_hair))
    instance_create_depth(x + 2, y - 45, depth + 4, obj_ceroba_hair);

if (!instance_exists(obj_ceroba_legs))
    instance_create_depth(x - 42, y - 174, depth + 1, obj_ceroba_legs);

if (!instance_exists(obj_ceroba_phase_2_staff))
    instance_create_depth(x - 42, y - 174, depth + 2, obj_ceroba_phase_2_staff);

if (!instance_exists(obj_ceroba_phase_2_head))
    instance_create_depth(x - 94, y - 256, depth, obj_ceroba_phase_2_head);

if (!instance_exists(obj_ceroba_sideburn_left))
    instance_create_depth(x - 1, y - 208, depth - 1, obj_ceroba_sideburn_left);

if (!instance_exists(obj_ceroba_sideburn_right))
    instance_create_depth(x + 0, y - 208, depth - 1, obj_ceroba_sideburn_right);

anim_loop_time = room_speed * 3;
anim_stretch_current = 1;
anim_stretch_max = 1.1;
anim_stage = 1;
anim_inc_multiplier = 2;
anim_inc_multiplier_max = 2;
anim_cape_1_offset = y - obj_ceroba_cape_1.y;
anim_cape_2_offset = y - obj_ceroba_cape_2.y;
anim_hair_offset = y - obj_ceroba_hair.y;
anim_legs_offset = y - obj_ceroba_legs.y;
anim_staff_offset = y - obj_ceroba_phase_2_staff.y;
anim_head_offset = y - obj_ceroba_phase_2_head.y;
anim_sideburnl_offset = obj_ceroba_sideburn_left.y;
anim_sideburnr_offset = obj_ceroba_sideburn_right.y;
