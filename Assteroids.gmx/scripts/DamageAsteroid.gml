collider = argument0;

if (collider = oBullet){        
    bull = instance_nearest(x,y,oBullet);
    smokeDir = bull.direction;
    
    if (object_get_name(bull.object_index) = object_get_name(oChargeBullet)){
    asteroidHealth -= bull.bulletDamage;
            bull.powerLevel -= asteroidLevel/2;
    with bull {
            instance_create(x,y,oHitParticle);
            if (powerLevel <= 0){
                instance_destroy();
            }
        }
    }
    
    else if (object_get_name(bull.object_index) = object_get_name(oRapidFireBullet)){
    asteroidHealth -= bull.bulletDamage;
        
    if (asteroidLevel >= 2){
        with (bull) {
        instance_create(x, y, oHitParticle);
        for (i = 0; i < random_range(10,15); i++){
            part = instance_create(x, y, oDebrisParticle);
            part.direction = (direction - 180) + random_range(-15, 15);
            part.speed = random_range(1,2);
        }
            instance_destroy();
            }
        }
    }
}   

if (collider = oPlayer){
    asteroidHealth = 0;
    if (instance_exists(oGame)){
        with (collider) {
        instance_destroy();
        }
    }
}

if (collider = oBomb){
    with(collider){
        instance_destroy();
    }
}

