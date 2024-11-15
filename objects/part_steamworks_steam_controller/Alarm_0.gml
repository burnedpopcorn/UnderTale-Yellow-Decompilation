with (obj_steamworks_steam_blaster)
{
    if (steam_active)
    {
        if (obj_pl.y > y)
        {
            part_emitter_region(other.part_smokesys_back, other.part_smokeEm_back, x + 10, x + 10, y + 10, y + 10, 2, 1);
            part_emitter_burst(other.part_smokesys_back, other.part_smokeEm_back, other.part_smoke, -1);
        }
        else
        {
            part_emitter_region(other.part_smokesys_front, other.part_smokeEm_front, x + 10, x + 10, y + 10, y + 10, 2, 1);
            part_emitter_burst(other.part_smokesys_front, other.part_smokeEm_front, other.part_smoke, -1);
        }
    }
}

alarm[0] = 2;
