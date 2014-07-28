/* @pjs preload="rock.jpg"; */
/* @pjs preload="paper.jpg"; */
/* @pjs preload="scissors.jpg"; */

PImage rock, paper, scissors;
boolean run = true;
int choice; //rock = 1, paper = 2, scissors = 3
boolean pressed = false;

void setup() {
  //set canvas size and color
  size(550, 450);
  background(255);
  rock = loadImage("rock.jpg","jpg");
  paper = loadImage("paper.jpg","jpg");
  scissors = loadImage("scissors.jpg","jpg");
}

void draw() {
  image(rock, 20, 20, width/4, height/4);
  image(paper, 20, 160, width/4, height/4);
  image(scissors, 20, 300, width/4, height/4);
  if (mouseX > 20 && mouseX < 145 && mouseY > 20 && mouseY < 158 && mousePressed){
    if (!pressed){
      choice = 1;
      fill(0);
      text("TEST", 200, 200);
      check();
      pressed = true;
    }
    else{
      pressed = false;
    }
  }
  
  else if (mouseX > 20 && mouseX < 145 && mouseY > 160 && mouseY < 298 && mousePressed){
    if (!pressed){
    choice = 2;
    run = false;
    check();
    pressed = true;
    }
    else{
      pressed = false;
    }
  }
  
  else if (mouseX > 20 && mouseX < 145 && mouseY > 300 && mouseY < 438 && mousePressed){
    if (!pressed){
      choice = 3;
      run = false;
      check();
      pressed = true;
    }
    else{
      pressed = false;
    }
  }
}

void check() {
  if (choice == 1){
//    print("You win!");
    background(255);
    fill(0);
    image(rock, 175, 160, width/4, height/4);
    text("You win!", 325, 210);
  }
  else if (choice == 2){
//    print("You lose! Try again!");
    background(255);
    fill(0);
    image(paper, 175, 160, width/4, height/4);
    text("You lose!  Try again!", 325, 210);
  }
  else if (choice == 3){
//    print("Draw");
    background(255);
    fill(0);
    image(scissors, 175, 160, width/4, height/4);
    text("Draw", 335, 210);
  }
//  background(255);
//  fill(0);
//  text("Play again? Y/N", 200, 200);
//  rerun();
}

void rerun(){
  if (keyPressed && (key == 'y' || key == 'Y')){
    print("y");
    run = true;
  }
  else if (keyPressed && (key == 'n' || key == 'N')){
    exit();
  }
  else{
    rerun();
  }
}
