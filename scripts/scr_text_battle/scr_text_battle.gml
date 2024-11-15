function scr_text_battle()
{
    if (!instance_exists(obj_dialogue_battle))
        msg = instance_create(x, y, obj_dialogue_battle);
}
