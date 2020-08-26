
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

void setup(){
  size(600,300);
  nn = new Nodes(0.01,5);
  
}
void draw(){
  background(0);
  for(int i = 0;i< 5;i++){
   nn.trainModel(inputs[i],target[i]); 
    
  }
 textSize(18);
 fill(217,180,20);
 for(int i = 0; i< pridictions.length;i++){
   text(pridictions[i], 20+(i*100),80);
 }
  
}
