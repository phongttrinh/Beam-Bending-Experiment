%Phong Thanh Trinh
E = 200*10^9;
L = 2;
w = 2/100;
I = (w^4)/(12);

x = linspace(0,L,100);


q = 31.6;
y = -q*((1/24).*x.^4 -(1/6).*x.^3 + (1/6).*x.^2)/(E*I);

plot(x,y,'b');

grid on
hold on


q = 63.2;
y = -q*((1/24).*x.^4 - (1/6).*x.^3 + (1/6).*x.^2)/(E*I);
plot(x,y,'r');

q = 94.8;
y = -q*((1/24).*x.^4 - (1/6).*x.^3 + (1/6).*x.^2)/(E*I);
plot(x,y,'y');

q = 126.4;
y = -q*((1/24).*x.^4 - (1/6).*x.^3 + (1/6).*x.^2)/(E*I);
plot(x,y,'m');
xlabel('Beam Length, m')
ylabel('Beam Deflection, m')
title('Beam Bending E = 200GPa, I = 1.33e-08m^4')
legend('31.6N/m','63.2N/m','94.8N/m','126.4N/m')

ylim([-5*10^-3 3*10^-3])
hold off