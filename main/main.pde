Player boerek;
TilemapCollider collider;



void setup(){
    size(1920,1080);
    fullScreen();
    collider = new TilemapCollider(new PVector(width,height),new PVector(40.0,25.0));
    textSize(40);
  
  
}


void draw(){
    background(0);
    stroke(0);
    collider.draw();
    fill(0,0,255);

    text("x: "+collider.tiles.x,width/8,height/15);
    text("y: "+collider.tiles.y,width/8,height*2/15);
}

void keyPressed(){
    if(keyCode == UP){
        if(collider.tiles.y > 0)
        collider.tiles.y--;
    }else if(keyCode == DOWN){
        collider.tiles.y++;
    }else if(keyCode == LEFT){
        if(collider.tiles.x > 0)
        collider.tiles.x--;
    }else if(keyCode == RIGHT){
        collider.tiles.x++;
    }
    collider.update();
}
