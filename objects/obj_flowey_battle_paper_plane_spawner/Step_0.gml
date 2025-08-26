if (paper_spawn_chance_current > 1)
    paper_spawn_chance_current--;

var rng = irandom(paper_spawn_chance_current);

if (rng == 1)
{
    paper_spawn_chance_current = paper_spawn_chance_max;
    instance_create_depth(choose(-100, 740), irandom_range(300, 400), -100, obj_flowey_battle_phase_2_paper_plane);
}
