var battle_box = obj_dialogue_box_battle_transformation_any;
var movement_width = (battle_box.sprite_width * 0.5) - 20;
var movement_height = (battle_box.sprite_height * 0.5) - 20;
image_angle = direction;

if (image_alpha < 0.99)
    image_alpha = lerp(image_alpha, 1, 0.25);

x = battle_box.x;

if (direction == 90 || direction == 270)
    x += (sin(degtorad(movement_sin_current)) * movement_width);

y = battle_box.y;

if (direction == 0 || direction == 180)
    y += (sin(degtorad(movement_sin_current)) * movement_height);

movement_sin_current += movement_sin_inc;

if (movement_sin_current >= 360)
    movement_sin_current -= 360;
