up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(ord("E"));

if keyboard_check_pressed(vk_up)
audio_play_sound(snd_voice_mid,1,0);
if keyboard_check_pressed(vk_down)
audio_play_sound(snd_voice_mid,1,0);




//
op_length = array_length(option[menu_level]);

pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1}


if  accept_key {
	audio_play_sound(AcceptSound,1,0);
	
	var _sml = menu_level;
	
switch(menu_level) {
	
	//pause meni
	case 0:
    switch(pos){
	
    //start_game	
    case 0: room_goto_next(); break;
	
    //settings
    
	case 1: menu_level = 1; break;
    case 3: menu_level = 3; break;
    //quit game
    case 2: game_end(); break;
	
	
    }
  break;
  
  //settings
  case 1:
  switch(pos) {
	  //"windows size"
	  case 0:
	  
	     break;
		 	  //"windows size"
	  case 3 :
	      menu_level = 0;
		  break;
		 
  }
  case 3:
  switch(pos) {
	  //"windows size"
	  case 0:
	  
	     break;
		 	  //"windows size"
	  case 1 :
	      menu_level = 0;
		  break;
		 
  }
  break;
  }
if _sml != menu_level {pos = 0};

op_length = array_length(option[menu_level]);

}
