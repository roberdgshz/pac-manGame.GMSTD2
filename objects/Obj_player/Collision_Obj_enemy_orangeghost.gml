/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (global.poder){
	global.puntos += 200;
	with(other){
		x = xstart;
		y = ystart;
		speed = 4;
		sprite_index = Spr_orangeghost_up;
	}
}else if !(global.golpe){
	speed = 0;
	global.vidas -= 1;
	sprite_index = Spr_player_dies;
	image_speed = 0.5;
	global.golpe = true;
}