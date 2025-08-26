vine_number = 5;
vine_distance = 60;
spawn_delay = 3;
var x_start = irandom_range(vine_distance, 640 - (vine_number * vine_distance));
var side = choose(1, 2);

if (side == 2)
{
    x_start = 640 - x_start;
    vine_distance *= -1;
}

for (var i = 0; i < vine_number; i++)
{
    var warning = instance_create_depth(x_start + (i * vine_distance), 450, -100, obj_flowey_battle_gray_vine_warning);
    warning.alarm[0] = i * spawn_delay;
}
