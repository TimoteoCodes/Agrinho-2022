spd = 5;
hspd = 0;
vspd = 0;
grv = 0.4



#region MOVIMENTAÇÃO CAMERA
move_camera = function()
{
	static _gridx = 1024;
	
	var _meux;
	
	_meux = (x div _gridx) * _gridx;
	
	var _camx = lerp(camera_get_view_x(view_camera[1]), _meux, .03);
	
	
	show_debug_message(_meux) ;
	camera_set_view_pos(view_camera[1], _camx, 0);
}
#endregion




audio_listener_orientation(0,1,0,0,0,1)
