/// @description Insert description here
// You can write your code in this editor

aimAtMe = instance_find(oplayer,0)
	if instance_exists(aimAtMe) {
		aimDirection = point_direction(x,y,aimAtMe.x,aimAtMe.y)
		lineOfVision = abs(direction - aimDirection)



		if IHaveAClearLineOfViewTo(oplayer) && ( lineOfVision < 45 || 360 - lineOfVision < 45 ) {
	
			 if !place_meeting(x + hspeed ,y + vspeed,obarrier) {

				image_angle = aimDirection
				direction = image_angle
			}

		}
}


if y < 0 {

	vspeed = abs(vspeed)
}

if y > room_height {
     vspeed = -abs(vspeed)
}

if x < 0 {
	hspeed = abs(hspeed)
}

if x > room_width {
     hspeed = -abs(hspeed)
}
