var box, puff_width, puff_height, puff_x_1, puff_x_2, smoke_1, smoke_2;

box = 3154;
puff_width = sprite_get_width(spr_attack_steam_puff);
puff_height = sprite_get_height(spr_attack_steam_puff);
puff_x_1 = choose(box.bbox_left + puff_width, box.x, box.bbox_right - puff_width);
puff_x_2 = choose(box.bbox_left + puff_width, box.x, box.bbox_right - puff_width);

while (puff_x_1 == puff_x_2)
    puff_x_2 = choose(box.bbox_left + puff_width, box.x, box.bbox_right - puff_width);

while ((puff_x_1_last == puff_x_1 || puff_x_1_last == puff_x_2) && (puff_x_2_last == puff_x_1 || puff_x_2_last == puff_x_2))
{
    puff_x_1 = choose(box.bbox_left + puff_width, box.x, box.bbox_right - puff_width);
    puff_x_2 = choose(box.bbox_left + puff_width, box.x, box.bbox_right - puff_width);
    
    while (puff_x_1 == puff_x_2)
        puff_x_2 = choose(box.bbox_left + puff_width, box.x, box.bbox_right - puff_width);
}

smoke_1 = instance_create_depth(puff_x_1, box.bbox_bottom - puff_height, -9999, obj_battle_enemy_attack_smoke_puff);
smoke_2 = instance_create_depth(puff_x_2, box.bbox_bottom - puff_height, -9999, obj_battle_enemy_attack_smoke_puff);
attack_count -= 1;
puff_x_1_last = puff_x_1;
puff_x_2_last = puff_x_2;

if (attack_count <= 0 && !alarm[1])
    alarm[1] = 45;

alarm[0] = 24;
