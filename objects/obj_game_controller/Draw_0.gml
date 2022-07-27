var x1 = camera_get_view_x(view_camera[0]);
var w  = camera_get_view_width(view_camera[0]);
var x2 = x1 + w;
var meio_w = x2 / 2;
var y1 = camera_get_view_y(view_camera[0]);
var h = camera_get_view_height(view_camera[0]);
var y2 = y1 + h;
var meio_h = y2 / 2;


if distance_to_object(WarpEscada) <= 10{
	if keyboard_check_pressed(ord("E"))
	valor = lerp(valor, 1, .05);
    //draw_sprite(FadeIn, x1, y1, x2, y2, false);
	draw_set_color(c_black);
	draw_set_alpha(valor);
	draw_rectangle(x1, y1, x2, y2, false);
	
	draw_set_alpha(1);
	
}

if distance_to_object(WarpEscada) <= 10{
	sprite_index = FadeIn; 
	}