 clear ; clc ;

tEnd = 2000; 
 tStep = 0.1; nFactors = tEnd / tStep ; LEsTol = 1e-2;

 acc = 1e-6; RelTol = acc ; AbsTol = acc ;
 odeSolverOptions = odeset ('RelTol', RelTol , 'AbsTol', AbsTol );


a1 = -1; a2 = 1; b1 = 3; b2 = 0.4; b3 = -1;
b4 = 0.1; c = 0.1; d1=0.05; d2= -0.9;
initPoint = [1.618*1e-4,3.14*1e-4,1,0.618*1e-4]; 
% 时间已过 6167.115930 秒。tEnd = 2000; 
%     0.0541    0.0155   -0.0015   -0.7181


% initPoint = [1.618*1e-4,3.14*1e-4,3.5,0.618*1e-4]; 
% 时间已过 25649.374605 秒。% tEnd = 5000; 
%     0.0528    0.0118    0.0001   -0.7147
    
   
% a1 = -1; a2 = 1; b1 = 3; b2 = -0.25; b3 = -1;
% b4 = 0.1; c = 0.1; d1=-0.01; d2= -0.9;
% initPoint = [1.618*1e-4,3.14*1e-4,2.75,0.618*1e-4]; 
% 时间已过 4170.520345 秒。%  tEnd = 2000; 
%     0.0177    0.0111   -0.0003   -1.3885


% initPoint = [1.618*1e-4,3.14*1e-4,7,0.618*1e-4]; 
% 时间已过 28101.017467 秒。% tEnd = 5000; 
%     0.0192    0.0104   -0.0003   -1.3893


 tic
 [~, LEs, svdIterations ] = computeLEs(@(t, u)HyperLorenzSystVar(t, u, a1,a2,b1,b2,b3,b4, c, d1,d2),initPoint, tStep,nFactors, LEsTol, odeSolverOptions);
 toc

 disp ( LEs (end , :));