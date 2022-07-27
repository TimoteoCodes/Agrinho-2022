depth = -9999;

textbox_width = 830; //920
textbox_height = 180; //605
border = 7; //15 //8
line_sep = 7; //12
line_width = textbox_width - border*2; //2
txtb_spr = spr_textbox;
txtb_img = 0;
txtb_img_spd = 6/60;

//the text
page = 0;
page_number = 0;
text [0] = "";
text_length[0] = string_length(text[0]);
char[0, 0] = "";
char_x[0, 0] = 0;
char_y[0, 0] = 0;
draw_char = 0;
text_spd = 1;
setup = false;

//sounds se tiver muitos sons diferentes
//voltar no video 4 do cara que ele explica como arrumar no final
snd_delay = 4;
snd_count = snd_delay;

//effects
scr_set_defaults_for_txt();
last_free_space = 0;
text_pause_timer = 0;
text_pause_time = 15;