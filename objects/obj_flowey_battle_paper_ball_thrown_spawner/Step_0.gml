var rng;

if (paper_spawn_chance_current > 1)
    paper_spawn_chance_current--;

rng = irandom(paper_spawn_chance_current);

if (rng == 1)
{
    paper_spawn_chance_current = paper_spawn_chance_max;
    instance_create_depth(choose(0, 640), irandom_range(380, 480), -100, obj_flowey_battle_phase_2_paper_ball_thrown);
}
