class Paddel{
  private boolean on;
  private int x;
  
  public Paddel(){ //sets up paddel if off position
    on = false;
    x = width/2;
  }
  
  public void display(){ //checks if the paddel is on this updates and desplays apropretly.
    fill(255);
    rect(x,750,200,25);
    if((on==true) && (mouseX-100 >=0) && (mouseX+100 <=width)){
      x = mouseX-100;
    }
    else if(on==false){ // were to be when game is not on
      x = width/2-100;
    }
    else if (mouseX -100 <0){
      x = 0;
    }
    else if (mouseX + 100 > width){
      x = width-200;
    }
    
  }
    
  
  public void go(){ //starts the paddel when the game starts
    if(on == false){
      this.on = true;
    }
  }
  
  public void Stop(){ // stops it when the game ends
    this.on = false;
  }
    
  
  public int getX(){
    return x;
  }
  public boolean getOn(){
    return on;
  }
  
  public void setX(int i){
    this.x = i;
  }
  public void setOn(boolean i){
    this.on = i;
  }
  

}
  