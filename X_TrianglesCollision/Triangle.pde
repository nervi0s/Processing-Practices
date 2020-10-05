public class Triangle {
  
  private float[] v1 = new float[2];
  private float[] v2 = new float[2];
  private float[] v3 = new float[2];
  private color relleno = color (255);
  private float speedX;
  
  public Triangle(float v1x, float v1y, float v2x, float v2y, float v3x, float v3y, float speedX){
    v1[0] = v1x; v1[1] = v1y;
    v2[0] = v2x; v2[1] = v2y;
    v3[0] = v3x; v3[1] = v3y;
    this.speedX = speedX;
  }
  
  public void display(){
    fill(relleno);
    triangle(v1[0], v1[1], v2[0], v2[1], v3[0], v3[1]);
  }
  
  public void move(){
    v1[0] += speedX;
    v2[0] += speedX;
    v3[0] += speedX;
  }
  
  public void stoped(){
    speedX = 0;
  }
  
  public float getArea(){
    float[] v1v2 = new float[2];
    float[] v1v3 = new float[2];
    float[] nv1v2 = new float[2];
    v1v2[0] = v2[0] - v1[0]; v1v2[1] = v2[1] - v1[1];
    v1v3[0] = v3[0] - v1[0]; v1v3[1] = v3[1] - v1[1];
    nv1v2[0] = v1v2[1]; nv1v2[1] = - v1v2[0];
    float area =  abs((nv1v2[0] * v1v3[0]) + (nv1v2[1] * v1v3[1])) * 0.5;
    return area;
  }
  
  public void detectCollision(Triangle otherTriangle){
    Point[] points = new Point[3];
    
    points[0] = new Point(v1[0], v1[1]);
    points[1] = new Point(v2[0], v2[1]);
    points[2] = new Point(v3[0], v3[1]);
    
    for(Point p : points){      
      if(p.getAreas(otherTriangle) == otherTriangle.getArea()){
        setColor(color(255,0,0));
        stoped();
        otherTriangle.setColor(color(255,0,0));
        otherTriangle.stoped();
        p.setColor(color(255));
      }
      p.display();
    }
    
  }
  
  public float[] getV1(){
    return this.v1;  
  }
  
  public float[] getV2(){
    return this.v2;  
  }
  
  public float[] getV3(){
    return this.v3;  
  }
 
  public void setColor(color c){
    relleno = c;
  }
} 
