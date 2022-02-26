if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-20";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import graph;
size(200);
real wall = 5;
real D = 7;
real y = 4;
real a = 2.5;
pair sp1 = (0, a);
pair sp2 = (0, -a);
draw(sp1+dir(180)*0.1--sp1+dir(0)*0.1);
draw(sp2+dir(180)*0.1--sp2+dir(0)*0.1);
draw((D, -wall)--(D, wall));
draw((0, wall)--sp1);
draw((0, -wall)--sp2);
draw(sp2+dir(90)*0.2--sp1+dir(270)*0.2, linetype("4 4"));
dot((0, 0));
draw((0,0)--(D, 0), linetype("4 4"));
dot((D, 0));
draw((D+0.5, 0)--(D+0.5, y), Arrows);
label("$y$", (D+0.5, 0)--(D+0.5, y), E);
label("$D$", (0+0.2, -4)--(D-0.2, -4), S);
dot((D, y));
for (int i = -5; i < 6; ++i) {
draw((D, y)--(0, a/6*i), linetype("2 2")+lightgrey);
}
//for (int i = 0; i < 6; ++i) {
//draw(arc((0,0), 0.5+0.2*i, 60, -60));
//}
draw((0, -4)--(D, -4), Arrows);
draw((0, 2)--(D,y), linetype("8 8"));
dot((0,2));
label("$nd$", (-0.5, 2)--(-0.5,0), W);
draw((-0.5, 2)--(-0.5,0), Arrows);
draw((-1.5, a)--(-1.5, -a), Arrows);
label("$a$", (-1.5, a)--(-1.5, -a), W);
draw((0,0)--(D,y), linetype("8 8"));
label("$\theta$", (0,0), dir(15)*7);
label("$R$", (0,0)--(D,y), dir(320));
