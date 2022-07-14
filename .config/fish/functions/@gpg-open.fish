function @gpg-open
    if test (count $argv) -ne 1
        echo "@gpg-open file"
        return 1
    end


    set -l tmp ""

    if echo $argv[1] | grep "\.gpg\$" > /dev/null
        set tmp $TMPDIR/(basename $argv[1] .gpg)
    else if echo $argv[1] | grep "\.asc\$" > /dev/null
        set tmp $TMPDIR/(basename $argv[1] .asc)
    end

    if test $tmp = ""
        echo "failed to create tempfile"
        return 1
    end

    if not gpg2 --quiet --yes --output $tmp --decrypt $argv[1]
        echo "failed to decrypt $argv[1]"
        srm $tmp
        return 1
    end

   open --new --wait-apps $tmp
    srm $tmp
    return 0
end
