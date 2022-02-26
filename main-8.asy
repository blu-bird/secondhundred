if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-8";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import three;
size(8cm);

triple eye = (0.6, 1, 0.4);
currentprojection = orthographic(eye);

real planesize = 2.5, z = 0.3;

real ps = planesize/2;
draw((ps, ps, 0)--(-ps, ps, 0)--(-ps, -ps, 0)--(ps, -ps, 0)--cycle);
draw((ps * X)--(1.4 * ps * X), dashed, EndArrow3);
draw((-ps * X)--(-1.4 * ps * X), dashed, EndArrow3);
draw((ps * Y)--(1.4 * ps * Y), dashed, EndArrow3);
draw((-ps * Y)--(-1.4 * ps * Y), dashed, EndArrow3);

dot(z * Z);
draw(O--(z * Z));
label("$z$", z/2 * Z, dir(180));
