accept_key = keyboard_check_pressed(vk_space);
textbox_x = camera_get_view_x(view_camera[0] );
textbox_y = camera_get_view_y(view_camera[0] ) + 600;
textbox_x = camera_get_view_x(view_camera[1] );
textbox_y = camera_get_view_y(view_camera[1] ) + 600;


if setup == false
    {
		
	setup = true;
	draw_set_font(global.font_main);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop througj the pages
	for(var p = 0; p < page_number; p++)
	  {
	   
	   text_length[p] = string_length(text[p]);
	   // rostinho na esquerda
	   
	   text_x_offset[p] = 190; //221
	   portrait_x_offset[p] = 6; //12
	
	   
	   //rostinho direita
	   if speaker_side[p] == -1 {
		   text_x_offset[p] = 7; //7
		   portrait_x_offset[p] = 812;
	   }
	   //sem personagem centro the textbox
	  
	   if speaker_sprite[p] == noone {
		   text_x_offset[p] = 44;//44
		   

	   }
	   
	  
	   
	 //começa
	   
	   for (var c = 0; c < text_length[p]; c++)
	   {
	   
	   var _char_pos = c+1;
	   char[c, p] = string_char_at(text[p], _char_pos);
	   
	   var _txt_up_to_char = string_copy( text[p], 1, _char_pos );
	   var _current_txt_w = string( _txt_up_to_char ) = string_width( char[c, p] );
	   if char[c, p] == " " { last_free_space = _char_pos+1 };
	   if _current_txt_w - line_break_offset[p] > line_width
	   {
		   line_break_pos[ line_break_offset[p] , p ] = last_free_space;
		   line_break_num[p]++;
		   var _txt_up_to_last_space = string_copy( text[p], 1, last_free_space );
		   var _last_free_space_string = string_char_at( text[p], last_free_space );
		   line_break_offset[p] = string_width( _txt_up_to_last_space ) - string_width( _last_free_space_string );
	   
	   }
 }
	//termina   
	   
	   for (var c = 0; c < text_length[p]; c++)
	   
	   {
	   
	   var _char_pos = c+1;
	   //char[c, p] = string_char_at(text[p], _char_pos);
	   var _txt_x = textbox_x + text_x_offset[p] + border;
	   var _txt_y = textbox_y + border;
	   var _txt_up_to_char = string_copy( text[p], 1, _char_pos );
	   var _current_txt_w = string_width( _txt_up_to_char ) - string_width( char[c, p] );
	   //if char[c, p] = " " { last_free_space = _char_pos+1 };
	   var _text_line = 0;
	   for (var lb = 0; lb < line_break_num[p]; lb++)
	   {
		 if _char_pos >= line_break_pos[lb, p]
		 {
			 var _str_copy = string_copy( text[p], line_break_pos[lb, p], _char_pos-line_break_pos[lb, p] );
			 _current_txt_w = string_width( _str_copy );
			 
			 //record line this caracter should be on
			 _text_line = lb+1; // +1 since ib stars at 0
		 }

}
	  
	   //add to the x and y
	   char_x[c, p] = _txt_x + _current_txt_w;
	   char_y[c, p] = _txt_y + _text_line*line_sep;
	 
	   
	   }
       
    }
}
//----------------tipo do texto e som------------//
if text_pause_timer <= 0
{
if draw_char < text_length[page]
 {  
   draw_char += text_spd;
   draw_char = clamp(draw_char, 0, text_length[page]);
   var _check_char = string_char_at( text[page], draw_char );
   if _check_char == "." || _check_char == "?" || _check_char == "!" || _check_char == ","
   {
	   
	   text_pause_timer = text_pause_time;
	   if audio_is_playing(snd[page]) {
	   audio_play_sound(snd[page], 8, false);
	   }
   }
   else
   {
   
   if snd_count < snd_delay {
	   snd_count++;
   } else {
	   snd_count = 0;
	   audio_play_sound(snd[page], 8, false);
   }
 } 
}

} else {
text_pause_timer--;
}
   
   
  //paginas skip
if accept_key
    {

		
	
    if draw_char == text_length[page]
        {     
	
	    //next page
	    if page < page_number-1
		
	    {
	    page++;
	    draw_char = 0;
	    }
	    //destroy yextebos
	else
	   {
	   instance_destroy();
	   }
	   
   }
	  //if not done tiping
	  else
	      {
			  
	      draw_char = text_length[page];
	   
          }

}



var _txtb_x = textbox_x + text_x_offset[page];
var _txtb_y = textbox_y;
txtb_img += txtb_img_spd;
txtb_spr_w = sprite_get_width(txtb_spr[page]);
txtb_spr_h = sprite_get_height(txtb_spr[page]);
draw_sprite_ext(txtb_spr[page], txtb_img, _txtb_x, _txtb_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 1);
//draw the speaker
if speaker_sprite[page] != noone
{
	sprite_index = speaker_sprite[page];
	//if draw_char == text_length[page] {image_index = 0};
	var _speaker_x = textbox_x + portrait_x_offset[page];
	if speaker_side[page] == -1{ _speaker_x += sprite_width};
	//desenha speaker
	draw_sprite_ext(txtb_spr[page], txtb_img, textbox_x + portrait_x_offset[page], textbox_y, sprite_width/txtb_spr_w, sprite_height/txtb_spr_h, 0, c_white, 1);
	draw_sprite_ext(sprite_index, image_index, _speaker_x, textbox_y, speaker_side[page], 1, 0, c_white, 1);
}


             
//draw the text
for(var c = 0; c < draw_char; c++)
{
//-----------special stuff--------//
//texto onda
var _float_y = 0;
if float_text[c, page] == true
{
	float_dir[c, page] += -6;
	_float_y = dsin( float_dir[c, page] )*1;
}

//the text
	draw_text_color( char_x[c, page], char_y[c, page] +  _float_y, char[c, page], col_1[c, page], col_2[c, page], col_3[c, page],  col_4[c, page], 1 );
	
}	 
