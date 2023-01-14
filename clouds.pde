void nuages() {
  
  PImage Nuage1;

  if (xnuage>-300) { 
    Nuage1 = loadImage("Nuage_1_HD.png");
    // On affiche le premier nuage
    image(Nuage1, xnuage, nuagedom);
  }

  // Lorsque le premier nuage est sortie de la zone d'affichage
  if (xnuage<-330 ) { 
    // coordonnée Y du nuage prend une valeur entre [50;100]
    nuagedom = random(50, 100); 
    // coordonnée X du nuage
    xnuage = 1150;
  }

  xnuage = xnuage-3;

  PImage Nuage2;
  if (xnuage2 > -300) {
    Nuage2 = loadImage("Nuage_2_HD.png");
    // On affiche le deuxième nuage
    image(Nuage2, xnuage2, nuagedom2); 
  }

  // Lorsque le deuxième nuage est sortie de la zone d'affichage
  if (xnuage2<-330 ) { 
    // coordonnée Y du nuage prend une valeur entre [125;175]
    nuagedom2 = random(125, 175); 
    // coordonnée X du nuage
    xnuage2 = 1150; 
  }
  
  xnuage2 = xnuage2-2;
}