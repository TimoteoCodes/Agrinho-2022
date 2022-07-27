#region CONTROLES
key_right = keyboard_check(ord("D")); //DIREITA
key_left = keyboard_check(ord("A")); //ESQUERDA
key_pause = keyboard_check(ord("M"));
key_jump = keyboard_check(vk_space); //PULA

if key_pause room_goto(rm_title_screem)

#endregion
#region MOVIMENTAÇÃO

var move = key_right - key_left

hspd = move * spd;

vspd = vspd + grv;

if (hspd != 0) image_xscale = sign(hspd);

//COLISÃO HORIZONTAL
if place_meeting(x+hspd,y,objparede)
{
 while(!place_meeting(x+sign(hspd),y,objparede))
 {
 x = x + sign(hspd);
 }
hspd = 0;
}
x = x +hspd;

//COLISÃO VERTICAL
if place_meeting(x,y+vspd,objparede)
{
 while(!place_meeting(x,y+sign(vspd),objparede))
 {
 y = y + sign(vspd);
 }
vspd = 0;
}
y = y + vspd;


#endregion



#region INTERAÇÃO E DIALOGO
//var _npc = instance_nearest(x, y, objinteract);
		//var _dialogo = instance_create_layer(x, y, "Dialogo", obj_textbox);
		//_dialogo.obj_porta = _npc.nome;
		
if distance_to_object(WarpEscada) <= 10{
	if keyboard_check_pressed(ord("E"))

  	
	{
	room_goto(corredor);
		audio_pause_sound(ChuvaAbafado)
		audio_pause_sound(ButerflyAnticonRadio)
audio_resume_sound(chuva)
	  }
}  
if distance_to_object(WarpSala) <= 10{
	if keyboard_check_pressed(ord("E"))
  	
	{
	room_goto(Room1);
		audio_pause_sound(ChuvaAbafado)
audio_resume_sound(chuva)
	  }
}  
if distance_to_object(warpbanheiro) <= 10{
	if keyboard_check_pressed(ord("E"))
  	
	{
	room_goto(Banheiro);
		audio_pause_sound(chuva)
audio_resume_sound(ChuvaAbafado)

	  }
}
if distance_to_object(WarpQuarto) <= 10{
	if keyboard_check_pressed(ord("E"))
  	
	{
	room_goto(Quarto1);
		audio_pause_sound(chuva)
audio_resume_sound(ChuvaAbafado)
audio_resume_sound(ButerflyAnticonRadio)
	  }
}
if distance_to_object(WarpSonho) <= 10{
	if keyboard_check_pressed(ord("E"))

  	
	{
	room_goto(sonho);
	audio_stop_sound(ReverseButterfly)
	audio_stop_sound(ButerflyAnticonRadio)




	  }
}
if distance_to_object(WarpCorredorEscola) <= 10{
	if keyboard_check_pressed(ord("E"))

  	
	{
	room_goto(corredorescola);
		audio_pause_sound(ChuvaAbafado)
		audio_pause_sound(ButerflyAnticonRadio)

	  }
}
if distance_to_object(WarpQUARTOESCOLA1) <= 10{
	if keyboard_check_pressed(ord("E"))

	{
		layer_destroy("Assets_5")
	room_goto(corredor25);
  

		audio_pause_sound(chuva)
		audio_pause_sound(ButerflyAnticonRadio)
audio_resume_sound(ChuvaAbafado)
	  }
}
if distance_to_object(WarpCorredorEscola2) <= 10{
	if keyboard_check_pressed(ord("E"))

	{
		//layer_sequence_is_finished(Sequence4)
	room_goto(corredor25);
	audio_resume_sound(ambientenoite)
  

	  }
	  }
if distance_to_object(WarpEscola) <= 10{
	if keyboard_check_pressed(ord("E"))

	{
		//layer_sequence_is_finished(Sequence4)
	room_goto(corredor12);
 
	}
}
if distance_to_object(WARPobrigado) <= 10{
	if keyboard_check_pressed(ord("E"))

	{
		//layer_sequence_is_finished(Sequence4)
	room_goto(credits);
 
	}
}
if distance_to_object(warpsair) <= 10{
	if keyboard_check_pressed(ord("E"))

	{
		//layer_sequence_is_finished(Sequence4)
	room_goto(ladodefora);
 
	  }


}


 

#endregion 

#region fogo
x += ( (keyboard_check(ord("D")) - keyboard_check(ord("D")) ) * 4);
//y += ( (keyboard_check(ord("S")) - keyboard_check(ord("W")) ) * 4);

//set the listener position
audio_listener_position(x, y, 0);

//detect distance from emitter
//dist = point_distance(x, y, ObjFogoS.x, ObjFogoS.y);

//move view
cx = x - (camera_get_view_width(view_camera[0]) / 2);
cy = x - (camera_get_view_width(view_camera[0]) / 2);

camera_set_view_pos(view_camera[0], cx, cy);
#endregion


#region move camera
move_camera();

if (!place_meeting(x,y+1,objparede))
{
	if (hspd != 0)
	{
		sprite_index = sprplayerrunHAHAHAHA;
	}
}
if hspd = 0 {
	if place_meeting(x,y+1,objparede){
		sprite_index = sprplayeridle43
}
}
if hspd != 0 {
	if place_meeting(x,y+1,objparede){
		sprite_index = sprplayerrunHAHAHAHA
    }
}
#endregion
	
if place_meeting(x,y, WarpEscola)
{
room_goto(corredor12)
audio_stop_sound(ReverseButterfly)
audio_stop_sound(SomFogo)
instance_destroy(Objruido)
instance_destroy(sonho)
audio_stop_sound(Ruido)
instance_destroy(ObjFogoS)
audio_listener_orientation(0,0,0,0,0,0)
s_emit = false



}



//audio_play_sound(popup,1,0);
