function copypdfpng
    pdftoppm -png $argv[1] | wl-copy
end
