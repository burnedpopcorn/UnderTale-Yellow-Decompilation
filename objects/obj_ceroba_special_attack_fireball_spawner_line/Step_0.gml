if (live_call())
    return global.live_result;

var ceroba_body = 2834;
var ceroba_body_frame = floor(ceroba_body.image_index);

if (ceroba_body_frame >= frame_current)
{
    if (ceroba_body_frame == attack_frame[attack_frame_current])
    {
        if (attack_frame_current < (array_length(attack_frame) - 1))
            attack_frame_current += 1;
        
        bullet_burst = true;
    }
    
    frame_current = ceroba_body_frame;
}

var bullet_number = 6;
var dir_wiggle = 90;

if (bullet_burst == true)
{
    var i = 0;
    
    while (i < image_xscale)
    {
        var xx = lengthdir_x(i, image_angle);
        var yy = lengthdir_y(i, image_angle);
        var fireball = instance_create_depth(x + xx, y + yy, depth - 100, obj_ceroba_special_attack_fireball);
        fireball.direction = 90 + ((i - (bullet_number * 0.5)) * (dir_wiggle / bullet_number));
        fireball.speed = 3;
        i += (image_xscale / bullet_number);
    }
    
    bullet_burst = false;
}
