// Fonction pour afficher le défilement de la route.
void route() { 

  image(route, xroute, 524);
  image(route, xroute+218, 524);
  image(route, xroute+436, 524);
  image(route, xroute+654, 524);
  image(route, xroute+872, 524);
  image(route, xroute+1090, 524);

  if (xroute <= -218) {
    // On remet l'image à droite quand elle n'apparaît plus sur la fenêtre de jeu.
    xroute = 0; 
  }
}