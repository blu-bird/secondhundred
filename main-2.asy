if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import solids;
import three;
size(7cm);
real theta = 40;
currentprojection=orthographic(0.7, -4, 1);
currentlight=nolight;
triple center = (0,0,0);
triple ringctr = (0, 0, Cos(theta));
real R=1, RS=0.7, inc=100, lat=45, lon=45, tlat=50, tlon=100;
dot(center);
real r = 2;
dot(ringctr);
revolution Earth=sphere(center, R);
triple contact = (Sin(theta), 0, Cos(theta));

draw(surface(Earth), surfacepen=white+opacity(.1), meshpen=0.7*black);
draw(arc(ringctr, Sin(theta), 90, 180, 90, 0), linewidth(2));
draw(arc(ringctr, Sin(theta), 90, 0, 90, 180), linewidth(2)+linetype("4 4"));
draw(center--(Sin(theta), 0, Cos(theta)));
draw(center--(0,0,R));
draw(ringctr--contact);

label("$R$", (Sin(theta)/2, 0, Cos(theta)/2), dir(360-theta));
label("$dM$", contact, dir(40)*1.5);
label("$\theta$", center, dir(90-(theta/2))*3);
label("$R \sin\theta$", (Sin(theta)/2, 0, Cos(theta)), dir(90));
