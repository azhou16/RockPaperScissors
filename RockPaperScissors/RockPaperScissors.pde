/* @pjs preload="rock.jpg"; */
/* @pjs preload="paper.jpg"; */
/* @pjs preload="scissors.jpg"; */

PImage rock, paper, scissors;
boolean run = true;
int choice; //rock = 1, paper = 2, scissors = 3

void setup() {
  //set canvas size and color
  size(550,450);
  background(255);
  rock = loadImage("rock.jpg","jpg");
  paper = loadImage("paper.jpg","jpg");
  scissors = loadImage("scissors.jpg","jpg");
}

void draw() {
  if (run){
    background(255);
    image(rock, 20, 20, width/4, height/4);
    image(paper, 20, 160, width/4, height/4);
    image(scissors, 20, 300, width/4, height/4);
    if (mouseX > 20 && mouseX < 145 && mouseY > 20 && mouseY < 158 && mousePressed){
      choice = 1;
      noLoop();
      check();
    }
    else if (mouseX > 20 && mouseX < 145 && mouseY > 160 && mouseY < 298 && mousePressed){
      choice = 2;
      run = false;
      check();
    }
    else if (mouseX > 20 && mouseX < 145 && mouseY > 300 && mouseY < 438 && mousePressed){
      choice = 3;
      run = false;
      check();
    }
  }
}

void check() {
  if (choice == 1){
    delay(1000);
    print("You win!");
    background(255);
    fill(0);
    image(rock, 100, 150, width/4, height/4);
    text("You win!", 245, 200);
    run = true;
    loop();
  }
  else if (choice == 2){
    print("You lose! Try again!");
    background(255);
    fill(0);
    image(paper, 100, 150, width/4, height/4);
    text("You lose!  Try again!", 215, 200);
    run = true;
  }
  else if (choice == 3){
    print("Draw");
    background(255);
    fill(0);
    image(scissors, 100, 150, width/4, height/4);
    text("Draw", 265, 200);
    run = true;
  }
  background(255);
  fill(0);
  text("Play again? Y/N", 200, 200);
  rerun();
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
