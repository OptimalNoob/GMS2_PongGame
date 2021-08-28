/// @desc
var _inst = instance_place(x, y, oInvader);
if(_inst != noone){
	instance_destroy();
	Mothership.destroy_invader(_inst);
}

if(y < 64 || y > room_height + 64) instance_destroy();