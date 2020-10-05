public class Point {

  private float[] p = new float[2];
  private color relleno = color (255,255,0);
  
  public Point(float x, float y) {
    p[0] = x;
    p[1] = y;
  }

  public void display() {
    fill(relleno);
    circle(p[0], p[1], 10);
  }

  public void move() {
    p[0] = mouseX;
    p[1] = mouseY;
  }

  public float getAreas(Triangle t) {
    float area1 = getArea(p, t.getV1(), t.getV2());
    float area2 = getArea(p, t.getV1(), t.getV3());
    float area3 = getArea(p, t.getV2(), t.getV3());
    return area1 + area2 + area3;
  }

  private float getArea(float[] v1, float[] v2, float[] v3) {
    float[] v1v2 = new float[2];
    float[] v1v3 = new float[2];
    float[] nv1v2 = new float[2];
    v1v2[0] = v2[0] - v1[0]; 
    v1v2[1] = v2[1] - v1[1];
    v1v3[0] = v3[0] - v1[0]; 
    v1v3[1] = v3[1] - v1[1];
    nv1v2[0] = v1v2[1]; 
    nv1v2[1] = - v1v2[0];
    float area =  abs((nv1v2[0] * v1v3[0]) + (nv1v2[1] * v1v3[1])) * 0.5;
    return area;
  }
  
  public void setColor(color c){
    this.relleno = c;
  }
}
