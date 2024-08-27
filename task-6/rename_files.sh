if [ -z "$1" ]; then
  echo "Usage: $0 directory_path"
  exit 1
fi

DIR=$1

if [ ! -d "$DIR" ]; then
  echo "Error: $DIR is not a valid directory."
  exit 1
fi

for file in "$DIR"/*.txt; do
  if [ -e "$file" ]; then
    filename=$(basename "$file")
    mv "$file" "$DIR/old_$filename"
  fi
done
echo "Renaming completed!"
