class Flor1 {
  //atributos
  Body body;
  float w;
  float h;
  float r;
  float x;
  float y;
  color c;
//constructor
  Flor1(float x_, float y_,float a_) {
    w = 8;
    h = 24;
    r = 20;
    x=x_;
    y=y_;
   this.c = color (random(1,250),(random(1,250)),random(1,250));
 
   
    
   
//agregar a box2d


    BodyDef bd = new BodyDef();
    bd.type = BodyType.STATIC;
    bd.angle = a_;
    bd.position.set(box2d.coordPixelsToWorld(x, y));
    body = box2d.createBody(bd);
   
    
   
//determino la figura y cambio medidas
    CircleShape circle = new CircleShape();
    circle.m_radius = box2d.scalarPixelsToWorld(r);
    Vec2 offset = new Vec2(0, 0);
    offset = box2d.vectorPixelsToWorld(offset);
    circle.m_p.set(offset.x, offset.y);
  


    CircleShape circle1 = new CircleShape();
    circle1.m_radius = box2d.scalarPixelsToWorld(r);
    Vec2 offset1 = new Vec2(-r, 0);
    offset1 = box2d.vectorPixelsToWorld(offset1);
    circle1.m_p.set(offset1.x, offset1.y);

    CircleShape circle2 = new CircleShape();
    circle2.m_radius = box2d.scalarPixelsToWorld(r);
    Vec2 offset2 = new Vec2(r, 0);
    offset2 = box2d.vectorPixelsToWorld(offset2);
    circle2.m_p.set(offset2.x, offset2.y);

    CircleShape circle3 = new CircleShape();
    circle3.m_radius = box2d.scalarPixelsToWorld(r);
    Vec2 offset3 = new Vec2(0, -r);
    offset3 = box2d.vectorPixelsToWorld(offset3);
    circle3.m_p.set(offset3.x, offset3.y);

    CircleShape circle4 = new CircleShape();
    circle4.m_radius = box2d.scalarPixelsToWorld(r);
    Vec2 offset4 = new Vec2(0, r);
    offset4 = box2d.vectorPixelsToWorld(offset4);
    circle4.m_p.set(offset4.x, offset4.y);

//fixture
    body.createFixture(circle, 1.0);
    body.createFixture(circle1, 1.0);
    body.createFixture(circle2, 1.0);
    body.createFixture(circle3, 1.0);
    body.createFixture(circle4, 1.0);
     body.setUserData(this);
    
    
    body.setLinearVelocity(new Vec2(random(-10f,10f),random(5f,10f)));
    body.setAngularVelocity(random(-10,10));
    body.setUserData(this);
    
  }
  void display() {


    Vec2 c1 = box2d.getBodyPixelCoord(this.body);
    pushMatrix();
    translate(c1.x, c1.y);
   
    float a_ =body.getAngle();
    rotate(a_);
    fill (this.c);
    //centro
    ellipse(0, 0, r*2, r*2);
    //derecha
    ellipse(r, 0, r*2, r*2);
    //izquiera
    ellipse(-r, 0, r*2, r*2);
    //abajo
    ellipse(0, -r, r*2, r*2);
    //arriba
    ellipse(0, r, r*2, r*2);
    popMatrix();
  }
  void rota(float a_){
 
    body.setTransform(body.getPosition(),a_);
  }
}
