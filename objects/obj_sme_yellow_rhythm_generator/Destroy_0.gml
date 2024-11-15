if (instance_exists(obj_sme_yellow_rhythm_note))
{
    with (obj_sme_yellow_rhythm_note)
        instance_destroy();
}

if (instance_exists(obj_sme_yellow_rhythm_note_geno))
{
    with (obj_sme_yellow_rhythm_note_geno)
        instance_destroy();
}

if (instance_exists(obj_sme_yellow_rhythm_note_end))
{
    with (obj_sme_yellow_rhythm_note_end)
        instance_destroy();
}

if (instance_exists(obj_sme_yellow_rhythm_selection))
{
    with (obj_sme_yellow_rhythm_selection)
        instance_destroy();
}

if (instance_exists(obj_sme_yellow_rhythm_hit))
{
    with (obj_sme_yellow_rhythm_hit)
        instance_destroy();
}

if (instance_exists(obj_sme_yellow_rhythm_damage))
{
    with (obj_sme_yellow_rhythm_damage)
        instance_destroy();
}

if (timeline_exists(timeline))
    timeline_delete(timeline);
