switch (global.route)
{
    case 1:
        instance_create(0, 0, obj_dunes_43_cutscene_neutral);
        break;
    
    case 2:
        instance_create(0, 0, obj_dunes_43_cutscene_pacifist);
        break;
    
    case 3:
        instance_create(0, 0, obj_dunes_43_cutscene_geno);
        break;
}

instance_destroy();
