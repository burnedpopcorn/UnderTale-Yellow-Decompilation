damage_number = scr_determine_damage_number_enemy("rorrim a", "rorrim b", "rorrim c");
image_speed = 0;
image_index = 0;
image_alpha = 0;
hsp = 0;
vsp = 0;
grav = 0.5;
terminal_velocity = 10;
can_move = false;

while (bbox_left < (obj_dialogue_box_battle_transformation_any.bbox_left + 4))
    x += 1;

while (bbox_right > (obj_dialogue_box_battle_transformation_any.bbox_right - 4))
    x -= 1;
