import random

def shuffle_lines(file1_path, file2_path, output1_path, output2_path):
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

    # Shuffle the lines according to the shuffled indices
    shuffled_lines1 = [lines1[i] for i in indices]
    shuffled_lines2 = [lines2[i] for i in indices]

    # Write the shuffled lines back to the output files
    with open(output1_path, 'w') as output1, open(output2_path, 'w') as output2:
        output1.writelines(shuffled_lines1)
        output2.writelines(shuffled_lines2)

# Example usage:
shuffle_lines('data.txt', 'labels.txt', 'shuff_data.txt', 'shuff_labels.txt')
