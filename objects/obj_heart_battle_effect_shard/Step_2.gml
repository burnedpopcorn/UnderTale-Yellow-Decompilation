if (!instance_exists(obj_heart_battle_fighting_parent))
{
    instance_destroy();
    exit;
}

x += hsp;
y += vsp;

if (vsp < 20)
    vsp += grav;
