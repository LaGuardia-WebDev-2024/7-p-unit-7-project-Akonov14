//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var shipX = 40 
var cloudX = 30
var birdX = 200
var birdY = 100
var waveSize = 900
//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
   if(mousePressed){
    showXYPositions();
    
  }
  
  //🎯Animation Code Goes Here

  //clouds

stroke (96, 189, 219);
fill(210, 237, 241);
quad(cloudX+3,79,cloudX+38,52,cloudX+70,79);

quad (cloudX+203,229,cloudX+238,202,cloudX+270,229)

fill(224, 168, 100);
  
  cloudX+=.2
  
  if(cloudX> 400){
cloudX =-100;}
  
  
  //ship
  stroke (116, 54, 16)
  quad(shipX+10,269, shipX+95, 269, shipX+79, 320,shipX+29, 320);
  fill(255, 243, 218);
  quad(shipX+51, 186,shipX+81, 236,shipX+51,268);
  fill(224, 168, 100);
  
  
  shipX+=.5
  
   if(shipX > 400){
shipX =-100;} 

//bird
fill(249, 247, 242);
quad(birdX+82, birdY+54,birdX+98, birdY+34,birdX+83, birdY+43,birdX+72,birdY+37,);
 birdX-=.5
 
  if(birdX < -100){
birdX = 410;}

birdY*=99/100


//wave
stroke(28, 92, 160);
fill(40, 151, 211);
ellipse (-90,290,waveSize,waveSize);

waveSize*=99/100
}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
