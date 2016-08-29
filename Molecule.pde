abstract class Atom {
  int bonds;
  float radius;
  color col;
  char main;
  Atom[] atoms;

  void display() {
    fill(col);
    sphere(radius);
    int num;
    num = 0;
    if (atoms != null) {
      for (int i = 0; i < atoms.length; i++) {
        num += atoms[i].bonds;
      }
    }
    if (num == 1) {
      pushMatrix();
      translate(0, max(atoms[0].radius, radius), 0);
      atoms[0].display();
      popMatrix();
    }
    if (num == 2) {
      if (bonds == 0) {
        pushMatrix();
        translate(0, max(atoms[0].radius, radius), 0);
        atoms[0].display();
        popMatrix();

        pushMatrix();
        rotateZ(PI);
        translate(0, max(atoms[1].radius, radius), 0);
        atoms[1].display();
        popMatrix();
      } else if (bonds == 1) {
        if (atoms[0].bonds == 1) {
          pushMatrix();
          rotateZ(PI/3);
          translate(0, max(atoms[0].radius, radius), 0);
          atoms[0].display();
          popMatrix();

          pushMatrix();
          rotateZ(-PI/3);
          translate(0, max(atoms[1].radius, radius), 0);
          atoms[1].display();
          popMatrix();
        } else {
          pushMatrix();
          translate(0, max(atoms[0].radius, radius), 0);
          atoms[0].display();
          popMatrix();
        }
      } else if (bonds == 2) {
        pushMatrix();
        rotateZ(109.5/360*PI);
        translate(0, max(atoms[0].radius, radius), 0);
        atoms[0].display();
        popMatrix();

        pushMatrix();
        rotateZ(-109.5/360*PI);
        translate(0, max(atoms[1].radius, radius), 0);
        atoms[1].display();
        popMatrix();
      }
    }
    if (num == 3) {
      if (bonds == 1) {
        if (atoms[0].bonds == 1) {
          if (atoms[1].bonds == 1) {
            pushMatrix();
            rotateZ(70.5/180*PI);
            translate(0, max(atoms[0].radius, radius), 0);
            atoms[0].display();
            popMatrix();

            pushMatrix();
            rotateY(2*PI/3);
            rotateZ(70.5/180*PI);
            translate(0, max(atoms[1].radius, radius), 0);
            atoms[1].display();
            popMatrix();

            pushMatrix();
            rotateY(-2*PI/3);
            rotateZ(70.5/180*PI);
            translate(0, max(atoms[2].radius, radius), 0);
            atoms[2].display();
            popMatrix();
          } else {
            println(1);
            pushMatrix();
            rotateZ(PI/3);
            translate(0, max(atoms[0].radius, radius), 0);
            atoms[0].display();
            popMatrix();

            pushMatrix();
            rotateZ(-PI/3);
            translate(0, max(atoms[1].radius, radius), 0);
            atoms[1].display();
            popMatrix();
          }
        } else if (atoms[0].bonds == 2) {
          pushMatrix();
          rotateZ(PI/3);
          translate(0, max(atoms[0].radius, radius), 0);
          atoms[0].display();
          popMatrix();

          pushMatrix();
          rotateZ(-PI/3);
          translate(0, max(atoms[1].radius, radius), 0);
          atoms[1].display();
          popMatrix();
        } else {
          pushMatrix();
          translate(0, max(atoms[0].radius, radius), 0);
          atoms[0].display();
          popMatrix();
        }
      }
    }
    if (num == 4) {
      if (bonds == 0) {
        if (atoms[0].bonds == 1) {
          pushMatrix();
          translate(0, max(atoms[0].radius, radius), 0);
          atoms[0].display();
          popMatrix();
          if (atoms[1].bonds == 1) {
            pushMatrix();
            rotateZ(109.5/180*PI);
            translate(0, max(atoms[1].radius, radius), 0);
            atoms[1].display();
            popMatrix();
            if (atoms[2].bonds == 1) {
              pushMatrix();
              rotateY(2*PI/3);
              rotateZ(109.5/180*PI);
              translate(0, max(atoms[2].radius, radius), 0);
              atoms[2].display();
              popMatrix();
              if (atoms[3].bonds == 1) {
                pushMatrix();
                rotateY(-2*PI/3);
                rotateZ(109.5/180*PI);
                translate(0, max(atoms[3].radius, radius), 0);
                atoms[3].display();
                popMatrix();
              }
            } else if (atoms[2].bonds == 2) {
              pushMatrix();
              rotateY(PI);
              rotateZ(109.5/180*PI);
              translate(0, max(atoms[2].radius, radius), 0);
              atoms[2].display();
              popMatrix();
            }
          } else if (atoms[1].bonds == 2) {
            pushMatrix();
            rotateY(PI/3);
            rotateZ(109.5/180*PI);
            translate(0, max(atoms[1].radius, radius), 0);
            atoms[1].display();
            popMatrix();

            pushMatrix();
            rotateY(-2*PI/3);
            rotateZ(109.5/180*PI);
            translate(0, max(atoms[2].radius, radius), 0);
            atoms[2].display();
            popMatrix();
          } else if (atoms[1].bonds == 3) {
            pushMatrix();
            rotateZ(PI);
            translate(0, max(atoms[1].radius, radius), 0);
            atoms[1].display();
            popMatrix();
          }
        } else if (atoms[0].bonds == 2) {
          pushMatrix();
          rotateZ(109.5/360*PI);
          translate(0, max(atoms[0].radius, radius), 0);
          atoms[0].display();
          popMatrix();
          if (atoms[1].bonds == 1) {
            pushMatrix();
            rotateY(2*PI/3);
            rotateZ(109.5/180*PI);
            translate(0, max(atoms[1].radius, radius), 0);
            atoms[1].display();
            popMatrix();

            pushMatrix();
            rotateY(-2*PI/3);
            rotateZ(109.5/180*PI);
            translate(0, max(atoms[2].radius, radius), 0);
            atoms[2].display();
            popMatrix();
          } else if (atoms[1].bonds == 2) {
            pushMatrix();
            rotateY(PI);
            rotateZ(250.5/360*PI);
            translate(0, max(atoms[1].radius, radius), 0);
            atoms[1].display();
            popMatrix();
          }
        } else if (atoms[0].bonds == 3) {
          pushMatrix();
          rotateY(PI/3);
          rotateZ(109.5/270*PI);
          translate(0, max(atoms[0].radius, radius), 0);
          atoms[0].display();
          popMatrix();

          pushMatrix();
          rotateY(-2*PI/3);
          rotateZ(160.5/270*PI);
          translate(0, max(atoms[1].radius, radius), 0);
          atoms[1].display();
          popMatrix();
        }
      } else if (bonds == 1) {
        if (atoms[0].bonds == 1) {
          pushMatrix();
          rotateZ(PI/2);
          translate(0, max(atoms[0].radius, radius), 0);
          atoms[0].display();
          popMatrix();
          if (atoms[1].bonds == 1) {
            pushMatrix();
            rotateY(2*PI/3);
            rotateZ(PI/2);
            translate(0, max(atoms[1].radius, radius), 0);
            atoms[1].display();
            popMatrix();
            if (atoms[2].bonds == 1) {
              pushMatrix();
              rotateY(-2*PI/3);
              rotateZ(PI/2);
              translate(0, max(atoms[2].radius, radius), 0);
              atoms[2].display();
              popMatrix();

              pushMatrix();
              translate(0, max(atoms[3].radius, radius), 0);
              atoms[3].display();
              popMatrix();
            } else if (atoms[2].bonds == 2) {
              pushMatrix();
              rotateY(-2*PI/3);
              rotateZ(PI/4);
              translate(0, max(atoms[2].radius, radius), 0);
              atoms[2].display();
              popMatrix();
            }
          } else if (atoms[1].bonds == 2) {
            pushMatrix();
            rotateY(PI);
            rotateZ(PI/2);
            translate(0, max(atoms[1].radius, radius), 0);
            atoms[1].display();
            popMatrix();

            pushMatrix();
            rotateY(PI);
            translate(0, max(atoms[2].radius, radius), 0);
            atoms[2].display();
            popMatrix();
          } else if (atoms[1].bonds == 3) {
            pushMatrix();
            rotateY(PI);
            rotateZ(PI/3);
            translate(0, max(atoms[1].radius, radius), 0);
            atoms[1].display();
            popMatrix();
          }
        } else if (atoms[0].bonds == 2) {
          if (atoms[1].bonds == 1) {
            pushMatrix();
            rotateZ(70.5/180*PI);
            translate(0, max(atoms[0].radius, radius), 0);
            atoms[0].display();
            popMatrix();

            pushMatrix();
            rotateY(2*PI/3);
            rotateZ(70.5/180*PI);
            translate(0, max(atoms[1].radius, radius), 0);
            atoms[1].display();
            popMatrix();

            pushMatrix();
            rotateY(-2*PI/3);
            rotateZ(70.5/180*PI);
            translate(0, max(atoms[2].radius, radius), 0);
            atoms[2].display();
            popMatrix();
          } else {
            pushMatrix();
            rotateZ(PI/3);
            translate(0, max(atoms[0].radius, radius), 0);
            atoms[0].display();
            popMatrix();

            pushMatrix();
            rotateY(PI);
            rotateZ(PI/3);
            translate(0, max(atoms[1].radius, radius), 0);
            atoms[1].display();
          }
        } else if (atoms[0].bonds == 3) {
          pushMatrix();
          rotateZ(PI/3);
          translate(0, max(atoms[0].radius, radius), 0);
          atoms[0].display();
          popMatrix();

          pushMatrix();
          rotateY(PI);
          rotateZ(PI/3);
          translate(0, max(atoms[1].radius, radius), 0);
          atoms[1].display();
          popMatrix();
        }
      }
    }
  }
}

