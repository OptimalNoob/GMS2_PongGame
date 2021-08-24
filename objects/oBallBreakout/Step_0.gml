/// @description Insert description here
// You can write your code in this editor
y += vSpd;
x += hSpd;

if(place_meeting(x, y, current_player)){
	vSpd = -vSpd;
	var calcAngle = (x - current_player.x) / 5;
	hSpd = calcAngle;
	y--;
}

//border collisions
if (x > MARGINS + 360 - sprite_width / 2) {
		hSpd = -hSpd;
}
if (x < MARGINS + sprite_width / 2) {
		hSpd = -hSpd;	
}

if(y < MARGINS){
	vSpd = -vSpd;	
}

// Ball passes player
if(y > room_height){
	hSpd = 0;
	x = (32 + 360 + current_player.sprite_width) / 2
	y = room_height/2
	if(instance_number(oBallBreakout)>1){
		instance_destroy();	
	}
}

//brick collision
//we do an instance place to retrieve the relevant brick instance id (or noone if fails)
//order of operations is important. If you want to avoid frame perfect double breaks,
//you can create a variable that is set to false at the top of every frame and set it to true
//upon successful check and use that as a condition.
//also only collisions of opposite type (horizontal and vertical) can
//trigger a double collision so it's not a big deal
var hcol = instance_place(x - hSpd, y, oBrick)
hcol = instance_place(x + hSpd, y, oBrick)


var vcol = instance_place(x, y - vSpd, oBrick)
vcol = instance_place(x, y + vSpd, oBrick)


if(hcol != noone){
	hSpd = -hSpd;
	instance_destroy(hcol);
}

if(vcol != noone){
	vSpd = -vSpd;
	instance_destroy(vcol);
}