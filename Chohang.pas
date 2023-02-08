uses crt;
var
	a,b : integer;
	n : integer;

function chohang(a,b : integer) : integer;
var
	i,j : integer;
	ib, jb : integer;
begin
	ib := 0;
	jb := 0;
	i := 0;
	j := 0;

	while (i*a) <= n do 
	begin
		j := (n - (i*a)) div b;

		if ((i*a) + (j*b)) > ((ib*a) + (jb*b)) then
		begin
			ib := i;
			jb := j;
		end;
		
		inc(i);
	end;
	
	exit((ib*a) + (jb*b));
end;

begin
	clrscr;

	read(n);
	read(a); readln(b);

	if (a > b) then write(chohang(a,b))
	else write(chohang(b,a));

	readln;
end.