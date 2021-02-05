function dudt = HyperLorenzSystVar (~, u, a1,a2,b1,b2,b3,b4, c, d1,d2)


 dudt = zeros (20 ,1) ;

 % u = (x, y, z)

 dudt (1) = a1*u (1) + a2 * u (2) ;
 dudt (2) = b1*u (1) + b2 * u (2) + b3 *u (1)*u (3) + b4 *u (4);
 dudt (3) = -c*u(3)+u(2)*u(1);
 dudt (4) = d1*u(4)+d2*u(1);
 % Variational matrix :
 dudt (5:20) = [a1  ,        a2,      0,      0;
                b1+b3 *u(3) , b2, b3 *u(1), b4;
               u(2)  , u(1) , -c,             0;
               d2  ,          0 ,      0,     d1] ...
                                * [u(5) , u(9) , u(13) , u(17);
                                    u(6) , u(10) , u(14), u(18) ;
                                    u(7) , u(11) , u(15), u(19) 
                                    u(8) , u(12) , u(16), u(20)];

end