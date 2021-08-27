if(PlayerStages[| STAGE.BREAKOUT]){
	
	hcol_l = instance_place(x - hSpd, y, Parent_BallCollider);
	hcol_r = instance_place(x + hSpd, y, Parent_BallCollider);
	vcol_t = instance_place(x, y - vSpd, Parent_BallCollider);
	vcol_b = instance_place(x, y + vSpd, Parent_BallCollider);
	
	if(hcol_l != noone){
		hcol_r = noone; vcol_t = noone; vcol_b = noone;
		if(!PenetratingBalls) hSpd = -hSpd;
		ball_collision(hcol_l);
	}
	
	if(hcol_r != noone){
		hcol_l = noone; vcol_t = noone; vcol_b = noone;
		if(!PenetratingBalls) hSpd = -hSpd;
		ball_collision(hcol_r);
	}
	
	if(vcol_t != noone){
		hcol_l = noone; hcol_r = noone; vcol_b = noone;
		if(!PenetratingBalls) vSpd = -vSpd;
		ball_collision(vcol_t);
	}
	
	if(vcol_b != noone){
		hcol_l = noone; hcol_r = noone; vcol_t = noone;
		if(!PenetratingBalls) vSpd = -vSpd;
		ball_collision(vcol_b);
	}
}