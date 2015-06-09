String txt = "105";
float rW;
float rH;
float FONTSIZE = 10;
float FACTOR;

void setup() {
  size(400, 400);
  frameRate(10);
  
  textAlign(CENTER, CENTER);
  
 // float th = textHeight(txt, 300);
  fill(255, 0, 0);
 // rect(20, 20, 300, th);
  fill(0);
  //text(txt, 20, 20, 300, height);
}


void draw() {
  fill(0);
  rW = width/4;
  rH = height/4;
  rect(0, 0, rW, rH);
  if(FONTSIZE < 48) {
    FONTSIZE++;
  } else {
    FONTSIZE = 10;
  }

  drawText();
}

void drawText() {
  pushStyle();
  textSize(FONTSIZE);
  textAlign(LEFT, CENTER);
  float x = (rW * .5) - (textWidth(txt) * .5);
  float y = (rH / 2) - (textAscent()+textDescent())/(FONTSIZE*getFactor(FONTSIZE));
  //float y2 = rH/2;
  fill(255);
  stroke(255);
  line(0, rH/2, rW, rH/2);
  line(rW/2, 0, rW/2, rH);
  text(txt, x, y);
  //text(txt, x, y2, 10);
  stroke(255);
  popStyle();
}

float getFactor(float siz) {
  if(siz >= 0 && siz < 10) {
    return 1;
  }
  else if(siz >= 10 && siz <= 20) {
    return .85;
  }
  else if(siz > 20 && siz <= 30){
    return .7;
  }
  else if(siz > 30 && siz <= 40) {
    return .4;
  }
  else {
    return .3;
  }
}