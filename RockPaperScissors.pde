/* @pjs preload="rock.jpg"; */
/* @pjs preload="paper.jpg"; */
/* @pjs preload="scissors.jpg"; */

PImage rock, paper, scissors;
boolean run = true;
int choice; //rock = 1, paper = 2, scissors = 3
boolean pressed = false;

void setup() {
  //set canvas size and color
  size(700, 550);
  background(255);
  rock = loadImage("rock.jpg","jpg");
  paper = loadImage("paper.jpg","jpg");
  scissors = loadImage("scissors.jpg","jpg");
}

void draw() {
  image(rock, 20, 20, rock.width/4, rock.height/4);
  image(paper, 20, 170, paper.width/4, paper.height/4);
  image(scissors, 20, 320, scissors.width/4, scissors.height/4);
  fill(0, 200, 0);
  rect(55, 470, 140, 35, 5);
  rect(205, 470, 140, 35, 5);
  rect(355, 470, 140, 35, 5);
  fill(0);
  text("AI 1", 113, 493);
  text("AI 2", 263, 493);
  text("AI 3", 413, 493);
  
  if (mouseX > 55 && mouseX < 195 && mouseY > 470 && mouseY < 505){
    fill(0, 255, 0);
    rect(55, 470, 140, 35, 5);
    fill(0);
    text("AI 1", 113, 493);
    
  }
  if (mouseX > 205 && mouseX < 345 && mouseY > 470 && mouseY < 505){
    fill(0, 255, 0);
    rect(205, 470, 140, 35, 5);
    fill(0);
    text("AI 2", 263, 493);
  }
  if (mouseX > 355 && mouseX < 495 && mouseY > 470 && mouseY < 505){
    fill(0, 255, 0);
    rect(355, 470, 140, 35, 5);
    fill(0);
    text("AI 3", 413, 493);
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
  
  else if (mouseX > 20 && mouseX < 145 && mouseY > 170 && mouseY < 308 && mousePressed){
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
  
  else if (mouseX > 20 && mouseX < 145 && mouseY > 320 && mouseY < 458 && mousePressed){
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
    image(rock, 175, 170, rock.width/4, rock.height/4);
    fill(255);
    noStroke();
    rect(325, 125, 200, 230);
    fill(0);
    text("You win!", 325, 230);
  }
  else if (choice == 2){
//    print("You lose! Try again!");
    image(paper, 175, 170, paper.width/4, paper.height/4);
    fill(255);
    noStroke();
    rect(325, 125, 200, 230);
    fill(0);
    text("You lose!  Try again!", 325, 230);
  }
  else if (choice == 3){
//    print("Draw");
    image(scissors, 175, 170, scissors.width/4, scissors.height/4);
    fill(255);
    noStroke();
    rect(325, 125, 200, 230);
    fill(0);
    text("Draw", 335, 230);
  }
}
