import ftfy
import csv
import os

def fix_all_csvs_in_folder(folder_path):
    for filename in os.listdir(folder_path):
        if filename.endswith('.csv'):
            input_path = os.path.join(folder_path, filename)
            output_path = os.path.join(folder_path, f'cleaned_{filename}')
            with open(input_path, 'r', encoding='utf-8', errors='ignore') as infile, \
                 open(output_path, 'w', newline='', encoding='utf-8') as outfile:

                reader = csv.reader(infile)
                writer = csv.writer(outfile)

                for row in reader:
                    fixed_row = [ftfy.fix_text(cell) for cell in row]
                    writer.writerow(fixed_row)

            print(f"Cleaned: {filename} → {output_path}")

fix_all_csvs_in_folder('/Users/yourname/Desktop/LittleLemonDB_data_files')  # change this to your folder
