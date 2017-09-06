
/*
Joanel Vasquez
Lab6
Intro to Computer Science
Michael Penta
*/

//Global variables for the Earth and the Moon
float d = 0;
float c = 0;
float z = 0;
PImage Earth;
PImage Moon;

//Declares and constructs a new objects from the class "Planet"
Planet Sun = new Planet();
Planet Mercury = new Planet();
Planet Venus = new Planet();
Planet Mars = new Planet();
Planet Jupiter = new Planet();
Planet Saturn = new Planet();
Planet Uranus = new Planet();
Planet Neptune = new Planet();
Planet Universe = new Planet();


void setup() {
  //Sets the size of the screen to 1150 px width and 850 px height
  size(1150,850);
  //Adds smoothness
  smooth();
  
  //Gives the commands inside of "Void setImage" to the object "Universe"
  //loads an image called "Universe"
  Universe.setImage("Universe.jpg");
  //Gives the commands inside of "Void setSize" to the object "Universe"
  //Sets size of the image to w = 1150 px, h = 850 px
  Universe.setSize(1150,850);
  
  //Gives the commands inside of "Void setImage" to the object "Sun"
  //loads an image called "Sun"
  Sun.setImage("Sun.png");
  //Gives the commands inside of "Void setSize" to the object "Sun"
  //Sets size of the image to w = 85 px, h = 85 px
  Sun.setSize(85,85);
  
  //Gives the commands inside of "Void setImage" to the object "Mercury"
  //loads an image called "Mercury"
  Mercury.setImage("Mercury.png");
  //Gives the commands inside of "Void setSize" to the object "Mercury"
  //Sets size of the image to w = 15 px, h = 15 px
  Mercury.setSize(15,15);
  
  //Gives the commands inside of "Void setImage" to the object "Venus"
  //loads an image called "Venus"
  Venus.setImage("Venus.png");
  //Gives the commands inside of "Void setSize" to the object "Venus"
  //Sets size of the image to w = 25 px, h = 25 px
  Venus.setSize(25,25);
  
  //Loads the image "Earth" and it stores it in the variable "Earth"
  Earth = loadImage("Earth.png");
  
  //Loads the image "Moon" and it stores it in the variable "Moon"
  Moon = loadImage("Moon.png");
  
  //Gives the commands inside of "Void setImage" to the object "Mars"
  //loads an image called "Mars"
  Mars.setImage("Mars.png");
  //Gives the commands inside of "Void setSize" to the object "Mars"
  //Sets size of the image to w = 25 px, h = 25 px
  Mars.setSize(25,25);
  
  //Gives the commands inside of "Void setImage" to the object "Jupiter"
  //loads an image called "Jupiter"
  Jupiter.setImage("Jupiter.png");
  //Gives the commands inside of "Void setSize" to the object "Jupiter"
  //Sets size of the image to w = 45 px, h = 45 px
  Jupiter.setSize(45,45);
  
  //Gives the commands inside of "Void setImage" to the object "Saturn"
  //loads an image called "Saturn"
  Saturn.setImage("Saturn.png");
  //Gives the commands inside of "Void setSize" to the object "Saturn"
  //Sets size of the image to w = 90 px, h = 50 px
  Saturn.setSize(90,50);
  
  //Gives the commands inside of "Void setImage" to the object "Uranus"
  //loads an image called "Uranus"
  Uranus.setImage("Uranus.png");
  //Gives the commands inside of "Void setSize" to the object "Uranus"
  //Sets size of the image to w = 60 px, h = 40 px
  Uranus.setSize(60,40);
  
  //Gives the commands inside of "Void setImage" to the object "Neptune"
  //loads an image called "Neptune"
  Neptune.setImage("Neptune.png");
  //Gives the commands inside of "Void setSize" to the object "Neptune"
  //Sets size of the image to w = 30 px, h = 30 px
  Neptune.setSize(30,30);
}

