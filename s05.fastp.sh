# Before you do it, make sure you knwo the quality seyetem: 33/64 ?  https://en.wikipedia.org/wiki/FASTQ_format
#!!!! fastp defalt system is phred 33, if your reads is 64, add -6 in fastp !!! 

# you can use raspberry to test it 
## 1. install raspberry 
wget https://github.com/CEG-ICRISAT/Raspberry/archive/refs/heads/master.zip
unzip master.zip
cd Raspberry
cmake .
make          (This will make raspberry and place it in local path ./bin/raspberry)
make install  (This will put raspberry binary in the /usr/local/bin path)
## 2. use it and then you will find the quality system of our sequences
raspberry xxx.fq.gz


# Tutorial: Handling FASTQ Files with `fastp`

[`fastp`](https://github.com/OpenGene/fastp) is a fast all-in-one preprocessing tool for FASTQ files, commonly used in next-generation sequencing (NGS) data analysis. It performs quality control, filtering, trimming, and generates comprehensive reports.

## 1. Installation

Install `fastp` using conda:

```sh
conda install bioconda::fastp
```

## 2. Basic Usage

To process a single-end FASTQ file:

```sh
fastp -i input.fastq -o output.fastq
```

For paired-end data:

```sh
fastp -i input_R1.fastq -I input_R2.fastq -o output_R1.fastq -O output_R2.fastq
```

## 3. Common Options

- `-i`: Input file (read 1 for paired-end)
- `-I`: Input file (read 2 for paired-end)
- `-o`: Output file (read 1)
- `-O`: Output file (read 2)
- `-h`: Output HTML report
- `-j`: Output JSON report
- `-q`: Quality filtering threshold (default: 15)
- `-u`: Maximum allowed percentage of unqualified bases (default: 40)
- `-l`: Minimum length of reads to keep

**Example with reports:**

```sh
fastp -i input_R1.fastq -I input_R2.fastq \
  -o clean_R1.fastq -O clean_R2.fastq \
  -h report.html -j report.json
```

## 4. Adapter Trimming

`fastp` can auto-detect adapters, but you can specify them:

```sh
fastp -i input.fastq -o output.fastq --adapter_sequence AGATCGGAAGAGCACACGTCTGAACTCCAGTCA
```

For paired-end:

```sh
fastp -i input_R1.fastq -I input_R2.fastq \
  -o output_R1.fastq -O output_R2.fastq \
  --adapter_sequence AGATCGGAAGAGCACACGTCTGAACTCCAGTCA \
  --adapter_sequence_r2 AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT
```

## 5. Quality Filtering

Remove reads with low quality:

```sh
fastp -i input.fastq -o output.fastq -q 20 -u 30 -l 50
```
- `-q 20`: Minimum quality score
- `-u 30`: Max 30% low-quality bases
- `-l 50`: Minimum read length

## 6. Output Reports

`fastp` generates HTML and JSON reports for easy review:

```sh
fastp -i input.fastq -o output.fastq -h report.html -j report.json
```

Open `report.html` in your browser to view interactive QC results.

---

**Tip:**  
Run `fastp --help` for a full list of options.
