function [Y] = sNeuron(W, X)
% Neuron for the sigmoid function

[N D] = size(X);
[A B] = size(W);
Y = zeros(1, N);
Z = W(2:A, B);

Y = Z'* X';
Y = Y';

for i = 1:N
    Y(i) = Y(i) + W(1,1); % Adding the bias
    Y(i) = 1/(1 + exp(-Y(i)));
end

