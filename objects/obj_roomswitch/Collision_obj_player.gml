fadeout=0;

if(a=1)
{
	room_goto(targetRoom);
	obj_player.x = targetX;
	obj_player.y = targetY;
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