uses crt;
type
	arr = array[1..2,1..1007] of integer;
	arrr = array[1..1007] of integer;
var
	a : arr;
	b : arrr;
	n : integer;
	i : integer;
	max : integer;

procedure swap(var a,b : integer);
var
	tmp : integer;
begin
	tmp := a;
	a := b;
	b := tmp;
end;

procedure sort(var f : arr; l,r : integer);
var
	i,j : integer;
begin
	for i := l to r-1 do
	begin
		for j := i+1 to r do
		begin
			if (a[2,i] > a[2,j]) then 
			begin
				swap(a[2,i], a[2,j]);
				swap(a[1,i], a[1,j]);
				swap(b[i], b[j]);
			end;

			if (a[2,i] = a[2,j]) then 
			begin
				if (a[1,i] > a[1,j]) then swap(a[1,i], a[1,j]);
			end;
		end;
	end;
end;


function lehoi() : longint;
var
	cnt : longint;
	i,j : integer;
	fin_i : integer;

begin
	for i := 1 to n-1 do
	begin
		cnt := 1;
		fin_i := a[2,i];

		for j := 1 to n do 
		begin
			if (a[1,j] > fin_i) then
			begin
				inc(cnt);
				fin_i := a[2,j];
			end; 
		end;

		if (max < cnt) then max := cnt;
	end;

	exit(cnt);
end;

begin
	clrscr;

	readln(n);
	for i := 1 to n do 
	begin
		read(a[1,i]);
		readln(a[2,i]);
	end;

	sort(a,1,n);

	for i := 1 to n do writeln(b[i], ' ',a[1,i], ' ' ,a[2,i]);

	write(lehoi);


	readln;
end.