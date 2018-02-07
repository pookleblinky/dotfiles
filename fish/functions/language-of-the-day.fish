function language-of-the-day
    echo "Major language: " 
    shuf -n 1 ~/majorlanglist
    echo "Minor language: " 
    shuf -n 1 ~/minorlanglist
end
