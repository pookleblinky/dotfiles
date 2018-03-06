function catabackup
    rsync -r ~/Cataclysm-DDA/config ~/cataclysms/datastuff/
    rsync -r ~/Cataclysm-DDA/data ~/cataclysms/datastuff/
    rsync -r ~/Cataclysm-DDA/graveyard/ ~/cataclysms/datastuff/
    rsync -r ~/Cataclysm-DDA/memorial ~/cataclysms/datastuff/
    rsync -r ~/Cataclysm-DDA/save ~/cataclysms/datastuff/
    rsync -r ~/Cataclysm-DDA/templates ~/cataclysms/datastuff/
end
