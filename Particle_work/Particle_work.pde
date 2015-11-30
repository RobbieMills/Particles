//Robbie Mills

//Particle[][] particles = new Particle[100][100];
ArrayList particles;

int doit = 10;
boolean click = false;

float gravity = 0.2;

void setup() {

  size(800, 600);
  frameRate(60);
  ellipseMode(CENTER);

  //for (int i = 0; i < 10; i++) {
  //particles[i][i] = new Particle(random(50, width-50), random(50, height), random(5, 50), random(5, 50), random(-1, 1));

  particles = new ArrayList();

  //particles.add(new Particle(random(50, width-50), random(50, height), random(5, 50), random(5, 50), random(-1, 1)));

  //Particle part = particles.get(0);

  //}
}

void draw() {

  background(255);
  println(particles.size()); 


  //for (int i = 0; i < 10; i++) {
  //  particles[i][i].drawParticle();
  //  particles[i][i].updateParticle();
  //  particles[i][i].particleBoundary();
  //}

  //part.drawParticle();
  //part.updateParticle();
  //part.particleBoundary();

  //particles.add(new Particle(random(50, width - 50), random(50, height), random(5, 50), random(5, 50), random(-1, 1)));


  //for (int i = particles.size() -1; i >= 0; i --) {
  // Particle p = (Particle) particles.get(i);

  // p.drawParticle();
  // p.updateParticle();
  // p.particleBoundary();
  //}

  //Particle p = (Particle) particles.get(0);
  if (keyPressed == true) {
    particles.add(new Particle(random(50, width - 50), random(50, height), random(5, 50), random(5, 50), random(-1, 1)));
    Particle p = (Particle) particles.get(0);

    p.drawParticle();
    p.updateParticle();
    p.particleBoundary();
  }


  //athing();
}

void mousePressed() {

  //particles.clear();
  if (particles.size() > 0) {
    particles.remove(0);
    particles.clear();
  }
}

//void athing(){
// for (int i = particles.size() -1; i >= 0; i --) {
//    Particle p = (Particle) particles.get(i);

//    p.drawParticle();
//    p.updateParticle();
//    p.particleBoundary();
//  }