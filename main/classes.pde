class Player{
  PVector pos;
  
  
  Player(){
    pos = new PVector(1,1);

  }



}

class TilemapCollider{
  int[][] tilemap;
  PVector step;
  PVector p_size = new PVector();
  PVector tiles = new PVector();
    
  TilemapCollider(PVector size,PVector tiles){
    this.p_size.set(size);
    this.tiles.set(tiles);
    step = new PVector(size.x/tiles.x,size.y/tiles.y);
    tilemap = new int[int(size.x/step.x)][int(size.y/step.y)];  
  }

  void update(){
    step = new PVector(p_size.x/tiles.x,p_size.y/tiles.y);
    tilemap = new int[int(p_size.x/step.x)][int(p_size.y/step.y)];
  }


  void draw(){
    for(int x = 0;x < tilemap.length;x++){
      for(int y = 0;y < tilemap[x].length;y++){

        if((x+y)%2 == 0){
          fill(100);
        }else{
          fill(200);

        }
        rect(step.x*x,step.y*y,step.x,step.y);
      }
    }
  }
}


class Atlas{
    Atlas(){
        
    }
}
