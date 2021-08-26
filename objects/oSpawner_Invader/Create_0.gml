/// @desc

var invader_w = sprite_get_width(sInvader) + 8;
var inv_score_arr = [5000, 2500, 1000, 500];
var invader_list = ds_list_create();
var _pup_chance = math_map_int(ChaosFactor, 1, 10, 10, 80);

for(i = 0; i < 4; i++){
	for(j = 0; j < 10; j++){
		var invader = instance_create_layer(64 + (j * invader_w), 196 + (i * invader_w), "Entities", oInvader);
		invader.image_index = (i * 2);
		invader.inv_score = inv_score_arr[i];
		invader.powerupChance = _pup_chance;
		if(j mod 2 == 0) invader.image_index++
		ds_list_add(invader_list, invader);
	}
}

var mother = instance_create_depth(x, y, depth, Mothership);
ds_list_copy(mother.invaders, invader_list);
ds_list_destroy(invader_list);
instance_destroy();