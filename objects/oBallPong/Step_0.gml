/// @description Insert description here
// You can write your code in this editor
y += vSpd;
x += hSpd;

if(place_meeting(x,y, oPlayer)){
	vSpd = -vSpd;
	var calcAngle = (oBallPong.x - oPlayer.x) / 5;
	hSpd = calcAngle;
}

if(place_meeting(x,y, oEnemyPaddle)){
	vSpd = -vSpd;
	var calcAngle = (oBallPong.x - oEnemyPaddle.x) / 5;
	hSpd = calcAngle;
	oEnemyPaddle.vSpd = random_range(oEnemyPaddle.hSpdRangeMin, oEnemyPaddle.hSpdRangeMax);
	oEnemyPaddle.xPosModify = random_range(oEnemyPaddle.xPosModifyMin,oEnemyPaddle.xPosModifyMax);
}



//values should be changed to reflect playfield borders

if(x > 32 + 360){
	hSpd = -hSpd;
}
if(x < 32){
	hSpd = -hSpd;	
}

if(y > room_height){
	//score for ai
	x = (32 + 360 + oPlayer.sprite_width) / 2;
	y = room_height / 2;
	hSpd = 0;
	vSpd = 4;
	oPlayer.x = (32 + 360 + oPlayer.sprite_width) /2;
	oEnemyPaddle.x = (32 + 360 + oPlayer.sprite_width) /2;
}

if(y < 0){
	//score for player	
	x = (32 + 360 + oPlayer.sprite_width) / 2;
	y = room_height / 2;
	hSpd = 0;
	vSpd = 4;
	oPlayer.x = (32 + 360 + oPlayer.sprite_width) /2;
	oEnemyPaddle.x = (32 + 360 + oPlayer.sprite_width) /2;
}