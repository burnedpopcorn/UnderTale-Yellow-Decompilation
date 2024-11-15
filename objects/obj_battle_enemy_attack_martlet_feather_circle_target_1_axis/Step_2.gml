if (!instance_exists(obj_heart_battle_fighting_parent))
    instance_destroy();

if (instance_exists(id_feather))
{
    if (id_feather.state == 3)
    {
        image_speed = 0;
        image_index = 2;
    }
    
    image_alpha = id_feather.image_alpha;
}
