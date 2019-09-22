int Sider = 5;
float Terninger = 1000;
float SizeX = 500;
float SizeY = 5000;
float Hojde  = 1*500/Terninger*Sider/3; // hedder hojden da den ikke kender ø
float i = 0;

void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  float [] Sojler = new float [Sider+1];
  for (int kast=1; kast<Terninger+1; kast++) {
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
    
    fill(10);
    textSize(300/Sider);
    println(i);
    text(round(Sojler[i]/Hojde), 500/Sider*(i-1), 500-Sojler[i]);
    
    
  }
  noLoop();
}
