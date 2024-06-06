import random

def shuffle_and_split_lines(file1_path, file2_path, output1_path_80, output2_path_80, output1_path_20, output2_path_20):
    # Read the lines from both files
    with open(file1_path, 'r') as file1, open(file2_path, 'r') as file2:
        lines1 = file1.readlines()
        lines2 = file2.readlines()

    # Check if both files have the same number of lines
    if len(lines1) != len(lines2):
        raise ValueError("The two files must have the same number of lines.")

    # Create a list of indices and shuffle it
    indices = list(range(len(lines1)))
    random.shuffle(indices)

    # Calculate the split point
    split_point = int(len(lines1) * 0.8)

    # Split the indices into 80% and 20%
    indices_80 = indices[:split_point]
    indices_20 = indices[split_point:]

    # Split the lines according to the split indices
    lines1_80 = [lines1[i] for i in indices_80]
    lines2_80 = [lines2[i] for i in indices_80]
    lines1_20 = [lines1[i] for i in indices_20]
    lines2_20 = [lines2[i] for i in indices_20]

    # Write the 80% lines to the first pair of output files
    with open(output1_path_80, 'w') as output1_80, open(output2_path_80, 'w') as output2_80:
        output1_80.writelines(lines1_80)
        output2_80.writelines(lines2_80)

    # Write the 20% lines to the second pair of output files
    with open(output1_path_20, 'w') as output1_20, open(output2_path_20, 'w') as output2_20:
        output1_20.writelines(lines1_20)
        output2_20.writelines(lines2_20)

# Example usage:
shuffle_and_split_lines('data.txt', 'labels.txt', 'train_seq_big.txt', 'train_labels_big.txt', 'test_seq_big.txt', 'test_labels_big.txt')