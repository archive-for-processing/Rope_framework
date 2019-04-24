/**
* Rope COLOUR
*v 0.8.0
* Copyleft (c) 2016-2019 
* Stan le Punk > http://stanlepunk.xyz/
* Processing 3.5.3
* Library Rope 0.7.0.1
* @author @stanlepunk
* @see https://github.com/StanLepunK/Rope_framework
*
* Pack of method to use colour, palette and method conversion
*
*/







/**
COLOUR LIST class
v 0.1.0
*/
/**
* Idea for the future add a list name for colour

* get the colour by index or name
*/
public class R_Colour implements rope.core.R_Constants, rope.core.R_Constants_Colour {
  ArrayList<Integer> list;
  PApplet pa;
  public R_Colour(PApplet pa, int... list_colour) {
    this.list = new ArrayList<Integer>();
    this.pa = pa;
    // this.list = new int[list.length];
    for(int i = 0; i < list_colour.length ; i++) {
      this.list.add(list_colour[i]);
    }
  }

  public void clear() {
    list.clear();
  }

  public void add(int c) {
    list.add(c);
  }

  public void remove(int target) {
    if(target >= 0 && target < list.size()) {
      list.remove(target);
    } else {
      System.err.println("class R_Color method remove() no target match with your demand");
    } 
  }

  public int [] get() {
    int [] result = new int[list.size()];
    for(int i = 0 ; i < list.size() ; i++) {
      result[i] = list.get(i);
    }
    return result;
  }

  public int get(int target) {
    if(target >= 0 && target < list.size()) {
      return list.get(target);
    } else {
      System.err.println("class R_Color method get() no target match with your demand, instead '0' is return");
      return 0;
    }
  }

  public float get_hue(int target) {
    if(target >= 0 && target < list.size()) {
      return pa.hue(list.get(target));
    } else {
      System.err.println("class R_Color method get() no target match with your demand, instead '0' is return");
      return 0;
    }
  }

  public float get_saturation(int target) {
    if(target >= 0 && target < list.size()) {
      return pa.saturation(list.get(target));
    } else {
      System.err.println("class R_Color method get() no target match with your demand, instead '0' is return");
      return 0;
    }
  }

  public float get_brightness(int target) {
    if(target >= 0 && target < list.size()) {
      return pa.brightness(list.get(target));
    } else {
      System.err.println("class R_Color method get() no target match with your demand, instead '0' is return");
      return 0;
    }
  }

  public float get_red(int target) {
    if(target >= 0 && target < list.size()) {
      return pa.red(list.get(target));
    } else {
      System.err.println("class R_Color method get() no target match with your demand, instead '0' is return");
      return 0;
    }
  }

  public float get_green(int target) {
    if(target >= 0 && target < list.size()) {
      return pa.green(list.get(target));
    } else {
      System.err.println("class R_Color method get() no target match with your demand, instead '0' is return");
      return 0;
    }
  }

  public float get_blue(int target) {
    if(target >= 0 && target < list.size()) {
      return pa.blue(list.get(target));
    } else {
      System.err.println("class R_Color method get() no target match with your demand, instead '0' is return");
      return 0;
    }
  }

  public float get_alpha(int target) {
    if(target >= 0 && target < list.size()) {
      return pa.alpha(list.get(target));
    } else {
      System.err.println("class R_Color method get() no target match with your demand, instead '0' is return");
      return 0;
    }
  }

  public vec3 get_hsb(int target) {
    if(target >= 0 && target < list.size()) {
      int c = list.get(target);
      return vec3(pa.hue(c),pa.saturation(c),pa.brightness(c));
    } else {
      System.err.println("class R_Color method get() no target match with your demand, instead 'null' is return");
      return null;
    }
  }

  public vec4 get_hsba(int target) {
    if(target >= 0 && target < list.size()) {
      int c = list.get(target);
      return vec4(pa.hue(c),pa.saturation(c),pa.brightness(c),pa.alpha(c));
    } else {
      System.err.println("class R_Color method get() no target match with your demand, instead 'null' is return");
      return null;
    }
  }


  public vec3 get_rgb(int target) {
    if(target >= 0 && target < list.size()) {
      int c = list.get(target);
      return vec3(pa.red(c),pa.green(c),pa.blue(c));
    } else {
      System.err.println("class R_Color method get() no target match with your demand, instead 'null' is return");
      return null;
    }
  }

