void reset(){
  for(int i = 0; i<20; i++){
    block[i].reset();
  }
  
}

void update(){
  int blocks_left = 20;
    for(int i = 0; i<20; i++){ //displayes the blocks as thay should curently be
    block[i].display();
      if ( block[i].on == false){
        blocks_left--;
      }
    }
    if (blocks_left == 0){ //test to see if there are blocks left
      score = score +1000;
      ball.lifeAdd();
      reset();
      ball.Stop();
      paddel.Stop();
      
    }

  paddel.display();
  ball.display();
} 


void collitionCheck(){ //detecs all the colition in the game
if((ball.y+12 > 750) && (ball.x >= paddel.getX()) && (ball.x <= paddel.getX() +200)){ // if it colides whit the padel
  ball.paddelHit();
  ball.udFlip();
}
    
if(ball.y-12 <= 0){ // if it colides whith the top
  ball.udFlip();
}
    
if(ball.y+12 >=800){ // if it passes from the bottem of the screen the game resets
  ball.Stop();
  paddel.Stop();
  ball.lifeLost();
}
    
if((ball.x+12 >= 800) || (ball.x-12 <= 0)){ // if it colides whit the sides;
  ball.lrFlip();
}  

for(int i=0; i<20; i++){
 if((ball.getX() >= block[i].x) && (ball.getX() <= block[i].x + 100) && (ball.getY()+12 >= block[i].y) && ( ball.getY()+12 <= block[i].y+25)){ //detects colition at the top of blocks
    if (block[i].on == true){
      ball.udFlip();
      ball.setY(block[i].y-12);
      block[i].hit();
      score = score+100;
    }
  }
  
 if((ball.getX() >= block[i].x) && (ball.getX() <= block[i].x + 100) && (ball.getY()-12 <= block[i].y+50) && ( ball.getY()-12 >= block[i].y+25)){ //detects colition at the bottom of the blocks
    if (block[i].on == true){
      ball.udFlip();
      ball.setY(block[i].y+62);
      block[i].hit();
      score = score+100;
    }
  }
  
 if((ball.getY() >= block[i].y) && (ball.getY() <= block[i].y + 50) && (ball.getX()-12 <= block[i].x+100) && ( ball.getX()-12 >= block[i].x+50)){ //detects colition at the right of the blocks
    if (block[i].on == true){   
      ball.lrFlip();
      ball.setX(block[i].x+112);
      block[i].hit();
      score = score+100;
    }
  }
  
 if((ball.getY() >= block[i].y) && (ball.getY() <= block[i].y + 50) && (ball.getX()+12 >= block[i].x) && ( ball.getX()+12 <= block[i].x+50)){ //detects colition at the right of the blocks
    if (block[i].on == true){   
      ball.lrFlip();
      ball.setX(block[i].x-12);
      block[i].hit();
      score = score+100;
    }
  }
}
}