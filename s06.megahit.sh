Here’s a quick tutorial to get you started with **MEGAHIT**, a fast and memory-efficient metagenome assembler.

---

## 1. Installation

On Linux, you can install MEGAHIT via conda or download the binary:

**Using conda:**
```
conda install -c bioconda megahit
```

**Or download the binary:**
```
wget https://github.com/voutcn/megahit/releases/download/v1.2.9/megahit_v1.2.9_LINUX_CPUONLY_x86_64-bin.tar.gz
tar -xzvf megahit_v1.2.9_LINUX_CPUONLY_x86_64-bin.tar.gz
cd megahit_v1.2.9_LINUX_CPUONLY_x86_64-bin
```

---

## 2. Example Data

Suppose you have paired-end FASTQ files: `reads_1.fastq` and `reads_2.fastq`.

---

## 3. Running MEGAHIT

Basic command:
```
megahit -1 reads_1.fastq -2 reads_2.fastq -o megahit_output
```
- `-1` and `-2`: Paired-end reads
- `-o`: Output directory

For single-end reads:
```
megahit -r reads.fastq -o megahit_output
```

---

## 4. Output

The main assembly will be in:
```
megahit_output/final.contigs.fa
```

---

## 5. Useful Options

- `--min-contig-len 1000` : Only output contigs ≥ 1000 bp
- `-t 8` : Use 8 threads

Example:
```
megahit -1 reads_1.fastq -2 reads_2.fastq -o megahit_output --min-contig-len 1000 -t 8
```

---

## 6. More Help

See all options:
```
megahit --help
```

---

Let me know if you need help with a specific step!
