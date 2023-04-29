function copypdfpng
    pdftoppm -png -r 600 $argv[1] | wl-copy
end
