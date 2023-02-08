uses crt;
type
	arr = array[1..100007] of integer;
var
	a : arr;
	i : integer;
	n : integer;
	
function tinhtong() : integer;
var 
	i,j : integer;
	cnt : integer;
	s : longint;
begin
	s := 0;
	cnt := 0;
	i := 1;
	j := 1;

	while (a[j] > 0) do inc(j);
	while (i <= n) do 
	begin
		if (a[i] > 0) then s := s+ a[i];
		if (s >= abs(a[j])) then
		begin
			s := s + a[j];
			cnt := cnt + (i-j) + 1;
			inc(j);
			while (a[j] > 0) and (j < n) do inc(j);
		end;

		inc(cnt);
		inc(i);
	end;

	exit(cnt);
end;

begin
	clrscr;
	readln(n);
	for i := 1 to n-1 do read(a[i]);
	readln(a[n]);

	write(tinhtong());

	readln;
end.