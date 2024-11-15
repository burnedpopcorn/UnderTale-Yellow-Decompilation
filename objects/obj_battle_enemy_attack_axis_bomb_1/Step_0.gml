var battle_box, hurt_player, shield;

if (live_call())
    return global.live_result;

battle_box = 3154;

if (image_alpha < 1)
{
    image_alpha += 0.1;
}
else if (noloop == false)
{
    gravity = 0.8;
    vspeed = -14;
    hspeed = 3;
    
    if (x > 320)
        hspeed *= -1;
    
    noloop = true;
}

hurt_player = false;

if (noloop == true)
{
    if (place_meeting(x, y, obj_battle_enemy_attack_axis_shield))
    {
        if (instance_exists(obj_battlebox_controller_axis))
            obj_battlebox_controller_axis.axis_trash_meter = clamp(obj_battlebox_controller_axis.axis_trash_meter + 10, 0, 100);
        
        obj_battle_enemy_attack_axis_shield.shield_hit = true;
        shield = 511;
        y = shield.bbox_top - 5;
        vspeed = -10;
        destroy_check = true;
    }
    
    hurt_player = false;
    
    if (obj_heart_battle_fighting_axis.movement_mode == 1)
    {
        if (bbox_bottom >= battle_box.bbox_bottom && vspeed > 0)
            hurt_player = true;
    }
    else if (collision_rectangle(battle_box.x - 5, battle_box.y - 5, battle_box.x + 5, battle_box.y + 5, id, false, false))
    {
        hurt_player = true;
    }
}

if (hurt_player)
{
    instance_destroy(self, false);
    instance_create_depth(320, 320, -100, obj_battle_enemy_attack_axis_energy_ball_explosion);
}

if (destroy_check == true && vspeed > 0)
    instance_destroy();
