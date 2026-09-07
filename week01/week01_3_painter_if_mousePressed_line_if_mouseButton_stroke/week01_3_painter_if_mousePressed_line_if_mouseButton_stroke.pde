// week01_3_painter_if_mousePressed_line_if_mouseButton_stroke
// 想做一個(簡單的)小畫家, 用 mouse 畫圖
void setup(){
  size(500, 500);
}

void draw(){
  if (mouseButton==LEFT) stroke(255, 0, 0); // 左 紅
  if (mouseButton==CENTER) stroke(0, 0, 255); // 中 藍
  if (mouseButton==RIGHT) stroke(255, 0, 255); // 右 紫
  if (mousePressed) line(mouseX, mouseY, pmouseX, pmouseY);
  // 按下去時 (用剛剛的色彩) 畫線 mouse座標、之前mouse座標
}
