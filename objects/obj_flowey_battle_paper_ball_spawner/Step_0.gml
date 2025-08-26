if (paper_spawn_chance_current > 1)
    paper_spawn_chance_current--;

var rng = irandom(paper_spawn_chance_current);

if (rng == 1)
{
    paper_spawn_chance_current = paper_spawn_chance_max;
    instance_create_depth(irandom_range(20, 620), -40, -100, obj_flowey_battle_phase_2_paper_ball);
}
