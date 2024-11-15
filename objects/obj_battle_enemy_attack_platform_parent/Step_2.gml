if (instance_exists(obj_heart_battle_fighting_blue_down))
{
    if (obj_heart_battle_fighting_blue_down.vsp >= 0)
    {
        if (place_meeting(x, y - 1, obj_heart_battle_fighting_blue_down))
            obj_heart_battle_fighting_blue_down.hsp_carry = hsp;
    }
}
else if (instance_exists(obj_heart_battle_fighting_blue_up))
{
    if (obj_heart_battle_fighting_blue_up.vsp <= 0)
    {
        if (place_meeting(x, y - 1, obj_heart_battle_fighting_blue_up))
            obj_heart_battle_fighting_blue_up.hsp_carry = hsp;
    }
}
