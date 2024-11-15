var spawn_flower;

damage_number = scr_determine_damage_number_enemy("flower girls", "void", "void");
image_alpha = 0;
bounce_count = 2;
can_jump = false;
hsp = 3;

if (x > obj_dialogue_box_battle_transformation_any.x)
{
    hsp *= -1;
    image_xscale *= -1;
}

heart_collided = false;
spawn_flower = instance_place(x, y, obj_battle_enemy_attack_flowergirls_falling_flowers_flower);

if (spawn_flower != -4)
    instance_destroy(spawn_flower);
