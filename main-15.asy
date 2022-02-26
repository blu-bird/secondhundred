if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-15";
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
dot((0.75, f(0.75)));
draw((0.75, f(0.75))--dir(35)+(0.75, f(0.75)), Arrow);
draw((0.75, f(0.75))--dir(214)+(0.75, f(0.75)), Arrow);
label("$i$", (0.5, f(0.5)), dir(135)*4);
label("$i+1$", (1, f(1)), N*4);
