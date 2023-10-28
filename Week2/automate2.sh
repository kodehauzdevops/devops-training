read -p "Enter the top top-level directory name:" dir_name

mkdir -p $dir_name
mkdir -p "$dir_name/html/img"
mkdir -p "$dir_name/html/css"
mkdir -p "$dir_name/html/js"

touch "$dir_name/html/img/testing.png"
touch "$dir_name/html/css/testing.css"
touch "$dir_name/html/js/testing.js"

echo "directory structure create successfully"
