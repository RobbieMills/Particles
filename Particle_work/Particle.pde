class Particle {

  float ParticleXpos;
  float ParticleYpos;
  float ParticleWidth;
  float ParticleHeight;
  float ParticleSpeed;

  float ParticleSpeedX;
  float ParticleSpeedY;

  float r = 5;

  Particle(float _ParticleXpos, float _ParticleYpos, float _ParticleWidth, float _ParticleHeight, float _ParticleSpeed) {

    ParticleXpos = _ParticleXpos;
    ParticleYpos = _ParticleYpos;
    ParticleWidth = _ParticleWidth;
    ParticleHeight = _ParticleHeight;
    ParticleSpeed = _ParticleSpeed;
   
  }

  void drawParticle() {

    fill(255);
    strokeWeight(2);
    ellipse(ParticleXpos, ParticleYpos, ParticleWidth, ParticleHeight);
  }

  void particleBoundary() {

    if (((ParticleXpos + 25) > width) || ((ParticleXpos - 25) < 0)) {

      ParticleSpeedX = ParticleSpeedX * -1;
    }

    if ((ParticleYpos + 25) > height) {

      ParticleYpos = height -25;
      ParticleSpeedY = ParticleSpeedY * -0.95;
    }
    
    if ((ParticleYpos - 25) < 0){
    
    ParticleSpeedY = ParticleSpeedY * -1;
      
    }
    
  }

  void updateParticle() {

    //ParticleXpos = ParticleXpos + 20;
    //prfloatln(ParticleXpos);
    //ParticleXpos++;
    //ParticleYpos++;

    //doit;
    //if (click == true) {

    //background(255,0,0);
    //ParticleXpos += 2;
    
    ParticleXpos += ParticleSpeedX;
    ParticleYpos += + ParticleSpeedY;
    
    
    ParticleSpeedY += gravity;
    
    //} else {

    //  click = false;
    //}
  }
}