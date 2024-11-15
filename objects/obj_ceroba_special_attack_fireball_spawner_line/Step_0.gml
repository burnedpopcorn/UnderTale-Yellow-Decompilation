var ceroba_body, ceroba_body_frame, bullet_number, dir_wiggle, i, xx, yy, fireball;

if (live_call())
    return global.live_result;

ceroba_body = 2833;
ceroba_body_frame = floor(ceroba_body.image_index);

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

bullet_number = 6;
dir_wiggle = 90;

if (bullet_burst == true)
{
    i = 0;
    
    while (i < image_xscale)
    {
        xx = lengthdir_x(i, image_angle);
        yy = lengthdir_y(i, image_angle);
        fireball = instance_create_depth(x + xx, y + yy, depth - 100, obj_ceroba_special_attack_fireball);
        fireball.direction = 90 + ((i - (bullet_number * 0.5)) * (dir_wiggle / bullet_number));
        fireball.speed = 3;
        i += (image_xscale / bullet_number);
    }
    
    bullet_burst = false;
}
