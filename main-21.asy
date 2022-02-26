if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-21";
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
real a = 2.8;
real d = 0.9;
pair s1L = (0, d);
pair s1U = (0, a+d);
pair s2U = (0, -d);
pair s2L = (0, -a-d);
draw(s1L+dir(180)*0.1--s1L+dir(0)*0.1);
draw(s2U+dir(180)*0.1--s2U+dir(0)*0.1);
draw(s1U+dir(180)*0.1--s1U+dir(0)*0.1);
draw(s2L+dir(180)*0.1--s2L+dir(0)*0.1);
draw(s1L+0.1*dir(90)--s1U+0.1*dir(270), linetype("4 4"));
draw(s2L+0.1*dir(90)--s2U+0.1*dir(270), linetype("4 4"));
draw((D, -wall)--(D, wall));
draw((0, wall)--s1U);
draw((0, -wall)--s2L);
draw(s2U--s1L);
dot((0, 0));
draw((0,0)--(D, 0), linetype("4 4"));
dot((D, 0));
draw((D+0.5, 0)--(D+0.5, y), Arrows);
label("$y$", (D+0.5, 0)--(D+0.5, y), E);
label("$D$", (0+0.2, -4)--(D-0.2, -4), S);
dot((D, y));
for (int i = -5; i < 6; ++i) {
draw((D, y)--(0, d+a/2 + a/12*i), linetype("2 2")+lightgrey);
}
for (int i = -5; i < 6; ++i) {
draw((D, y)--(0, -d-a/2 + a/12*i), linetype("2 2")+lightgrey);
}
draw((0, -4)--(D, -4), Arrows);
draw((0, 0)--(D,y), linetype("8 8"));
draw((-0.5, d)--(-0.5, -d), Arrows);
label("$d$", (-0.5, d)--(-0.5, -d), W);
draw((-0.5, d)--(-0.5, a+d), Arrows);
label("$a$", (-0.5, d)--(-0.5, a+d), W);
dot((0,-3.2));
dot((0,-2.3));
label("$n\delta$", (-0.5, -2.3)--(-0.5, -3.2), W);
draw((-0.5, -2.3)--(-0.5, -3.2), Arrows);
draw((0, -3.2)--(D,y), linetype("8 8"));
label("$\theta$", (0,0), dir(15)*7);
label("$R$", (0,0)--(D,y), dir(140));
