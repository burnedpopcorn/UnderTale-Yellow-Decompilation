var xbound_left, xbound_right, ybound_top, ybound_bottom;

if (live_call())
    return global.live_result;

xbound_left = 50;
xbound_right = 180;
ybound_top = 100;
ybound_bottom = 190;

switch (scene)
{
    case 0:
        path_noloop = false;
        cutscene_wait(2);
        break;
        break;
    
    case 1:
        with (obj_steamworks_13_vines)
        {
            image_speed = 1;
            
            if (image_index >= 4)
            {
                if (!other.path_noloop)
                {
                    pl_path = path_add();
                    path_set_closed(pl_path, false);
                    path_add_point(pl_path, obj_player_npc.x, obj_player_npc.y, 30);
                    path_add_point(pl_path, obj_player_npc.x, obj_player_npc.y - 3, 70);
                    path_add_point(pl_path, obj_player_npc.x, 165, 100);
                    path_add_point(pl_path, obj_player_npc.x, 165, 50);
                    path_add_point(pl_path, obj_player_npc.x, 160, 50);
                    path_add_point(pl_path, obj_player_npc.x, 165, 100);
                    other.path_noloop = true;
                    
                    with (obj_player_npc)
                        path_start(other.pl_path, 3, path_action_stop, false);
                }
            }
            
            if (image_index >= (image_number - 1))
            {
                image_alpha = 0;
                image_speed = 0;
                
                if (obj_player_npc.path_position >= 1)
                {
                    path_delete(pl_path);
                    instance_destroy();
                    other.scene++;
                }
            }
        }
        
        break;
    
    case 2:
        cutscene_wait(1.5);
        break;
    
    case 3:
        with (obj_player_npc)
        {
            if (path_index != pt_pljump)
            {
                y -= 10;
                sprite_index = spr_pl_right;
                image_index = 1;
                image_angle = 0;
                path_start(pt_pljump, 2, path_action_stop, false);
                audio_play_sound(snd_playerjump, 1, 0);
                other.scene++;
            }
        }
        
        obj_pl.image_angle = 0;
        break;
    
    case 4:
        if (obj_player_npc.path_position >= 1)
        {
            instance_destroy(obj_player_npc);
            scene++;
        }
        
        break;
    
    case 5:
        cutscene_wait(1);
        break;
    
    case 6:
        with (obj_flowey_npc)
        {
            image_alpha = 1;
            image_speed = 0.2;
            
            if (image_index >= (image_number - 1))
            {
                other.scene++;
                action_sprite = false;
                npc_direction = "left";
                obj_pl.direction = 0;
            }
        }
        
        break;
    
    case 7:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3194;
            message[0] = "* Howdy!";
            message[1] = "* Glad I was able to catch#  ya in time!";
            message[2] = "* What is this, the third#  tumble you've survived#  on your journey?";
            message[3] = "* For having the name#  \"Clover\" you sure aren't#  lucky!";
            message[4] = "* I'm only kiddin' around#  of course.";
            message[5] = "* I'd say you're more of#  a machine than that bot#  up there, haha!";
            message[6] = "* Gosh, I hoped we had a#  straight shot to an exit#  but... of course not.";
            message[7] = "* If you meet that hunk#  of metal again, try not#  to get caught.";
            message[8] = "* Or... ya know...#  killed.";
            message[9] = "* Although, dying WOULD#  save more time now that#  I think about it...";
            message[10] = "* I could just revive ya#  on the spot!";
            message[11] = "* No amount of gruesome#  deaths could stop ol'#  Clover!";
            message[12] = "* Ain't that neato?";
            prt[0] = 348;
            prt[1] = 3251;
            prt[2] = 347;
            prt[3] = 349;
            prt[4] = 3251;
            prt[5] = 348;
            prt[6] = 353;
            prt[7] = 347;
            prt[8] = 357;
            prt[9] = 349;
            prt[10] = 348;
            prt[11] = 3251;
            prt[12] = 347;
        }
        
        break;
    
    case 8:
        with (obj_flowey_npc)
        {
            if (sprite_index != spr_floweyleave)
            {
                action_sprite = true;
                sprite_index = spr_floweyleave;
                image_alpha = 1;
                image_speed = 0.25;
                image_index = 0;
            }
            else if (image_index > (image_number - 1))
            {
                other.scene++;
                instance_destroy();
            }
        }
        
        break;
    
    case 9:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 3);
        break;
    
    case 10:
        camera_set_view_target(view_camera[0], 1031);
        global.sworks_flag[3] = 1;
        cutscene_end();
        break;
}
