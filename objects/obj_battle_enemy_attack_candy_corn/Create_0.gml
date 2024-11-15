var app_sound;

damage_number = scr_determine_damage_number_enemy("sweet corn a", "sweet corn b", "sweet corn c");
image_speed = 0;
image_index = 0;
image_alpha = 0;

if (x > obj_dialogue_box_battle_transformation_any.bbox_right)
    image_xscale = -1;

x_speed = 6;

if (x > obj_dialogue_box_battle_transformation_any.bbox_right)
    x_speed = -x_speed;

starting_position_x = x;
starting_position_y = y;
animation_disjoint_x = 0;
animation_disjoint_y = 0;
reverse = true;
can_move = false;
can_vanish = false;
app_sound = audio_play_sound(snd_undertale_appear, 1, 0);
audio_sound_gain(app_sound, 0.5, 0);
