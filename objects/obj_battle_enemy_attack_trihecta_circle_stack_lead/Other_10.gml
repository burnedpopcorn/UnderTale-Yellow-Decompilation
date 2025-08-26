var green = 0;
var random_pos = irandom_range(0, 2);

if (random_pos == 0)
{
    if (green == 1)
    {
    }
    
    y = obj_dialogue_box_battle_transformation_any.bbox_top + 5 + sprite_height;
    
    if (instance_exists(obj_battle_enemy_attack_trihecta_circle_stack_white))
        obj_battle_enemy_attack_trihecta_circle_stack_white.y = obj_dialogue_box_battle_transformation_any.bbox_top + 5 + (sprite_height * 2);
}
else if (random_pos == 1)
{
    if (green == 1)
    {
    }
    
    y = obj_dialogue_box_battle_transformation_any.bbox_top + 5;
    
    if (instance_exists(obj_battle_enemy_attack_trihecta_circle_stack_white))
        obj_battle_enemy_attack_trihecta_circle_stack_white.y = obj_dialogue_box_battle_transformation_any.bbox_top + 5 + (sprite_height * 2);
}
else if (random_pos == 2)
{
    if (green == 1)
    {
    }
    
    y = obj_dialogue_box_battle_transformation_any.bbox_top + 5;
    
    if (instance_exists(obj_battle_enemy_attack_trihecta_circle_stack_white))
        obj_battle_enemy_attack_trihecta_circle_stack_white.y = obj_dialogue_box_battle_transformation_any.bbox_top + 5 + sprite_height;
}

var random_pitch = irandom_range(-1, 1);
audio_play_sound(snd_decibatbouncewave2, 20, 0);
audio_sound_pitch(snd_decibatbouncewave2, 1 + (random_pitch * 0.3));
