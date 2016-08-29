Atom molecule =
//Water
/*
new O(
  new H(),
  new H(),
  new Empty(),
  new Empty()
);
*/

//Methane
/*
new C(
  new H(),
  new H(),
  new H(),
  new H()
);
*/

//Phospholipid
new C(new H(), new H(), new H(),
  new N(1,
    new C(1,
      new H(),
      new H(),
      new H()),
    new C(1,
      new H(),
      new H(),
      new H()),
    new C(1,
      new H(),
      new H(),
      new C(1,
        new H(),
        new H(),
        new O(1,
          new Empty(),
          new Empty(),
          new P(1,
            new O(2),
            new O(),
            new O(1,
              new Empty(),
              new Empty(),
              new C(1,
                new C(1,
                  new H(),
                  new O(1,
                    new Empty(),
                    new Empty(),
                    new C(1, //tail
                      new O(2),
                      new C(1,  //1
                        new C(1,  //2
                          new H(),
                          new H(),
                          new C(1,  //3
                            new H(),
                            new H(),
                            new C(1,  //4
                              new H(),
                              new H(),
                              new C(1,  //5
                                new H(),
                                new H(),
                                new C(1,  //6
                                  new H(),
                                  new H(),
                                  new C(1,  //7
                                    new H(),
                                    new H(),
                                    new C(1,  //8
                                      new C(2,  //9
                                        new C(1,  //10
                                          new H(),
                                          new H(),
                                          new C(1,  //11
                                            new H(),
                                            new H(),
                                            new C(1,  //12
                                              new H(),
                                              new H(),
                                              new C(1,  //13
                                                new H(),
                                                new H(),
                                                new C(1,  //14
                                                  new H(),
                                                  new H(),
                                                  new C(1,  //15
                                                    new H(),
                                                    new H(),
                                                    new C(1,  //16
                                                      new H(),
                                                      new H(),
                                                      new C(1,  //17
                                                        new H(),
                                                        new H(),
                                                        new H()
                                                      )
                                                    )
                                                  )
                                                )
                                              )
                                            )
                                          )
                                        ),
                                        new H()
                                      ),
                                      new H()
                                    )
                                  )
                                )
                              )
                            )
                          )
                        ),
                        new H(),
                        new H()
                      )
                    )
                  ),
                  new C(1,
                    new H(),
                    new O(1,
                      new Empty(),
                      new C(1, //tail
                        new O(2),
                        new C(1,  //1
                          new H(),
                          new C(1,  //2
                            new H(),
                            new H(),
                            new C(1,  //3
                              new H(),
                              new H(),
                              new C(1,  //4
                                new H(),
                                new H(),
                                new C(1,  //5
                                  new H(),
                                  new H(),
                                  new C(1,  //6
                                    new H(),
                                    new H(),
                                    new C(1,  //7
                                      new H(),
                                      new H(),
                                      new C(1,  //8
                                        new H(),
                                        new H(),
                                        new C(1,  //9
                                          new H(),
                                          new H(),
                                          new C(1,  //10
                                            new H(),
                                            new H(),
                                            new C(1,  //11
                                              new H(),
                                              new H(),
                                              new C(1,  //12
                                                new H(),
                                                new H(),
                                                new C(1,  //13
                                                  new H(),
                                                  new H(),
                                                  new C(1,  //14
                                                    new H(),
                                                    new H(),
                                                    new C(1,  //15
                                                      new H(),
                                                      new H(),
                                                      new C(1,  //16
                                                        new H(),
                                                        new H(),
                                                        new C(1,  //17
                                                          new H(),
                                                          new H(),
                                                          new H()
                                                        )
                                                      )
                                                    )
                                                  )
                                                )
                                              )
                                            )
                                          )
                                        )
                                      )
                                    )
                                  )
                                )
                              )
                            )
                          ),
                          new H()
                        )
                      ),
                      new Empty()
                    ),
                    new H()
                  )
                ),
                new H(), new H()
              )
            )
          )
        )
      )
    )
  )
);
float transX = 0, transY = 0, zoom = 0;
float rotX = 0, rotY = 0, rotZ = PI;

void settings() {
  fullScreen(P3D);
  transX = displayWidth/2;
  transY = displayHeight/2;
}

void draw() {
  background(255);
  noStroke();
  ambientLight(102, 102, 102);
  lightSpecular(204, 204, 204);
  directionalLight(102, 102, 102, 0, 0, -1);
  specular(255, 255, 255);
  shininess(5.0);
  translate(transX, transY, zoom);
  rotateX(rotX);
  rotateY(rotY);
  rotateZ(rotZ);
  molecule.display();
  if (mousePressed) {
    rotX += 2*PI*(pmouseY-mouseY)/width;
    rotY -= 2*PI*(pmouseX-mouseX)/width;
  }
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      rotX += 0.1;
    } else if (key == 's' || key == 'S') {
      rotX -= 0.1;
    } else if (key == 'd' || key == 'D') {
      rotY += 0.1;
    } else if (key == 'a' || key == 'A') {
      rotY -= 0.1;
    }
    if (key == '+') {
      zoom += 25;
    } else if (key == '-') {
      zoom -= 25;
    }
    if (keyCode == UP) {
      transY += 10;
    } else if (keyCode == DOWN) {
      transY -= 10;
    } else if (keyCode == LEFT) {
      transX += 10;
    } else if (keyCode == RIGHT) {
      transX -= 10;
    }
  }
}