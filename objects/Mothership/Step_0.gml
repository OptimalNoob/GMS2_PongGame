/// @desc

invader_count = ds_list_size(invaders);

switch(invaderState){
	case invState.LEFT:
		for(i = 0; i < invader_count; i++){
			invaders[| i].x -= invSpd;	
		}
	break;
	case invState.RIGHT:
		for(i = 0; i < invader_count; i++){
			invaders[| i].x += invSpd;	
		}
	break;
	case invState.DOWN:
		for(i = 0; i < invader_count; i++){
			invaders[| i].y += invSpd / 4;	
		}
	break;
	
	default: break;
}

///@function destroy_invader
function destroy_invader(_id){
	var _index = ds_list_find_index(invaders, _id);
	ds_list_delete(invaders, _index);
	instance_destroy(_id);
}

function remove_invader_from_list(_id){
	var _index = ds_list_find_index(invaders, _id);
	ds_list_delete(invaders, _index);
}