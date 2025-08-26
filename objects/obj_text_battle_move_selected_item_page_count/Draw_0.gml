draw_set_font(global.font_type_text);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
var item_page_count = global.item_page_count;

if (item_page_count == 1)
    draw_text(obj_dialogue_box_battle.x + 354, obj_dialogue_box_battle.y + 84, string_hash_to_newline("PAGE 1"));
else if (item_page_count == 2)
    draw_text(obj_dialogue_box_battle.x + 354, obj_dialogue_box_battle.y + 84, string_hash_to_newline("PAGE 2"));
