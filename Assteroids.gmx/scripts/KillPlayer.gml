
        for (i = 0; i < 8; i++){
            effect_create_above(ef_star, x + random_range(-30,30),y + random_range(-30,30),random_range(1,2),c_white);
            effect_create_above(ef_spark, x + random_range(-30,30),y + random_range(-30,30),random_range(0.5,1),c_white);
        }
            instance_destroy();
