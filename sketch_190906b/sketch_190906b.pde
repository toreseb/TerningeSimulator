int Sider = 6;
float Terninger = 10;
float SizeX = 500;
float SizeY = 5000;
float Hojde  = 1*500/Terninger*Sider/3; // hedder hojden da den ikke kender ø
float i = 0;


void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  int [] Sojler = new int [Sider+1];
  for (int kast=1; kast<Terninger+1; kast++) {
    println("kast"+kast);
    int t= int(random(1, Sider+1));
    for (int i=1; i<Sojler.length; i++) {
      if (t==i) {
        Sojler[i] += Hojde;        // her er problemet
      }
    }
  }
  for (int i=0; i<Sojler.length; i++) {
    fill(255/Sider*i);
    rect(500/Sider*(i-1),500,500/Sider,-Sojler[i]);
    /*
    fill(10);
    textSize(300/Sider);
    println(i);
    text(Sojler[i], 500/Sider*(i-1), 500-Sojler[i]);
    Jeg prøvede at en tekst til at stå over søjlerne, men jeg kan ikke få dem til at havde den rigtige værdi.
    Jeg ved godt hvorfor, jeg ved bare ikke hvordan jeg skulle fikse det. Der er når jeg tillæger Hojde til Sojler[i]
    */
    
  }
  noLoop();
}
