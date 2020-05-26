clearvars
close all
clc

circulo = 361;

seg = input('Tipo de seguidor:\n 1 - Plano\n 2 - com Rolete\nEscolha [1]: ');
if isempty(seg)
    seg = 2;
end
switch seg
    case 1      % seguidor de translação de face plana
        seguidor = 'Seguidor de translação de face plana';
        disp(seguidor)
        L = input('   Deslocamento total do seguidor (L = 10 mm): L = ');
        if isempty(L)
          L = 10;
        end
        R0 = input('   Raio de base (R0 = 40 mm): R0 = ');
        if isempty(R0)
          R0 = 40;
        end
    case 2      % seguidor de translação com rolete
        seguidor = 'Seguidor oscilante com rolete';
        disp(seguidor)
        as = (0.020*180) / pi * 10;
        bs = (0.01*180) / pi * 10;
        disp(as)
        disp(bs)
        disp("Faz a conta assim X = (altura * 1800) / pi, dai coloca esse valor de X em L")
        disp("")
        L = input('   Deslocamento total do seguidor (L = 10 grau): L = ');
        if isempty(L)
          L = bs;
        end
        L = L * pi / 180;
        R0 = input('   Raio de base (R0 = 50 mm): R0 = ');
        if isempty(R0)
          R0 = 50;
        end
        disp("Para as opções em baixo pode só apertar Enter mesmo::")
        Rf = input('   Raio do rolete (Rf = 5 mm): Rf = ');
        if isempty(Rf)
          Rf = 5;
        end
        C1 = input('   C1 [115 mm] = ');
        if isempty(C1)
          C1 = 115;
        end
        C2 = input('   C2 [40 mm] = ');
        if isempty(C2)
          C2 = 40;
        end
        C3 = input('   C3 [110 mm] = ');
        if isempty(C3)
          C3 = 110;
        end
        B0 = input('   B0 [0 grau] = ');
        if isempty(B0)
          B0 = 0;
        end
        B0 = B0 *pi / 180;    % rad
end

% intervalos
A0 = 0;
A4 = 2 * pi;
disp("Subida de 0 até A1, Descanso de A1 até A2, Descida de A2 até A3, Descanso de A3 até o final") 
A1 = input('\nIntervalos:\nA1 [90 grau] = ');
if isempty(A1)
    A1 = 90;
end
A1rad = A1 * pi/ 180;
A2 = input('A2 [180 grau] = ');
if isempty(A2)
    A2 = 180;
end
A2rad = A2 * pi / 180;
A3 = input('A3 [270 grau] = ');
if isempty(A3)
    A3 = 270;
end
A3rad = A3 * pi / 180;

for i = 1 : circulo
    A(i) = (2 * pi * (i - 1)) / (circulo - 1);
    if A(i) <= A1rad
        avanco = 'Cicloidal';
        f(i) = (L / pi) * (((pi * A(i)) /  A1rad) - ((1 / 2) * sin((2 * pi * A(i)) / A1rad)));
        fL(i) = L / A1rad * (1 - cos(2 * pi * A(i) / A1rad));
        fLL(i) = 2 * pi * L / (A1rad^2) * sin(2 * pi * A(i) / A1rad);
        fLLL(i) = -(((4*pi*L)/A1rad^4) * ((A1rad * sin(2*pi*A(i)/A1rad)) + (pi * A(i) * cos(2*pi*A(i)/A1rad))));
    elseif A(i) <= A2rad
        f(i) = L;
        fL(i) = 0;
        fLL(i) = 0;
        fLLL(i) = 0;
    elseif A(i) <= A3rad
        retorno = 'Cicloidal';
        f(i) = (L / pi) * ((pi * (A(i) - A3rad) / (A2rad - A3rad)) - ((1 / 2) * sin(2 * pi * (A(i) - A3rad) / (A2rad - A3rad))));
        fL(i) = L / (A2rad - A3rad) * (1 - cos(2 * pi * (A(i) - A3rad) / (A2rad - A3rad)));
        fLL(i) = 2 * pi * L / ((A2rad - A3rad)^2) * sin(2 * pi * (A(i) - A3rad) / (A2rad - A3rad));
        aux = A2rad - A3rad;
        thet = (2*pi*(A(i) - A3rad))/(aux);
        termo1 = 4 * pi * L * sin(thet);
        termo2 = 2 * pi * L * ((((2 * pi * (A(i) - A3rad)) / ((aux)^2)) - ((2 * pi)/(A2rad - A3rad))) * cos(thet));
        fLLL(i) = (termo1/aux^3) + (termo2/aux^2);
    else
        f(i) = 0;
        fL(i) = 0;
        fLL(i) = 0;
        fLLL(i) = 0;
    end
