function open-google-cache
    set -l url "http://webcache.googleusercontent.com/search?q=cache:$argv"
    open "$url"
end