  public vec4 get_rgba(int target) {
    if(target >= 0 && target < list.size()) {
      int c = list.get(target);
      return vec4(pa.red(c),pa.green(c),pa.blue(c),pa.alpha(c));
    } else {
      System.err.println("class R_Color method get() no target match with your demand, instead 'null' is return");
      return null;
    }
  }





  public vec3 [] hsb() {
    vec3[] component = new vec3[list.size()];
    for(int i = 0 ; i < list.size() ; i++) {
      int c = list.get(i);
      component[i] = vec3(pa.hue(c),pa.saturation(c),pa.brightness(c));
    }
    return component;
  }

  public vec3 [] rgb() {
    vec3[] component = new vec3[list.size()];
    for(int i = 0 ; i < list.size() ; i++) {
      int c = list.get(i);
      component[i] = vec3(pa.red(c),pa.green(c),pa.blue(c));
    }
    return component;
  }


  public vec4 [] hsba() {
    vec4[] component = new vec4[list.size()];
    for(int i = 0 ; i < list.size() ; i++) {
      int c = list.get(i);
      component[i] = vec4(pa.hue(c),pa.saturation(c),pa.brightness(c),pa.alpha(c));
    }
    return component;
  }

  public vec4 [] rgba() {
    vec4[] component = new vec4[list.size()];
    for(int i = 0 ; i < list.size() ; i++) {
      int c = list.get(i);
      component[i] = vec4(pa.red(c),pa.green(c),pa.blue(c),pa.alpha(c));
    }
    return component;
  }

  public float [] hue() {
    float[] component = new float[list.size()];
    for(int i = 0 ; i < list.size() ; i++) {
      component[i] = pa.hue(list.get(i));
    }
    return component;
  }

  public float [] saturation() {
    float[] component = new float[list.size()];
    for(int i = 0 ; i < list.size() ; i++) {
      component[i] = pa.saturation(list.get(i));
    }
    return component;
  }

  public float [] brightness() {
    float[] component = new float[list.size()];
    for(int i = 0 ; i < list.size() ; i++) {
      component[i] = pa.brightness(list.get(i));
    }
    return component;
  }

  public float [] red() {
    float[] component = new float[list.size()];
    for(int i = 0 ; i < list.size() ; i++) {
      component[i] = pa.red(list.get(i));
    }
    return component;
  }

  public float [] green() {
    float[] component = new float[list.size()];
    for(int i = 0 ; i < list.size() ; i++) {
      component[i] = pa.green(list.get(i));
    }
    return component;
  }

  public float [] blue() {
    float[] component = new float[list.size()];
    for(int i = 0 ; i < list.size() ; i++) {
      component[i] = pa.blue(list.get(i));
    }
    return component;
  }

  public float [] alpha() {
    float[] component = new float[list.size()];
    for(int i = 0 ; i < list.size() ; i++) {
      component[i] = pa.blue(list.get(i));
    }
    return component;
  }
}




/**
GET COLORMODE
v 0.0.2
*/
/**
* getColorMode()
* @return float array of your color environment.
* @param boolean print_info_is retrun a print about the color environment
*/
float [] getColorMode(boolean print_info_is) {
  float colorMode = g.colorMode ;
  float x = g.colorModeX;
  float y = g.colorModeY;
  float z = g.colorModeZ;
  float a = g.colorModeA;
  float array[] = {colorMode,x,y,z,a};
  if (print_info_is && g.colorMode == HSB) {
    println("HSB",x,y,z,a);
  } else if(print_info_is && g.colorMode == RGB) {
    println("RGB",x,y,z,a);
  }
  return array;
}

float [] getColorMode() {
  return getColorMode(false);
}

/**
camaieu 
v 0.1.1
*/
// return hue or other date in range of specific data float
float camaieu(float max, float color_ref, float range) {
  float camaieu = 0 ;
  float which_color = random(-range, range) ;
  camaieu = color_ref +which_color ;
  if(camaieu < 0 ) camaieu = max +camaieu ;
  if(camaieu > max) camaieu = camaieu -max ;
  return camaieu ;
}







