# read the file content
cat filename.txt


# Create a file
cat > notes.txt
    This is line 1
    This is line 2


# Append the content 
cat >> notes.txt
This is line 3 added later

cat << 'EOF' > server.conf
[ServerSettings]
Host = localhost
Port = 8080
Mode = production
EOF 

