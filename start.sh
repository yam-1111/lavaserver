file=./Lavalink.jar
if [ -e "$file" ]; then
    echo "[ok] proceed to check java"
else 
    wget https://github.com/freyacodes/Lavalink/releases/download/3.4/Lavalink.jar
    echo "Success installed lavalink.jar!"
fi 
if ! command -v java &> /dev/null
then
    echo "[-] installing the java.."
    curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash -s -- --skip-rc && . ~/.jabba/jabba.sh
    jabba install openjdk@1.13.0-2
    echo "[-] succesfully installed java"
    java -jar ./Lavalink.jar

else
    echo "[ok] java is already installed the system proceed to run the lavaserver."
    java -jar ./Lavalink.jar
fi
