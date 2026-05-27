
% vektor a
a = -3:2:5;
b = 10:-2:2;

% skal_prod = a*b

% 2. naloga
A = [1 2 -3 4;
    -1 0 -3/2 8;
    -2 2 2 1;
    0 2 -3 8/5]

% a primer
A(:, 2)

% b primer
vsota_vseh_elementov = sum(A(:))   % ali vsota = sum(A(:));
povprecje = mean(A(:))

% c primer
A1 = (A + 2).^3

% d) Določitev matrike B, njene determinante in največjega absolutnega elementa
I = eye(4); % Identitetna matrika velikosti 4x4
B = A - (17/2) * I;

determinanta_B = det(B)

% Največji element po absolutni vrednosti
max_abs_B = max(abs(B), [], 'all')

% 2. naloga

% a) Risanje grafa funkcije f(x)
x = linspace(-2, pi, 500); % Mreža točk na intervalu [-2, pi]
f = sin(3*x) + x/9;

figure;
plot(x, f);
hold on; % "Zadrži" sliko
grid on;
title('Graf funkcije f(x) = sin(3x) + x/9');
xlabel('x');
ylabel('f(x)');

% Izračun in označitev vrednosti pri x = 1
x1 = 1;
y1 = sin(3*x1) + x1/9;
plot(x1, y1, 'ro', MarkerSize=8); % r (red), o (krog)
hold off;

% b) Anonimna funkcija za povprečje
povprecje = @(a, b) (a + b) / 2;

% Testiranje funkcije
rezultat_povprecja = povprecje(0.5, 6)