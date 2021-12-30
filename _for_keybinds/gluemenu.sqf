cutText [format["GLUE First in 3sec"],"PLAIN DOWN"];
sleep 3;
_glue_star = cursorTarget;

cutText [format["GLUE Second in 3sec"],"PLAIN DOWN"];
sleep 3;
_glueSecond_star = cursorTarget;

sleep 0.5;

cutText [format["%1               %2",_glue_star,_glueSecond_star],"PLAIN DOWN"];

attachmenu_Metallica_infiSTAR = 
[
["",true],
["Left to Right Menu. Select option:", [-1], "", -5, [["expression", ""]], "1", "0"],
["Same Alignment", [2], "", -5, [["expression", "attchselection_xadsadasd=0;decide_distance_attchmenu=true;"]], "1", "1"],
["Left 1 meters", [3], "", -5, [["expression", "attchselection_xadsadasd=-1;decide_distance_attchmenu=true;"]], "1", "1"],
["Left 2 meters", [4], "", -5, [["expression", "attchselection_xadsadasd=-2;decide_distance_attchmenu=true;"]], "1", "1"],
["Left 5 meters", [5], "", -5, [["expression", "attchselection_xadsadasd=-5;decide_distance_attchmenu=true;"]], "1", "1"],
["Left 10 meters", [6], "", -5, [["expression", "attchselection_xadsadasd=-10;decide_distance_attchmenu=true;"]], "1", "1"],	
["Right 1 meters", [7], "", -5, [["expression", "attchselection_xadsadasd=1;decide_distance_attchmenu=true;"]], "1", "1"],
["Right 2 meters", [8], "", -5, [["expression", "attchselection_xadsadasd=2;decide_distance_attchmenu=true;"]], "1", "1"],
["Right 5 meters", [9], "", -5, [["expression", "attchselection_xadsadasd=5;decide_distance_attchmenu=true;"]], "1", "1"],	
["Right 10 meters", [10], "", -5, [["expression", "attchselection_xadsadasd=10;decide_distance_attchmenu=true;"]], "1", "1"],	
["", [-1], "", -5, [["expression", ""]], "1", "0"],
["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

attachmenu_Metallica_infiSTAR2 = 
[
["",true],
["Front to Back Menu. Select option:", [-1], "", -5, [["expression", ""]], "1", "0"],
["Same Alignment", [2], "", -5, [["expression", "attchselection_yjklh=0;decide_distance_attchmenu2=true;"]], "1", "1"],
["Back 1 meters", [3], "", -5, [["expression", "attchselection_yjklh=-1;decide_distance_attchmenu2=true;"]], "1", "1"],
["Back 2 meters", [4], "", -5, [["expression", "attchselection_yjklh=-2;decide_distance_attchmenu2=true;"]], "1", "1"],
["Back 5 meters", [5], "", -5, [["expression", "attchselection_yjklh=-5;decide_distance_attchmenu2=true;"]], "1", "1"],
["Back 10 meters", [6], "", -5, [["expression", "attchselection_yjklh=-10;decide_distance_attchmenu2=true;"]], "1", "1"],	
["Front 1 meters", [7], "", -5, [["expression", "attchselection_yjklh=1;decide_distance_attchmenu2=true;"]], "1", "1"],
["Front 2 meters", [8], "", -5, [["expression", "attchselection_yjklh=2;decide_distance_attchmenu2=true;"]], "1", "1"],
["Front 5 meters", [9], "", -5, [["expression", "attchselection_yjklh=5;decide_distance_attchmenu2=true;"]], "1", "1"],	
["Front 10 meters", [10], "", -5, [["expression", "attchselection_yjklh=10;decide_distance_attchmenu2=true;"]], "1", "1"],	
["", [-1], "", -5, [["expression", ""]], "1", "0"],
["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

attachmenu_Metallica_infiSTAR3 = 
[
["",true],
["Above or Below Menu. Select option:", [-1], "", -5, [["expression", ""]], "1", "0"],
["Same Alignment", [2], "", -5, [["expression", "attchselection_zdsjh=0;decide_distance_attchmenu3=true;"]], "1", "1"],
["Below 1 meters", [3], "", -5, [["expression", "attchselection_zdsjh=-1;decide_distance_attchmenu3=true;"]], "1", "1"],
["Below 2 meters", [4], "", -5, [["expression", "attchselection_zdsjh=-2;decide_distance_attchmenu3=true;"]], "1", "1"],
["Below 5 meters", [5], "", -5, [["expression", "attchselection_zdsjh=-5;decide_distance_attchmenu3=true;"]], "1", "1"],
["Below 10 meters", [5], "", -5, [["expression", "attchselection_zdsjh=-10;decide_distance_attchmenu3=true;"]], "1", "1"],	
["Below 50 meters", [5], "", -5, [["expression", "attchselection_zdsjh=-50;decide_distance_attchmenu3=true;"]], "1", "1"],
["Above 1 meters", [6], "", -5, [["expression", "attchselection_zdsjh=1;decide_distance_attchmenu3=true;"]], "1", "1"],
["Above 2 meters", [7], "", -5, [["expression", "attchselection_zdsjh=2;decide_distance_attchmenu3=true;"]], "1", "1"],
["Above 5 meters", [8], "", -5, [["expression", "attchselection_zdsjh=5;decide_distance_attchmenu3=true;"]], "1", "1"],	
["Above 10 meters", [8], "", -5, [["expression", "attchselection_zdsjh=10;decide_distance_attchmenu3=true;"]], "1", "1"],
["Above 50 meters", [8], "", -5, [["expression", "attchselection_zdsjh=50;decide_distance_attchmenu3=true;"]], "1", "1"],	
["", [-1], "", -5, [["expression", ""]], "1", "0"],
["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu '#USER:attachmenu_Metallica_infiSTAR';
WaitUntil{decide_distance_attchmenu};
decide_distance_attchmenu=false;	
showCommandingMenu '#USER:attachmenu_Metallica_infiSTAR2';
WaitUntil{decide_distance_attchmenu2};
decide_distance_attchmenu2=false;
showCommandingMenu '#USER:attachmenu_Metallica_infiSTAR3';
WaitUntil{decide_distance_attchmenu3};
decide_distance_attchmenu3=false;

_glue_star attachTo [_glueSecond_star, [attchselection_xadsadasd,attchselection_yjklh,attchselection_zdsjh]];
cutText ["Glue applied. Probably!","PLAIN DOWN"];