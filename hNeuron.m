function [ Y ] = hNeuron(W, X)
%Takes possibly more than one input vector, multiplies it with
%the weights and returns the output vector

[N D] = size(X);
[A B] = size(W);
Y = zeros(1, N);
Z = W(2:A, B);

Y = Z'* X';
Y = Y';

for i = 1:N
    Y(i) = Y(i) + W(1,1); % Adding the bias
    if Y(i)>0;
        Y(i) = 1;
    else
        Y(i) = 0;
    end
end




