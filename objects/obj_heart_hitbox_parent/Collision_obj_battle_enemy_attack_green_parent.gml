collide_id = other.id;

with (obj_heart_battle_fighting_parent)
{
    collide_id = obj_heart_hitbox_parent.collide_id;
    damage_number = collide_id.damage_number;
}

if (!instance_exists(obj_dialogue_box_battle_transformation_any) || other.depth < obj_dialogue_box_battle_transformation_any.depth)
    heal = true;
else
    heal = false;

event_user(2);
