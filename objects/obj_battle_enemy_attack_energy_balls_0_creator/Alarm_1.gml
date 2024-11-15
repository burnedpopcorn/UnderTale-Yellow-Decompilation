if (block_successful == true)
{
    instance_destroy(obj_attack_cycler_axis);
    global.attack_cycle += 1;
    global.special_action_count += 1;
    instance_destroy();
}
else
{
    attack_can_end = false;
    attack_started = false;
}
