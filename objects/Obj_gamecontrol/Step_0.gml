/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if !(audio_is_playing(Snd_beginning)){
	instance_activate_object(Obj_enemy_blueghost);
	instance_activate_object(Obj_enemy_redghost);
	instance_activate_object(Obj_enemy_pinkghost);
	instance_activate_object(Obj_enemy_orangeghost);
}

if (global.vidas == 0){
	with(Obj_enemy_redghost){instance_destroy();}
	with(Obj_enemy_blueghost){instance_destroy();}
	with(Obj_enemy_orangeghost){instance_destroy();}
	with(Obj_enemy_pinkghost){instance_destroy();}
	with(Obj_player){instance_destroy();}
	with(Obj_powerpoint){instance_destroy();}
	with(Obj_point){instance_destroy();}
	with(Obj_fruit){instance_destroy();}
}

if(instance_number(Obj_point) == 0 && instance_number(Obj_powerpoint) == 0 && global.vidas != 0){
	if(room_next(room) != 1){
		audio_stop_all();
		room_goto_next();
	}else{
		audio_stop_all();
		room_goto(Rm_gamelevel1);
		instance_destroy();
	}
}