end

% Perfil
for i = 1 : circulo
    switch seg
        case 1      % plana
            ATAN(i) = ATAN2(fL(i), -(R0 + f(i)));
            G(i) = -A(i) + ATAN2(fL(i), -(R0 + f(i)));
            R(i) = sqrt(fL(i)^2 + (R0 + f(i))^2);
        case 2      % com rolete
            B(i) = B0 + f(i);
            D(i) = atan((C3 * (1 + fL(i)) * cos(B(i)) - C1) / (C3 * (1 + fL(i)) * sin(B(i)) + C2));
            X(i) = C1 - C3 * cos(B(i)) + Rf * sin(D(i));
            Y(i) = C2 + C3 * sin(B(i)) - Rf * cos(D(i));
            G(i) = pi / 2 - A(i) + ATAN2(Y(i), X(i));
            R(i) = sqrt(X(i)^2 + Y(i)^2);
    end
end

% GRÁFICOS
funcao_desloc = strcat('Avanço:  ',avanco,'  Retorno:  ',retorno);
figure('Name',funcao_desloc)
if seguidor == 2 % deconversão pra radianos
    fpr = f * 180 / pi;
    Lpr = L * 180 / pi;
else
    fpr = f;
    Lpr = L;
end

subplot(4, 4, 1)
plot(A * 180 / pi, fpr, 'LineWidth', 2)
xlabel('A (^o)');
ylabel('f(A)')
xlim([0 360])
set(gca, 'XTick', 0:45:360)
grid on
hold on
plot(0, 0, 'rx', A1, Lpr, 'rx', A2, Lpr, 'rx', A3, 0, 'rx', 360, 0, 'rx', 'LineWidth',2)
title('Deslocamento')

subplot(4, 4, 5)
plot(A * 180 / pi, fL, 'LineWidth', 2)
xlabel('A (^o)');
ylabel('f''(A)')
xlim([0 360])
set(gca,'XTick',0:45:360)
grid on
title('Velocidade')

subplot(4, 4, 9)
plot(A * 180 / pi, fLL, 'LineWidth', 2)
xlabel('A (^o)');
ylabel('f''''(A)')
xlim([0 360])
grid on
title('Aceleração')

subplot(4, 4, 13)
plot(A * 180 / pi, fLLL, 'LineWidth', 2)
xlabel('A (^o)');
ylabel('f''''(A)')
xlim([0 360])
grid on
title('Tranco (J)')

subplot(4, 4, [2 3 4 6 7 8 10 11 12])
polar(-G, -R, '-b')
set(gca,'XTick',0:45:360)
title('Perfil da came')

% Dados
clc
fprintf('========================================================\n')
fprintf('Seguidor: %s\n', seguidor)
fprintf('Raio de base: %6.2f mm\n', R0)
fprintf('Deslocamento total do seguidor: %6.2f mm\n', L)
fprintf('Intervalos\n')
fprintf('Avanço:  %10s    %6.2f  <  A  <=  %6.2f graus\n', avanco, A0, A1)
fprintf('Plano:        Plano    %6.2f  <  A  <=  %6.2f graus\n', A1, A2)
fprintf('Retorno: %10s    %6.2f  <  A  <=  %6.2f graus\n', retorno, A2, A3)
fprintf('Plano:        Plano    %6.2f  <  A  <=  %6.2f graus\n', A3, A4 * 180 / pi)
fprintf('========================================================\n')
%%

%fprintf('G\tR\tA\n')
%for i = 1 : circulo
%    fprintf('%6.2f\t%6.2f\t%6.2f\n', G(i) * 180 / pi, R(i), A(i) * 180 / pi)
%end
