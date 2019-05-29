///scp_follow(sx,sy,div);
var sx, sy, dv;
sx=argument[0];
sy=argument[1];
dv=argument[2];

/*x+=ceil((sx-x)/dv);
y+=ceil((sy-y)/dv);*/

var kx, ky;
kx=0; ky=0;
if x+1<sx {kx=point_distance(x,0,sx,0)/dv;} else if x<sx {sx=x;}
if x-1>sx {kx=-point_distance(x,0,sx,0)/dv;} else if x>sx {sx=x;}
if y+1<sy {ky=point_distance(y,0,sy,0)/dv;} else if y<sy {sy=y;} 
if y-1>sy {ky=-point_distance(y,0,sy,0)/dv;} else if y>sy {sy=y;}
x+=kx; y+=ky;

return point_distance(x,y,sx,sy);
/*if kx==0 && ky==0 return 1;
else return 0;*/
