if (live_call())
    return global.live_result;

with (obj_tellyvis_body_a)
{
    sprite_index = spr_tellyvis_remote_1;
    image_index = 0;
    image_speed = 1;
}

scene = 0;
timer = 15;
random_attack_list = ds_list_create();
ds_list_add(random_attack_list, "Crispy Slash", "Flier Flies", "Penilla Drawing", "Rorrim Mirror", "Candy Spear Corn", "Frostermit Ice Cubes", "Insomnitot Stars", "Know Cone Cherries", "Bowll Silverware", "Cactony Needle Side", "Dunebud Tumbleweeds");
random_attack_current = "nothing";
random_attack_current_last = "nothing";
attack_counter_current = -1;
attack_counter_max = 4;
attack_remote_destroy = false;
instance_list = ds_list_create();

for (var i = 0; i < instance_number(-3); i++)
    ds_list_add(instance_list, instance_find(-3, i));
