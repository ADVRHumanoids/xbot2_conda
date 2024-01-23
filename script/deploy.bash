PKGDIR=$(conda info --base)/conda-bld/linux-64
cd $PKGDIR
for file in *.tar.bz2; do
    echo "uploading $file"
    anaconda -t $ANACONDA_ORG_TOKEN upload -u iit_hhcm $file
    echo "ok"
done
