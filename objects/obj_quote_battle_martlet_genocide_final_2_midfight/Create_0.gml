text_effect = "twitchy";
attack = false;
scene = 0;
cutscene_timer = 0;
skippable = true;
message_adv = false;
fade_out_gui = false;

if (global.enemy_attack == "Martlet Phase 2 Blocks")
{
    obj_martlet_final_2_base.martlet_target_melt_sprite = spr_martlet_f2_goop1;
    obj_martlet_final_bg.draw_shader = true;
    message[0] = "*Huff*";
    message[1] = "I'm...";
    message[2] = "*Huff*";
    message[3] = "I'm doing#j-just fine!";
    message[4] = "You, however...";
    message[5] = "You seem to be#s-struggling, heh.";
    message[6] = "Sorry, but I#won't let up!";
    message_end = 6;
}

if (global.enemy_attack == "Martlet Phase 2 Blocks 2")
{
    obj_martlet_final_2_base.martlet_target_melt_sprite = spr_martlet_f2_goop2;
    message[0] = "W-What's going#on?";
    message[1] = "The s-serum,#it...";
    message[2] = "N-No! I can#handle it!";
    message[3] = "I have to keep#going!!";
    message[4] = "I'M GOING TO WIN#THIS BATTLE!!!";
    message_end = 4;
}

if (global.enemy_attack == "Martlet Phase 2 Blocks 3")
{
    obj_martlet_final_2_base.martlet_target_melt_sprite = spr_martlet_f2_goop3;
    message[0] = "Why is it wearing#off!?";
    message[1] = "WHY IS IT WEARING#OFF!?!?";
    message[2] = "I DON'T WANT#TO DIE!";
    message[3] = "I NEED MORE TIME!!!";
    message_end = 3;
}

if (global.enemy_attack == "Martlet Phase 2 Blocks 4")
{
    obj_martlet_final_2_base.martlet_target_melt_sprite = spr_martlet_f2_goop4;
    message[0] = "Y O U . .";
    message[1] = "Y O U  C A N ' T#W I N .";
    message[2] = "Y O U  C A N ' T#. .";
    message_end = 2;
}

message_current = 0;
message_draw = "";
draw_enabled = true;
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
circle_text_angle = global.circle_text_angle_default;
circle_text_angle_direction = 1;
