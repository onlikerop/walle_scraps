/// @description Draw the pause
//First we draw our screenshot..
draw_sprite_stretched(sprite_index,image_index,0,0,w,h);

//..Then our text! We make sure our text is centered on the screen.
draw_set_font(text_font);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var text_w = string_width(string_hash_to_newline(text)), text_h = string_height(string_hash_to_newline(text));
//First thing we draw is the background rectangle. You can edit it to draw any shape you want - here I use a simple rectangle, because I think it looks nice.
draw_set_color(rec_color);
draw_set_alpha(rec_alpha);
draw_rectangle(floor(w/2)-floor(text_w/2)-rec_padding,floor(h/2)-floor(text_h/2)-rec_padding,floor(w/2)+ceil(text_w/2)+rec_padding,floor(h/2)+ceil(text_h/2)+rec_padding,false); //While drawing I am using floor and ceil to round and make sure, that everything looks as it should.

//Then we can draw the text.
draw_set_color(text_color);
draw_set_alpha(text_alpha);
draw_text(floor(w/2)-floor(text_w/2),floor(h/2)-floor(text_h/2),string_hash_to_newline(text));

//..And always remember to reset the alpha:
draw_set_alpha(1);

