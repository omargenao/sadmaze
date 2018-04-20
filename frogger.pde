int gameScreen = 0;

int x = 240;
int y = 135;
int speed = 2;
int speed2 =2;

int start; //timer

boolean alive = false;
boolean won = false;


boolean reset;
boolean winner;
int time;

PFont font;

void setup() {
  size(1000, 800);
  start = millis();
  
}


void draw() {
  if (gameScreen == 0) {
    initScreen();
  } else if (gameScreen == 1) {
    gameScreen();
  } else if (gameScreen == 2) {
    gameOverScreen();
  }
}


  void initScreen() {
  background(20,33,150);
  font = createFont("AvenirNextCondensed-BoldItalic-48.vlw", 50);
  textFont(font);
  textSize(150);
  textAlign(CENTER);
  text("PLAY ME", 510, width/2);
  
  textSize(30);
 
  text("The sad maze", 500, width/3);
}

void gameScreen() {
  
background(255);
smooth();
strokeWeight(3);
stroke(2);
fill(0);

    
rect(-10, -10, 12, 780);
rect(-10, -10, 1020, 12);
rect(996, -10, 12, 1020);
rect(0, 756, 1020, 12);
rect(0, 700, 100, 4);
rect(160, 700, 600, 4);
rect(840, 700, 100, 4);
rect(940, 504, 4, 200);
rect(940, 504, 60, 4);
rect(940, 0, 4, 440);
rect(360, 50, 4, 490);
rect(760, 624, 4, 80);
rect(840, 510, 4, 190);
rect(100, 514, 4, 190);
rect(50, 464, 4, 240);
rect(160, 650, 4, 50);
rect(160, 646, 140, 4);
rect(160, 600, 4, 50);
rect(360, 646, 340, 4);
rect(160, 595, 140, 4);
rect(360, 596, 4, 50);
rect(160, 464, 4, 80);
rect(220, 464, 4, 80);
rect(280, 464, 4, 80);
rect(300, 544, 4, 55);
rect(160, 540, 60, 4);
rect(280, 540, 24, 4);
rect(100, 460, 64, 4);
rect(50, 224, 4, 185);
rect(100, 54, 4, 405);
rect(50, 220, 50, 4);
rect(50, 0, 4, 165);
rect(100, 50, 200, 4);
rect(300, 110, 4, 300);
rect(160, 110, 4, 290);
rect(160, 400, 60, 4);
rect(220, 400, 4, 64);
rect(360, 50, 200, 4);
rect(630, 50, 310, 4);
rect(420, 220, 4, 374);
rect(240, 110, 4, 240);
rect(240, 350, 60, 4);
rect(480, 160, 4, 440);
rect(420, 100, 4, 60);
rect(420, 160, 60, 4);
rect(360, 594, 64, 4);
rect(420, 100, 260, 4);
rect(740, 100, 200, 4);
rect(544, 160, 336, 4);
rect(680, 100, 4, 60);
rect(544, 440, 350, 4);
rect(890, 440, 4, 200);
rect(890, 504, 50, 4);
rect(620, 510, 224, 4);
rect(540, 440, 4, 160);
rect(760, 570, 4, 100);
rect(620, 570, 80, 4);
rect(700, 570, 4, 80);
rect(420, 380, 224, 4);
rect(700, 300, 4, 140);
rect(540, 320, 100, 4);
rect(540, 220, 4, 100);
rect(540, 220, 220, 4);
rect(600, 270, 104, 4);
rect(700, 270, 4, 100);
rect(760, 220, 4, 164);
rect(760, 380, 130, 4);
rect(890, 380, 4, 60);
rect(880, 160, 4, 60);
rect(820, 160, 4, 160);
rect(890, 280, 4, 120);
rect(880, 220, 60, 4);

if(keyPressed && keyCode == RIGHT && get(x+speed, y) == color(255)) 
  if((keyPressed) && (keyCode == RIGHT)){
    x = x + speed;
    
}

if(keyPressed && keyCode == LEFT && get(x-speed, y) == color(255)) 
  if((keyPressed) && (keyCode == LEFT)){
    x = x - speed;
}

if(keyPressed && keyCode == UP && get(x, y-speed2 ) == color(255)) 
  if((keyPressed) && (keyCode == UP)){
    y = y - speed2;
}

if(keyPressed && keyCode == DOWN && get(x, y+speed2 ) == color(255)) 
 if((keyPressed) && (keyCode == DOWN)){
    y = y + speed2;
}
  if ( x > width){
   x = width;
}
  if (x < 0){
    x = 0;
  }
  if(y > height){
    
    y = height;
}
if (y < 0){
  
  y = 0;
}
 
 //player
  ellipseMode(CENTER);
  fill(255,0,0);
  ellipse(x,y, 15,15);
  
  //enemies
  
  fill(5,0,200);
  ellipse(150,160, 15,15);
  
  fill(5,100,150);
  ellipse(380,360, 15,15);
  
  
  
  //win game
  fill(5,100,150);
  ellipse(970,530, 15,15);
}
void gameOverScreen() {
  
  background(20,33,150);
  font = createFont("AvenirNextCondensed-BoldItalic-48.vlw", 50);
  textFont(font);
  textSize(150);
  textAlign(CENTER);
  text("win!", 510, width/2);
}




public void mousePressed() {

  if (gameScreen==0) {
    startGame();
  }
}

 
void startGame() {
  gameScreen=1;
}
