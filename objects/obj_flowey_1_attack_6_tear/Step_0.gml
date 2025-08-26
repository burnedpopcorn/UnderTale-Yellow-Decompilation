if (live_call())
    return global.live_result;

var box = obj_dialogue_box_battle_transformation_any;
image_angle = direction + 90;

if (vspeed > vsp_max)
    vspeed = vsp_max;

if (bbox_bottom >= box.bbox_bottom && vspeed > 0)
{
    if (stage < 3)
    {
        var child_number;
        
        if (stage == 1)
            child_number = 2;
        else
            child_number = 3;
        
        for (var i = 0; i < child_number; i++)
        {
            with (instance_create_depth(x, y - 10, -100, obj_flowey_1_attack_6_tear))
            {
                stage = other.stage + 1;
                
                if (stage == 2)
                    sprite_index = spr_attack_crying_flowey_tear_medium;
                else
                    sprite_index = spr_attack_crying_flowey_tear_small;
                
                var dir_offset = 10;
                direction = (90 - dir_offset) + (i * ((dir_offset * 2) / (child_number - 1)));
                
                if (stage == 2)
                    speed = 6;
                
                if (stage == 3)
                    speed = 7;
                
                image_angle = direction + 90;
            }
        }
    }
    
    instance_destroy();
}
