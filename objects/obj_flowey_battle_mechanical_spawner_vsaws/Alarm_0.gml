var i, saw;

for (i = 0; i < spawn_count; i++)
{
    saw = instance_create_depth(x_spawn[i], 520, -100, obj_flowey_battle_phase_2_mechanical_saw);
    saw.gravity = 0.4;
    saw.vspeed = -13;
}

instance_destroy();
