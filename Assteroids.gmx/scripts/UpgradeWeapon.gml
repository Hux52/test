weapon = argument0;
switch (weapon){
    case oWeaponChargeShot:
        oGame.weaponToUse = weapon;
        audio_sound_pitch(aUpgrade1, 1 + 0.1 * oGame.weaponToUse.weaponLevel);
        oGame.weaponToUse.weaponLevel += 1;
        audio_play_sound(aUpgrade1, 0, false);
        instance_create(x, y, oChargeShotPickupEffect);
    break;
    
    case oWeaponRapidFire:
        oGame.weaponToUse = weapon;
        audio_sound_pitch(aUpgrade2, 1 + 0.1 * oGame.weaponToUse.weaponLevel);
        oGame.weaponToUse.weaponLevel += 1; 
        audio_play_sound(aUpgrade2, 0, false);
        instance_create(x, y, oRapidFirePickupEffect);
    break;
}
