var rng, cell;

if (live_call())
    return global.live_result;

if (organic_spawn_chance_current > 1)
    organic_spawn_chance_current--;

rng = irandom(organic_spawn_chance_current);

if (rng == 1)
{
    organic_spawn_chance_current = organic_spawn_chance_max;
    cell = instance_create_depth(choose(-60, 700), irandom_range(-60, 540), -100, obj_flowey_battle_phase_2_organic_bloodcell);
    cell.direction = point_direction(cell.x, cell.y, 320, 240) + irandom_range(-45, 45);
}
