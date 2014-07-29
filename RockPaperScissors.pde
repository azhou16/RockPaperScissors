/* @pjs preload="rock.jpg"; */
/* @pjs preload="paper.jpg"; */
/* @pjs preload="scissors.jpg"; */

PImage rock, paper, scissors;
boolean run = true;
int choice; //rock = 1, paper = 2, scissors = 3
boolean pressed = false;

void setup() {
  //set canvas size and color
  size(550, 500);
  background(255);
  rock = loadImage("rock.jpg","jpg");
  paper = loadImage("paper.jpg","jpg");
  scissors = loadImage("scissors.jpg","jpg");
}

void draw() {
  image(rock, 20, 20, width/4, height/4);
  image(paper, 20, 160, width/4, height/4);
  image(scissors, 20, 300, width/4, height/4);
  fill(0, 200, 0);
  rect(55, 450, 140, 35, 5);
  rect(205, 450, 140, 35, 5);
  rect(355, 450, 140, 35, 5);
  fill(0);
  text("AI 1", 113, 473);
  text("AI 2", 263, 473);
  text("AI 3", 413, 473);
  
  if (mouseX > 55 && mouseX < 195 && mouseY > 450 && mouseY < 485){
    fill(0, 255, 0);
    rect(55, 450, 140, 35, 5);
    fill(0);
    text("AI 1", 113, 473);
    
  }
  if (mouseX > 205 && mouseX < 345 && mouseY > 450 && mouseY < 485){
    fill(0, 255, 0);
    rect(205, 450, 140, 35, 5);
    fill(0);
    text("AI 2", 263, 473);
  }
  if (mouseX > 355 && mouseX < 495 && mouseY > 450 && mouseY < 485){
    fill(0, 255, 0);
    rect(355, 450, 140, 35, 5);
    fill(0);
    text("AI 3", 413, 473);
  } 
  
  
  
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
    image(rock, 175, 160, width/4, height/4);
    fill(255);
    noStroke();
    rect(325, 125, 200, 200);
    fill(0);
    text("You win!", 325, 210);
  }
  else if (choice == 2){
//    print("You lose! Try again!");
    image(paper, 175, 160, width/4, height/4);
    fill(255);
    noStroke();
    rect(325, 125, 200, 200);
    fill(0);
    text("You lose!  Try again!", 325, 210);
  }
  else if (choice == 3){
//    print("Draw");
    image(scissors, 175, 160, width/4, height/4);
    fill(255);
    noStroke();
    rect(325, 125, 200, 200);
    fill(0);
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
