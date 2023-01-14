void champs() { //Fonction pour afficher le défilement des champs.

  image(champs, xchamps, 361);
  image(champs, xchamps+218, 361);
  image(champs, xchamps+436, 361);
  image(champs, xchamps+654, 361);
  image(champs, xchamps+872, 361);
  image(champs, xchamps+1090, 361);

  if (xchamps <= -218) { 
    xchamps = 0; //On remet l'image à droite quand elle n'apparaît plus sur la fenêtre de jeu.
  }
}