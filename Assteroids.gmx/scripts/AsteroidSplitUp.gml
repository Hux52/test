var i;
if (level > 1){
    for (i = level; i > 1; i--){
        newAst = instance_create(x,y,oAsteroid);
        newAst.level -= 1;
    }
}
