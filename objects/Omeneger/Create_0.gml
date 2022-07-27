//var _sequence = Sequence2;
//var _layerName = "Instances_3";
//layer_sequence_create(_layerName, 0, 0, _sequence);
seq = layer_sequence_create(_layerName, 0, 0, _sequence);
destroy_layer = layer_sequence_destroy(seq);
play_layer = layer_sequence_play(seq);
if keyboard_check_pressed(ord("S"))
destroy_layer = true
