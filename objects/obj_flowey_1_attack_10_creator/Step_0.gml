var dir, xx, yy, spawner, bullet_count, i, bullet, attack, side, angle, new_flowey, _fx_twirl, _params, next_room;

if (live_call())
    return global.live_result;

if (room == rm_battle_flowey)
{
    obj_dialogue_box_battle_transformation_any.depth = -500;
    obj_battle_hp_current_self.y = 20;
    obj_battle_hp_max_self.y = 20;
    obj_text_hp.y = 25;
    obj_text_hp_stat.y = 9999;
    obj_heart_battle_fighting_parent.depth = -501;
}

flowey_face_sprite = spr_attack_flowey_intermission_face;

if (global.flowey_battle_1_phase == 1)
{
    switch (scene)
    {
        case 1:
        case 3:
        case 5:
        case 7:
            dir = irandom_range(0, 359);
            xx = obj_heart_battle_fighting_parent.x + lengthdir_x(110, dir);
            yy = obj_heart_battle_fighting_parent.y + lengthdir_y(110, dir);
            instance_create_depth(xx, yy, depth - 1, obj_glowey_1_attack_eye);
            scene++;
            break;
        
        case 0:
        case 2:
        case 4:
        case 6:
            cutscene_wait(0.5);
            break;
        
        case 8:
            spawner = instance_create_depth(0, 100, -9999, obj_flowey_1_attack_10_flower_spawner);
            spawner.hspeed = 5;
            scene++;
            break;
        
        case 9:
            cutscene_wait(3);
            break;
        
        case 10:
            instance_create_depth(320, 600, depth + 1, obj_battle_enemy_attack_flower_jump);
            scene++;
            break;
        
        case 11:
            cutscene_wait(0.75);
            break;
        
        case 12:
            instance_create_depth(100, 640, depth + 1, obj_battle_enemy_attack_flower_jump);
            instance_create_depth(540, 640, depth + 1, obj_battle_enemy_attack_flower_jump);
            scene++;
            break;
        
        case 13:
            if (!instance_exists(obj_battle_enemy_attack_flower_jump))
                cutscene_wait(3.5);
            
            break;
        
        case 14:
            can_transition = true;
            break;
    }
}
else if (global.flowey_battle_1_phase == 2)
{
    switch (scene)
    {
        case 0:
            bullet_count = room_height / 60;
            xx = -60;
            
            for (i = 0; i < bullet_count; i++)
            {
                bullet = instance_create_depth(xx, 30 + (i * 60), -700, obj_flowey_1_attack_flower_lanes);
                
                if (xx > 320)
                {
                    xx = -60;
                    bullet.hspeed = -10;
                }
                else
                {
                    xx = 700;
                    bullet.hspeed = 10;
                }
            }
            
            scene++;
            break;
        
        case 1:
            cutscene_wait(2);
            break;
        
        case 2:
            bullet_count = room_width / 60;
            yy = -60;
            
            for (i = 0; i < bullet_count; i++)
            {
                bullet = instance_create_depth(30 + (60 * i), yy, -700, obj_flowey_1_attack_flower_lanes);
                
                if (yy > 320)
                {
                    yy = -60;
                    bullet.vspeed = -10;
                }
                else
                {
                    yy = 560;
                    bullet.vspeed = 10;
                }
            }
            
            scene++;
            break;
        
        case 3:
            cutscene_wait(1);
            break;
        
        case 4:
            attack = instance_create_depth(room_width + 40, 30, -700, obj_battle_enemy_attack_flower_jump_side);
            attack.hspeed = -8;
            scene++;
            break;
        
        case 5:
            cutscene_wait(0.5);
            break;
        
        case 6:
            attack = instance_create_depth(-40, 45, -700, obj_battle_enemy_attack_flower_jump_side);
            attack.hspeed = 8;
            scene++;
            break;
        
        case 7:
            cutscene_wait(0.5);
            break;
        
        case 8:
        case 10:
        case 12:
        case 14:
            side = choose(1, 2, 3);
            angle = 0;
            
            switch (side)
            {
                case 1:
                    yy = 4;
                    xx = irandom_range(40, 600);
                    angle = 270;
                    break;
                
                case 2:
                    xx = room_width - 4;
                    yy = irandom_range(40, 440);
                    angle = 180;
                    break;
                
                case 3:
                    xx = 4;
                    yy = irandom_range(40, 440);
                    angle = 0;
                    break;
            }
            
            new_flowey = instance_create_depth(xx, yy, -700, obj_flowey_1_attack_10_flower);
            new_flowey.image_angle = angle - 90;
            scene++;
            break;
        
        case 9:
        case 11:
        case 13:
            cutscene_wait(1);
            break;
        
        case 15:
            cutscene_wait(3);
            break;
        
        case 16:
            can_transition = true;
            break;
    }
}
else if (global.flowey_battle_1_phase == 3)
{
    switch (scene)
    {
        case 0:
            _bullet_count = 7;
            scene++;
            break;
        
        case 1:
            _bullet_count--;
            attack = instance_create_depth(irandom_range(80, 560), -45, -700, obj_battle_enemy_attack_flower_jump_side);
            attack.hspeed = irandom_range(-2, 2);
            attack.alarm[0] += irandom_range(-10, 10);
            scene++;
            break;
        
        case 2:
            cutscene_wait(0.6);
            break;
        
        case 3:
            if (_bullet_count > 0)
                cutscene_advance(1);
            else
                cutscene_advance();
            
            break;
        
        case 4:
            spawner = instance_create_depth(320, -50, -9999, obj_flowey_1_attack_10_flower_spawner);
            spawner.vspeed = 5;
            scene++;
            break;
        
        case 5:
            cutscene_wait(3);
            break;
        
        case 6:
            _bullet_count = 4;
            scene++;
            break;
        
        case 7:
            _bullet_count--;
            dir = irandom_range(0, 359);
            xx = obj_heart_battle_fighting_parent.x + lengthdir_x(110, dir);
            yy = obj_heart_battle_fighting_parent.y + lengthdir_y(110, dir);
            instance_create_depth(xx, yy, depth - 1, obj_glowey_1_attack_eye);
            scene++;
            break;
        
        case 8:
            cutscene_wait(0.6);
            break;
        
        case 9:
            if (_bullet_count > 0)
                cutscene_advance(7);
            else
                cutscene_advance();
            
            break;
        
        case 10:
            cutscene_wait(0.25);
            break;
        
        case 11:
            spawner = instance_create_depth(room_width, 100, -9999, obj_flowey_1_attack_10_flower_spawner);
            spawner.hspeed = -5;
            scene++;
        
        case 12:
            cutscene_wait(3);
            break;
        
        case 13:
            can_transition = true;
            break;
    }
}

