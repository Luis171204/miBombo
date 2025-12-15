



class Hold{
    PVector pos;


    Hold(){


    }

    




}

class Body{
    int height;
    int width;

    PVector pos;
    PVector pos_l_hand;
    PVector pos_r_hand;
    PVector pos_l_foot;
    PVector pos_r_foot;

    void draw(){
        pos_l_hand.x
    }





}


class Limb{
    PVector pos_koerper;
    PVector pos_frei;
    int breite = 5;

    Limb(){

    }
    
    

    void draw(){
        rectMode(CORNERS);
        rect(pos_koerper.x-breite/2,pos_koerper.y-breite/2,pos_koerper.x+breite/2,pos_koerper.y+breite/2,pos_frei.x-breite/2,pos_frei.y-breite/2,pos_frei.x+breite/2,pos_frei.y+breite/2);
        rectMode(CORNER);
    }


    void greifen(Hold hold){

    }

}