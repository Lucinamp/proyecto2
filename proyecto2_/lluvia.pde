class Lluvia {

  //atributos
  Body l;
  float r;
  color c;


//constructor
  Lluvia(float x, float y, float r_) {
   this.r = r_;
   this.c = color (random(128,250),random(206,255),random(216,255));
   
   
    // Definicion del body 
    BodyDef bodydef = new BodyDef();
     bodydef.type = BodyType.DYNAMIC;
    // coloco el body cambian las coordenadas
    bodydef.position = box2d.coordPixelsToWorld(x,y);
   
    l = box2d.world.createBody(bodydef);
    

    // determino la figura y combierto las medidas
    CircleShape circulo = new CircleShape();
    circulo.m_radius = box2d.scalarPixelsToWorld(r);
    
    
    //fixture def
    FixtureDef fixturedef = new FixtureDef();
    fixturedef.shape = circulo;
    
    fixturedef.density = 1;
    fixturedef.friction = 0.01;
    fixturedef.restitution = 0.3;
    
    
    l.createFixture(fixturedef);
    l.setUserData(this);

    // velocidad inicial y angular
    l.setLinearVelocity(new Vec2(random(-10f,10f),random(5f,10f)));
    l.setAngularVelocity(random(-10,10));
  
 
   
  }


  void killBody() {
    box2d.destroyBody(l);
  }

  //eliminacion
  boolean done() {
   
    Vec2 pos = box2d.getBodyPixelCoord(l);
  
    if (pos.y > height+r*2) {
      killBody();
      return true;
    }
    return false;
  }

  // 
  void display() {
   
   
    Vec2 pos = box2d.getBodyPixelCoord(l);
   
    float a = l.getAngle();
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(-a);
    fill(this.c);
    noStroke();
    ellipse(0,0,r*2,r*2);
   
    line(0,0,r,0);
    popMatrix();
    
  }


}
