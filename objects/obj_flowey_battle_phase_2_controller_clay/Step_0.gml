if (instance_exists(obj_flowey_battle_phase_2_weakpoint))
    hp_weakpoint = obj_flowey_battle_phase_2_weakpoint.hp_self;

if (hp_weakpoint <= 0)
{
    if (!alarm[0])
        alarm[0] = 30;
}
