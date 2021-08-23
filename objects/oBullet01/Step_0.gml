/// @desc
var _inst = instance_place(x, y, oInvader);
if(_inst != noone){
	instance_destroy();
	Mothership.destroy_invader(_inst);
}