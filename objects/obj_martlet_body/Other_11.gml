var enemy_dead = global.enemy_dead;
var enemy_spared = global.enemy_spared;

if (enemy_dead == false && enemy_spared == false)
{
    if (damage_disjoint_count == 0)
    {
        if (instance_exists(obj_martlet_head))
        {
            with (obj_martlet_head)
                image_alpha = obj_martlet_body.image_alpha;
        }
        
        if (instance_exists(obj_martlet_hand_right))
        {
            with (obj_martlet_hand_right)
                image_alpha = obj_martlet_body.image_alpha;
        }
        
        if (instance_exists(obj_martlet_hand_left))
        {
            with (obj_martlet_hand_left)
                image_alpha = obj_martlet_body.image_alpha;
        }
    }
}
