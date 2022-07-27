if not instance_exists(target_) exit;
x = lerp(x, target_.x, 0.1);
y = lerp(y, target_.y-height_/4, 0.1);
camera_set_view_pos(view_camera[0],  x-width_/2, y-height_);


if (layer_exists("FundoArvores1"))
{
	layer_x("FundoArvores1",x/20);
}
if (layer_exists("FundoArvores2"))
{
	layer_x("FundoArvores2",x/80);
}
if (layer_exists("FundoGrama4"))
{
	layer_x("FundoGrama4",x/40);
}
if (layer_exists("FundoGrama3"))
{
	layer_x("FundoGrama3",x/20);
}
if (layer_exists("FundoGrama2"))
{
	layer_x("FundoGrama2",x/30);
}
if (layer_exists("FundoGrama1"))
{
	layer_x("FundoGrama1",x/10);
}