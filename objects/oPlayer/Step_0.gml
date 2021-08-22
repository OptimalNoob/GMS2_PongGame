/// @description Insert description here
// You can write your code in this editor
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));

x += (keyRight - keyLeft) * moveSpeed;

if(x > 32 + 360 - sprite_width / 2){
	x = 32 + 360 - sprite_width / 2;
}
if(x < 32 + sprite_width / 2){
	x = 32 + sprite_width / 2;	
}