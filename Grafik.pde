import controlP5.*;
import processing.sound.*;

ControlP5 cp1,cp2;
SoundFile file1,file2;


void setup(){
  size(1000,800);
  frameRate(20);
  background(#6a5acd);
  
  file1 = new SoundFile(this,"\\data\\1.aif");   
  file2 = new SoundFile(this,"\\data\\zil.mp3");
  
  
  file1.amp(1);
  file2.amp(1);
  
  
  cp1 = new ControlP5(this);
  cp2 = new ControlP5(this);
  cp1.addTextfield("Saat").setPosition(800,20).setSize(50,50).setAutoClear(false);
  cp2.addTextfield("Dakika").setPosition(850,20).setSize(50,50).setAutoClear(false);
  cp1.addBang("Kaydet").setPosition(900,20).setSize(48,50);
  cp2.addBang("Iptal").setPosition(950,20).setSize(50,50);
}

float x=0,y=0, a = 0, r=150,  inc  = 6;               float x1 , y1 , rs = 200; 
float s=0,g=0, c = 0, r2=100, inc2 = 6;
float v=0,w=0, b = 0, r1=75,  inc1 = 30;
float r0=220;

float k1=0, l1=0;
float k2=0, l2=0;
float k3=0, l3=0;
float k4=0, l4=0;
float k5=0, l5=0;
float k6=0, l6=0;
float k7=0, l7=0;
float k8=0, l8=0;


int st=15,dk=15;


void draw(){
    
    //Saniye
    
    x=500 + r*cos(radians(a + 270));             x1=500 + rs*cos(radians(a + 270)); 
    y=400 + r*sin(radians(a + 270));             y1=400 + rs*sin(radians(a + 270));
    a+=inc;
     
     // Dakika
   
    s=500 + r2*cos(radians(c + 270));
    g=400 + r2*sin(radians(c + 270));
    
    if(b==st*30 && c==dk*6 && a==6){
      file2.play();
    }
    
    if(a==360){
     c+=inc2;
   }
   
    // Saat
   
   v=500 + r1*cos(radians(b + 270));
   w=400 + r1*sin(radians(b + 270));
   
    if(c==360){
      c=0;
      b+=inc1;
   }

     
   k1=500 + r0*cos(radians(30));
   l1=400 + r0*sin(radians(30));
   k2=500 + r0*cos(radians(60));
   l2=400 + r0*sin(radians(60));
   k3=500 + r0*cos(radians(120));
   l3=400 + r0*sin(radians(120));
   k4=500 + r0*cos(radians(150));
   l4=400 + r0*sin(radians(150));
   k5=500 + r0*cos(radians(210));
   l5=400 + r0*sin(radians(210));
   k6=500 + r0*cos(radians(240));
   l6=400 + r0*sin(radians(240));
   k7=500 + r0*cos(radians(300));
   l7=400 + r0*sin(radians(300));   
   k8=500 + r0*cos(radians(330));
   l8=400 + r0*sin(radians(330));
   
   
   
   
  stroke(#696969);
  strokeWeight(1);
  fill(#696969);
  circle(500,400,480);     // dış cember
  fill(255);
  circle(500,400,440);
  stroke(#A9A9A9);
  
  if(a==366){
    file1.play();
    fill(random(255),random(255),random(255));
    a=0;  
  }
  else{
   fill(#A9A9A9);
  }
  circle(500,400,364);   // iç cember
  stroke(255,0,0);
  fill(255,0,0);
  circle(x1,y1,16);    // saniye çemberi
  fill(255);
  strokeWeight(5);
  circle(500,400,7);
  strokeWeight(2);
  
  if(b==360){
     b=0;
  }
  
  
  
  
  line(500,400,x,y);
  line(500,400,v,w);
  line(500,400,s,g);
  
  stroke(1);
  strokeWeight(2);
  
  line(k1-12,l1-6,k1,l1);
  line(k2-7,l2-10,k2,l2); 
  line(k3+5,l3-11,k3,l3); 
  line(k4+11,l4-9,k4,l4);
  line(k5+10,l5+6,k5,l5);
  line(k6+8,l6+10,k6,l6); 
  line(k7-6,l7+11,k7,l7);
  line(k8-10,l8+8,k8,l8);
  
  stroke(1);
  strokeWeight(4);
  
  line(493,180,493,200);
  line(501,180,501,200);
  line(280,400,300,400);
  line(500,620,500,600);
  line(720,400,700,400);
 
  Sayi sayi = new Sayi();
  
}

class Sayi{
 Sayi(){
   fill(1);
   textSize(22);
   text("12",486,244);
   text("11",408,273);
   text("10",353,330);
   text("9",330,408);
   text("8",355,485);
   text("7",415,545);
   text("6",494,573);
   text("5",578,548);
   text("4",636,493);
   text("3",660,408);
   text("2",636,328);
   text("1",576,268);
   fill(0);
   textSize(24);
   text("traore",468,290);
   fill(255);
}
}

void Kaydet(){
     st=parseInt(cp1.get(Textfield.class,"Saat").getText());
     dk=parseInt(cp2.get(Textfield.class,"Dakika").getText());
}

void Iptal(){
     st=15;
     dk=15;
}
