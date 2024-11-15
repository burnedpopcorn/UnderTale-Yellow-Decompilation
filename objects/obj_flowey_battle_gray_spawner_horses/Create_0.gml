var side, horse1, horse2, explosive_enemy;

if (live_call())
    return global.live_result;

side = choose(1, 2);

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

explosive_enemy = choose(horse1, horse2);

with (explosive_enemy)
    can_explode = true;

instance_destroy();
