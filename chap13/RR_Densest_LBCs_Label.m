% script RR_Densest_LBCs_Label
% This code labels Figure 7.3 in Renaissance Robotics.
% Renaissance Robotics codebase, Chapter 7, https://github.com/tbewley/RR
% Copyright 2021 by Thomas Bewley, distributed under BSD 3-Clause License.

clear; close all; figure(1); RR_Densest_LBCs_Plot; d{01}={	'1'};
d{02}={	'2' '[2,2,1]'}; 	 
d{03}={	'3' '[3,2,2]' '[3,3,1]'};
d{04}={	'4' 	''    '[4,3,2]' '[4,4,1]'};	 	 
d{05}={	'5' '[5,2,3]' 	''      '[5,4,2]' ''};	 
d{06}={	''  '[6,2,4]' '[6,3,3]' ''      ''      ''};
d{07}={	''  	''    '[7,3,4]' '[7,4,3]'  ''   ''      ''};	 
d{08}={	''  '[8,2,5]' 	''      '[8,4,4]'  ''   ''      ''      ''};
d{09}={	''  '[9,2,6]' 	''      ''      ''      ''      ''      ''      ''};
d{10}={	''      ''      ''      ''      ''      ''      ''      ''  	''      'd=1'};	 
d{11}={	''  	''      ''      ''      ''      ''      'd=3'   ''  	''  	'd=2'   ''};
d{12}={	''  	''      ''  '[12,4,6]' ''       ''  	'd=4'   ''      ''  	''  	''      ''};
d{13}={	''  	''      ''      ''      ''      ''  	''      ''   	''   	''  	''  	''      ''};
d{14}={	''  	''      ''      ''      ''     'd=5' 	''  	''  	''   	''   	''  	''  	''  	''};	 	 
d{15}={	''  	''      ''      ''      ''     'd=6'    ''      ''  	''  	''      ''      ''  	''  	''  	''};	 
d{16}={	''  	''  	''      ''     '[16,5,8]' ''    ''      ''      ''  	''  '[16,11,4]' ''  	''  	''  	''  	''};
d{17}={	''  	''      ''      ''      ''      ''      ''      ''      ''      ''  	''  	''   	''  	''  	''  	''  	''};	 
d{18}={	''  	''      ''      ''      ''  	''      ''      ''  '[18,9,6]' 	''  	''  	''      ''  	''  	''  	''  	''  	''};
d{19}={	''  	''  	''      ''      ''      ''      '' 	'd=7'       ''  	''  	''  	''   	''      ''  	''  	''  	''  	''  	''};	 	 
d{20}={	''  	''  	''      ''      ''      ''      ''  'd=8'       ''  	''  	''      ''  	''  	''  	''  	''  	''      ''  	''  	''};
d{21}={	''  	''  	''      ''  '[21,5,10]'	''      ''  	''  	''      ''   	''  	''      ''  	''  	''  	''  	''      ''  	''  	''  	''};
d{22}={	''  	''  	''  	''      ''  	''      ''      ''      ''  	''      ''  	''      ''      ''  	''  	''  	''      ''  	''  	''  	''  	''};	 
d{23}={	''  	''  	''  	''      ''      ''      ''      ''  	''  	''      ''      ''      ''      ''      ''  	''  	''      ''  	''  	''  	''  	''  	''};
d{24}={	''  	''  	''      ''  '[24,5,12]'	''   '[24,7,10]' ''     ''  	''      ''  '[24,12,8]' ''  '[24,14,6]' ''  	''  	''      ''  	''  	''  	''  	''  	''  	''};	 	 
d{25}={	''  	''  	''      ''   	''  	''      ''    'd=9'     ''  	''      ''  	''  	''  	''  	''  	''  	''      ''  	''  	''  	''  	''  	''  	''      ''};	 
d{26}={	''  	''  	''  	''      ''  	''      ''    'd=10'    ''      ''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''};
d{27}={	''  	''  	''      ''      ''  	''  '[27,7,12]'	''  	''      ''      ''  	''  	''      ''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''};	 
d{28}={	''  	''   	''      ''      ''  	''  	''  	''      ''  '[28,10,10]'   ''  	''  	''  '[28,14,8]' ''  	''      ''  	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''};
d{29}={	''  	''  	''  	''      ''      ''      ''  	''	    ''      ''      ''   	''  	''  	''  	''      ''      ''  	''      ''      ''  	''  	''  	''      ''   	''  	''  	''  	''      ''};	 
d{30}={	''  	''  	''  	''      ''  	''      ''  	''  	''      ''      ''  	''   	''  	''  	''  	''      ''  	''  	''      ''  	''  	''      ''  	''   	''   	''  	''  	''  	''      ''};	 
d{31}={	''  	''  	''  	''  	''  	''      ''      ''  	''      ''      ''      ''      ''      ''  	''      ''      ''      ''  	''  	''      ''      ''  	''   	''  	''      ''      ''  	''  	''  	''  	''};
d{32}={	''  	''  	''  	''   	''      ''      ''      ''      ''      ''   '[32,11,12]' ''  '[32,13,10]'  ''  ''      ''  '[32,17,8]' ''  	''  	''  	''   	''  	''  	''  	''  '[32,26,4]' ''  	''  	''  	''  	''  	''};	 
d{33}={	''  	''  	''  	''      ''  	''  	''  	''      ''      ''  	''  	''      ''      ''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''  	''  	''  	''      ''  	''  	''  	''  	''   	''};
d{34}={	''  	''  	''  	''  	''  	''  	''      ''  	''      ''  	''  	''      ''      ''      ''      ''  	''      ''  	''  	''  	''  	'' '[34,23,6]' 	''  	''  	''  	''  	''   	''  	''  	''  	''  	''  	''};	 	 
d{35}={	''  	''  	''  	''  	''  	''  	''      ''      ''      ''      ''  	''  	''      ''  	''      ''      ''  	''      ''   	''  	''  	''  	''  	''      ''  	''  	''  	''  	''      ''  	''  	''  	''  	''  	''};	 
d{36}={	''  	''  	''  	''  	''  	''  	''  	''      ''      ''      ''  	''  	''      ''      ''  '[36,16,10]' ''  	''  	''  	''   	''      ''  	''  	''   	''   	''  	''  	''  	''   	''  	''  	''  	''  	''  	''  	''};
d{37}={	''  	''  	''  	''  	''  	''  	''  	''  	''      ''  	''      ''  	''  	''  	''      ''  	''	    ''  	''  	''  	''      ''      ''  	''  	''      ''      ''  	''  	''  	''      ''  	''  	''  	''  	''  	''  	''};	 
d{38}={	''  	''  	''  	''  	''  	''  	''  	''  	''      ''  	''      ''      ''  	''      ''      ''  	''	    ''  	''  	''  	''  '[38,22,8]' ''      ''  	''  	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''      ''};
d{39}={	''  	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''      ''  	''      ''      ''      ''  	''  	''      ''      ''  	''  	''	    ''      ''  	''      ''  	''      ''   	''  	''  	''  	''  	''  	''  	''  	''  	''      ''};	 	 
d{40}={	''  	''  	''  	''      ''  	''  	''  	''  	''      ''      ''      ''  	''      ''  	''  	''      'd=11'  ''  	''  	''      ''  	''  	'' 	    ''      ''      ''  	''      ''   	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''      ''};	 
d{41}={	''  	''  	''  	''  	''  	''  	''  	''  	''      ''      ''      ''  	''      ''  	''  	''   	'd=12'  ''      ''  	''      ''      ''  	''  	''      ''  	''      ''  	''  	''      ''      ''    	''  	''  	''  	''  	''  	''  	''  	''  	''      ''};
d{42}={	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''      ''      ''      ''  	''      ''      ''  '[42,21,10]' ''  	''  	''   	''      ''      ''      ''  	''   	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''      ''};	 
d{43}={	''  	''      ''  	''  	''  	''  	''  	''  	''  	''    	''  	''      ''      ''      ''      ''  	''  	''  	''      ''      ''      ''      ''  	''  	''   	''  	''  	''      ''  	''  	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''      ''};
d{44}={	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''    	''  	''      ''      ''      ''  	''  	''  	''  	''      ''      ''	    ''	    ''  	''  	''      ''  	''      ''  	''  	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''      ''};	 	 
d{45}={	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''      ''      ''      ''  	''      ''  	''  	''  	''      ''      ''      ''      ''      ''  	''   	''      ''      ''      ''  	''  	''  	''   	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''}; 
d{46}={	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''    	''    	''  	''  	''      ''  	''      ''  	''  	''  	''  	''      ''      ''      ''      ''  	''  	''   	''      ''      ''  	''  	''  	''   	''  	''  	''  	''  	''      ''   	''  	''  	''  	''  	''      ''};
d{47}={	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''     	''      ''      ''      ''      ''  	''  	''  	''  	''      ''      ''      ''  	''  	''  	''   	''      ''      ''  	''  	''  	''      ''      ''  	''   	''  	''  	''  	''  	''  	''      ''  	''      ''};	 
d{48}={	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''    	''    	''    	''  	''      ''  	''      ''  	''  	''  	''  	''   '[48,24,12]' ''    ''      ''      ''  	''  	'' '[48,31,8]' 	''  	''  	''  	''  '[48,36,6]' ''  	''   	''  	''  	''  	''  	''  	''      ''  	''  	''      ''};
d{49}={	''    	''  	''  	''  	''  	''  	''  	''  	''  	''    	''    	''  	''  	''  	''  	''    	''  	''    	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''   	''   	''      ''  	''  	''  	''  	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''      ''};	 	 
d{50}={	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''  	''  	''  	''    	''  	''    	''  	''      ''  	''  	''  	''  	''  '[50,27,10]' ''     ''  	''  	''   	''  	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''      ''};	 
d{51}={	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''      ''  	''  	''  	''  	''  	''      ''      ''  	''      ''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''      ''};
d{52}={	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''    	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''      ''      ''      ''  	''  	''  	''  	''      ''      ''  	''  	''      ''   	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''      ''};	 
d{53}={	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''    	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''      ''  	''      ''  	''  	''  	''   	''  	''      ''  	''  	''   	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''      ''};
d{54}={	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''    	''    	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''      ''      ''  	''      ''      ''  	''  	''  	''   	''      ''  	''  	''   	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''  	''  	''      ''};	 	 
d{55}={	''  	''   	''  	''  	''  	''  	''  	''  	''  	''    	''    	''    	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''      ''      ''  	'' '[55,31,10]' ''  	''      ''  	''  	''   	''  	''      ''  	''  	''   	''  	''  	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''      ''};	 
d{56}={	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''      ''      ''      ''  	''  	''      ''  	''  	''  	''      ''   	''      ''      ''  	''   	''   	''      ''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''};
d{57}={	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''    	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''      ''  	''      ''      ''  	''      ''   	''  	''  	''  	''  	''   	''      ''   	''  	''      ''  	''  	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''      ''};	 
d{58}={	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''      ''  	''  	''      ''      ''  	''      ''      ''  	''  	''  	''  	''   	''   	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''      ''};
d{59}={	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''    	''  	''  	''  	''      ''      ''  	''      ''      ''  	''  	''  	''  	''   	''      ''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''   	''      ''  	''  	''  	''  	''  	''};	 	 
d{60}={	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''  	''  	''      ''  	''      ''      ''  	''      ''      ''      ''  	''  	''      ''   	''   	''  	''  	''      ''  	''  	''  	''  	''  	''  	''  	''   	''      ''  	''  	''  	''  	''      ''};	 
d{61}={	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''      ''  	''      ''  	''  	''      ''      ''  	''  	''  	''  	''  	''  	''  	''   	''   	''  	''  	''  	''   	''      ''   	''  	''  	''  	''  	''      ''  	''  	''  	''  	''  	''   	''};
d{62}={	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''      ''      ''      ''  	''  	''  	''      ''      ''      ''  	''  	''  	''  	''  	''  	''   	''   	''      ''  	''      ''  	''   	''   	''  	''  	''  	''  	''  	''      ''   	''  	''  	''  	''   	''};	 
d{63}={	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''    	''      ''      ''      ''  	''  	''  	''      ''      ''      ''  	''      ''  	''  	''  	''  	''  	''  	''      ''  	''  	''  	''  	''   	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''   	''};
d{64}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''   	''    	''  	''      ''  	''  	''  	''  	''  '[64,36,12]' ''  	''  	''      ''      ''      ''      ''  	''  	'' '[64,46,8]'  ''  	''   	''  	''  	''   	''   	''  	''  	''  	'' '[64,57,4]'  ''  	''  	''  	''  	''  	''   '[64,64,1]'};	 	 
d{65}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  '[65,40,10]' ''     ''  	''  	''  	''  	''      ''  	''   	''  	''      ''  	''      ''      ''  	''  	''      ''      ''  	''  	''  	''  	''      ''   '[65,64,2]'};	 	 
d{66}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''  	''  	''  	''  	''  	''  	''      ''  	''   	''  	''		''  	''  '[66,53,6]' ''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{67}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''  	''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{68}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''      ''  	''   	''      ''      ''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{69}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''  	''  	''  	''  	''  	''  	''      ''  	''   	''  '[69,50,8]' ''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{70}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''  '[70,41,12]' ''  	''  	''  	''  	''      ''  	''   	''  	''  	''      ''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{71}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''  	''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''  '[71,64,3]'};	 	 
d{72}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''  	''  '[72,42,12]'  ''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''  '[72,64,4]'};	 	 
d{73}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''  	''   	''  	''  	''  	''  	''  '[73,47,10]'  ''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{74}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''  	''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{75}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''  	''  	''  '[75,43,12]'  ''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{76}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''  	''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{77}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''  	''  	''  	''      ''      ''  	''      ''  	''   	''  	''      ''      ''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''   '[77,64,5]'};	 	 
d{78}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''  	''  	''  	''  	''  	''  	''      ''  	''   	''  	'' '[78,51,10]' ''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''   '[78,64,6]'};	 	 
d{79}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''  	''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{80}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''  	''   	''  	''  	''  	''  '[79,46,12]'   ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{81}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''  	''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{82}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''  	''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{83}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''      ''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''  	''  	''  	''    '[83,64,7]'};	 	 
d{84}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''      ''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''      ''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''    '[84,64,8]'};	 	 
d{85}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''      ''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''      ''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{86}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''      ''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''      ''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{87}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''      ''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''      ''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{88}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''      ''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''      ''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{89}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''      ''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''      ''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{90}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''      ''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''      ''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  '[90,56,12]'  ''    ''  	''  	''  	''  	''      ''      ''};	 	 
d{91}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''      ''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''      ''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''    '[91,64,9]'};	 	 
d{92}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''      ''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''      ''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''    '[92,64,10]'};	 	 
d{93}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''      ''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''      ''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{94}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''      ''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''      ''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{95}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''      ''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''      ''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{96}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''      ''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''      ''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{97}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''      ''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''      ''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''      ''};	 	 
d{98}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''      ''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''      ''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''   '[98,64,11]'};	 	 
d{99}={	''      ''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''    	''  	''    	''    	''    	''    	''    	''  	''      ''    	''    	''    	''  	''  	''  	''  	''  	''  	''  	''  	''  	''  	''	    ''      ''  	''  	''  	''  	''  	''      ''  	''   	''  	''  	''  	''  	''  	''  	''  	''      ''      ''  	''  	''  	''  	''      ''   '[99,64,12]'};
for n=1:99; for k=1:min(n,64); text(log2(k),k/n,d{n}(k),'FontSize',8,'HorizontalAlignment','center','VerticalAlignment','middle'); end; end
% print -painters -depsc Densest_LBCs.eps