var battle_box;

if (live_call())
    return global.live_result;

battle_box = 3154;

if (bullet_hit_overlay > 0.01)
    bullet_hit_overlay = lerp(bullet_hit_overlay, 0, 0.15);
else
    bullet_hit_overlay = 0;

if (y > (battle_box.bbox_bottom + 10))
{
    image_alpha -= 0.2;
    
    if (image_alpha <= 0)
        instance_destroy(self, false);
}
else if (image_alpha < 1)
{
    image_alpha += 0.25;
}

if (destroy_timer > 0)
    destroy_timer--;
else if (destroy_timer == 0)
    instance_destroy();
