for (var i = 0; i < spawn_count; i++)
{
    var saw = instance_create_depth(x_spawn[i], 520, -100, obj_flowey_battle_phase_2_mechanical_saw);
    saw.gravity = 0.4;
    saw.vspeed = -13;
}

instance_destroy();
