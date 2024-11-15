damage_number = scr_determine_damage_number_enemy("crispy scroll a", "crispy scroll b", "crispy scroll c");
image_speed = 0;
image_index = 0;
image_angle = 0;
image_alpha = 0;

if (x < (obj_dialogue_box_battle_transformation_any.bbox_right + (obj_dialogue_box_battle_transformation_any.sprite_width / 2)))
    image_angle_sign = 1;
else
    image_angle_sign = -1;

image_angle_increase = 1 * image_angle_sign;
hsp = 0;
vsp = 0;
hsp_bounce = irandom_range(-2, 2);
jump_speed = 7.5;
grav = 0.5;
terminal_velocity = 10;
can_move = false;
can_vanish = false;
can_bounce = true;

while (bbox_left < (obj_dialogue_box_battle_transformation_any.bbox_left + 4))
    x += 1;

while (bbox_right > (obj_dialogue_box_battle_transformation_any.bbox_right - 4))
    x -= 1;
