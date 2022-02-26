if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-13";
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
return sin(x);
}
Label f;
f.p=fontsize(6);
draw(graph(f,-2,3));
for (int i = -2; i < 5; ++i)
{
draw( Circle( (i*0.5, f(i*0.5)), 0.1) );

//label((string) (i+3), (i*0.5, f(i*0.5)), N*4);
}
label("$i$", (0.5, f(0.5)), dir(135)*4);
label("$i-1$", (0, 0), dir(150)*4);
label("$i+1$", (1, f(1)), N*4);
draw((0.5+shift, f(0.5))--(0.5+shift,0), Arrows);
label("$\Delta y$", (0.5+shift, f(0.5))--(0.5+shift,0), E);
draw((0, down)--(0.5, down), Arrows);
label("$\Delta x$", (0, down)--(0.5, down), S);
