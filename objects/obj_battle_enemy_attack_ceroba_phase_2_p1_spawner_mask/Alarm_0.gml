if (live_call())
    return global.live_result;

var xx = 0;
var yy = 0;
var spawn_corner = irandom_range(1, 4);
var spawn_direction = 0;
var spawn_direction_1, spawn_direction_2;

switch (spawn_corner)
{
    case 1:
        xx = battle_box.bbox_left - 18;
        yy = battle_box.bbox_top - 18;
        spawn_direction_1 = 0;
        spawn_direction_2 = 270;
        break;
    
    case 2:
        xx = battle_box.bbox_right + 18;
        yy = battle_box.bbox_top - 18;
        spawn_direction_1 = 180;
        spawn_direction_2 = 270;
        break;
    
    case 3:
        xx = battle_box.bbox_left - 18;
        yy = battle_box.bbox_bottom + 18;
        spawn_direction_1 = 0;
        spawn_direction_2 = 90;
        break;
    
    case 4:
        xx = battle_box.bbox_right + 18;
        yy = battle_box.bbox_bottom + 18;
        spawn_direction_1 = 180;
        spawn_direction_2 = 90;
        break;
}

do
    spawn_direction = choose(spawn_direction_1, spawn_direction_2);
until (spawn_corner_last != spawn_corner || spawn_direction != spawn_direction_last);

if (spawn_corner_last != spawn_corner && ((spawn_corner < 3 && spawn_corner_last < 3) || (spawn_corner > 2 && spawn_corner_last > 2)))
{
    if (spawn_direction == spawn_direction_1)
        spawn_direction = spawn_direction_2;
    else
        spawn_direction = spawn_direction_1;
}

spawn_corner_last = spawn_corner;
spawn_direction_last = spawn_direction;
mask = instance_create_depth(xx, yy, -100, obj_ceroba_attack_bullet_trail_mask);

with (mask)
    direction = spawn_direction;

alarm[0] = 45;
