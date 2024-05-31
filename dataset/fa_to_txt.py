from Bio import SeqIO

def extract_sequences(input_fasta, output_txt):
    sequences = []
    
    # Read the sequences from the fasta file
    for record in SeqIO.parse(input_fasta, "fasta"):
        sequences.append(str(record.seq))
    
    # Write the sequences to the output text file
    with open(output_txt, 'w') as out_file:
        for seq in sequences:
            out_file.write(seq + '\n')
    
    return len(sequences)

# Extract sequences and count the number of sequences for each file
num_toxic = extract_sequences("./fasta/positive.fa", "positive.txt")
num_non_toxic = extract_sequences("./fasta/negative.fa", "negative.txt")

# Write labels to a file
with open("labels.txt", 'w') as label_file:
    for _ in range(num_non_toxic):
        label_file.write('0\n')
    for _ in range(num_toxic):
        label_file.write('1\n')
