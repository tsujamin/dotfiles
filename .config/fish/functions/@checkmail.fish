function @checkmail
    if test -s /var/mail/$USER
        echo $USER has mail
    end
end
