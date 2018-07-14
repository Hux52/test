pickup = instance_place(x,y,oPickup);
if (instance_exists(pickup)){
    switch (object_get_name(pickup.object_index)){
        case "oLifePickup":
            oGame.Lives += 1;
            
            instance_create(x, y, oLifePickupEffect);
            
            audio_play_sound(
            choose(aHeartPickup1, 
            aHeartPickup2, 
            aHeartPickup3, 
            aHeartPickup4, 
            aHeartPickup5), 
            0, false);
        break;
        
        case "oWeaponChargeShotPickup":
            UpgradeWeapon(oWeaponChargeShot);
        break;
        
        case "oWeaponRapidFirePickup":
            UpgradeWeapon(oWeaponRapidFire);
        break;
        
    }
}
with (pickup){
    instance_destroy();
    }
