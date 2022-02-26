if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-5";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import solids;
import three;
size(8cm);

currentprojection=orthographic(0.7, -4, 1);
currentlight=nolight;
triple center = (0,0,0);
triple ringctr = (0.5, 0, 0);
real R=1, RS=0.7, inc=100, lat=45, lon=45, tlat=50, tlon=100;
dot(center);
real r = 2;
dot(ringctr);
revolution Earth=sphere(center, R);

draw(surface(Earth), surfacepen=white+opacity(.1), meshpen=0.7*black);
draw(arc(ringctr, sqrt(3)/2, 0, 90, 180, 270), linewidth(2));
draw(arc(ringctr, sqrt(3)/2, 180, 270, 0, 90), linewidth(2)+linetype("4 4"));
dot((r, 0, 0));

draw((0,0,0)--(r, 0, 0));
draw(center--(0.5, 0, sqrt(3)/2));
label("$R$", (0.25, 0, sqrt(3)/4), dir(120));
label("$dM$", (0.5, 0, sqrt(3)/2), dir(40)*1.5);
label("$\theta$", center, dir(30)*2);
label("$r$", (r*0.75, 0, 0), dir(90));
label("$m_0$", (r, 0, 0), dir(50));