if (can_transition == true)
{
    if (instance_exists(obj_heart_battle_fighting_parent))
        obj_heart_battle_fighting_parent.vulnerable = false;
    
    switch (transition_stage)
    {
        case 0:
            scene = -1;
            layer_set_visible("twirl_", true);
            _fx_twirl = layer_get_fx("twirl_");
            _params = fx_get_parameters(_fx_twirl);
            _params.g_DistortAngle = [distort_current];
            fx_set_parameters(_fx_twirl, _params);
            distort_current += 7;
            
            if (distort_current >= 200)
            {
                transition_overlay_alpha += 0.05;
                
                if (transition_overlay_alpha >= 1)
                {
                    persistent = true;
                    ds_list_shuffle(global.flowey_room_list);
                    next_room = ds_list_find_value(global.flowey_room_list, 0);
                    ds_list_delete(global.flowey_room_list, 0);
                    room = next_room;
                    
                    switch (next_room)
                    {
                        case 226:
                            obj_pl.x = 170;
                            obj_pl.y = 290;
                            break;
                        
                        case 227:
                            obj_pl.x = 180;
                            obj_pl.y = 130;
                            break;
                        
                        case 228:
                            obj_pl.x = 300;
                            obj_pl.y = 2630;
                            break;
                        
                        case 229:
                            obj_pl.x = 160;
                            obj_pl.y = 120;
                            break;
                        
                        case 230:
                            obj_pl.x = 300;
                            obj_pl.y = 2640;
                            break;
                        
                        case 231:
                            obj_pl.x = 860;
                            obj_pl.y = 40;
                            break;
                    }
                    
                    obj_pl.image_alpha = 1;
                    transition_stage += 1;
                    global.flowey_battle_1_phase += 1;
                }
            }
            
            break;
        
        case 1:
            if (!instance_exists(obj_flowey_battle_ow_controller))
                instance_create(0, 0, obj_flowey_battle_ow_controller);
            
            transition_overlay_alpha -= 0.05;
            
            if (transition_overlay_alpha <= 0)
            {
                scr_cutscene_end();
                instance_destroy();
            }
            
            break;
    }
}
