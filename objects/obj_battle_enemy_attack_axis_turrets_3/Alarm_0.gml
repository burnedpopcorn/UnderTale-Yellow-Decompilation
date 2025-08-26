if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
var dir = irandom_range(0, 359);
var dir_inc = 360/7;
var real_turret = irandom_range(0, 6);

for (var i = 0; i < 7; i++)
{
    var distance = irandom_range(100, 140);
    
    if (i != real_turret)
        instance_create_depth(battle_box.x + lengthdir_x(distance, dir + (dir_inc * i)), battle_box.y + lengthdir_y(distance, dir + (dir_inc * i)), -100, obj_battle_enemy_attack_axis_turret_fake);
    else
        instance_create_depth(battle_box.x + lengthdir_x(distance, dir + (dir_inc * i)), battle_box.y + lengthdir_y(distance, dir + (dir_inc * i)), -100, obj_battle_enemy_attack_axis_turret_real);
}

alarm[1] = attack_offset;
turret_wave--;

if (turret_wave <= 0)
    instance_destroy();
