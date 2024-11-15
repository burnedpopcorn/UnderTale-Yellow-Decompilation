var pollen;

if (live_call())
    return global.live_result;

pollen = instance_create_depth(spawn_x, spawn_y, -100, obj_petal_pull_pollen);
pollen.direction = spawn_direction;
pollen.target = spawned_last;
spawned_last = pollen;
alarm[0] = spawn_interval;
