set -e
cache_file=$1
mapper=$2

hadoop jar /axp/platform/cloak1/dev/cloak-offshore/rachna/cloak_data_generator/setup/databene-benerator-0.9.8-jar-with-dependencies.jar  com.aexp.bdp.cloak.datagen.DatagenDriver -Dmapred.create.symlink=yes -Dmapred.job.queue.name=cloak -Dmapred.cache.files=$cache_file#split_files.xml -bs $mapper
#hadoop jar /axp/platform/cloak/cloak-offshore/cloak_data_generator/databene-benerator-0.9.8-jar-with-dependencies.jar  com.aexp.bdp.cloak.datagen.DatagenDriver -Dmapred.create.symlink=yes -Dmapreduce.job.queuename=cloak -Dmapred.cache.files=$cache_file#split_files.xml -bs $mapper
