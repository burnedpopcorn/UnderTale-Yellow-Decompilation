var dbox = 3155;
damage_number = scr_determine_damage_number_enemy("tellyvis a", "void", "void");
flying_speed = 10;
grav_speed = 0;
depth = obj_heart_battle_fighting_parent.depth - 1;
var spawn_position = irandom_range(1, 4);
var half_width = sprite_width * 0.5;
var half_height = sprite_height * 0.5;
var loop_prevention = 0;

do
{
    switch (spawn_position)
    {
        case 1:
            x = obj_heart_battle_fighting_parent.x;
            
            if (loop_prevention >= 1)
                x = irandom_range(dbox.bbox_left + half_width, dbox.bbox_right - half_width);
            
            y = dbox.bbox_top - half_height;
            direction = 270;
            break;
        
        case 2:
            x = obj_heart_battle_fighting_parent.x;
            
            if (loop_prevention >= 1)
                x = irandom_range(dbox.bbox_left + half_width, dbox.bbox_right - half_width);
            
            y = dbox.bbox_bottom + half_height;
            direction = 90;
            break;
        
        case 3:
            y = obj_heart_battle_fighting_parent.y;
            
            if (loop_prevention >= 1)
                y = irandom_range(dbox.bbox_top + half_height, dbox.bbox_bottom - half_width);
            
            x = dbox.bbox_left - half_height;
            direction = 0;
            image_angle = 90;
            break;
        
        case 4:
            y = obj_heart_battle_fighting_parent.y;
            
            if (loop_prevention >= 1)
                y = irandom_range(dbox.bbox_top + half_height, dbox.bbox_bottom - half_width);
            
            x = dbox.bbox_right + half_height;
            direction = 180;
            image_angle = 90;
            break;
    }
    
    loop_prevention += 1;
}
until (!place_meeting(x, y, obj_battle_enemy_attack_tellyvis_tape) || loop_prevention >= 4);

x_previous = x;
y_previous = y;
peek_distance = 20;
cutscene_timer = 0;
scene = 0;
