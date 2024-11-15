depth = -y;

if (mo_menu_fall == 1)
{
    mo_menu_fall = 2;
    men_vsp = 14.3;
}

y += men_vsp;

if (mo_menu_fall == 2)
{
    if (men_vsp > 0)
    {
        men_vsp -= 1;
    }
    else
    {
        men_vsp = 0;
        depth = -y;
        mo_menu_fall = 3;
    }
}

if (mo_menu_fall == 4)
{
    mo_menu_fall = 5;
    men_hsp = -11.8;
}

if (mo_menu_fall == 5)
{
    if (men_hsp < 0)
    {
        men_hsp += 0.4;
    }
    else
    {
        men_hsp = 0;
        instance_destroy();
    }
}

x += men_hsp;
