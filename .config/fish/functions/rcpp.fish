function rcpp
	set file $argv[1]
	set output (echo $argv[1] | sed 's/\.cpp//;s/\.c++//')
	g++ $file -g -o $output && ./$output
end
