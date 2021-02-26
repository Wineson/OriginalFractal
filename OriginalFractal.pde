public void setup()
{
  size(500,500);
  rectMode(CENTER);
}
public void draw()
{
  fractal(250, 300, 800, 800);
}
public void mouseDragged()//optional
{

}
public void fractal(int x, int y, int len, int wid) 
{
  if(len < 20){
   rect(x - len, y - len, len/3, wid/3);
  }
  else{
    strokeWeight(2);
    fill(wid,len/2,len/2);
    fractal(x - len/4, y, len/2, wid);
    fractal(x + len/4, y, len/2, wid);
    fractal(x, y + len/2, len/2, wid);
    fractal(x, y - len/2, len/2, wid);
  }
}