void draw() {
  //Sets the background color to black
  background(0);
  //This function serve as a shortcut to draw the commands inside of "void drawOrbits" 
  drawOrbits();
  
  //Makes the image a little transparent
  tint(255,210);
  //Gives the command inside of "void display" to the object "Universe"
  //Displays the image "Universe"
  Universe.display();
  //Gives the command inside of "void move" to the object "Universe" at the stated values
  Universe.move(0,0);
  //Gives the commands inside of "void speed" to the object "Universe" at the stated speed
  Universe.speed(0);
  //Removes transparency
  noTint();
  
  //Gives the command inside of "void display" to the object "Sun"
  //Displays the image "Sun"
  Sun.display();
  //Gives the command inside of "void move" to the object "Sun" at the stated values
  Sun.move(0,0);
  //Gives the commands inside of "void speed" to the object "Sun" at the stated speed
  Sun.speed(0);
  
  //Gives the command inside of "void display" to the object "Mercury"
  //Displays the image "Mercury"
  Mercury.display();
  //Gives the command inside of "void move" to the object "Mercury" at the stated values
  Mercury.move(73,50);
  //Gives the commands inside of "void speed" to the object "Mercury" at the stated speed
  Mercury.speed(0.045672);
  
  //Gives the command inside of "void display" to the object "Venus"
  //Displays the image "Venus"
  Venus.display();
  //Gives the command inside of "void move" to the object "Venus" at the stated values
  Venus.move(99,72);
  //Gives the commands inside of "void speed" to the object "Venus" at the stated speed
  Venus.speed(0.0178805073);
  
  //Draws the command inside of "void drawEarth"
  drawEarth();
  //Gives movement to the drawings called by "drawEarth"
  moveEarth();
  
  //Draws the command inside of "void drawMoon"
  drawMoon();
  //Gives movement to the drawings called by "drawMoon"
  moveMoon();
  
  //Gives the command inside of "void display" to the object "Mars"
  //Displays the image "Mars"
  Mars.display();
  //Gives the command inside of "void move" to the object "Mars" at the stated values
  Mars.move(193,158);
  //Gives the commands inside of "void speed" to the object "Mars" at the stated speed
  Mars.speed(0.0058485002);
  
  //Gives the command inside of "void display" to the object "Jupiter"
  //Displays the image "Jupiter"
  Jupiter.display();
  //Gives the command inside of "void move" to the object "Jupiter" at the stated values
  Jupiter.move(290,210);
  //Gives the commands inside of "void speed" to the object "Jupiter" at the stated speed
  Jupiter.speed(0.0009274873524);
  
  //Gives the command inside of "void display" to the object "Saturn"
  //Displays the image "Saturn"
  Saturn.display();
  //Gives the command inside of "void move" to the object "Saturn" at the stated values
  Saturn.move(370,260);
  //Gives the commands inside of "void speed" to the object "Saturn" at the stated speed
  Saturn.speed(0.0003735144312);
  
  //Gives the command inside of "void display" to the object "Uranus"
  //Displays the image "Uranus"
  Uranus.display();
  //Gives the command inside of "void move" to the object "Uranus" at the stated values
  Uranus.move(455,315);
  //Gives the commands inside of "void speed" to the object "Uranus" at the stated speed
  Uranus.speed(0.0001304863582);
  
  //Gives the command inside of "void display" to the object "Neptune"
  //Displays the image "Neptune"
  Neptune.display();
  //Gives the command inside of "void move" to the object "Neptune" at the stated values
  Neptune.move(525,365);
  //Gives the commands inside of "void speed" to the object "Neptune" at the stated speed
  Neptune.speed(0.00006675162328); 
}



class Planet {
  
  //Global variables
  float x = 0;
  float y = 0;
  float w = 30;
  float h = 30;
  float z = 0;
  PImage Planets;
  
  void setSize(float a, float b) {
    //Makes the global variable "w" equal to "a"
    w = a;
    //Makes the global variable "h" equal to "b"
    h = b;
  }
  
  void setImage(String p) {
   //Loads the desire image(String p) stated by the user
   Planets = loadImage(p);
  }
  
  void display() {
    //Places the image at the center of the screen
    imageMode(CENTER);
    //This function places the image depending on the value of x and y 
    //And the value for the with and height
    image(Planets,x,y,w,h);
    
  }
  
  void move(float a, float b) {
     //This function gives a circular motion "a" px away from half the width  
     x = width/2 + sin(z)*a;
     //This function gives a circular motion "b" px away from half the height
     y = height/2 + cos(z)*b;
  }
  
  void speed(float speed) {
   // gives movement to the planets depending on the variable "speed"
   z = z + speed;
  }
}



void drawEarth() {
 //This function gives a circular motion 145 pix away from half the width
 float x = (width/2) + sin(c)*145;
 //This function gives a circular motion 120 pix away from half height 
 float y = (height/2) + cos(c)*120;
 
 //Places the image at the center of the screen
 imageMode(CENTER);
 //This function places the image depending on the value of x and y 
 //The image has a width of 35 and a height of 35
 image(Earth,x,y,35,35);
}
 
void drawMoon() {
    //This function gives a circular motion 145 pix away from half the width
    float x = width/2 + sin(c)*145;
    //This function gives a circular motion 120 pix away from half height 
    float y = height/2 + cos(c)*120;
     
    //This function gives a circular motion 25 px away from the value of "x"
    float xm = x + sin(d)*25;
    //This function gives a circular motion 25 px away from the value of "y"
    float ym = y + cos(d)*25;
     
     //Places the image at the center of the screen
     imageMode(CENTER);
     //This function places the image depending on the value of xm and ym 
     //The image has a width of 10 and a height of 10
     image(Moon,xm,ym,10,10);
}

//Gives movement to the Earth 
void moveEarth() {
  c = c + 0.011;
}

//Gives movement to the Moon
void moveMoon() {
  d = d + 0.1434910714;
}



void drawOrbits() {
    //sets fill to black
    fill(0);
    //sets stroke to random colors
    stroke(random(0,255),random(0,255),random(0,255));
    //These ellipses are located at the center of the screen
    //These ellipses are different in size
    ellipse(width/2,height/2,1050,730);
    ellipse(width/2,height/2,910,630);
    ellipse(width/2,height/2,750,520);
    ellipse(width/2,height/2,595,420);
    ellipse(width/2,height/2,395,315);
    ellipse(width/2,height/2,300,250);
    ellipse(width/2,height/2,200,150);
    ellipse(width/2,height/2,150,100);
    //Removes stroke
    noStroke();
    //Removes fill
    noFill();
}
