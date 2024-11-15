if (death_sprite == true && sprite_index == spr_ceroba_murder_death)
{
    death_sprite = false;
    alarm[0] = 30;
    image_speed = 0;
    image_index = image_number - 1;
}

if (sprite_index == spr_ceroba_intro)
{
    instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
    instance_create(0, 0, obj_quote_battle_ceroba_genocide_intro);
    sprite_index = spr_ceroba_body;
    obj_ceroba_staff.image_alpha = 1;
    obj_ceroba_ponytail.image_alpha = 1;
    obj_ceroba_hand_left.image_alpha = 1;
    obj_ceroba_hand_right.image_alpha = 1;
    obj_ceroba_head.image_alpha = 1;
    image_speed = 0;
    anim_stretch_current = 1;
    anim_stage = 1;
    anim_inc_multiplier = 2;
    image_yscale = 1;
}

if (sprite_index == spr_ceroba_phase_switch)
{
    sprite_index = spr_ceroba_body;
    obj_ceroba_staff.sprite_index = spr_ceroba_staff_battle_phase_2;
    obj_ceroba_staff.image_alpha = 1;
    obj_ceroba_ponytail.image_alpha = 1;
    obj_ceroba_hand_left.image_alpha = 1;
    obj_ceroba_hand_right.image_alpha = 1;
    obj_ceroba_head.image_alpha = 1;
    image_speed = 0;
    anim_stretch_current = 1;
    anim_stage = 1;
    anim_inc_multiplier = 2;
    image_yscale = 1;
}
