Bacteria [] colony;
void setup() {
  size(500, 500);
  colony = new Bacteria[1000];
  for (int i = 0; i < colony.length; i++) {
    colony[i] = new Bacteria();
  }
}

void draw() {
  for (int i = 0; i < colony.length; i++) {
    colony[i].walk();
    colony[i].show();
  }
}

class Bacteria {
  int myX, myY, myColor;

  Bacteria() {
    myX = width/2;
    myY = height/2;
    myColor = color((int)(Math.random() * 10), (int)(Math.random() * 255) + 20, (int)(Math.random() * 230) + 20);
  }
  void walk() {
    if(mouseX > myX) {
      myX = myX + (int)(Math.random() * 5) - 1;
    }else {
      myX = myX + (int)(Math.random() * 5) - 3;
    }
    if(mouseY > myY) {
     myY = myY + (int)(Math.random() * 5) - 1;
    }else {
     myY = myY + (int)(Math.random() * 5) - 3; 
    }
  }
  void show() {
    fill(myColor);
    ellipse(myX, myY, 10, 10);
  }
}
