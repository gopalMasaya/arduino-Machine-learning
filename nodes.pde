
int bool(float data){
  
 if(data > 0){return 1;}
 else return -1;
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
  
 
  int res(float arr[]){
    
    int sum = 0;
    int output = 0;
    
    for(int i = 0; i< this.nodes; i++){
      sum+= arr[i]* weights[i];
    }
    
    output = bool(sum);
    return output;
    
  }
  
 void trainModel(float inputs[], int target){
   
   int prediction = res(inputs);
   int error = target - prediction;
   
   for (int i = 0 ; i< this.nodes; i++){
    weights[i] = inputs[i]* error* this.lr; 
     
   }
   
   error = 0;
   
 }
}
