//Robbie Mills

ArrayList particles;

boolean click = false;

float gravity = 0.3;

void setup() {

  size(800, 600);
  frameRate(60);
  ellipseMode(CENTER);

  particles = new ArrayList();
  particles.add(new Particle(random(50, width - 50), random(50, height), random(5, 50), random(5, 50), random(-1, 1)));
}

void draw() {

  background(255);
  println(particles.size()); 

  for (int i = 0; i < particles.size(); i++) {

    Particle p = (Particle) particles.get(i);
    p.updateParticle();
    p.particleBoundary();
    p.drawParticle();
  }
}

void mousePressed() {

  if (particles.size() > 0) {
    //particles.remove(0);
    particles.clear();
  }
}