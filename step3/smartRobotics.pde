
Nodes nn;

float inputs[][]={
  {2,3,5},
  {1,4,3},
  {2,7,4},
  {5,6,1},
  {3,2,4}, 
  
  
};

float pridictions[] = new float[5];
int index = 0;

float target[]={10,8,13,12,9};

String message [] = new String [200];
int mIndex = 0;
int over = 0;
int run = 0;
int lastId= 0;
int count = 0;
int messagelength = 0;
boolean recive = false;
boolean blink = true;


Input val1;
Input val2;
Input val3;
Button send;


void setup(){
  size(600,500);
  nn = new Nodes(0.01,5);
  
  for(int i = 0; i< message.length;i++){
   message[i]=""; 
  }
  
   val1 = new Input("val1",0,120,210,150,35,false,false); 
 val2 = new Input("val2",1,120,260,150,35,false,false); 
 val3 = new Input("val3",2,120,310,150,35,false,false); 
 
 send = new Button("send",20,410,150,35);
 
  
}
void draw(){
  background(0);
  for(int i = 0;i< 5;i++){
   nn.trainModel(inputs[i],target[i]); 
    
  }
 textSize(18);
 fill(217,180,20);
 for(int i = 0; i< pridictions.length;i++){
   text(pridictions[i], 50+(i*100),80);
 }
 
     val1.display();
     val2.display();
     val3.display();
     send.Draw();
  
}

void mousePressed(){
if(send.MouseIsOver()){
 float one = float(message[0]);
 float two = float(message[1]);
 float three = float(message[2]);
 
 println(one+"  "+ two+"   "+ three);
 float p[]={one,two,three};
  float predict = nn.res(p);
  println(predict);
}
}
void keyPressed(){
 if (keyCode == TAB) {
      mIndex ++;
    } else if (keyCode == UP && mIndex> 0) {
      mIndex--;
    } 
   // println(mIndex); 
  
}
void keyTyped(){
 if( recive== true ){
  if(lastId != mIndex){count = 0;lastId= mIndex;run = 0;}
  // If the return key is pressed, save the String and clear it
  if (key == '\n' ) {  count = 0;recive = false;} else {
    // Otherwise, concatenate the String
    // Each character typed by the user is added to the end of the String variable.
    if(count < 60 && key != UP && key != DOWN && key != BACKSPACE){
       messagelength = message[mIndex].length();
     message[mIndex] =  message[mIndex] + key;
    count++;}
  }
if(key == BACKSPACE &&  message[mIndex].length() > 0){
      if( messagelength > 0){
       message[mIndex] =  message[mIndex].substring(0, message[mIndex].length()-1); }
      if(count > 0){ count-=1;}

     
} 
}
}
