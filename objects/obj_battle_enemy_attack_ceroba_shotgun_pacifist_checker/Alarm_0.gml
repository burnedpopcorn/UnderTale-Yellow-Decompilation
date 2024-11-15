var battle_box, battle_box_width, bullet_width, bullet_inc, excl, j, vsp, hsp, i, xx, yy, bullet;

if (live_call())
    return global.live_result;

battle_box = 3154;
battle_box_width = battle_box.sprite_width;
bullet_width = 8;
bullet_inc = battle_box_width / bullet_width;
excl = irandom_range(1, (battle_box_width / bullet_inc) - 1);

do
    dir = choose("top", "bottom", "left", "right");
until (dir != dir_last);

dir_last = dir;
j = 0;
vsp = 0;
hsp = 0;

for (i = 16; i < (battle_box_width - 12); i += bullet_inc)
{
    j += 1;
    
    if (j != excl)
    {
        switch (dir)
        {
            case "top":
                xx = battle_box.bbox_left + i;
                yy = battle_box.bbox_top - 20;
                vsp = 3;
                break;
            
            case "bottom":
                xx = battle_box.bbox_left + i;
                yy = battle_box.bbox_bottom + 20;
                vsp = -3;
                break;
            
            case "left":
                xx = battle_box.bbox_left - 20;
                yy = battle_box.bbox_top + i;
                hsp = 3;
                break;
            
            case "right":
                xx = battle_box.bbox_right + 20;
                yy = battle_box.bbox_top + i;
                hsp = -3;
                break;
        }
        
        show_debug_message(dir);
        bullet = instance_create_depth(xx, yy, -100, obj_battle_enemy_attack_ceroba_flower_bullet_pacifist);
        bullet.vspeed = vsp;
        bullet.hspeed = hsp;
    }
}

alarm[0] = 35;
