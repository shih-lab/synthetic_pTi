for file in /data/lucas/02-experiments/eLW009-agrobacterium_atlas/01-vir_analysis/weisberg_data/assemblies/Ti_Ri_plasmids/*.gbk; do
    echo "$file"
    echo "${file%.*}.fasta"
    python -c "from Bio import SeqIO; SeqIO.convert($file, 'genbank', ${file%.*}.fasta, 'fasta');"
done