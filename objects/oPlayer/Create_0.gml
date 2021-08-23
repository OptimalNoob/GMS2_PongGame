moveSpeed = 4;

x = playerX;
y = playerY;

if(playerStage == pStage.invaders && room == rmInvaders){
	instance_create_depth(x, y, depth, oPlayer02);
	instance_destroy();
}