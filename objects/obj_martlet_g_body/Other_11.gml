var enemy_dead, enemy_spared;

enemy_dead = global.enemy_dead;
enemy_spared = global.enemy_spared;

if (enemy_dead == false && enemy_spared == false)
{
    if (damage_disjoint_count == 0)
    {
        if (instance_exists(obj_martlet_g_head))
        {
            with (obj_martlet_g_head)
                image_alpha = obj_martlet_g_body.image_alpha;
        }
        
        if (instance_exists(obj_martlet_g_hand_right))
        {
            with (obj_martlet_g_hand_right)
                image_alpha = obj_martlet_g_body.image_alpha;
        }
        
        if (instance_exists(obj_martlet_g_hand_left))
        {
            with (obj_martlet_g_hand_left)
                image_alpha = obj_martlet_g_body.image_alpha;
        }
    }
}
