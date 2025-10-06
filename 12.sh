tempDir=`mktemp -d`
cd $tempDir

cp ~/data.txt .

xxd -r data.txt tempFile

file tempFile
# tempFile: gzip compressed data, was "data2.bin", last modified: Fri Aug 15 13:
# 15:53 2025, max compression, from Unix, original size modulo 2^32 584

mv tempFile data2.bin.gz
gzip -d data2.bin.gz

file data2.bin
# data2.bin: bzip2 compressed data, block size = 900k

mv data2.bin data2.bin.bz2
bzip2 -d data2.bin.bz2

file data2.bin
# data2.bin: gzip compressed data, was "data4.bin", last modified: Fri Aug 15 13
# :15:53 2025, max compression, from Unix, original size modulo 2^32 20480

mv data2.bin data4.bin.gz
gzip -d data4.bin.gz

file data4.bin
# data4.bin: POSIX tar archive (GNU)

mv data4.bin data4.tar
tar -xf data4.tar

file data5.bin
# data5.bin: POSIX tar archive (GNU)

mv data5.bin data5.tar
tar -xf data5.tar

file data6.bin
# data6.bin: bzip2 compressed data, block size = 900k

mv data6.bin data6.bin.bz2
bzip2 -d data6.bin.bz2

file data6.bin
# data6.bin: POSIX tar archive (GNU)

mv data6.bin data6.tar
tar -xf data6.tar

file data8.bin
# data8.bin: gzip compressed data, was "data9.bin", last modified: Fri Aug 15 13
# :15:53 2025, max compression, from Unix, original size modulo 2^32 49

mv data8.bin data8.bin.gz
gzip -d data8.bin.gz

file data8.bin
# data8.bin: ASCII text

cat data8.bin