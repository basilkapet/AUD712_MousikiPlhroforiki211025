Server.default.boot
Server.default.quit
().play
{SinOsc.ar}.play
a= {SinOsc.ar}.play
a. free
a= {SinOsc.ar(freq:600)}.play
a= {SinOsc.ar(freq:600,mul:0.7)}.play
a.release(1.00)
a.release
a release: 5.00
(
a= {SinOsc.ar(freq:600,mul:0.7)}.play;
a release: 5.00
)

(
{
a= {SinOsc.ar(freq:600,mul:0.7)}.play;
0.1.wait;	
a release: 5.00
}.fork	
)


(
{
a = {|freq= 400 |SinOsc.ar(freq,mul:0.7)}.play;
50 do: {		
		0.1.wait;
		a.set(\freq, 500 rrand: 1000);
	};
0.5.wait;
a release: 5.00
}.fork	
)

a = {|freq= 400 |SinOsc.ar(freq,mul:0.7)}.play;
a.set(\freq,500);
