void paliers() {

  if (score <= 500) { //On teste le score à chaque palier de 500.
    //On définit la vitesse de défilement de l'obstable, de la route et des champs, ainsi que la couleur du ciel en fonction du score.
    xobstacle = xobstacle-25;
    xroute = xroute-25;
    xchamps = xchamps-3 ;
    background(115, 215, 253); //On définit la couleur de fond, ces valeurs correspondent au bleu.
  }

  if (score >= 500) {
    xobstacle = xobstacle-30;
    xroute = xroute-30 ;
    xchamps = xchamps-4 ;
    background(82, 176, 254);
  }

  if (score >= 1000) {
    xobstacle = xobstacle-3;
    xroute = xroute-5;
    xchamps = xchamps-5 ;
    background(29, 153, 254);
  }
  if (score >= 1500) {
    xobstacle = xobstacle-5;
    xroute = xroute-5 ;
    xchamps = xchamps-6 ;
    background(23, 120, 238);
  }

  if (score >= 2000) {
    xobstacle = xobstacle-8;
    xroute = xroute-8;
    xchamps = xchamps-7;
    background(13, 82, 166);
  }

  if (score >= 2500) {
    xobstacle = xobstacle-10;
    xroute = xroute-10 ;
    xchamps = xchamps-8 ;
    background(9, 57, 117);
  } 

  score = score+1; //On incrémente le score.
}