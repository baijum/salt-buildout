VERSION="2.7.3"
PYTHON="Python-$VERSION"
MD5="c57477edd6d18bd9eeca2f21add73919"
PREFIX="`pwd`/usr"
DOWNLOAD_PREFIX="http://www.python.org/ftp/python/$VERSION"

if [[ -e "release-distributions/$PYTHON.tar.bz2" ]]
    then
    DOWNLOADDIR="release-distributions"
else
    DOWNLOADDIR="downloads"
fi

mkdir -p $DOWNLOADDIR
cd $DOWNLOADDIR
wget -c $DOWNLOAD_PREFIX/$PYTHON.tar.bz2
cd ..
tar jxvf $DOWNLOADDIR/$PYTHON.tar.bz2
cd $PYTHON
./configure --prefix=$PREFIX
make
make install
cd ..
rm -fr $PYTHON

echo
echo "$PYTHON is installed here:"
echo "./usr/bin/python"
echo
