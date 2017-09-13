require './kernel-main'

funcao_kernel = ARGV[0]
parametro_funcao = ARGV[1]

case 
    when funcao_kernel == "ls"
         ls(parametro_funcao) 
    when funcao_kernel == "cat"
        cat(parametro_funcao)
    when funcao_kernel == "rm"
        rm(parametro_funcao)
else
    puts "help usage: digite ls diretório ou cat arquivo "
end