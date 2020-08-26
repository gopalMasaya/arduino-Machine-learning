
int bool(float data){
  
 if(data > 0){return 1;}
 else return -1;
}

float compress(float data){
  return data/10;
}


class Nodes{
 float lr =0;
 int nodes =0;
 float weights []= new float[10];
 
 Nodes(float lr, int nodes){
   
   this.lr = lr;
   this.nodes = nodes;
   
   for (int i = 0; i< this.nodes;i++){
    weights[i] = random(-1,1); 
   }
 }
  
 
  float res(float arr[]){
    
    float sum = 0;
    float output = 0;
    
    for(int i = 0; i< 3; i++){
      sum+= arr[i]* weights[i];
    }
    
    output = compress(sum);
    
    pridictions[index] = output;
    index++;
    if(index == this.nodes){
      index =0;
    }
    
    return output;
    
  }
  
 void trainModel(float inputs[], float target){
   
   float prediction = res(inputs);
   float error = target - prediction;
   
   for (int i = 0 ; i< 3; i++){
    weights[i] += inputs[i]* error* this.lr; 
     
   }
   
   error = 0;
   
 }
}