class H extends Atom {
  H() {
    col = color(196);
    radius = 12;
    bonds = 1;
    main = 'H';
    atoms = null;
  }

  H(Atom a) {
    col = color(196);
    radius = 12;
    bonds = 1;
    main = 'H';
    atoms = new Atom[1];
    atoms[0] = a;
  }
}

class C extends Atom {
  C() {
    col = color(32);
    radius = 17;
    bonds = 1;
    main = 'C';
    atoms = null;
  }

  C(Atom a, Atom b, Atom c, Atom d) {
    col = color(32);
    radius = 17;
    bonds = 0;
    main = 'C';
    atoms = new Atom[4];
    atoms[0] = a;
    atoms[1] = b;
    atoms[2] = c;
    atoms[3] = d;
  }

  C(int n) {
    col = color(32);
    radius = 17;
    bonds = n;
    main = 'C';
    atoms = null;
  }

  C(int n, Atom a) {
    col = color(32);
    radius = 17;
    bonds = n;
    main = 'C';
    atoms = new Atom[1];
    atoms[0] = a;
  }

  C(int n, Atom a, Atom b) {
    col = color(32);
    radius = 17;
    bonds = n;
    main = 'C';
    atoms = new Atom[2];
    atoms[0] = a;
    atoms[1] = b;
  }

