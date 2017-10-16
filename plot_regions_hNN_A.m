x = linspace(0,9,100);
y = linspace(0,9,100);

points = zeros(10000,2);

counter = 1;
for i = 1 : 100
    for j = 1: 100
         points(counter,1) = x(i);
         points(counter,2) = y(j);
         counter = counter +1;
    end
end

idx = hNN_A(points);
hold on
xlabel('x axis');
ylabel('y axis');
title('hNN_A Decision Region')
scatter(points(idx==0,1),points(idx==0,2),'r');
scatter(points(idx ==1,1),points(idx==1,2),'g');

