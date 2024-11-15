if (can_draw_arrows == false)
    exit;

if (instance_exists(obj_heart_battle_fighting_parent) && !alarm[0])
{
    draw_tutorial_arrows = true;
    alarm[0] = 30;
}
else if (!instance_exists(obj_heart_battle_fighting_parent))
{
    alarm[0] = -1;
    draw_tutorial_arrows = false;
}

if (instance_exists(obj_heart_battle_fighting_parent) && can_draw_arrows)
{
    if (obj_heart_battle_fighting_parent.x != obj_heart_battle_fighting_parent.xstart)
    {
        can_draw_arrows = false;
        alarm[0] = -1;
    }
}
