
-- description generated by Pat driver

--			date     : Fri Oct 20 12:29:45 2017
--			revision : v109

--			sequence : mux_4bits

-- input / output list :
in       a (3 downto 0) B;;
in       b (3 downto 0) B;;
in       ctrl B;;
out      s (3 downto 0) B;;
in       vdd B;;
in       vss B;;

begin

-- Pattern description :

--                        a    b    c  s    v v  
--                                  t       d s  
--                                  r       d s  
--                                  l            


-- Beware : unprocessed patterns

<          0 ps>        : 0000 0000 0 ?0000 1 0 ;
<          1 ps>        : 0000 0000 1 ?0000 1 0 ;
<          2 ps>        : 0000 0001 0 ?0000 1 0 ;
<          3 ps>        : 0000 0001 1 ?0001 1 0 ;
<          4 ps>        : 0000 0010 0 ?0000 1 0 ;
<          5 ps>        : 0000 0010 1 ?0010 1 0 ;
<          6 ps>        : 0000 0011 0 ?0000 1 0 ;
<          7 ps>        : 0000 0011 1 ?0011 1 0 ;
<          8 ps>        : 0000 0100 0 ?0000 1 0 ;
<          9 ps>        : 0000 0100 1 ?0100 1 0 ;
<         10 ps>        : 0000 0101 0 ?0000 1 0 ;
<         11 ps>        : 0000 0101 1 ?0101 1 0 ;
<         12 ps>        : 0000 0110 0 ?0000 1 0 ;
<         13 ps>        : 0000 0110 1 ?0110 1 0 ;
<         14 ps>        : 0000 0111 0 ?0000 1 0 ;
<         15 ps>        : 0000 0111 1 ?0111 1 0 ;
<         16 ps>        : 0000 1000 0 ?0000 1 0 ;
<         17 ps>        : 0000 1000 1 ?1000 1 0 ;
<         18 ps>        : 0000 1001 0 ?0000 1 0 ;
<         19 ps>        : 0000 1001 1 ?1001 1 0 ;
<         20 ps>        : 0000 1010 0 ?0000 1 0 ;
<         21 ps>        : 0000 1010 1 ?1010 1 0 ;
<         22 ps>        : 0000 1011 0 ?0000 1 0 ;
<         23 ps>        : 0000 1011 1 ?1011 1 0 ;
<         24 ps>        : 0000 1100 0 ?0000 1 0 ;
<         25 ps>        : 0000 1100 1 ?1100 1 0 ;
<         26 ps>        : 0000 1101 0 ?0000 1 0 ;
<         27 ps>        : 0000 1101 1 ?1101 1 0 ;
<         28 ps>        : 0000 1110 0 ?0000 1 0 ;
<         29 ps>        : 0000 1110 1 ?1110 1 0 ;
<         30 ps>        : 0000 1111 0 ?0000 1 0 ;
<         31 ps>        : 0000 1111 1 ?1111 1 0 ;
<         32 ps>        : 0001 0000 0 ?0001 1 0 ;
<         33 ps>        : 0001 0000 1 ?0000 1 0 ;
<         34 ps>        : 0001 0001 0 ?0001 1 0 ;
<         35 ps>        : 0001 0001 1 ?0001 1 0 ;
<         36 ps>        : 0001 0010 0 ?0001 1 0 ;
<         37 ps>        : 0001 0010 1 ?0010 1 0 ;
<         38 ps>        : 0001 0011 0 ?0001 1 0 ;
<         39 ps>        : 0001 0011 1 ?0011 1 0 ;
<         40 ps>        : 0001 0100 0 ?0001 1 0 ;
<         41 ps>        : 0001 0100 1 ?0100 1 0 ;
<         42 ps>        : 0001 0101 0 ?0001 1 0 ;
<         43 ps>        : 0001 0101 1 ?0101 1 0 ;
<         44 ps>        : 0001 0110 0 ?0001 1 0 ;
<         45 ps>        : 0001 0110 1 ?0110 1 0 ;
<         46 ps>        : 0001 0111 0 ?0001 1 0 ;
<         47 ps>        : 0001 0111 1 ?0111 1 0 ;
<         48 ps>        : 0001 1000 0 ?0001 1 0 ;
<         49 ps>        : 0001 1000 1 ?1000 1 0 ;
<         50 ps>        : 0001 1001 0 ?0001 1 0 ;
<         51 ps>        : 0001 1001 1 ?1001 1 0 ;
<         52 ps>        : 0001 1010 0 ?0001 1 0 ;
<         53 ps>        : 0001 1010 1 ?1010 1 0 ;
<         54 ps>        : 0001 1011 0 ?0001 1 0 ;
<         55 ps>        : 0001 1011 1 ?1011 1 0 ;
<         56 ps>        : 0001 1100 0 ?0001 1 0 ;
<         57 ps>        : 0001 1100 1 ?1100 1 0 ;
<         58 ps>        : 0001 1101 0 ?0001 1 0 ;
<         59 ps>        : 0001 1101 1 ?1101 1 0 ;
<         60 ps>        : 0001 1110 0 ?0001 1 0 ;
<         61 ps>        : 0001 1110 1 ?1110 1 0 ;
<         62 ps>        : 0001 1111 0 ?0001 1 0 ;
<         63 ps>        : 0001 1111 1 ?1111 1 0 ;
<         64 ps>        : 0010 0000 0 ?0010 1 0 ;
<         65 ps>        : 0010 0000 1 ?0000 1 0 ;
<         66 ps>        : 0010 0001 0 ?0010 1 0 ;
<         67 ps>        : 0010 0001 1 ?0001 1 0 ;
<         68 ps>        : 0010 0010 0 ?0010 1 0 ;
<         69 ps>        : 0010 0010 1 ?0010 1 0 ;
<         70 ps>        : 0010 0011 0 ?0010 1 0 ;
<         71 ps>        : 0010 0011 1 ?0011 1 0 ;
<         72 ps>        : 0010 0100 0 ?0010 1 0 ;
<         73 ps>        : 0010 0100 1 ?0100 1 0 ;
<         74 ps>        : 0010 0101 0 ?0010 1 0 ;
<         75 ps>        : 0010 0101 1 ?0101 1 0 ;
<         76 ps>        : 0010 0110 0 ?0010 1 0 ;
<         77 ps>        : 0010 0110 1 ?0110 1 0 ;
<         78 ps>        : 0010 0111 0 ?0010 1 0 ;
<         79 ps>        : 0010 0111 1 ?0111 1 0 ;
<         80 ps>        : 0010 1000 0 ?0010 1 0 ;
<         81 ps>        : 0010 1000 1 ?1000 1 0 ;
<         82 ps>        : 0010 1001 0 ?0010 1 0 ;
<         83 ps>        : 0010 1001 1 ?1001 1 0 ;
<         84 ps>        : 0010 1010 0 ?0010 1 0 ;
<         85 ps>        : 0010 1010 1 ?1010 1 0 ;
<         86 ps>        : 0010 1011 0 ?0010 1 0 ;
<         87 ps>        : 0010 1011 1 ?1011 1 0 ;
<         88 ps>        : 0010 1100 0 ?0010 1 0 ;
<         89 ps>        : 0010 1100 1 ?1100 1 0 ;
<         90 ps>        : 0010 1101 0 ?0010 1 0 ;
<         91 ps>        : 0010 1101 1 ?1101 1 0 ;
<         92 ps>        : 0010 1110 0 ?0010 1 0 ;
<         93 ps>        : 0010 1110 1 ?1110 1 0 ;
<         94 ps>        : 0010 1111 0 ?0010 1 0 ;
<         95 ps>        : 0010 1111 1 ?1111 1 0 ;
<         96 ps>        : 0011 0000 0 ?0011 1 0 ;
<         97 ps>        : 0011 0000 1 ?0000 1 0 ;
<         98 ps>        : 0011 0001 0 ?0011 1 0 ;
<         99 ps>        : 0011 0001 1 ?0001 1 0 ;
<        100 ps>        : 0011 0010 0 ?0011 1 0 ;
<        101 ps>        : 0011 0010 1 ?0010 1 0 ;
<        102 ps>        : 0011 0011 0 ?0011 1 0 ;
<        103 ps>        : 0011 0011 1 ?0011 1 0 ;
<        104 ps>        : 0011 0100 0 ?0011 1 0 ;
<        105 ps>        : 0011 0100 1 ?0100 1 0 ;
<        106 ps>        : 0011 0101 0 ?0011 1 0 ;
<        107 ps>        : 0011 0101 1 ?0101 1 0 ;
<        108 ps>        : 0011 0110 0 ?0011 1 0 ;
<        109 ps>        : 0011 0110 1 ?0110 1 0 ;
<        110 ps>        : 0011 0111 0 ?0011 1 0 ;
<        111 ps>        : 0011 0111 1 ?0111 1 0 ;
<        112 ps>        : 0011 1000 0 ?0011 1 0 ;
<        113 ps>        : 0011 1000 1 ?1000 1 0 ;
<        114 ps>        : 0011 1001 0 ?0011 1 0 ;
<        115 ps>        : 0011 1001 1 ?1001 1 0 ;
<        116 ps>        : 0011 1010 0 ?0011 1 0 ;
<        117 ps>        : 0011 1010 1 ?1010 1 0 ;
<        118 ps>        : 0011 1011 0 ?0011 1 0 ;
<        119 ps>        : 0011 1011 1 ?1011 1 0 ;
<        120 ps>        : 0011 1100 0 ?0011 1 0 ;
<        121 ps>        : 0011 1100 1 ?1100 1 0 ;
<        122 ps>        : 0011 1101 0 ?0011 1 0 ;
<        123 ps>        : 0011 1101 1 ?1101 1 0 ;
<        124 ps>        : 0011 1110 0 ?0011 1 0 ;
<        125 ps>        : 0011 1110 1 ?1110 1 0 ;
<        126 ps>        : 0011 1111 0 ?0011 1 0 ;
<        127 ps>        : 0011 1111 1 ?1111 1 0 ;
<        128 ps>        : 0100 0000 0 ?0100 1 0 ;
<        129 ps>        : 0100 0000 1 ?0000 1 0 ;
<        130 ps>        : 0100 0001 0 ?0100 1 0 ;
<        131 ps>        : 0100 0001 1 ?0001 1 0 ;
<        132 ps>        : 0100 0010 0 ?0100 1 0 ;
<        133 ps>        : 0100 0010 1 ?0010 1 0 ;
<        134 ps>        : 0100 0011 0 ?0100 1 0 ;
<        135 ps>        : 0100 0011 1 ?0011 1 0 ;
<        136 ps>        : 0100 0100 0 ?0100 1 0 ;
<        137 ps>        : 0100 0100 1 ?0100 1 0 ;
<        138 ps>        : 0100 0101 0 ?0100 1 0 ;
<        139 ps>        : 0100 0101 1 ?0101 1 0 ;
<        140 ps>        : 0100 0110 0 ?0100 1 0 ;
<        141 ps>        : 0100 0110 1 ?0110 1 0 ;
<        142 ps>        : 0100 0111 0 ?0100 1 0 ;
<        143 ps>        : 0100 0111 1 ?0111 1 0 ;
<        144 ps>        : 0100 1000 0 ?0100 1 0 ;
<        145 ps>        : 0100 1000 1 ?1000 1 0 ;
<        146 ps>        : 0100 1001 0 ?0100 1 0 ;
<        147 ps>        : 0100 1001 1 ?1001 1 0 ;
<        148 ps>        : 0100 1010 0 ?0100 1 0 ;
<        149 ps>        : 0100 1010 1 ?1010 1 0 ;
<        150 ps>        : 0100 1011 0 ?0100 1 0 ;
<        151 ps>        : 0100 1011 1 ?1011 1 0 ;
<        152 ps>        : 0100 1100 0 ?0100 1 0 ;
<        153 ps>        : 0100 1100 1 ?1100 1 0 ;
<        154 ps>        : 0100 1101 0 ?0100 1 0 ;
<        155 ps>        : 0100 1101 1 ?1101 1 0 ;
<        156 ps>        : 0100 1110 0 ?0100 1 0 ;
<        157 ps>        : 0100 1110 1 ?1110 1 0 ;
<        158 ps>        : 0100 1111 0 ?0100 1 0 ;
<        159 ps>        : 0100 1111 1 ?1111 1 0 ;
<        160 ps>        : 0101 0000 0 ?0101 1 0 ;
<        161 ps>        : 0101 0000 1 ?0000 1 0 ;
<        162 ps>        : 0101 0001 0 ?0101 1 0 ;
<        163 ps>        : 0101 0001 1 ?0001 1 0 ;
<        164 ps>        : 0101 0010 0 ?0101 1 0 ;
<        165 ps>        : 0101 0010 1 ?0010 1 0 ;
<        166 ps>        : 0101 0011 0 ?0101 1 0 ;
<        167 ps>        : 0101 0011 1 ?0011 1 0 ;
<        168 ps>        : 0101 0100 0 ?0101 1 0 ;
<        169 ps>        : 0101 0100 1 ?0100 1 0 ;
<        170 ps>        : 0101 0101 0 ?0101 1 0 ;
<        171 ps>        : 0101 0101 1 ?0101 1 0 ;
<        172 ps>        : 0101 0110 0 ?0101 1 0 ;
<        173 ps>        : 0101 0110 1 ?0110 1 0 ;
<        174 ps>        : 0101 0111 0 ?0101 1 0 ;
<        175 ps>        : 0101 0111 1 ?0111 1 0 ;
<        176 ps>        : 0101 1000 0 ?0101 1 0 ;
<        177 ps>        : 0101 1000 1 ?1000 1 0 ;
<        178 ps>        : 0101 1001 0 ?0101 1 0 ;
<        179 ps>        : 0101 1001 1 ?1001 1 0 ;
<        180 ps>        : 0101 1010 0 ?0101 1 0 ;
<        181 ps>        : 0101 1010 1 ?1010 1 0 ;
<        182 ps>        : 0101 1011 0 ?0101 1 0 ;
<        183 ps>        : 0101 1011 1 ?1011 1 0 ;
<        184 ps>        : 0101 1100 0 ?0101 1 0 ;
<        185 ps>        : 0101 1100 1 ?1100 1 0 ;
<        186 ps>        : 0101 1101 0 ?0101 1 0 ;
<        187 ps>        : 0101 1101 1 ?1101 1 0 ;
<        188 ps>        : 0101 1110 0 ?0101 1 0 ;
<        189 ps>        : 0101 1110 1 ?1110 1 0 ;
<        190 ps>        : 0101 1111 0 ?0101 1 0 ;
<        191 ps>        : 0101 1111 1 ?1111 1 0 ;
<        192 ps>        : 0110 0000 0 ?0110 1 0 ;
<        193 ps>        : 0110 0000 1 ?0000 1 0 ;
<        194 ps>        : 0110 0001 0 ?0110 1 0 ;
<        195 ps>        : 0110 0001 1 ?0001 1 0 ;
<        196 ps>        : 0110 0010 0 ?0110 1 0 ;
<        197 ps>        : 0110 0010 1 ?0010 1 0 ;
<        198 ps>        : 0110 0011 0 ?0110 1 0 ;
<        199 ps>        : 0110 0011 1 ?0011 1 0 ;
<        200 ps>        : 0110 0100 0 ?0110 1 0 ;
<        201 ps>        : 0110 0100 1 ?0100 1 0 ;
<        202 ps>        : 0110 0101 0 ?0110 1 0 ;
<        203 ps>        : 0110 0101 1 ?0101 1 0 ;
<        204 ps>        : 0110 0110 0 ?0110 1 0 ;
<        205 ps>        : 0110 0110 1 ?0110 1 0 ;
<        206 ps>        : 0110 0111 0 ?0110 1 0 ;
<        207 ps>        : 0110 0111 1 ?0111 1 0 ;
<        208 ps>        : 0110 1000 0 ?0110 1 0 ;
<        209 ps>        : 0110 1000 1 ?1000 1 0 ;
<        210 ps>        : 0110 1001 0 ?0110 1 0 ;
<        211 ps>        : 0110 1001 1 ?1001 1 0 ;
<        212 ps>        : 0110 1010 0 ?0110 1 0 ;
<        213 ps>        : 0110 1010 1 ?1010 1 0 ;
<        214 ps>        : 0110 1011 0 ?0110 1 0 ;
<        215 ps>        : 0110 1011 1 ?1011 1 0 ;
<        216 ps>        : 0110 1100 0 ?0110 1 0 ;
<        217 ps>        : 0110 1100 1 ?1100 1 0 ;
<        218 ps>        : 0110 1101 0 ?0110 1 0 ;
<        219 ps>        : 0110 1101 1 ?1101 1 0 ;
<        220 ps>        : 0110 1110 0 ?0110 1 0 ;
<        221 ps>        : 0110 1110 1 ?1110 1 0 ;
<        222 ps>        : 0110 1111 0 ?0110 1 0 ;
<        223 ps>        : 0110 1111 1 ?1111 1 0 ;
<        224 ps>        : 0111 0000 0 ?0111 1 0 ;
<        225 ps>        : 0111 0000 1 ?0000 1 0 ;
<        226 ps>        : 0111 0001 0 ?0111 1 0 ;
<        227 ps>        : 0111 0001 1 ?0001 1 0 ;
<        228 ps>        : 0111 0010 0 ?0111 1 0 ;
<        229 ps>        : 0111 0010 1 ?0010 1 0 ;
<        230 ps>        : 0111 0011 0 ?0111 1 0 ;
<        231 ps>        : 0111 0011 1 ?0011 1 0 ;
<        232 ps>        : 0111 0100 0 ?0111 1 0 ;
<        233 ps>        : 0111 0100 1 ?0100 1 0 ;
<        234 ps>        : 0111 0101 0 ?0111 1 0 ;
<        235 ps>        : 0111 0101 1 ?0101 1 0 ;
<        236 ps>        : 0111 0110 0 ?0111 1 0 ;
<        237 ps>        : 0111 0110 1 ?0110 1 0 ;
<        238 ps>        : 0111 0111 0 ?0111 1 0 ;
<        239 ps>        : 0111 0111 1 ?0111 1 0 ;
<        240 ps>        : 0111 1000 0 ?0111 1 0 ;
<        241 ps>        : 0111 1000 1 ?1000 1 0 ;
<        242 ps>        : 0111 1001 0 ?0111 1 0 ;
<        243 ps>        : 0111 1001 1 ?1001 1 0 ;
<        244 ps>        : 0111 1010 0 ?0111 1 0 ;
<        245 ps>        : 0111 1010 1 ?1010 1 0 ;
<        246 ps>        : 0111 1011 0 ?0111 1 0 ;
<        247 ps>        : 0111 1011 1 ?1011 1 0 ;
<        248 ps>        : 0111 1100 0 ?0111 1 0 ;
<        249 ps>        : 0111 1100 1 ?1100 1 0 ;
<        250 ps>        : 0111 1101 0 ?0111 1 0 ;
<        251 ps>        : 0111 1101 1 ?1101 1 0 ;
<        252 ps>        : 0111 1110 0 ?0111 1 0 ;
<        253 ps>        : 0111 1110 1 ?1110 1 0 ;
<        254 ps>        : 0111 1111 0 ?0111 1 0 ;
<        255 ps>        : 0111 1111 1 ?1111 1 0 ;
<        256 ps>        : 1000 0000 0 ?1000 1 0 ;
<        257 ps>        : 1000 0000 1 ?0000 1 0 ;
<        258 ps>        : 1000 0001 0 ?1000 1 0 ;
<        259 ps>        : 1000 0001 1 ?0001 1 0 ;
<        260 ps>        : 1000 0010 0 ?1000 1 0 ;
<        261 ps>        : 1000 0010 1 ?0010 1 0 ;
<        262 ps>        : 1000 0011 0 ?1000 1 0 ;
<        263 ps>        : 1000 0011 1 ?0011 1 0 ;
<        264 ps>        : 1000 0100 0 ?1000 1 0 ;
<        265 ps>        : 1000 0100 1 ?0100 1 0 ;
<        266 ps>        : 1000 0101 0 ?1000 1 0 ;
<        267 ps>        : 1000 0101 1 ?0101 1 0 ;
<        268 ps>        : 1000 0110 0 ?1000 1 0 ;
<        269 ps>        : 1000 0110 1 ?0110 1 0 ;
<        270 ps>        : 1000 0111 0 ?1000 1 0 ;
<        271 ps>        : 1000 0111 1 ?0111 1 0 ;
<        272 ps>        : 1000 1000 0 ?1000 1 0 ;
<        273 ps>        : 1000 1000 1 ?1000 1 0 ;
<        274 ps>        : 1000 1001 0 ?1000 1 0 ;
<        275 ps>        : 1000 1001 1 ?1001 1 0 ;
<        276 ps>        : 1000 1010 0 ?1000 1 0 ;
<        277 ps>        : 1000 1010 1 ?1010 1 0 ;
<        278 ps>        : 1000 1011 0 ?1000 1 0 ;
<        279 ps>        : 1000 1011 1 ?1011 1 0 ;
<        280 ps>        : 1000 1100 0 ?1000 1 0 ;
<        281 ps>        : 1000 1100 1 ?1100 1 0 ;
<        282 ps>        : 1000 1101 0 ?1000 1 0 ;
<        283 ps>        : 1000 1101 1 ?1101 1 0 ;
<        284 ps>        : 1000 1110 0 ?1000 1 0 ;
<        285 ps>        : 1000 1110 1 ?1110 1 0 ;
<        286 ps>        : 1000 1111 0 ?1000 1 0 ;
<        287 ps>        : 1000 1111 1 ?1111 1 0 ;
<        288 ps>        : 1001 0000 0 ?1001 1 0 ;
<        289 ps>        : 1001 0000 1 ?0000 1 0 ;
<        290 ps>        : 1001 0001 0 ?1001 1 0 ;
<        291 ps>        : 1001 0001 1 ?0001 1 0 ;
<        292 ps>        : 1001 0010 0 ?1001 1 0 ;
<        293 ps>        : 1001 0010 1 ?0010 1 0 ;
<        294 ps>        : 1001 0011 0 ?1001 1 0 ;
<        295 ps>        : 1001 0011 1 ?0011 1 0 ;
<        296 ps>        : 1001 0100 0 ?1001 1 0 ;
<        297 ps>        : 1001 0100 1 ?0100 1 0 ;
<        298 ps>        : 1001 0101 0 ?1001 1 0 ;
<        299 ps>        : 1001 0101 1 ?0101 1 0 ;
<        300 ps>        : 1001 0110 0 ?1001 1 0 ;
<        301 ps>        : 1001 0110 1 ?0110 1 0 ;
<        302 ps>        : 1001 0111 0 ?1001 1 0 ;
<        303 ps>        : 1001 0111 1 ?0111 1 0 ;
<        304 ps>        : 1001 1000 0 ?1001 1 0 ;
<        305 ps>        : 1001 1000 1 ?1000 1 0 ;
<        306 ps>        : 1001 1001 0 ?1001 1 0 ;
<        307 ps>        : 1001 1001 1 ?1001 1 0 ;
<        308 ps>        : 1001 1010 0 ?1001 1 0 ;
<        309 ps>        : 1001 1010 1 ?1010 1 0 ;
<        310 ps>        : 1001 1011 0 ?1001 1 0 ;
<        311 ps>        : 1001 1011 1 ?1011 1 0 ;
<        312 ps>        : 1001 1100 0 ?1001 1 0 ;
<        313 ps>        : 1001 1100 1 ?1100 1 0 ;
<        314 ps>        : 1001 1101 0 ?1001 1 0 ;
<        315 ps>        : 1001 1101 1 ?1101 1 0 ;
<        316 ps>        : 1001 1110 0 ?1001 1 0 ;
<        317 ps>        : 1001 1110 1 ?1110 1 0 ;
<        318 ps>        : 1001 1111 0 ?1001 1 0 ;
<        319 ps>        : 1001 1111 1 ?1111 1 0 ;
<        320 ps>        : 1010 0000 0 ?1010 1 0 ;
<        321 ps>        : 1010 0000 1 ?0000 1 0 ;
<        322 ps>        : 1010 0001 0 ?1010 1 0 ;
<        323 ps>        : 1010 0001 1 ?0001 1 0 ;
<        324 ps>        : 1010 0010 0 ?1010 1 0 ;
<        325 ps>        : 1010 0010 1 ?0010 1 0 ;
<        326 ps>        : 1010 0011 0 ?1010 1 0 ;
<        327 ps>        : 1010 0011 1 ?0011 1 0 ;
<        328 ps>        : 1010 0100 0 ?1010 1 0 ;
<        329 ps>        : 1010 0100 1 ?0100 1 0 ;
<        330 ps>        : 1010 0101 0 ?1010 1 0 ;
<        331 ps>        : 1010 0101 1 ?0101 1 0 ;
<        332 ps>        : 1010 0110 0 ?1010 1 0 ;
<        333 ps>        : 1010 0110 1 ?0110 1 0 ;
<        334 ps>        : 1010 0111 0 ?1010 1 0 ;
<        335 ps>        : 1010 0111 1 ?0111 1 0 ;
<        336 ps>        : 1010 1000 0 ?1010 1 0 ;
<        337 ps>        : 1010 1000 1 ?1000 1 0 ;
<        338 ps>        : 1010 1001 0 ?1010 1 0 ;
<        339 ps>        : 1010 1001 1 ?1001 1 0 ;
<        340 ps>        : 1010 1010 0 ?1010 1 0 ;
<        341 ps>        : 1010 1010 1 ?1010 1 0 ;
<        342 ps>        : 1010 1011 0 ?1010 1 0 ;
<        343 ps>        : 1010 1011 1 ?1011 1 0 ;
<        344 ps>        : 1010 1100 0 ?1010 1 0 ;
<        345 ps>        : 1010 1100 1 ?1100 1 0 ;
<        346 ps>        : 1010 1101 0 ?1010 1 0 ;
<        347 ps>        : 1010 1101 1 ?1101 1 0 ;
<        348 ps>        : 1010 1110 0 ?1010 1 0 ;
<        349 ps>        : 1010 1110 1 ?1110 1 0 ;
<        350 ps>        : 1010 1111 0 ?1010 1 0 ;
<        351 ps>        : 1010 1111 1 ?1111 1 0 ;
<        352 ps>        : 1011 0000 0 ?1011 1 0 ;
<        353 ps>        : 1011 0000 1 ?0000 1 0 ;
<        354 ps>        : 1011 0001 0 ?1011 1 0 ;
<        355 ps>        : 1011 0001 1 ?0001 1 0 ;
<        356 ps>        : 1011 0010 0 ?1011 1 0 ;
<        357 ps>        : 1011 0010 1 ?0010 1 0 ;
<        358 ps>        : 1011 0011 0 ?1011 1 0 ;
<        359 ps>        : 1011 0011 1 ?0011 1 0 ;
<        360 ps>        : 1011 0100 0 ?1011 1 0 ;
<        361 ps>        : 1011 0100 1 ?0100 1 0 ;
<        362 ps>        : 1011 0101 0 ?1011 1 0 ;
<        363 ps>        : 1011 0101 1 ?0101 1 0 ;
<        364 ps>        : 1011 0110 0 ?1011 1 0 ;
<        365 ps>        : 1011 0110 1 ?0110 1 0 ;
<        366 ps>        : 1011 0111 0 ?1011 1 0 ;
<        367 ps>        : 1011 0111 1 ?0111 1 0 ;
<        368 ps>        : 1011 1000 0 ?1011 1 0 ;
<        369 ps>        : 1011 1000 1 ?1000 1 0 ;
<        370 ps>        : 1011 1001 0 ?1011 1 0 ;
<        371 ps>        : 1011 1001 1 ?1001 1 0 ;
<        372 ps>        : 1011 1010 0 ?1011 1 0 ;
<        373 ps>        : 1011 1010 1 ?1010 1 0 ;
<        374 ps>        : 1011 1011 0 ?1011 1 0 ;
<        375 ps>        : 1011 1011 1 ?1011 1 0 ;
<        376 ps>        : 1011 1100 0 ?1011 1 0 ;
<        377 ps>        : 1011 1100 1 ?1100 1 0 ;
<        378 ps>        : 1011 1101 0 ?1011 1 0 ;
<        379 ps>        : 1011 1101 1 ?1101 1 0 ;
<        380 ps>        : 1011 1110 0 ?1011 1 0 ;
<        381 ps>        : 1011 1110 1 ?1110 1 0 ;
<        382 ps>        : 1011 1111 0 ?1011 1 0 ;
<        383 ps>        : 1011 1111 1 ?1111 1 0 ;
<        384 ps>        : 1100 0000 0 ?1100 1 0 ;
<        385 ps>        : 1100 0000 1 ?0000 1 0 ;
<        386 ps>        : 1100 0001 0 ?1100 1 0 ;
<        387 ps>        : 1100 0001 1 ?0001 1 0 ;
<        388 ps>        : 1100 0010 0 ?1100 1 0 ;
<        389 ps>        : 1100 0010 1 ?0010 1 0 ;
<        390 ps>        : 1100 0011 0 ?1100 1 0 ;
<        391 ps>        : 1100 0011 1 ?0011 1 0 ;
<        392 ps>        : 1100 0100 0 ?1100 1 0 ;
<        393 ps>        : 1100 0100 1 ?0100 1 0 ;
<        394 ps>        : 1100 0101 0 ?1100 1 0 ;
<        395 ps>        : 1100 0101 1 ?0101 1 0 ;
<        396 ps>        : 1100 0110 0 ?1100 1 0 ;
<        397 ps>        : 1100 0110 1 ?0110 1 0 ;
<        398 ps>        : 1100 0111 0 ?1100 1 0 ;
<        399 ps>        : 1100 0111 1 ?0111 1 0 ;
<        400 ps>        : 1100 1000 0 ?1100 1 0 ;
<        401 ps>        : 1100 1000 1 ?1000 1 0 ;
<        402 ps>        : 1100 1001 0 ?1100 1 0 ;
<        403 ps>        : 1100 1001 1 ?1001 1 0 ;
<        404 ps>        : 1100 1010 0 ?1100 1 0 ;
<        405 ps>        : 1100 1010 1 ?1010 1 0 ;
<        406 ps>        : 1100 1011 0 ?1100 1 0 ;
<        407 ps>        : 1100 1011 1 ?1011 1 0 ;
<        408 ps>        : 1100 1100 0 ?1100 1 0 ;
<        409 ps>        : 1100 1100 1 ?1100 1 0 ;
<        410 ps>        : 1100 1101 0 ?1100 1 0 ;
<        411 ps>        : 1100 1101 1 ?1101 1 0 ;
<        412 ps>        : 1100 1110 0 ?1100 1 0 ;
<        413 ps>        : 1100 1110 1 ?1110 1 0 ;
<        414 ps>        : 1100 1111 0 ?1100 1 0 ;
<        415 ps>        : 1100 1111 1 ?1111 1 0 ;
<        416 ps>        : 1101 0000 0 ?1101 1 0 ;
<        417 ps>        : 1101 0000 1 ?0000 1 0 ;
<        418 ps>        : 1101 0001 0 ?1101 1 0 ;
<        419 ps>        : 1101 0001 1 ?0001 1 0 ;
<        420 ps>        : 1101 0010 0 ?1101 1 0 ;
<        421 ps>        : 1101 0010 1 ?0010 1 0 ;
<        422 ps>        : 1101 0011 0 ?1101 1 0 ;
<        423 ps>        : 1101 0011 1 ?0011 1 0 ;
<        424 ps>        : 1101 0100 0 ?1101 1 0 ;
<        425 ps>        : 1101 0100 1 ?0100 1 0 ;
<        426 ps>        : 1101 0101 0 ?1101 1 0 ;
<        427 ps>        : 1101 0101 1 ?0101 1 0 ;
<        428 ps>        : 1101 0110 0 ?1101 1 0 ;
<        429 ps>        : 1101 0110 1 ?0110 1 0 ;
<        430 ps>        : 1101 0111 0 ?1101 1 0 ;
<        431 ps>        : 1101 0111 1 ?0111 1 0 ;
<        432 ps>        : 1101 1000 0 ?1101 1 0 ;
<        433 ps>        : 1101 1000 1 ?1000 1 0 ;
<        434 ps>        : 1101 1001 0 ?1101 1 0 ;
<        435 ps>        : 1101 1001 1 ?1001 1 0 ;
<        436 ps>        : 1101 1010 0 ?1101 1 0 ;
<        437 ps>        : 1101 1010 1 ?1010 1 0 ;
<        438 ps>        : 1101 1011 0 ?1101 1 0 ;
<        439 ps>        : 1101 1011 1 ?1011 1 0 ;
<        440 ps>        : 1101 1100 0 ?1101 1 0 ;
<        441 ps>        : 1101 1100 1 ?1100 1 0 ;
<        442 ps>        : 1101 1101 0 ?1101 1 0 ;
<        443 ps>        : 1101 1101 1 ?1101 1 0 ;
<        444 ps>        : 1101 1110 0 ?1101 1 0 ;
<        445 ps>        : 1101 1110 1 ?1110 1 0 ;
<        446 ps>        : 1101 1111 0 ?1101 1 0 ;
<        447 ps>        : 1101 1111 1 ?1111 1 0 ;
<        448 ps>        : 1110 0000 0 ?1110 1 0 ;
<        449 ps>        : 1110 0000 1 ?0000 1 0 ;
<        450 ps>        : 1110 0001 0 ?1110 1 0 ;
<        451 ps>        : 1110 0001 1 ?0001 1 0 ;
<        452 ps>        : 1110 0010 0 ?1110 1 0 ;
<        453 ps>        : 1110 0010 1 ?0010 1 0 ;
<        454 ps>        : 1110 0011 0 ?1110 1 0 ;
<        455 ps>        : 1110 0011 1 ?0011 1 0 ;
<        456 ps>        : 1110 0100 0 ?1110 1 0 ;
<        457 ps>        : 1110 0100 1 ?0100 1 0 ;
<        458 ps>        : 1110 0101 0 ?1110 1 0 ;
<        459 ps>        : 1110 0101 1 ?0101 1 0 ;
<        460 ps>        : 1110 0110 0 ?1110 1 0 ;
<        461 ps>        : 1110 0110 1 ?0110 1 0 ;
<        462 ps>        : 1110 0111 0 ?1110 1 0 ;
<        463 ps>        : 1110 0111 1 ?0111 1 0 ;
<        464 ps>        : 1110 1000 0 ?1110 1 0 ;
<        465 ps>        : 1110 1000 1 ?1000 1 0 ;
<        466 ps>        : 1110 1001 0 ?1110 1 0 ;
<        467 ps>        : 1110 1001 1 ?1001 1 0 ;
<        468 ps>        : 1110 1010 0 ?1110 1 0 ;
<        469 ps>        : 1110 1010 1 ?1010 1 0 ;
<        470 ps>        : 1110 1011 0 ?1110 1 0 ;
<        471 ps>        : 1110 1011 1 ?1011 1 0 ;
<        472 ps>        : 1110 1100 0 ?1110 1 0 ;
<        473 ps>        : 1110 1100 1 ?1100 1 0 ;
<        474 ps>        : 1110 1101 0 ?1110 1 0 ;
<        475 ps>        : 1110 1101 1 ?1101 1 0 ;
<        476 ps>        : 1110 1110 0 ?1110 1 0 ;
<        477 ps>        : 1110 1110 1 ?1110 1 0 ;
<        478 ps>        : 1110 1111 0 ?1110 1 0 ;
<        479 ps>        : 1110 1111 1 ?1111 1 0 ;
<        480 ps>        : 1111 0000 0 ?1111 1 0 ;
<        481 ps>        : 1111 0000 1 ?0000 1 0 ;
<        482 ps>        : 1111 0001 0 ?1111 1 0 ;
<        483 ps>        : 1111 0001 1 ?0001 1 0 ;
<        484 ps>        : 1111 0010 0 ?1111 1 0 ;
<        485 ps>        : 1111 0010 1 ?0010 1 0 ;
<        486 ps>        : 1111 0011 0 ?1111 1 0 ;
<        487 ps>        : 1111 0011 1 ?0011 1 0 ;
<        488 ps>        : 1111 0100 0 ?1111 1 0 ;
<        489 ps>        : 1111 0100 1 ?0100 1 0 ;
<        490 ps>        : 1111 0101 0 ?1111 1 0 ;
<        491 ps>        : 1111 0101 1 ?0101 1 0 ;
<        492 ps>        : 1111 0110 0 ?1111 1 0 ;
<        493 ps>        : 1111 0110 1 ?0110 1 0 ;
<        494 ps>        : 1111 0111 0 ?1111 1 0 ;
<        495 ps>        : 1111 0111 1 ?0111 1 0 ;
<        496 ps>        : 1111 1000 0 ?1111 1 0 ;
<        497 ps>        : 1111 1000 1 ?1000 1 0 ;
<        498 ps>        : 1111 1001 0 ?1111 1 0 ;
<        499 ps>        : 1111 1001 1 ?1001 1 0 ;
<        500 ps>        : 1111 1010 0 ?1111 1 0 ;
<        501 ps>        : 1111 1010 1 ?1010 1 0 ;
<        502 ps>        : 1111 1011 0 ?1111 1 0 ;
<        503 ps>        : 1111 1011 1 ?1011 1 0 ;
<        504 ps>        : 1111 1100 0 ?1111 1 0 ;
<        505 ps>        : 1111 1100 1 ?1100 1 0 ;
<        506 ps>        : 1111 1101 0 ?1111 1 0 ;
<        507 ps>        : 1111 1101 1 ?1101 1 0 ;
<        508 ps>        : 1111 1110 0 ?1111 1 0 ;
<        509 ps>        : 1111 1110 1 ?1110 1 0 ;
<        510 ps>        : 1111 1111 0 ?1111 1 0 ;
<        511 ps>        : 1111 1111 1 ?1111 1 0 ;

end;
