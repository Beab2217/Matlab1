figure("Name", "Graphics", "NumberTitle", "off");
subplot(1, 3, 1);
x = linspace(-pi*1000, pi*1000, 1000);
y = log(sin(pi\x));
plot(x, y);
title("Example 1");
subplot(1, 3, 2);
y = sin(x)./x;
polarplot(x, y);
title("Example 2");
subplot(1, 3, 3);
fplot(@humps,[-2,2]);
hold on;
title("Example 3");
xx = fminbnd(@humps, 0, 1, optimset('Display', 'off'));
plot(xx, humps(xx), 'r*');
max = -10000;
for x=-2:0.01:2
    if humps(x)>=20 && humps(x)<=40
        plot(x, humps(x), 'r.');
    end
end
for x=-2:0.0001:2
    if humps(x)>humps(max)
        max = x;
    end
end
plot(max, humps(max), 'r.'); 