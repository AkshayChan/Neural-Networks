function [Yfinal] = hNN_A(X)
%This function helps us implement the neural network for polygon A 
%The weights are defined using the values in the last part
        
W1 = [5.95; 0.05; -1]; % For points (1,6) and (6,6.25)
W2 = [6; -1; 0]; % For points (6,6.25) and (6, 1.25)
W3 = [4.25; -0.5; -1]; % For points (6, 1.25) and (2.5, 3)
W4 = [4; -1; -0.5]; % For points (1,6) and (2.5, 3)
    
Wl2 = [-1;1;1;-1;-1]; % For the second layer
    
[N D] = size(X);
    
Y1 = zeros(1,4); 
Yfinal = ones(N,1) * -1;
    
for i = 1 : N
     
   Y1(1,1) = hNeuron(W1, X(i,:));
   Y1(1,2) = hNeuron(W2, X(i,:));
   Y1(1,3) = hNeuron(W3, X(i,:));
   Y1(1,4) = hNeuron(W4, X(i,:));
   Yfinal(i) = hNeuron(Wl2,Y1); 
end
   
end