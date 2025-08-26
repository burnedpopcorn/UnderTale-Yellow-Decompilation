if (live_call())
    return global.live_result;

var box = obj_dialogue_box_battle_transformation_any;

if (fadeout == false)
{
    image_alpha = lerp(image_alpha, 1, 0.15);
    
    if (image_alpha > 0.99)
        image_alpha = 1;
}
else
{
    image_alpha = lerp(image_alpha, 0, 0.25);
    
    if (image_alpha < 0.01)
        image_alpha = 0;
}

throw_dir = irandom_range(135, 405);
var spawnx = x + lengthdir_x(spawn_dist, throw_dir);
var spawny = y + lengthdir_y(spawn_dist, throw_dir);

if (active == true)
{
    throw_delay--;
    
    if (throw_delay == 0)
    {
        throw_delay = throw_delay_max;
        instance_create_depth(spawnx, spawny, depth - 100, obj_flowey_1_attack_audience_hate_flower);
    }
}
