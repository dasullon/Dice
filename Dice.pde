Die james= new Die (50,100);
Die falcao = new Die (150,100);
int strokeWeightMod=2;
int dieRadius= 5;

void setup()
{
	size(300,300);
	noLoop();
	background(255);
    strokeWeight(strokeWeightMod);
}
void draw()
{
	background(0);
	int sum= james.faceValue + falcao.faceValue;
	james.show();
    james.roll();
    falcao.show();
    falcao.roll();
   	textSize(24);
   	text ("sum"+" : "+ sum,100,200);
    
	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY,faceValue;
	Die(int x, int y) //constructor
	{
		myX=x;
		myY=y;

	}
	void roll()
	{
	 faceValue= (int)(Math.random()*6)+1;
	}
	void show()
	{
		rect(myX,myY,50,50);
		if (faceValue==1){
			ellipse(myX+25, myY+25, dieRadius, dieRadius);
		}
		if ( faceValue==2) {
			ellipse(myX+10,myY+10,dieRadius,dieRadius);
			ellipse(myX+40,myY+40,dieRadius,dieRadius);
		}
		if ( faceValue==3) {
			ellipse(myX+10,myY+10,dieRadius,dieRadius);
			ellipse(myX+25,myY+25,dieRadius,dieRadius);
			ellipse(myX+40,myY+40,dieRadius,dieRadius);
		}
		if ( faceValue==4) {
			ellipse(myX+10,myY+10,dieRadius,dieRadius);
			ellipse(myX+40,myY+10,dieRadius,dieRadius);
			ellipse(myX+10,myY+40,dieRadius,dieRadius);
			ellipse(myX+40,myY+40,dieRadius,dieRadius);
		}
		if ( faceValue==5) {
			ellipse(myX+10,myY+10,dieRadius,dieRadius);
			ellipse(myX+40,myY+10,dieRadius,dieRadius);
			ellipse(myX+10,myY+40,dieRadius,dieRadius);
			ellipse(myX+40,myY+40,dieRadius,dieRadius);
			ellipse(myX+25,myY+25,dieRadius,dieRadius);
		}
		if ( faceValue==6) {
			ellipse(myX+10,myY+10,dieRadius,dieRadius);
			ellipse(myX+10,myY+25,dieRadius,dieRadius);
			ellipse(myX+10,myY+40,dieRadius,dieRadius);
			ellipse(myX+40,myY+10,dieRadius,dieRadius);
			ellipse(myX+40,myY+25,dieRadius,dieRadius);
			ellipse(myX+40,myY+40,dieRadius,dieRadius);
		}
		
		}

	}
	


 