  C(int n, Atom a, Atom b, Atom c) {
    col = color(32);
    radius = 17;
    bonds = n;
    main = 'C';
    atoms = new Atom[3];
    atoms[0] = a;
    atoms[1] = b;
    atoms[2] = c;
  }
}

class O extends Atom {
  O() {
    col = color(255, 0, 0);
    radius = 15.5;
    bonds = 1;
    main = 'O';
    atoms = null;
  }

  O(Atom a, Atom b, Atom c, Atom d) {
    col = color(255, 0, 0);
    radius = 15.5;
    bonds = 0;
    main = 'O';
    atoms = new Atom[4];
    atoms[0] = a;
    atoms[1] = b;
    atoms[2] = c;
    atoms[3] = d;
  }

  O(int n) {
    col = color(255, 0, 0);
    radius = 15.5;
    bonds = n;
    main = 'O';
    atoms = null;
  }

  O(int n, Atom a) {
    col = color(255, 0, 0);
    radius = 15.5;
    bonds = n;
    main = 'O';
    atoms = new Atom[1];
    atoms[0] = a;
  }

  O(int n, Atom a, Atom b) {
    col = color(255, 0, 0);
    radius = 15.5;
    bonds = n;
    main = 'O';
    atoms = new Atom[2];
    atoms[0] = a;
    atoms[1] = b;
  }

