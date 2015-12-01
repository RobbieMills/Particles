//Robbie Mills

ArrayList particles;

boolean click = false;

void setup() {

  size(800, 600);
  frameRate(60);
  ellipseMode(CENTER);

  particles = new ArrayList();
  particles.add(new Particle(mouseX, mouseY, random(5, 50), random(5, 50), random(-1, 1)));

  println(particles.size());
}

void draw() {

  background(255);

  for (int i = 0; i < particles.size(); i++) {

    Particle p = (Particle) particles.get(i);
    p.updateParticle();
    p.particleBoundary();
    p.drawParticle();
  }
}
void mousePressed() {

  particles.add(new Particle(mouseX, mouseY, random(5, 50), random(5, 50), random(-1, 1)));
  println(particles.size());
}

void keyPressed() {

  if (keyPressed == true) {

    if (keyCode == ENTER) {

      particles.clear();
      println(particles.size());
    }
  }
  if (keyCode == UP) {

    particles.add(new Particle(mouseX, mouseY, random(5, 50), random(5, 50), random(-1, 1)));
    println(particles.size());
  }

  if (keyCode == DOWN) {

    if (particles.size() > 0) {
      particles.remove(0);
      println(particles.size());
    }
  }
}