var distance_right = obj_battle_enemy_attack_insomnitot_fence.bbox_left - bbox_right;
var distance_left = obj_battle_enemy_attack_insomnitot_fence.bbox_right - bbox_left;

if ((attack_direction == 1 && distance_right <= distance_limit && distance_right > 0) || (attack_direction == -1 && distance_left >= -distance_limit && distance_left < 0))
{
    sprite_index = jump_sprite;
    image_speed = 0;
    image_index = 0;
    state = "jump";
}
