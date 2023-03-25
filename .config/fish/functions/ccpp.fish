function ccpp
	set file $argv[1]
	set output (echo $argv[1] | sed 's/\.cpp//;s/\.c++//')
	g++ $file -std=c++17 -fsanitize=undefined -fsanitize=address -Wall -Wextra -Wshadow -Wconversion -Wfloat-equal -Wduplicated-cond -Wlogical-op -lm -O2 -o $output
end
