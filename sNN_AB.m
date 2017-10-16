function [Y] = hNN_AB(X)
%This function helps us implement the sigmoid neural network for polygon A and
%polygon B
%The weights are defined using the values in the last part and calculated
%for B

W1 = [5.95; 0.05; -1]*1000; % For points (1,6) and (6,6.25)
W2 = [6; -1; 0]*1000; % For points (6,6.25) and (6, 1.25)
W3 = [4.25; -0.5; -1]*1000; % For points (6, 1.25) and (2.5, 3)
W4 = [4; -1; -0.5]*1000; % For points (1,6) and (2.5, 3)

W5 = [3.375; -1; 0]*1000; % For points (3.375, 4.375) and (3.375, 3.875)
W6 = [3.875; 0; -1]*1000; % For points (3.375, 3.875) and (4.375, 3.875)
W7 = [4.375; -1; 0]*1000; % For points (4.375, 4.375) and (4.375, 3.875)
W8 = [4.375; 0; -1]*1000; % For points (3.375, 4.375) and (4.375, 4.375)
    
% For the second layer
Wl21 = [-1;1;1;-1;-1;0;0;0;0]*1000;
Wl22 = [-1;0;0;0;0;-1;-1;1;1]*1000;
    
    [N D] = size(X);
    
    Y1 = zeros(1,8); 
    Y = ones(N,1) * -1;
    
    for i = 1 : N
     
       Y1(1,1) = sNeuron(W1, X(i,:));
       Y1(1,2) = sNeuron(W2, X(i,:));
       Y1(1,3) = sNeuron(W3, X(i,:));
       Y1(1,4) = sNeuron(W4, X(i,:));
       Y1(1,5) = sNeuron(W5, X(i,:));
       Y1(1,6) = sNeuron(W6, X(i,:));
       Y1(1,7) = sNeuron(W7, X(i,:));
       Y1(1,8) = sNeuron(W8, X(i,:));
       output1 = sNeuron(Wl21,Y1);
       output2 = sNeuron(Wl22,Y1);
       Y(i) = sNeuron([-2; 3;-4]*2000,[output1 output2]);
       
    
    end

end