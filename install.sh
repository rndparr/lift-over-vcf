#!/usr/bin/env bash

#
mkdir -p bin
cd bin

case "$OSTYPE" in
    darwin*) wget -c http://hgdownload.cse.ucsc.edu/admin/exe/macOSX.x86_64/liftOver ;;
    *)       wget -c http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/liftOver ;;
esac

chmod 755 liftOver

cd ..

#
mkdir -p chain
cd chain

get_dir=http://hgdownload.soe.ucsc.edu/goldenPath


# NCBI36/hg18 to GRCh37/hg19
# from hg18/b36
wget ${get_dir}/hg18/liftOver/hg18ToHg19.over.chain.gz
wget ${get_dir}/hg18/liftOver/hg18ToHg38.over.chain.gz

# GRCh37/hg19 to GRCh38/hg38
# from hg19/b37
wget -c ${get_dir}/hg19/liftOver/hg19ToHg18.over.chain.gz
wget -c ${get_dir}/hg19/liftOver/hg19ToHg38.over.chain.gz

# GRCh38/hg38 to GRCh37/hg19
# from hg38/b38
wget ${get_dir}/hg38/liftOver/hg38ToHg19.over.chain.gz
http://hgdownload.soe.ucsc.edu/goldenPath/hg19/liftOver/hg19ToHg38.over.chain.gz

echo '${get_dir}/hg19/liftOver/hg19ToHg18.over.chain.gz'

# get_dir=ftp://hgdownload.cse.ucsc.edu/goldenPath


# # NCBI36/hg18 to GRCh37/hg19
# # from hg18/b36
# wget --timestamping 'ftp://hgdownload.cse.ucsc.edu/goldenPath/hg18/liftOver/hg18ToHg19.over.chain.gz' -O 'hg18ToHg19.over.chain.gz'
# wget --timestamping 'ftp://hgdownload.cse.ucsc.edu/goldenPath/hg18/liftOver/hg18ToHg38.over.chain.gz' -O 'hg18ToHg38.over.chain.gz'

# # GRCh37/hg19 to GRCh38/hg38
# # from hg19/b37
# wget --timestamping 'ftp://hgdownload.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToHg18.over.chain.gz' -O 'hg19ToHg18.over.chain.gz'
# wget --timestamping 'ftp://hgdownload.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToHg38.over.chain.gz' -O 'hg19ToHg38.over.chain.gz'

# # GRCh38/hg38 to GRCh37/hg19
# # from hg38/b38
# wget --timestamping 'ftp://hgdownload.cse.ucsc.edu/goldenPath/hg38/liftOver/hg38ToHg19.over.chain.gz' -O 'hg38ToHg19.over.chain.gz'



# echo 'ftp://hgdownload.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToHg18.over.chain.gz'
# # wget --timestamping 

# wget --timestamping 
#         'ftp://hgdownload.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToHg18.over.chain.gz'  
#         -O hg19ToHg18.over.chain.gz


# # NCBI36/hg18 to GRCh37/hg19
# # from hg18/b36
# wget -c http://hgdownload-test.cse.ucsc.edu/goldenPath/hg18/liftOver/hg18ToHg19.over.chain.gz
# wget -c http://hgdownload-test.cse.ucsc.edu/goldenPath/hg18/liftOver/hg18ToHg38.over.chain.gz

# # GRCh37/hg19 to GRCh38/hg38
# # from hg19/b37
# wget -c http://hgdownload-test.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToHg38.over.chain.gz
# wget -c http://hgdownload-test.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToHg18.over.chain.gz

# # GRCh38/hg38 to GRCh37/hg19
# # from hg38/b38
# wget -c http://hgdownload-test.cse.ucsc.edu/goldenPath/hg38/liftOver/hg38ToHg19.over.chain.gz

cd ..
