void perso() {

  image(sprites[frameCount%sprites.length], 250, ypers); //On affiche le défilement du spritesheet du personnage.


  if (etatclavier == 1) { //On regarde si une touche est activée d'après la boucle "keyPressed".
  
    if (ypers != 375) { //Si le personnage n'a pas encore atteint une hauteur de 375.
    
      ypers = ypers-20; //Il saute.
    }
    
    if ( ypers ==375) { //Quand le pers atteint 375.
    
      etatclavier =2; //On valide le "si" suivant pour faire redescendre le pers.
    }
  }
  
  if (etatclavier == 2) { //S'il a atteint sa hauteur maximale.
    
    if (ypers != 515){ //Et s'il n'est pas arrivé au sol.
    
      ypers = ypers+20; //Il redescend.
      
      if ( ypers ==515) { //S'il est atteri sur le sol.
      
        etatclavier = 0; //On fait en sorte que la boucle s'arrête.
      }
    }
  }
}