echo 'Введите имя директории:'
read dirname

if ! [ -d $dirname/ ]; then
  echo 'Директория не существует'
  exit 1
fi
 
find $dirname -maxdepth 1 -iname '*.bak' -exec rm '{}' \;
find $dirname -maxdepth 1 -iname '*.tmp' -exec rm '{}' \;
find $dirname -maxdepth 1 -iname '*.backup' -exec rm '{}' \;