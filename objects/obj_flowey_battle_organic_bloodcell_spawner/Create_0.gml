if (live_call())
    return global.live_result;

organic_spawn_chance_max = 18;
organic_spawn_chance_current = 18;

for (var i = 0; i < 12; i++)
{
    var bul = instance_create_depth(irandom_range(100, 540), irandom_range(100, 380), -100, obj_flowey_battle_phase_2_organic_bloodcell);
    bul.direction = irandom_range(0, 360);
    
    with (bul)
    {
        while (place_meeting(x, y, obj_heart_battle_fighting_parent))
            x += 50;
    }
}
