
Block[] block =new Block[25]; //sets up block array
Paddel paddel = new Paddel();
Ball ball = new Ball();
int score = 0;
String off = "Press Enter to start";


void setup(){
size(800,800);
  for(int b = 0; b<20;){//sets up all the bloacks positions and values
    for(int i = 0; i <5; i++){
      for(int r = 0; r < 4; r++){
        block[b] = new Block(50+(150*i),50+(100*r));
        b++;
      }
    }
  } 
}

void draw(){
  noCursor();
  if(ball.GetLife() != 0){
    background(0);
    textSize(100);
    text("Score :"+score, 100,500);
    text("Lives :"+ ball.GetLife(),100,600);
    collitionCheck();
    update();
  }
  else{
    println("Game Score :"+score);
    score = 0;
  for(int i = 1; i <= 3; i++){
    ball.lifeAdd();
  }
    reset();
    
  }
}

void keyPressed(){
  if(key == ENTER){
    paddel.go();
    ball.go();
  }
}