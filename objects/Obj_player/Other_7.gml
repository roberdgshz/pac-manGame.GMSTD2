/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (sprite_index == Spr_player_dies){
	direction = 0;
	image_speed = 0;
	x = xstart;
	y = ystart;
	sprite_index = Spr_player_right;
	image_index = 0;
	
	global.golpe = false;
}