// week01_6_mouse_Wheel_strokeWeight_circleSize_ellipse
// 整合 week01_4 week01_5 讓大小可以mouse wheel改變
float circleSize = 5; //小一點

void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  strokeWeight(circleSize); // 把剛剛的圓, 當成筆的大小
  if (mousePressed){ // mouse 按下去, 有兩種可能
    if (mouseButton==LEFT) stroke(0); // 畫黑線
    if (mouseButton==RIGHT) stroke(255); // 用白色清掉
    line(mouseX, mouseY, pmouseX, mouseY);
  }
  noStroke(); // 不要畫外框
  rect(0, 0, 100, 100);
  stroke(0); // 黑色的線
  strokeWeight(1); // 左上角小圈圈的外框
  ellipse(50, 50, circleSize, circleSize); // 劃出圈
}

void mouseWheel(MouseEvent e) {
  // 每次滾動改變大小(往下滾放大, 往上滾缩小)
  circleSize -= e.getCount();
}
