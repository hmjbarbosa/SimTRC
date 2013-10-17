clear all;

%% ------------------------------------------------------------------------------%
%% CONSTANTES FISICAS 
c=3e8; % velocidade da luz (m/s)
me=9.11e-31; % massa do eletron (kg)
qe=1.6e-19; % carga fundamental (C)

%% ------------------------------------------------------------------------------%
%% DEFINICAO DA AREA QUE SERA SIMULADA
xi=-0.10; % m
xf=0.25;  % m
yi=-0.02;  % m
yf=0.02;   % m
trc_origem=0.0; % posicao central de placas e bobinas (m)
trc_tela=0.224; % posicao da tela do trc (m)

%% ------------------------------------------------------------------------------%
%% CAMPO ELETRICO
Vp=15;   % tensao entre as placas  (V)
d=3e-3;  % separacao entre as placas (m)
E0=Vp/d; % campo eletrico ideal (V/m)
lp=0.03; % comprimento das placas ideais (m)
xEi=trc_origem-lp/2; % campo ideal comeca a agir (m) 
xEf=trc_origem+lp/2; % campo ideal termina de agir (m) 
disp(['% tensao nas placas(V) = ' num2str(Vp)]);
disp(['% campo E(V/m) = ' num2str(E0)]);
disp(['% E pos_x inicial(m) = ' num2str(xEi)]);
disp(['% E pos_x final(m) = ' num2str(xEf)]);

%% ------------------------------------------------------------------------------%
%% CAMPO MAGNETICO
i0=0.12;     % corrente nas bobinas (A)
beta=10*1e-4;  % beta(x) das bobinas ideais (T/A)
B0=i0*beta; % campo magnetico ideal (T)
lb=0.08;    % comprimento das bobinas ideais (m)
xBi=trc_origem-lb/2; % campo ideal comeca a agir (m)   
xBf=trc_origem+lb/2; % campo ideal termina de agir (m) 
disp(['% corrente(A) = ' num2str(i0)]);
disp(['% campo B(G) = ' num2str(B0*1e4)]);
disp(['% B pos_x inicial(m) = ' num2str(xBi)]);
disp(['% B pos_x final(m) = ' num2str(xBf)]);

%% ------------------------------------------------------------------------------%
%% POSICAO INICIAL
X(1)=xi; X(2)=0; X(3)=0; % como vetor
disp(['% pos0(m) = (' num2str(X(1)) ', ' num2str(X(2)) ', ' num2str(X(3)) ')']);

%% ------------------------------------------------------------------------------%
%% LOOP NA TENSAO ACELERADORA

% Quantos valores diferentes vamos simular
Ntensao=30;
% Qual a tensao inicial
tensao0=500;
% Qual a variacao 
Dtensao=700/Ntensao;

disp(['% Y-tela(cm)   Tensao (V)    v0/c ()']);
for m=1:Ntensao

  X(1)=xi; X(2)=0; X(3)=0;
  clear listX;

  %% ------------------------------------------------------------------------------%
  %% VELOCIDADE INICIAL
  Vac=tensao0+m*Dtensao;   % Tensao aceleradora (V)
  v0=sqrt(2*qe*Vac/me);    % Velocidade inicial (m/s)
  V(1)=v0; V(2)=0; V(3)=0; % como vetor
  
  %% ------------------------------------------------------------------------------%
  %% DISCRETIZACAO NO TEMPO
  % passo de tempo (s)
  % calculado para que a particula ande 0.1 mm
  dt=0.1/(v0*1e3);
  % vamos atualizar o grafico a cada 1 mm
  % quantos passos de tempo precisamos?
  nt1mm=floor(1/(dt*v0*1e3));

  %% ------------------------------------------------------------------------------%
  %% LOOP NO TEMPO
  t=1; nl=0;
  while (t>0)
    
    % campo eletrico
    E(1)=0; E(2)=0; E(3)=0;
    if ( (X(1) >= xEi) && (X(1) <= xEf) )
      E(2)=E0;
    end
    % campo magnetico
    B(1)=0; B(2)=0; B(3)=0;
    if ( (X(1) >= xBi) && (X(1) <= xBf) )
      B(3)=B0;
    end
    
    % forca
    Fe=qe*E; % N
    Fb=qe*cross(V,B); % N
    % aceleracao
    acel=(Fe+Fb)/me; % m/s^2
                      
    % atualiza a posicao
    X = X + dt*V + acel*dt*dt/2;
    
    % atualiza a velocidade
    V= V + dt*acel;
    
    % testa se ainda esta na area do grafico
    if (X(1)<xi || X(1)>trc_tela || X(2)<yi || X(2)>yf)
      break;
    end
    
    % plot
    if mod(t,nt1mm)==0
      % guarda algumas coisas para posterior analise
      nl=nl+1;
      listX(nl,:)=X;
    end
    
    % atualiza o contador de tempo
    t=t+1;
  end
  
  %% ------------------------------------------------------------------------------%
  %% SALVA
  tensaoY(m)=X(2); % posicao Y na tela
  tensaoM(m)=Vac;   % tensao desta particula
  disp([num2str(tensaoY(m)*100) '   ' num2str(tensaoM(m)) '   ' ...
        num2str(v0/c) ]);
  
  %% ------------------------------------------------------------------------------%
  %% FIGURA - TRAJETORIA
  figure(1); clf; 
  plot(listX(:,1)*100,listX(:,2)*100,'-'); % em cm
  axis([xi xf yi yf]*100); grid on;
  rectangle('Position',[xBi, yi, xBf-xBi, yf-yi]*100,...
            'edgecolor','g','linewidth',2,'linestyle','--');
  rectangle('Position',[xEi, yi, xEf-xEi, yf-yi]*100,...
            'edgecolor','r','linewidth',2,'linestyle','-.');
  line([trc_tela, trc_tela]*100, [yi, yf]*100,...
       'color','k','linewidth',2,'linestyle','-');
  xlabel('Posicao X (cm)');
  ylabel('Posicao Y (cm)');
  drawnow;
  
end

%% ------------------------------------------------------------------------------%
%% FIGURA RESOLUCAO EM TENSAOA
% Para ficar mais facil de ver, vamos plotar em centrimetros
figure(2); clf; 
plot(tensaoY*100,tensaoM,'o');
grid on;
xlabel('Posicao Y na tela (cm)');
ylabel('Tensao de aceleracao (V)');
NumTicks = 11;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
%

