#!/bin/bash

# Usage: ./main.sh <read1.fastq.gz> <read2.fastq.gz> <output_folder>

set -e

if [ "$#" -ne 3 ]; then
    echo "Usage: zsh <read1.fastq.gz> <read2.fastq.gz> <output_folder>"
    exit 1
fi

READ1="$1"
READ2="$2"
OUTDIR="$3"

mkdir -p "$OUTDIR"

echo "Running FastQC on $READ1 and $READ2..."
fastqc "$READ1" "$READ2" -o "$OUTDIR"

echo "Running MultiQC in $OUTDIR..."
multiqc "$OUTDIR" -o "$OUTDIR"

echo "All done. Results are in $OUTDIR"
