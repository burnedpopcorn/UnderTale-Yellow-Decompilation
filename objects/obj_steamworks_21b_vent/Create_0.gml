image_speed = 0;
scene = 0;
cutscene_timer = 0;
switch_no_crawl = false;

if (global.sworks_flag[12] >= 1)
{
    switch_no_crawl = true;
    image_index = image_number - 1;
}

draw_alpha = 0;
