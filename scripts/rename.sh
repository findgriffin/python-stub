#! /bin/sh

if [[ $# -eq 0 ]] ; then
        echo 'New name required'
            exit 0
fi

echo "Renaming stub to $1"

sed -i '' -e "s/stub/$1/g" run.py 
sed -i '' -e "s/stub/$1/g" tests/test_stub.py

git mv stub $1
git mv tests/test_stub.py tests/test_$1.py
