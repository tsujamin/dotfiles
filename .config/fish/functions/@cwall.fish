function @cwall --description 'gcc for file.c with Werror, Wall and symbols'
    gcc -Wall -Werror -g $argv[1].c -o $argv[1]
end
