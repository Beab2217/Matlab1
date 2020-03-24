figure("Name", "Graphics", "NumberTitle", "off");
subplot(1, 2,1);
x = linspace(-100, 100, 100);
a = 2; b = -7; c = 3; d = -4;
F = @(x, y) x*y + a*x.^3 + b*x.^2 + c*x + d;
ezplot(F, [-20, 20, -1000, 1000]);

subplot(1, 2, 2);
phi = -pi:0.01:pi;
r = (a * sin(3 * phi))./(sin(2 * phi));
polarplot(r, phi);
