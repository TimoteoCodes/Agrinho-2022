varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float pixelH;
uniform float pixelW;
uniform float springs[2000];
uniform float time;
uniform float fizzle;
uniform float springCount;

void main()
{
	//vec2 p = v_vTexcoord;
	//float py = 1.0 - p.y;
	//float pixelsIn = (p.x / pixelW);
	//int chunk = int(floor(p.x * springCount));
	//int nextchunk = int(min(floor(p.x * springCount)+1.0, 99.0));
	//float chunkpercent = (p.x*springCount) - floor(p.x*springCount);
	//p.y = p.y + ((sin((pixelsIn*0.1) + time)*(1.5*pixelH)) * py);
	//p.y = p.y + ((sin((pixelsIn*0.15) - time)*1.2)*(1.5*pixelH)) * py);
	//p.y = p.y + (max(springs[chunk] * pixelH, springs[nextchunk] * pixelH, chunkpercent) * py);
   // p.y = max(p.y,0.0);
   // gl_FragColor = v_vColour * texture2D( gm_BaseTexture, p );
}
