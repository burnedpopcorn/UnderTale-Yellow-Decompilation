var box = obj_dialogue_box_battle_transformation_any;
var puff_width = sprite_get_width(spr_attack_steam_puff);
var puff_height = sprite_get_height(spr_attack_steam_puff);
var puff_x_1 = choose(box.bbox_left + puff_width, box.x, box.bbox_right - puff_width);
var puff_x_2 = choose(box.bbox_left + puff_width, box.x, box.bbox_right - puff_width);

while (puff_x_1 == puff_x_2)
    puff_x_2 = choose(box.bbox_left + puff_width, box.x, box.bbox_right - puff_width);

while ((puff_x_1_last == puff_x_1 || puff_x_1_last == puff_x_2) && (puff_x_2_last == puff_x_1 || puff_x_2_last == puff_x_2))
{
    puff_x_1 = choose(box.bbox_left + puff_width, box.x, box.bbox_right - puff_width);
    puff_x_2 = choose(box.bbox_left + puff_width, box.x, box.bbox_right - puff_width);
    
    while (puff_x_1 == puff_x_2)
        puff_x_2 = choose(box.bbox_left + puff_width, box.x, box.bbox_right - puff_width);
}

var smoke_1 = instance_create_depth(puff_x_1, box.bbox_bottom - puff_height, -9999, obj_battle_enemy_attack_smoke_puff);
var smoke_2 = instance_create_depth(puff_x_2, box.bbox_bottom - puff_height, -9999, obj_battle_enemy_attack_smoke_puff);
attack_count -= 1;
puff_x_1_last = puff_x_1;
puff_x_2_last = puff_x_2;

if (attack_count <= 0 && !alarm[1])
    alarm[1] = 45;

alarm[0] = 24;
