var game_mode, battle_enemy_name;

game_mode = global.game_mode;
battle_enemy_name = global.battle_enemy_name;
sc_able = false;
sc_index = 0;
sc_xdisjoint = 0;
sc_ydisjoint = 0;
sc_xscale = 1;
sc_yscale = 1;
sc_angle = 0;
sc_color = c_white;
sc_alpha = 1;
global.timer_attacks_counter = 0;
global.timer_attacks_counter_2 = 0;
global.timer_attacks_switch = false;
no_loop = false;

if (game_mode == "customs")
{
    image_xscale = obj_dialogue_box_battle_transformation_any_out.image_xscale;
    image_yscale = obj_dialogue_box_battle_transformation_any_out.image_yscale;
    x = obj_dialogue_box_battle_transformation_any_out.x;
    y = obj_dialogue_box_battle_transformation_any_out.y;
}
else if (game_mode == "yellow")
{
    if (battle_enemy_name == "flowey intro" || battle_enemy_name == "shufflers")
    {
        image_xscale = 165 / sprite_width;
        image_yscale = 140 / sprite_height;
    }
    else if (battle_enemy_name == "martlet pacifist" || battle_enemy_name == "martlet genocide")
    {
        if (global.last_text_move_select < 0)
        {
            image_xscale = 1;
            image_yscale = 1;
        }
        else
        {
            image_xscale = obj_dialogue_box_battle_transformation_any_out.image_xscale;
            image_yscale = obj_dialogue_box_battle_transformation_any_out.image_yscale;
            x = obj_dialogue_box_battle_transformation_any_out.x;
            y = obj_dialogue_box_battle_transformation_any_out.y;
        }
    }
    else if (battle_enemy_name == "el bailador")
    {
        if (global.last_text_move_select < 0)
        {
            image_xscale = 158 / sprite_width;
            image_yscale = 221 / sprite_height;
            y -= 41;
            sc_able = true;
            sc_direction = "None";
            sc_dcurrent = 1;
            sc_speed = 0.1;
            sc_out_script = scr_sme_yellow_rhythm_out_script_bowll;
            
            if (global.route != 3)
                sc_sprite = spr_sme_yellow_rhythm_box;
            else
                sc_sprite = spr_sme_yellow_rhythm_box_geno;
        }
        else
        {
            image_xscale = obj_dialogue_box_battle_transformation_any_out.image_xscale;
            image_yscale = obj_dialogue_box_battle_transformation_any_out.image_yscale;
            x = obj_dialogue_box_battle_transformation_any_out.x;
            y = obj_dialogue_box_battle_transformation_any_out.y;
        }
    }
    else if (battle_enemy_name == "dummy training pacifist")
    {
        if (global.last_text_move_select < 0)
        {
            image_xscale = 1;
            image_yscale = 1;
        }
        else
        {
            image_xscale = obj_dialogue_box_battle_transformation_any_out.image_xscale;
            image_yscale = obj_dialogue_box_battle_transformation_any_out.image_yscale;
            x = obj_dialogue_box_battle_transformation_any_out.x;
            y = obj_dialogue_box_battle_transformation_any_out.y;
        }
    }
    else if (battle_enemy_name == "ceroba genocide")
    {
        image_xscale = obj_dialogue_box_battle_transformation_any_out.image_xscale;
        image_yscale = obj_dialogue_box_battle_transformation_any_out.image_yscale;
        x = obj_dialogue_box_battle_transformation_any_out.x;
        y = obj_dialogue_box_battle_transformation_any_out.y;
    }
    else if (battle_enemy_name == "starlo")
    {
        image_xscale = obj_dialogue_box_battle_transformation_any_out.image_xscale;
        image_yscale = obj_dialogue_box_battle_transformation_any_out.image_yscale;
        x = obj_dialogue_box_battle_transformation_any_out.x;
        y = obj_dialogue_box_battle_transformation_any_out.y;
    }
    else if (battle_enemy_name == "martlet genocide final" && global.attack_cycle == 0)
    {
        image_xscale = 1;
        image_yscale = 1;
        visible = false;
    }
    else
    {
        image_xscale = obj_dialogue_box_battle_transformation_any_out.image_xscale;
        image_yscale = obj_dialogue_box_battle_transformation_any_out.image_yscale;
        x = obj_dialogue_box_battle_transformation_any_out.x;
        y = obj_dialogue_box_battle_transformation_any_out.y;
    }
}

battle_box_resize_midfight = false;
battle_box_target_xscale = 1;
battle_box_target_yscale = 1;
battle_box_target_x = 319;
battle_box_target_y = 320;
battle_box_draw_enabled = true;
