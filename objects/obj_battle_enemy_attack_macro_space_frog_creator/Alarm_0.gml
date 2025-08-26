if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
var meteor;

if (irandom(frog_green_chance) == 1 && frog_green_noloop == false)
{
    is_green = true;
    frog_green_noloop = true;
    meteor = instance_create_depth(battle_box.bbox_right + 10, irandom_range(battle_box.bbox_top + 20, battle_box.bbox_bottom - 20), -100, obj_battle_enemy_attack_space_green_frog);
}
else
{
    meteor = instance_create_depth(battle_box.bbox_right + 10, irandom_range(battle_box.bbox_top - 20, battle_box.bbox_bottom + 20), -100, obj_battle_enemy_attack_space_rock);
    
    if (frog_green_chance > 1)
        frog_green_chance--;
}

if (meteor.y > battle_box.y)
    meteor.direction = irandom_range(135, 180);
else
    meteor.direction = irandom_range(180, 225);

meteor.speed = 2;
meteor_count--;

if (meteor_count <= 0)
    instance_destroy();

alarm[0] = meteor_delay;
