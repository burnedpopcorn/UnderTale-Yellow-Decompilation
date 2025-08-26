if (live_call())
    return global.live_result;

var side = choose(1, 2);
var horse1, horse2;

switch (side)
{
    case 1:
        horse1 = instance_create_depth(-40, 300, -100, obj_flowey_battle_gray_horse);
        horse2 = instance_create_depth(700, 400, -100, obj_flowey_battle_gray_horse);
        break;
    
    case 2:
        horse1 = instance_create_depth(700, 300, -100, obj_flowey_battle_gray_horse);
        horse2 = instance_create_depth(-40, 400, -100, obj_flowey_battle_gray_horse);
        break;
}

var explosive_enemy = choose(horse1, horse2);

with (explosive_enemy)
    can_explode = true;

instance_destroy();
