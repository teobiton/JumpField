
// On ajoute une variable correspondant au nombre d'images sur le spritesheet.
int nbimages = 3; 
// On ajoute une variable image "course"
PImage course;
// On définit "score" comme un tableau,
// et on lui ajoute comme valeur le nombre d'image sur le spritesheet.
PImage[] sprites = new PImage[nbimages]; 

// On ajoute ensuite plusieurs variables images
PImage arret;
PImage champs;
PImage route;
PImage Obstacle1;

// On ajoute une variable Font, qui correspond à une police d'écriture. 
// On la nomme donc "police".
PFont police; 


// On ajoute ensuite des variables correspondant aux coordonnées de certains éléments
int xchamps = 0;
int xroute;
float xobstacle = 1000;
float ypers = 515;
int xnuage, xnuage2;
float nuagedom, nuagedom2;

// On défini encore des variables qui nous serviront dans le programme.
int etatclavier = 0;

int score = 0;

float obstacle = 1;

int c=0;
int p=0;

int W;
int H;

int i;

int x;
int y;

int t = 1;


void setup()
{
  // On définit la taille de la fenêtre de jeu
  size(900, 611);
  // On définit le nombre d'image par seconde
  frameRate (20); 
  // Cette commande sert à positionner nos images à partir du centre de la fenêtre de jeu
  imageMode(CENTER); 

  // On charge une image du dossier data pour la metrre dans la variable "course".
  course = loadImage("Sprite_2.png"); 
  // On charge une autre image du dossier data pour la metrre dans la variable "arret".
  arret = loadImage("Profil_3.png"); 
  champs = loadImage("Champs_HD.png");
  route = loadImage("Route_HD.png");
  
  // On coupe la largeur de l'image "course" en 3 pour ne conserver que chaque position.
  W = course.width/nbimages; 
  // On coupe la hauteur de l'image "course" en 1 (cette ligne n'est pas essentielle,
  // mais permet de mieux comprendre la commande du spritesheet).
  H = course.height/1; 

  // On découpe les zones des sprites
  // Pour i allant de 0 à la longueur des sprites, en incrémentant i.
  for (i=0; i<sprites.length; i++) 
  {
    x = i%nbimages*W; x
    y = i/nbimages*H;
    // On donne à "sprites" les propriétés de la variable image "course".
    sprites[i] = course.get(x, y, W, H); 
  }

  smooth(8);

  // On charge notre police d'écriture dans la variable "police".
  police = loadFont("PixelEmulator_48.vlw" ); 
  // On définit la police d'écriture que notre programme devra utiliser.
  textFont(police, 32); 
}

void draw()
{
  // Si p=0, on entre dans le menu du jeu.
  if (p==0) 
  {
    // On affiche une couleur de fond. Ces valeurs correspondent au bleu.
    background(115, 215, 253); 

    // Pour le décor, on affiche chaque image plusieurs fois pour recouvrir toute la zone voulue.
    image(champs, xchamps, 361);
    image(champs, xchamps+218, 361);
    image(champs, xchamps+436, 361);
    image(champs, xchamps+654, 361);
    image(champs, xchamps+872, 361);
    image(champs, xchamps+1090, 361);

    image(route, xroute, 524);
    image(route, xroute+218, 524);
    image(route, xroute+436, 524);
    image(route, xroute+654, 524);
    image(route, xroute+872, 524);
    image(route, xroute+1090, 524);

    // On définit la couleur d'écriture (la police a été définie avant).
    fill(90, 120, 160);
    // On affiche le texte correspondant aux règles du jeu.
    text("Avoid obstacles", 230, 50); 
    text("to survive", 280, 150);
    text("Click to play", 240, 250);
    // On affiche notre personnage à l'arrêt.
    image(arret, 250, ypers); 
  }


  if (t==1) {
    // Le programme teste si la souris est enfoncée.
    if (mousePressed) 
    {
      p=1;
    }

    // Si p=1, ou si la souris a été enfoncée, on entre dans la boucle.
    if (p==1) 
    {
      // Le programme va alors executer les fonctions suivantes
      paliers();
      nuages();
      champs();
      route();
      perso();
      obstacle();

      // On affiche le score, qui est un texte dont la couleur 
      // et la police sont déja définies plus haut.
      text(score, 780, 50);
    }
  }

  if (t==0) {
    image(Obstacle1, xobstacle, 530, 80, 60);
    text("Game Over, click to replay", 100, 200);
    // Le programme teste si la souris est enfoncée.
    if (mousePressed) 
    {
      p=1;
      t=1;
      score=0;
      xobstacle = 1000;
    }
  }
}

// Une touche est activée
void keyPressed() { 
  
  // On verifie que le pers est bien au niveau du sol
  if (ypers == 515) {
    // On affecte alors la valeur 1 à etatclavier
    etatclavier = 1; 
  }
}