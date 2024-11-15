if (!instance_exists(obj_heart_battle_fighting_parent))
{
    instance_destroy();
    exit;
}

x = obj_heart_battle_fighting_parent.x;
y = obj_heart_battle_fighting_parent.y;
image_xscale += 0.1;
image_yscale += 0.1;
image_alpha -= 0.05;

if (image_alpha <= 0)
    instance_destroy();
