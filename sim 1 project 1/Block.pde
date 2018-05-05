class Block{ //sets up class and its ranges
  private int x,y,h;
  private boolean on;

public Block(int x,int y){ //constructor passes in pos and sets up the blocks defalt valuses for this round
 this.x=x;
 this.y= y;
 this.h = int(random(1,4));
 this.on = true;
}

public void display(){ //displayes the blocks as the color representing there healt
  if(this.h == 0){
    noFill();
  }
  if(this.h ==1){
    fill(255,0,0);
    rect(this.x,this.y,100,50);
  }
  if(this.h ==2){
    fill(0,0,255);
    rect(this.x,this.y,100,50);
  } 
  if(this.h ==3){
    fill(0,255,0);
    rect(this.x,this.y,100,50);
  }
}

public void hit(){ //reduces the healt of the block when hit
  if(this.h !=1){
    this.h--;
  }
  else{
    this.h--;
    on = false;
  }
}

public void reset(){ //restets the healt of the block when called
   this.h = int(random(1,4));
   on = true;
}
  

public int getX(){ 
  return x;
}
public int getY(){
  return y;
}
public int getH(){
  return h;
}
public boolean getOn(){
  return on;
}

public void setX(int i){ 
  this.x =i;
}
public void setY(int i){
  this.y =i;
}
public void setH(int i){
  this.h = i;
}
public void setOn(boolean i){
  this.on = i;
}

}