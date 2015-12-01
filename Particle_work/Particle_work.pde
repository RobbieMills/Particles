//Robbie Mills

ArrayList particles;
ArrayList precisedeleterects;

boolean click = false;

void setup() {

  size(800, 600);
  frameRate(60);
  ellipseMode(CENTER);
  textAlign(CENTER, CENTER);

  particles = new ArrayList();
  precisedeleterects = new ArrayList();

  particles.add(new Particle(mouseX, mouseY, random(5, 50), random(5, 50), random(-1, 1)));

  precisedeleterects.add(new PreciseDelete(100, 50, 50, 50, "1"));
  precisedeleterects.add(new PreciseDelete(200, 50, 50, 50, "2"));
  precisedeleterects.add(new PreciseDelete(300, 50, 50, 50, "3"));
  precisedeleterects.add(new PreciseDelete(400, 50, 50, 50, "4"));
  precisedeleterects.add(new PreciseDelete(500, 50, 50, 50, "5"));
  precisedeleterects.add(new PreciseDelete(600, 50, 50, 50, "6"));

  println(particles.size());
}

void draw() {

  background(255);

  for (int i = 0; i < precisedeleterects.size(); i++) {

    PreciseDelete z = (PreciseDelete) precisedeleterects.get(i);
    z.drawRect();
  }

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


  //-----PRECISE DELETION(RECTS)-----//
  if (keyPressed) {
    if (key == '1') {
      if (precisedeleterects.size() > 0) {
        precisedeleterects.remove(0);
        println(precisedeleterects.size());
      }
    }
  }

  if (keyPressed) {
    if (key == '2') {
      if (precisedeleterects.size() > 0) {
        precisedeleterects.remove(1);
        println(precisedeleterects.size());
      }
    }
  }

  if (keyPressed) {
    if (key == '3') {
      if (precisedeleterects.size() > 0) {
        precisedeleterects.remove(2);
        println(precisedeleterects.size());
      }
    }
  }

  if (keyPressed) {
    if (key == '4') {
      if (precisedeleterects.size() > 0) {
        precisedeleterects.remove(3);
        println(precisedeleterects.size());
      }
    }
  }

  if (keyPressed) {
    if (key == '5') {
      if (precisedeleterects.size() > 0) {
        precisedeleterects.remove(4);
        println(precisedeleterects.size());
      }
    }
  }

  if (keyPressed) {
    if (key == '6') {
      if (precisedeleterects.size() > 0) {
        precisedeleterects.remove(5);
        println(precisedeleterects.size());
      }
    }
  }
}