def cat(file)
    begin
        puts File.open(file).read
    rescue Errno::ENOENT => e
        puts e.message
        puts "O arquivo não existe!"

    rescue Exception => e
        puts e.message
        puts "Ocorreu um erro com sucesso"
    end
end

def ls (diretorio)
    begin
        diretorio = Dir.entries(diretorio)
        puts diretorio
    rescue Errno::ENOENT => e
        puts e.message
        puts "O diretório não existe!"
    rescue Exception => e
        puts e.message
        puts "Ocorreu um erro com sucesso"
    end
end

def rm (arquivo)
    begin
        arquivo = File.delete(arquivo)
        puts "O arquivo #{ARGV[1]} foi deletado" 
    rescue Errno::ENOENT => e
        puts e.message
        puts "Arquivo não existe"
    rescue Exception => e
        puts e.message
        puts "Ocorreu um erro com sucesso"

    end
end