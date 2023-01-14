
int nbimages = 3; //On ajoute une variable correspondant au nombre d'images sur le spritesheet.
PImage course; //On ajoute une variable image "course"
PImage[] sprites = new PImage[nbimages]; //On définit "score" comme un tableau, et on lui ajoute comme valeur le nombre d'image sur le spritesheet.

//On ajoute ensuite plusieurs variables images
PImage arret;
PImage champs;
PImage route;
PImage Obstacle1;

PFont police; //On ajoute une variable Font, qui correspond à une police d'écriture. On la nomme donc "police".


//On ajoute ensuite des variables correspondant aux coordonnées de certains éléments
int xchamps = 0;
int xroute;
float xobstacle = 1000;
float ypers = 515;
int xnuage, xnuage2;
float nuagedom, nuagedom2;

//On défini encore des variables qui nous serviront dans le programme.
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
  size(900, 611); //On définit la taille de la fenêtre de jeu
  frameRate (20); //On définit le nombre d'image par seconde
  imageMode(CENTER); //Cette commande sert à positionner nos images à partir du centre de la fenêtre de jeu

  course = loadImage("Sprite_2.png"); //On charge une image du dossier data pour la metrre dans la variable "course".
  arret = loadImage("Profil_3.png"); //On charge une autre image du dossier data pour la metrre dans la variable "arret".
  champs = loadImage("Champs_HD.png");
  route = loadImage("Route_HD.png");

  W = course.width/nbimages; //On coupe la largeur de l'image "course" en 3 pour ne conserver que chaque position.
  H = course.height/1; //On coupe la hauteur de l'image "course" en 1 (cette ligne n'est pas essentielle, mais permet de mieux comprendre la commande du spritesheet).

  //On découpe les zones des sprites
  for (i=0; i<sprites.length; i++) //Pour i allant de 0 à la longueur des sprites, en incrémentant i.
  {
    x = i%nbimages*W; //On donne à x (abscisse du début de chaque sprite) la valeur à prendre.
    y = i/nbimages*H; //De même pour y.
    sprites[i] = course.get(x, y, W, H); //On donne à "sprites" les propriétés de la variable image "course".
  }

  smooth(8);

  police = loadFont("PixelEmulator_48.vlw" ); //On charge notre police d'écriture dans la variable "police".
  textFont(police, 32); //On définit la police d'écriture que notre programme devra utiliser.
}

void draw()
{
  if (p==0) //Si p=0, on entre dans le menu du jeu.
  {
    background(115, 215, 253); //On affiche une couleur de fond. Ces valeurs correspondent au bleu.

    //Pour le décor, on affiche chaque image plusieurs fois pour recouvrir toute la zone voulue.
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

    fill(90, 120, 160); //On définit la couleur d'écriture (la police a été définie avant).
    text("Avoid obstacles", 230, 50); //On affiche le texte correspondant aux règles du jeu.
    text("to survive", 280, 150);
    text("Click to play", 240, 250);
    image(arret, 250, ypers); //On affiche notre personnage à l'arrêt.
  }


  if (t==1) {
    if (mousePressed) //Le programme teste si la souris est enfoncée.
    {
      p=1; //Dans ce cas, "p" prend la valeur 1.
    }



    if (p==1) //Si p=1, ou si la souris a été enfoncée, on entre dans la boucle.
    {
      //Le programme va alors executer les fonctions suivantes
      paliers();
      nuages();
      champs();
      route();
      perso();
      obstacle();

      text(score, 780, 50); //On affiche le score, qui est un texte dont la couleur et la police sont déja définies plus haut.
    }
  }

  if (t==0) {
    image(Obstacle1, xobstacle, 530, 80, 60);
    text("Game Over, click to replay", 100, 200);
    if (mousePressed) //Le programme teste si la souris est enfoncée.
    {
      p=1; //Dans ce cas, "p" prend la valeur 1.
      t=1;
      score=0;
      xobstacle = 1000;
    }
  }
}

void keyPressed() { //Une touche est activée

  if (ypers == 515) { //On verifie que le pers est bien au niveau du sol
    etatclavier = 1; //On affecte alors la valeur 1 à etatclavier
  }
}