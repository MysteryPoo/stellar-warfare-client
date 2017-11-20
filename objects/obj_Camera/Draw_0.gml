/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_Arial);
draw_set_colour(c_white);
if(instance_exists(m_Tracked))
	draw_text(x, y, "Yes");
else
	draw_text(x, y, "No");
