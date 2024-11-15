if (sprite_index == spr_battle_flowey_gray_grab)
{
    obj_flowey_battle_gray_wheel.scene += 1;
    scene = 1;
    sprite_index = spr_battle_flowey_gray_ungrab;
    image_index = 0;
    image_speed = 0;
}
else
{
    obj_heart_battle_fighting_yellow_final.y = y;
    obj_heart_battle_fighting_yellow_final.x = x;
    
    if (obj_flowey_battle_final.stage_current == 0)
        obj_heart_battle_fighting_yellow_final.sprite_index = spr_heart_yellow_down;
    else
        obj_heart_battle_fighting_yellow_final.sprite_index = spr_heart_yellow_up;
    
    obj_heart_battle_fighting_yellow_final.image_alpha = 1;
    obj_heart_battle_fighting_yellow_final.moveable = true;
    instance_destroy();
}
