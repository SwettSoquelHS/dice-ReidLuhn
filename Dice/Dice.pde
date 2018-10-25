Die Die1;
Die Die2;
Die Die3;
Die Die4;
Die Die5;
Die Die6;
Die Die7;
Die Die8;
Die Die9;
int total;
int highest;

void setup(){
  //no loop means that draw is only called once
  //OR if you ever call redraw()
  background(255);
  size(500, 400);
  Die1 = new Die(width / 2, height / 2);
  Die2 = new Die(width / 2 + 75, height / 2);
  Die3 = new Die(width / 2 + 75, height / 2 - 75);
  Die4 = new Die(width / 2 + 75, height / 2 + 75);
  Die5 = new Die(width / 2 - 75, height / 2);
  Die6 = new Die(width / 2 - 75, height / 2 + 75);
  Die7 = new Die(width / 2 - 75, height / 2 - 75);
  Die8 = new Die(width / 2, height / 2 + 75);
  Die9 = new Die(width / 2, height / 2 - 75);
  noLoop();
}

void draw(){
  //your code here
  background(255);
  Die1.show();
  Die2.show();
  Die3.show();
  Die4.show();
  Die5.show();
  Die6.show();
  Die7.show();
  Die8.show();
  Die9.show();
  text("Total: ", 50, 50);
  text("Highest: ", 50, 80);
  if (total >= highest){
    highest = total;
  }
  text(total, 85, 50);
  text(highest, 100, 80);
  total = 0;
}

void mousePressed(){
  //No real work for you to do here
  //calling redraw will do the necessary work 
  //to redraw your processing script
 
  redraw();
}


//Dice: Models a single 6 sided dice cube
//Each instance should randomly assign itself a value from 1 to 6
class Die {
	//variable declarations for your Die instances here
	int x_pos;
  int y_pos;
  int num;
	//constructor
	Die(int x, int y){
		//variable initializations here
    x_pos = x;
    y_pos = y;
	}
	
	//Simulate a roll of a die
	void roll(){
		//your code here, 
		//should randomly assign a value from 1 to 6
    num = (int)((Math.random() * 6) + 1);
	}
	
	/*
	  Use the randomly assigned roll value to draw the face of a die
	*/
	void show(){
		//your code here
    roll();
    pushMatrix();
    translate(x_pos, y_pos);
    fill(250);
    rect(-25, -25, 50, 50);
    fill(0);
    if (num == 1){
      ellipse(0, 0, 10, 10);
      total = total++;
    }
    if (num == 2){
      ellipse(-15, -15, 10, 10);
      ellipse(15, 15, 10, 10);
      total = total += 2;
    }
    if (num == 3){
      ellipse(-15, -15, 10, 10);
      ellipse(15, 15, 10, 10);
      ellipse(0, 0, 10, 10);
      total = total += 3;
    }
    if (num == 4){
      ellipse(-15, -15, 10, 10);
      ellipse(15, 15, 10, 10);
      ellipse(15, -15, 10, 10);
      ellipse(-15, 15, 10, 10);
      total = total += 4;
    }
    if (num == 5){
      ellipse(-15, -15, 10, 10);
      ellipse(15, 15, 10, 10);
      ellipse(15, -15, 10, 10);
      ellipse(-15, 15, 10, 10);
      ellipse(0, 0, 10, 10);
      total = total += 5;
    }
    if (num == 6){
      ellipse(-15, -15, 10, 10);
      ellipse(15, 15, 10, 10);
      ellipse(15, -15, 10, 10);
      ellipse(-15, 15, 10, 10);
      ellipse(-15, 0, 10, 10);
      ellipse(15, 0, 10, 10);
      total = total += 6;
    }
    popMatrix();
	}
}
