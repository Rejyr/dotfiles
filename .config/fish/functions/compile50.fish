function compile50
	set file $argv[1]
	set output (echo $argv[1] | sed 's/\.c//')
	gcc $file -lcs50 -lm -lcrypt -o $output
end
