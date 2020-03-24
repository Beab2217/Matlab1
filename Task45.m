figure("Name", "Graphics", "NumberTitle", "off");
a = 1 / 4; b = 1 / 16; m = 8; n = 8; t = -5:0.01:5;
x = cos(t) - a * cos(m * t) + b * sin(n * t);
y = sin(t) + a * sin(m * t) + b * cos(n * t);
subplot(2, 3, [1 3]);
for k = 1:100
    plot(x / k, y / k);
    hold on;
end
subplot(2, 3, 4);
x = linspace(-5, 5, 1000);
y = 1 ./ x + 1 ./ (x - 1) + 1 ./ (x - 2);
plot(x, y);
subplot(2, 3, 5);
y = sqrt(cos(pi * x.^2));
plot(x, y);
subplot(2, 3, 6);
phi = -pi:0.01:pi;
a = 1; n = 4;
x = a + abs(cos(n * phi));
polarplot(x, phi);


