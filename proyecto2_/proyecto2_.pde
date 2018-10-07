//librerias
import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;
import processing.sound.*;

Box2DProcessing box2d;

ArrayList <Flor1> flores;
ArrayList<Lluvia> lluvias;
int p;
Fondo fondo;
PFont font;
Flor1 fl;
float a=.01;
SoundFile file;




void setup(){
   size (700,1000);
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.listenForCollisions();
  file = new SoundFile(this,"Lluvia .mp3");
  file.loop();
   file.play();
  p= 0;
  font =loadFont("BebasNeueBold-50.vlw");
  fondo = new Fondo();
lluvias = new ArrayList <Lluvia>();
flores = new ArrayList <Flor1>();




  }
 

  
  
 
 

 
 
 


void draw(){
  a+= 0.1;
background (255);
box2d.step();


if(p==0){
  fondo.display();
}
if(p==1){
  //instrucciones
  textFont(font);
fill(216,163,213);
textSize(20);
text("Da clic en la pantalla para mas flores ", 210, 700);
//luvia
float sz = random(5,10);
lluvias.add(new Lluvia(random (0,700),0, sz));
println(lluvias.size());


for  (Lluvia ll: lluvias){
  ll.display();}
for (int i =lluvias.size()-1;i>=0;i--){
 boolean r = lluvias.get(i).done();
    if (r) {
      lluvias.remove(i);
    }
  //flores
}
for(Flor1 fl: flores){
 
  fl.display();
  fl.rota(-a);
  
}

}

}

void mousePressed(){
   if(p==0){ 
    if((mouseX >300)&& (mouseX<380) && (mouseY>490) && (mouseY<580)){
      p=1;
    }
    
  }
  if(p==1){

    Flor1 fl = new Flor1 (mouseX,mouseY,a);
    flores.add(fl);
    
    
  }

  
}
