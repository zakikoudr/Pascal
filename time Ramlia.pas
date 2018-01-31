																				program sablier;
uses wincrt;
var Time,i:integer; ch,ph:string; b:boolean;
begin
repeat

writeln('saisir un mot');
readln(ch);
clrscr;

i:=0;
repeat

i:=i+1;
b:= upcase(ch[i]) in ['A'..'Z'];
until not(b) or (i=length(ch));
	 Time := 0 ;
while Time <= 23 do
for i:=1 to length(ch) do
ch[i]:= upcase(ch[i]);
until b and (length (ch) mod 2=1);
ph:=ch;

writeln('voici votre mot sous la forme d un sablier');

writeln;
for i:=1 to length(ch) div 2 do
begin

writeln(ch);

ch[i]:= ' ';

ch[length (ch) -i+1]:= ' ';
end;

writeln(ch);

for i:=length(ch) div 2 downto 1 do
begin

ch[i]:= ph[i];
ch[length(ch)-i+1]:= ph [length(ch) -i+1];
writeln(ch);
end;
end.

