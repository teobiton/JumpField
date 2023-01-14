void perso() {

  // On affiche le défilement du spritesheet du personnage.
  image(sprites[frameCount%sprites.length], 250, ypers); 
  
  // On regarde si une touche est activée d'après la boucle "keyPressed".
  if (etatclavier == 1) { 
  
    //Si le personnage n'a pas encore atteint une hauteur de 375.
    if (ypers != 375) { 
      
      //Il saute.
      ypers = ypers-20; 
    }
    
    //Quand le pers atteint 375.
    if ( ypers ==375) { 
      
      // On valide le "si" suivant pour faire redescendre le pers.
      etatclavier =2; 
    }
  }
  
  // S'il a atteint sa hauteur maximale.
  if (etatclavier == 2) { 
    
    // Et s'il n'est pas arrivé au sol.
    if (ypers != 515){ 
      
      // Il redescend.
      ypers = ypers+20;
      
      // S'il est atteri sur le sol.
      if ( ypers ==515) { 
        
        // On fait en sorte que la boucle s'arrête.
        etatclavier = 0; 
      }
    }
  }
}