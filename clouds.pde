void nuages() {
  
  PImage Nuage1;
  if (xnuage>-300) { 
    Nuage1 = loadImage("Nuage_1_HD.png");
    image(Nuage1, xnuage, nuagedom); // On affiche le premier nuage
  }
  if (xnuage<-330 ) { // Lorsque le premier nuage est sortie de la zone d'affichage
    nuagedom = random(50, 100); // coordonnée Y du nuage prend une valeur entre [50;100]
    xnuage = 1150; // coordonnée X du nuage
  }
  xnuage = xnuage-3;

  PImage Nuage2;
  if (xnuage2 > -300) {
    Nuage2 = loadImage("Nuage_2_HD.png");
    image(Nuage2, xnuage2, nuagedom2); // On affiche le deuxième nuage
  }
  if (xnuage2<-330 ) { // Lorsque le deuxième nuage est sortie de la zone d'affichage
    nuagedom2 = random(125, 175); // coordonnée Y du nuage prend une valeur entre [125;175]
    xnuage2 = 1150; // coordonnée X du nuage
  }
  xnuage2 = xnuage2-2;
}