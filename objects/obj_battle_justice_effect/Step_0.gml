if (live_call())
    return global.live_result;

if (stage < 3)
    sin_degree += 4;

if (sin_degree > 180 && stage == 1)
{
    sin_degree -= 180;
    stage = 2;
}

if (sin_degree >= 90 && stage == 2)
    stage = 3;

var sin_value = degtorad(sin_degree);
draw_alpha = 0.4 - (sin(sin_value) * 0.4);

if (box_stage == 0)
{
    box_size += 0.02;
    box_alpha += 0.2;
    
    if (box_alpha >= 1)
        box_stage = 1;
}
else if (box_size > 0)
{
    box_size -= 0.01;
}
else
{
    box_size -= 0;
    box_alpha -= 0.1;
}

destroy_timer--;

if (destroy_timer <= 0)
    instance_destroy();
