uses crt;
type
	arr = array[1..107] of integer;
var
	a,b : arr;
	n : integer;
	cnt : integer;
	pos : integer;
	step : integer;

procedure nhap();
var
	i : integer;
begin
	readln(n);

	for i := 1 to n-1 do read(a[i]);
	readln(a[n]);
end;

function check(pos,step : integer) : boolean;
var
	i : integer;
begin
	i := pos;
	while i + step < n do 
	begin
		if (a[i] <> a[i+step]) then exit(false);
		i := i + step;
		//writeln(i);
	end;

	inc(cnt);
	exit(true);

end;

begin
	clrscr;
	nhap();

	//write(check(4,6));

	cnt := 0;
	step := 1;
	pos := 1;
	while pos+step < n do 
	begin
		if (check(pos,step) = true) then inc(pos)
		else inc(step);
	end;

	if (cnt = 0) then write(n-1) 
	else write(cnt);

	readln;
end.


