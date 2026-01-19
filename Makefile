${HOME}/.pixi/bin/pixi:
	mkdir -p ${HOME}/.pixi/bin
	curl -sSL https://pixi.dev/install.sh | sh


data/GSE110004:
	mkdir -p data/GSE110004
	cd data/GSE110004 && \
	wget https://raw.githubusercontent.com/nf-core/test-datasets/rnaseq/testdata/GSE110004/SRR6357070_1.fastq.gz && \
	wget https://raw.githubusercontent.com/nf-core/test-datasets/rnaseq/testdata/GSE110004/SRR6357070_2.fastq.gz

clean:
	rm -rf data/GSE110004