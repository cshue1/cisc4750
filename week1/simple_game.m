% Christine Shue
% July 5, 2017

c = clock;
k = c(2)*c(3)*c(4)*c(5)*c(6);
rand( 'seed', k )
for k = 1:20
    n = ceil( 13*rand(1) )
    fprintf( 'n' );
    fprintf( 'Type r and hit return to repeat')
    fprintf( ' or any other letter to terminate: ')
    r = input( ' ', 's')
    if r ~= 'r'
	break
    end
end
