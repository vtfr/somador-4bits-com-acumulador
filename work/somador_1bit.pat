
-- description generated by Pat driver

--			date     : Fri Oct 20 18:55:00 2017
--			revision : v109

--			sequence : somador_1bit

-- input / output list :
in       a B;;
in       b B;;
in       cin B;;
out      s B;;
out      cout B;;
in       vdd B;;
in       vss B;;

begin

-- Pattern description :

--                        a b c  s  c v v  
--                            i     o d s  
--                            n     u d s  
--                                  t      


-- Beware : unprocessed patterns

<          0 ps>        : 0 0 0 ?0 ?0 1 0 ;
<          1 ps>        : 0 0 1 ?1 ?0 1 0 ;
<          2 ps>        : 0 1 0 ?1 ?0 1 0 ;
<          3 ps>        : 0 1 1 ?0 ?1 1 0 ;
<          4 ps>        : 1 0 0 ?1 ?0 1 0 ;
<          5 ps>        : 1 0 1 ?0 ?1 1 0 ;
<          6 ps>        : 1 1 0 ?0 ?1 1 0 ;
<          7 ps>        : 1 1 1 ?1 ?1 1 0 ;

end;