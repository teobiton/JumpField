void obstacle() {

  //Les obstacles sont générés aléatoirement.
  if (obstacle >= 1.5) {
    Obstacle1 = loadImage("Barriere_Fence1.png");
    if ( xobstacle >=265 && xobstacle<=300 && ypers>= 470 && ypers <= 515) {
      t=0;
    }
  } else
  {
    Obstacle1 = loadImage("Barriere_Fence2.png");
    if ( xobstacle >=245 && xobstacle<=300 && ypers>= 475 && ypers <= 515) { 
      t=0;
    }
  }

  image(Obstacle1, xobstacle, 530, 80, 60);
  // Si l'obstacle n'apparaît plus sur la fenêtre de jeu, 
  // on affecte à "obstacle" un nombre aléatoire entre 1 et 2, 
  // et on le replace entre 1000 et 2000.
  if ( xobstacle <=- 20 ) { 
    xobstacle = random(1000, 1200);
    obstacle = random(1, 2);
  }
}