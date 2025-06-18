Here’s a concise tutorial for running **BLASTN** and **BLASTX** on the command line.

---

## 1. Installation

Install BLAST+ using conda:
```
conda install -c bioconda blast
```
Or download from [NCBI BLAST+](https://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/).

---

## 2. Prepare Your Data

- **Query file:** Your sequences in FASTA format (e.g., `query.fasta`)
- **Database:** You can use NCBI databases or create your own.

### Make a local database:
```
makeblastdb -in reference.fasta -dbtype nucl -out ref_db
```
- For protein databases, use `-dbtype prot`.

---

## 3. Running BLASTN

**BLASTN** compares nucleotide queries to nucleotide databases.

Basic command:
```
blastn -query query.fasta -db ref_db -out blastn_results.txt
```

Common options:
- `-evalue 1e-5` : Set E-value threshold
- `-outfmt 6` : Tabular output
- `-num_threads 4` : Use 4 CPU threads

Example:
```
blastn -query query.fasta -db ref_db -out blastn_results.txt -evalue 1e-5 -outfmt 6 -num_threads 4
```

---

## 4. Running BLASTX

**BLASTX** compares nucleotide queries (translated in all reading frames) to protein databases.

Basic command:
```
blastx -query query.fasta -db protein_db -out blastx_results.txt
```

Example with options:
```
blastx -query query.fasta -db protein_db -out blastx_results.txt -evalue 1e-3 -outfmt 6 -num_threads 4
```

---

## 5. Output Formats

- `-outfmt 0` : Default (human-readable)
- `-outfmt 6` : Tabular (easy for parsing)

---

## 6. More Help

See all options:
```
blastn -help
blastx -help
```

---

Let me know if you need help with a specific step or output interpretation!
