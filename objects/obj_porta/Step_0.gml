if(! has_been_interacted) {
	if(collision_circle(x, y, radius, objplayer, false, true))
	{
		popup_id.visible = true;
	} else {
		popup_id.visible = false;
	}
}
