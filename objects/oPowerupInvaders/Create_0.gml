image_speed = 0;
drop_speed = irandom_range(2, 4);

weightArray[POWERUP_TYPES_INVADER.SHIELD] = 1;
weightArray[POWERUP_TYPES_INVADER.SPREAD] = 1;
weightArray[POWERUP_TYPES_INVADER.SWIFT] = 1;


weightTotal = 0;


for(i = 0; i < array_length(weightArray); i++){
	weightTotal += weightArray[i];
}

upgrade_roll = irandom(weightTotal);
upgrade_choice = 0;

var tempTotal = 0;
for(i = 0; i < array_length(weightArray); i++){
	tempTotal += weightArray[i];
	if(upgrade_roll <= tempTotal){
		upgrade_choice = i;
		break;
	}
}

image_index = upgrade_choice;
powerup_type = "invaders";