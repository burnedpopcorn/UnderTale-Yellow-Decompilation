if (stage_counter != 0 && nostril_draw != -1)
{
    if (sprite_index == spr_bowll_head_normal || sprite_index == spr_bowll_head_grateful)
    {
        instance_create(x - 12, y, obj_bowll_nostrils_cloud_a);
        instance_create(x + 10, y, obj_bowll_nostrils_cloud_a);
    }
    else if (sprite_index == spr_bowll_head_critical)
    {
        instance_create(x - 12, y - 4, obj_bowll_nostrils_cloud_a);
        instance_create(x + 10, y - 4, obj_bowll_nostrils_cloud_a);
    }
    
    nostril_count += 1;
    
    if (nostril_count < nostril_max)
        alarm[0] = nostril_alarm;
    else
        nostril_count = 0;
}
else
{
    nostril_count = 0;
}
