if (noloop == true && !instance_exists(obj_sme_yellow_rhythm_note_geno))
    instance_destroy(obj_sme_yellow_rhythm_generator);

if (!instance_exists(obj_sme_yellow_rhythm_generator) && noloop == true)
    instance_destroy();
else if (instance_exists(obj_sme_yellow_rhythm_generator))
    noloop = true;
