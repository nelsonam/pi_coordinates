float x=0;
float y=0;

//for larger sizes, load in a data file and convert it into an array
//int[] digits = {3,1,4,1,5,9,2,6,5,3,5,8,9,7,9,3,2,3,8,4,6,2,6,4,3,3,8,3,2,7,9,5,0,2,8,8,4,1,9,7,1,6,9,3,9,9,3,7,5,1,0,5,8,2,0,9,7,4,9,4,4,5,9,2,3,0,7,8,1,6,4,0,6,2,8,6,2,0,8,9,9, 8,6,2,8,0,3,4,8,2,5, 3,4,2,1,1,7,0,6,7,9};

int digit_index = 0;
//not use right now, in the fuuuuture
File file = new File("digits");

ArrayList digs;




void setup()
{
    size(1000,1000);
  String[] digits = loadStrings("digits.txt");
  String data = digits[0];
  digs = new ArrayList();
  for(int i = 0; i<data.length()-3; i+=3)
  {
    int num = Integer.parseInt(data.substring(i,i+3));
    println(num);
    digs.add(num);
  }
  ellipseMode(CENTER);
        fill(255);
  for(int j = 0; j<digs.size()-5; j+=3)
  {
    String a = digs.get(j).toString();
    println("a: "+Integer.parseInt(a));
    String b = digs.get(j+1).toString();
    println("b: "+Integer.parseInt(b));
    String c = digs.get(j+2).toString();
    println("c: "+Integer.parseInt(c));
    
    String d = digs.get(j+3).toString();
    String e = digs.get(j+4).toString();
    String f = digs.get(j+5).toString();
    //println((float)Integer.parseInt(a));
    fill((Integer.parseInt(d))/(999/255),(Integer.parseInt(e))/(999/255),(Integer.parseInt(f))/(999/255));
    ellipse((float)Integer.parseInt(a),(float)Integer.parseInt(b),10,10);
  
    
  }

  //background(255);
  //smooth();
  //noStroke();
  //fill(0);
  //ellipseMode(CENTER);
  //fill(314-255,159/255,265/255);
  //  fill(265/(999/255),358/(999/255),979/(999/255));
  //ellipse(314,159,10,10);
  //point(314,159);
  //point(265,358);
  //ellipse(265,358,10,10);
  //ellipse(979,323,10,10);

}
