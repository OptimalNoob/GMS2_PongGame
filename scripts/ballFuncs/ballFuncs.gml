/// @function ball_collision
/// @desc logic for ball collision
function ball_collision(_id){
	switch(_id.col_type){
		case "brick": 
			// Brick/Ball Collision Logic
			instance_destroy(_id);
		break;
		case "invader":
			// Invader/Ball Collision Logic
			if(!_id.anger){
				_id.mask_index = -1;
				_id.anger = true;
				Mothership.remove_invader_from_list(_id);
			}
		break;
	}
}