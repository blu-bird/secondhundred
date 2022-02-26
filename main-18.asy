if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-18";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import graph;
size(175);
real wall = 5;
real D = 9;
real y = 4;
real d = 1.5;
pair sp1 = (0, d);
pair sp2 = (0, -d);
draw(Circle(sp1, 0.1));
draw(Circle(sp2, 0.1));
draw((D, -wall)--(D, wall));
draw((0, wall)--sp1+dir(90)*0.2, linetype("4 4"));
draw((0, -wall)--sp2+dir(270)*0.2, linetype("4 4"));
draw(sp2+dir(90)*0.2--sp1+dir(270)*0.2, linetype("4 4"));
dot((D, y));
dot((0, 0));
draw((0,0)--(D, 0), linetype("4 4"));
draw((0, -4)--(D, -4), Arrows);
dot((D, 0));
draw((D+0.5, 0)--(D+0.5, y), Arrows);
draw((-0.5, d)--(-0.5, -d), Arrows);
draw(sp1+dir(25)*0.2--(D, y));
draw(sp2+dir(40)*0.2--(D, y));
draw((0, 0)--(D,y), linetype("8 8"));
for (int r = 0; r < 3; ++r)
{
draw(arc(sp1, 0.4+0.2*r, 60, -60));
draw(arc(sp2, 0.4+0.2*r, 60, -60));
}
label("$d$", (-0.5, d)--(-0.5, -d), W);
label("$R$", (0,0)--(D,y), dir(140));
label("$y$", (D+0.5, 0)--(D+0.5, y), E);
label("$D$", (0+0.2, -4)--(D-0.2, -4), S);
label("$\theta$", (0,0), dir(12)*7);
