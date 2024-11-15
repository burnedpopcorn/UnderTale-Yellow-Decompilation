image_speed_rise = 1/3;
image_speed_sink = 1/3;
image_speed_rise_c = 1/3;
image_speed_sink_c = 1/3;
image_speed = image_speed_sink;
image_index = 0;

if (x == obj_dunebud_a.x)
{
    id_dunebud = instance_place(x, y, obj_dunebud_a);
    global.id_store = id;
    
    with (id_dunebud)
    {
        image_alpha = 0;
        time_elapsed = 0;
        sign_modifier = 1;
        id_dunebud_chase = global.id_store;
    }
}
else
{
    id_dunebud = instance_place(x, y, obj_dunebud_b);
    global.id_store = id;
    
    with (id_dunebud)
    {
        image_alpha = 0;
        time_elapsed = 0;
        sign_modifier = 1;
        id_dunebud_chase = global.id_store;
    }
}

id_dunebud_attack = -4;

if (id_dunebud.sprite_index == spr_dunebud_critical)
{
    sprite_index = spr_dunebud_sink_c;
    image_speed = image_speed_sink_c;
    image_index = 0;
}
