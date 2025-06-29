fadeout=0;

if(a=1)
{
	room_goto(target_room);
	obj_player.x = target_x;
	obj_player.y = target_y;
	fadeout=1;
}	

//if(a=1)
//{
//	fadeout=1;
//}
	
//while(a<=1)
//{
//	draw_sprite_ext(spr_square,0,0,0,1400,1400,0,c_black,a);
//	a=a+0.05;
//}