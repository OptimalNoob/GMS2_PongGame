if(PlayerStages[| STAGE.BREAKOUT]){
	
	hcol_l = instance_place(x - hSpd, y, Parent_BallCollider);
	hcol_r = instance_place(x + hSpd, y, Parent_BallCollider);
	vcol_t = instance_place(x, y - vSpd, Parent_BallCollider);
	vcol_b = instance_place(x, y + vSpd, Parent_BallCollider);
	
	while(true){
	if(hcol_l!=noone)
	if(hcol_l.object_index == oInvader){
		if(hcol_l.anger == true){
			show_debug_message("tripped")
			break;	
		}
	}
	if(hcol_r!=noone)
	if(hcol_r.object_index == oInvader){
		if(hcol_r.anger == true){
			show_debug_message("tripped")
			break;	
		}
	}
	if(vcol_t!=noone)
	if(vcol_t.object_index == oInvader){
		if(vcol_t.anger == true){
			show_debug_message("tripped")
			break;	
		}
	}
	if(vcol_b!=noone)
	if(vcol_b.object_index == oInvader){
		if(vcol_b.anger == true){
			show_debug_message("tripped")
			break;
		}
	}
	
	
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
	break;
}
}