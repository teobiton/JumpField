//Fonction pour afficher le défilement des champs.
void champs() { 

  image(champs, xchamps, 361);
  image(champs, xchamps+218, 361);
  image(champs, xchamps+436, 361);
  image(champs, xchamps+654, 361);
  image(champs, xchamps+872, 361);
  image(champs, xchamps+1090, 361);

  if (xchamps <= -218) { 
    //Fonction pour afficher le défilement des champs.
    xchamps = 0; x
  }
}