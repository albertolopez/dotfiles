augroup filetypedetect
au BufNewFile,BufRead *.xt  setf xt
augroup END
au BufNewFile,BufRead /etc/httpd/* setf apache 
