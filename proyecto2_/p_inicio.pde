

class Fondo{
  
    PFont font;
    
    Fondo(){
      font = loadFont("BebasNeueBold-50.vlw");
    }
  
  void display(){

background(190,231,234);

//texto titulo
textFont(font);
fill(255);
text("wait ", 310, 300);

textFont(font);
fill(255);
text(" for ", 310, 380);

textFont(font);
fill(255);
text(" a", 325, 460);

textFont(font);
fill(255);
text("CLICK", 305, 560);

noFill();
stroke(255);
rect(297,519,100,50);

//flor1
  //petalos
noStroke();
fill(205,190,234);
ellipse (405,600,30,30);

noStroke();
fill(205,190,234);
ellipse (435,600,30,30);

noStroke();
fill(205,190,234);
ellipse (420,585,30,30);

noStroke();
fill(205,190,234);
ellipse (420,615,30,30);

//centro
noStroke();
fill(255);
ellipse (420,600,30,30);

//hojas

//flor2
  //petalos
noStroke();
fill(205,190,234);
ellipse (265,600,30,30);

noStroke();
fill(205,190,234);
ellipse (295,600,30,30);

noStroke();
fill(205,190,234);
ellipse (280,585,30,30);

noStroke();
fill(205,190,234);
ellipse (280,615,30,30);

//centro
noStroke();
fill(255);
ellipse (280,600,30,30);

//hojas

//flor3
  //petalos
noStroke();
fill(205,190,234);
ellipse (335,600,30,30);

noStroke();
fill(205,190,234);
ellipse (365,600,30,30);

noStroke();
fill(205,190,234);
ellipse (350,585,30,30);

noStroke();
fill(205,190,234);
ellipse (350,615,30,30);

//centro
noStroke();
fill(255);
ellipse (350,600,30,30);

//hojas











  }
}
