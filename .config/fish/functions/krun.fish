function krun
    if test (count $argv) -ne 1 
        echo "Usage: krun <FILENAME>"
        return 1
    end
    set filename (echo $argv[1] | sed 's/\.rs//')
    rustc +1.41.1 -o $filename $filename.rs && ./$filename
end
