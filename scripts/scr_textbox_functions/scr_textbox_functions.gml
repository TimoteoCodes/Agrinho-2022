function scr_set_defaults_for_txt() {
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	//variaveis para qualquer letra/personagem
	for (var c = 0; c < 500; c++)
	{
		col_1[c, page_number] = c_white;
	col_2[c, page_number] = c_white;
	col_3[c, page_number] = c_white;
	col_4[c, page_number] = c_white;
	
	float_text[c, page_number] = 0;
	float_dir[c, page_number] = c*20;
		
}
	
	txtb_spr[page_number] = spr_textbox;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
	snd[page_number] = snd_voice_att;
}
//-------------text VFX---------//
function scr_text_color(_start, _end, _col1, _col2, _col3, _col4){
	
for (var c = _start; c <= _end; c++)
    {
	col_1[c, page_number-1] = _col1;
	col_2[c, page_number-1] = _col2;
	col_3[c, page_number-1] = _col3;
	col_4[c, page_number-1] = _col4;
	
	}
}
function scr_text_float(_start, _end){
	
	for (var c = _start; c <= _end; c++)
    {
	float_text[c, page_number-1] = true;
	}
	
	

}

/// @param
function scr_text(_text){
	
scr_set_defaults_for_txt();	
	
text[page_number] = _text;

///get caracter info

if argument_count > 1 {
	switch (argument[1])
	{
	case "normal":
	speaker_sprite[page_number] = Player_Talk_Serius;
	txtb_spr[page_number] = spr_textbox_red;
	snd[page_number] = snd_voice_mid
	break;
	
	
	case "serio":
	speaker_sprite[page_number] = Player_Talk_Stay;
	txtb_spr[page_number] = spr_textbox_blue;
	snd[page_number] = snd_voice_mid
	break;
	
	case "atenção":
	speaker_sprite[page_number] = Spr_ACAO;
	txtb_spr[page_number] = spr_textbox;
	snd[page_number] = snd_voice_att
	break;
	
	case "smile":
	speaker_sprite[page_number] = Player_Talk_Smile;
	txtb_spr[page_number] = spr_textbox_red;
	snd[page_number] = snd_voice_mid
	}
	
}

page_number++;

}

function create_textbox(_text_id) {
	
		with( instance_create_depth(0, 0, -9999, obj_textbox) )
	{
    scr_game_text(_text_id);
	}

	
}
///option
//function scr_option(_option, _link_id) {
	
	//option[option_number] = _option;
	//option_link_id[option_number] = _link_id;
	
	
//}

