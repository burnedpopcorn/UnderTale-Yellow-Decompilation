if (live_call())
    return global.live_result;

if (!unavoidable_attack)
{
    soul_can_hurt = true;
    ds_list_empty(spawner_list);
    ds_list_add(spawner_list, 1339);
    unavoidable_attack = true;
    alarm[1] = 600;
}
else
{
    unavoidable_attack = false;
    alarm[1] = 1;
}