/**
color pool 
v 0.4.0
*/
int [] color_pool(int num) {
  float hue_range = -1;
  int num_group = 1;
  float key_hue = -1;
  return color_pool(num, num_group, key_hue, hue_range, null, null, null) ;
}

int [] color_pool(int num, float key_hue, float hue_range) {
  int num_group = 1;
  return color_pool(num, num_group, key_hue, hue_range, null, null, null) ;
}

int [] color_pool(int num, int num_group, float key_hue, float hue_range) {
  return color_pool(num, num_group, key_hue, hue_range, null, null, null);
}

int [] color_pool(int num, int num_group, float key_hue, float hue_range, vec2 sat_range, vec2 bright_range) {
  return color_pool(num, num_group, key_hue, hue_range, sat_range, bright_range, null);
}

int [] color_pool(int num, int colour, float hue_range, float sat_range, float bri_range) {
  return color_pool(num,1,colour,hue_range,sat_range,bri_range);
}

int [] color_pool(int num, int num_group, int colour, float hue_range, float sat_range, float bri_range) {
  int ref = g.colorMode;
  float x = g.colorModeX;
  float y = g.colorModeY;
  float z = g.colorModeZ;
  float a = g.colorModeA;
  colorMode(HSB,360,100,100,100);

  float h = hue(colour);
  float s = saturation(colour);
  float s_min = s -sat_range;
  if(s_min < 0) s_min = 0;
  if(s_min > g.colorModeY) s_min = g.colorModeY;
  float s_max = s +sat_range;
  if(s_max < 0) s_max = 0;
  if(s_max > g.colorModeY) s_max = g.colorModeY;


  float b = brightness(colour);
  float b_min = b -bri_range;
  if(b_min < 0) b_min = 0;
  if(b_min > g.colorModeZ) b_min = g.colorModeZ;
  float b_max = b +bri_range;
  if(b_max < 0) b_max = 0;
  if(b_max > g.colorModeZ) b_max = g.colorModeZ;

  colorMode(ref,x,y,z,a);
  return color_pool(num,num_group,h,hue_range,vec2(s_min,s_max),vec2(b_min,b_max),null);
}


// color pool by group
int [] color_pool(int num, int num_group, float key_hue, float hue_range, vec2 sat_range, vec2 bright_range, vec2 alpha_range) {
  int ref = g.colorMode;
  float x = g.colorModeX;
  float y = g.colorModeY;
  float z = g.colorModeZ;
  float a = g.colorModeA;
  colorMode(HSB,360,100,100,100);
  
  // create range if necessary
  if(hue_range < 0) {
    hue_range = g.colorModeX *.5;
  }

  if(sat_range == null) {
    sat_range = vec2(g.colorModeY);
  }
  if(bright_range == null) {
    bright_range = vec2(g.colorModeZ);
  }

  if(alpha_range == null) {
    alpha_range = vec2(g.colorModeA);
  }
  

  // create ref
  float [] color_ref = new float[num_group];
  if(key_hue >= 0 ) {
    color_ref[0] = key_hue;
  } else {
    color_ref[0] = random(g.colorModeX);
  }
  if(num_group > 1) {
    float step = g.colorModeX / num_group;
    for(int i = 1 ; i < num_group ; i++) {
      color_ref[i] = color_ref[i -1] + step;
      if(color_ref[i] > g.colorModeX) {
        color_ref[i] = color_ref[i] - g.colorModeX;
      }      
    }
  }

  int [] list = new int[num];
  int count = 0;
  int step = num / num_group;
  int next_stop = step;
  for(int i = 0 ; i < list.length ; i++) {
    if(i > next_stop) {
      next_stop += step;
    }
    float saturation = random(sat_range);
    float brightness = random(bright_range);
    float alpha = random(alpha_range);
    float hue = camaieu(g.colorModeX, color_ref[count], hue_range);
    list[i] = color(hue, saturation,brightness, alpha);
    count++;
    if(count >= color_ref.length) count = 0;

  }
  // back to original colorMode
  colorMode(ref,x,y,z,a);
  return list ;
}
























/**
component range
*/
boolean alpha_range(float min, float max, int colour) {
  float alpha = alpha(colour) ;
  return in_range(min, max, alpha) ;
}

boolean red_range(float min, float max, int colour) {
  float  r = red(colour) ;
  return in_range(min, max, r) ;
}