  O(int n, Atom a, Atom b, Atom c) {
    col = color(255, 0, 0);
    radius = 15.5;
    bonds = n;
    main = 'O';
    atoms = new Atom[3];
    atoms[0] = a;
    atoms[1] = b;
    atoms[2] = c;
  }
}

class N extends Atom {
  N() {
    col = color(0, 0, 255);
    radius = 15.5;
    bonds = 1;
    main = 'N';
    atoms = null;
  }

  N(Atom a, Atom b, Atom c, Atom d) {
    col = color(0, 0, 255);
    radius = 15.5;
    bonds = 0;
    main = 'N';
    atoms = new Atom[4];
    atoms[0] = a;
    atoms[1] = b;
    atoms[2] = c;
    atoms[3] = d;
  }

  N(int n) {
    col = color(0, 0, 255);
    radius = 15.5;
    bonds = n;
    main = 'N';
    atoms = null;
  }

  N(int n, Atom a) {
    col = color(0, 0, 255);
    radius = 15.5;
    bonds = n;
    main = 'N';
    atoms = new Atom[1];
    atoms[0] = a;
  }

  N(int n, Atom a, Atom b) {
    col = color(0, 0, 255);
    radius = 15.5;
    bonds = n;
    main = 'N';
    atoms = new Atom[2];
    atoms[0] = a;
    atoms[1] = b;
  }

  N(int n, Atom a, Atom b, Atom c) {
    col = color(0, 0, 255);
    radius = 15.5;
    bonds = n;
    main = 'N';
    atoms = new Atom[3];
    atoms[0] = a;
    atoms[1] = b;
    atoms[2] = c;
  }
}

class P extends Atom {
  P() {
    col = color(255, 128, 0);
    radius = 19.5;
    bonds = 1;
    main = 'P';
    atoms = null;
  }

  P(Atom a, Atom b, Atom c, Atom d) {
    col = color(255, 128, 0);
    radius = 19.5;
    bonds = 0;
    main = 'P';
    atoms = new Atom[4];
    atoms[0] = a;
    atoms[1] = b;
    atoms[2] = c;
    atoms[3] = d;
  }

  P(int n) {
    col = color(255, 128, 0);
    radius = 19.5;
    bonds = n;
    main = 'P';
    atoms = null;
  }

  P(int n, Atom a) {
    col = color(255, 128, 0);
    radius = 19.5;
    bonds = n;
    main = 'P';
    atoms = new Atom[1];
    atoms[0] = a;
  }

  P(int n, Atom a, Atom b) {
    col = color(255, 128, 0);
    radius = 19.5;
    bonds = n;
    main = 'P';
    atoms = new Atom[2];
    atoms[0] = a;
    atoms[1] = b;
  }

  P(int n, Atom a, Atom b, Atom c) {
    col = color(255, 128, 0);
    radius = 19.5;
    bonds = n;
    main = 'P';
    atoms = new Atom[3];
    atoms[0] = a;
    atoms[1] = b;
    atoms[2] = c;
  }
}

class Empty extends Atom {
  Empty() {
    col = color(0);
    radius = 0;
    bonds = 1;
    main = 'E';
    atoms = null;
  }
}