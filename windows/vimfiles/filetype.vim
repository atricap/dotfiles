if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    au! BufNewFile,BufRead *.bb,*.edn       setfiletype clojure
    au! BufNewFile,BufRead * if getline(1) == '#!/usr/bin/env bb' | setfiletype clojure | endif
augroup END