boolean green_range(float min, float max, int colour) {
  float  g = green(colour) ;
  return in_range(min, max, g) ;
}

boolean blue_range(float min, float max, int colour) {
  float  b = blue(colour) ;
  return in_range(min, max, b) ;
}

boolean saturation_range(float min, float max, int colour) {
  float  s = saturation(colour) ;
  return in_range(min, max, s) ;
}

boolean brightness_range(float min, float max, int colour) {
  float  b = brightness(colour) ;
  return in_range(min, max, b) ;
}


boolean hue_range(float min, float max, int colour) {
  int c_m = g.colorMode ;
  float c_x = g.colorModeX ;
  float c_y = g.colorModeY ;
  float c_z = g.colorModeZ ;
  float c_a = g.colorModeA ;
  colorMode(HSB, c_x, c_y, c_z, c_a) ;
  float  h = hue(colour) ;

  boolean result = false ;
  // test for the wheel value, hue is one of them ;
  result = in_range_wheel(min, max, c_x, h) ;
  // return to the current colorMode
  colorMode(c_m, c_x, c_y, c_z, c_a) ;
  return result ;
}












/**
convert color 0.3.0
*/
vec3 hsb_to_rgb(float hue, float saturation, float brightness) {
  vec4 ref = vec4(g.colorModeX, g.colorModeY, g.colorModeY, g.colorModeA);
  int c = color(hue,saturation,brightness);

  colorMode(RGB,255) ;
  vec3 rgb = vec3(red(c),green(c),blue(c)) ;
  // return to the previous colorMode
  colorMode(HSB,ref.x,ref.y,ref.z,ref.w) ;
  return rgb;
}

vec4 to_cmyk(int c) {
  return rgb_to_cmyk(red(c),green(c),blue(c));
}


vec3 to_rgb(int c) {
  return vec3(red(c),green(c),blue(c));
}

vec4 to_rgba(int c) {
  return vec4(red(c),green(c),blue(c),alpha(c));
}

vec3 to_hsb(int c) {
  return vec3(hue(c),saturation(c),brightness(c));
}

vec4 to_hsba(int c) {
  return vec4(hue(c),saturation(c),brightness(c),alpha(c));
}





vec4 rgb_to_cmyk(float r, float g, float b) {
  // convert to 0 > 1 value
  r = r/this.g.colorModeX;
  g = g/this.g.colorModeY;
  b = b/this.g.colorModeZ;
  // RGB to CMY
  float c = 1.-r;
  float m = 1.-g;
  float y = 1.-b;
  // CMY to CMYK
  float var_k = 1;
  if (c < var_k) var_k = c;
  if (m < var_k) var_k = m;
  if (y < var_k) var_k = y;
  // black only
  if (var_k == 1) { 
    c = 0;
    m = 0;
    y = 0;
  } else {
    c = (c-var_k)/(1-var_k);
    m = (m-var_k)/(1-var_k);
    y = (y-var_k)/(1-var_k);
  }
  float k = var_k; 
  return vec4(c,m,y,k);
}







vec3 cmyk_to_rgb(float c, float m, float y, float k) {
  vec3 rgb = null;
   // cmyk value must be from 0 to 1
  if(colour_normal_range_is(c) && colour_normal_range_is(m) && colour_normal_range_is(y) && colour_normal_range_is(k)) {
    // CMYK > CMY
    c = (c *(1.-k)+k);
    m = (m *(1.-k)+k);
    y = (y *(1.-k)+k);
    //CMY > RGB
    float red = (1.- c) * g.colorModeX;
    float green = (1.- m) * g.colorModeY;
    float blue = (1.- y) * g.colorModeZ;
    rgb = vec3(red,green,blue);

  } else {
    printErr("method cmyk_to_rgb(): the values c,m,y,k must have value from 0 to 1.\n","yours values is cyan",c,"magenta",m,"yellow",y,"black",k);
  }
  return rgb;
  
}

boolean colour_normal_range_is(float v) {
  if(v >= 0. && v <= 1.) return true; else return false;
}










// color context
/*
* good when the text is on different background
*/
int color_context(int color_ref, int threshold, int clear, int dark) {
  int new_color ;
  if(brightness(color_ref) < threshold ) {
    new_color = clear;
  } else {
    new_color = dark ;
  }
  return new_color ;
}












