if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-16";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import graph;
size(200);
real shift = 0.2;
real down = -0.2;
real f(real x)
{
return 3*sin(pi*x/4);
}
Label f;
f.p=fontsize(6);
draw(graph(f,0,12));
draw((0,0)--(12, 0), linetype("8 8"));
draw((10, 3)--(10,0), Arrows);
label("$A$", (10, 3)--(10,0), E);
draw((2, 3.5)--(10,3.5), Arrows);
label("$\lambda$", (10, 3.5)--(2,3.5), N);

dot((0,0), blue); dot((4,0), blue); dot((8,0), blue); dot((12,0), blue);
dot((2,3), red); dot((6,-3), red); dot((10, 3), red);
