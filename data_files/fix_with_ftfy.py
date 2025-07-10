import ftfy
import csv

def clean_csv_with_ftfy(input_file, output_file):
    with open(input_file, 'r', encoding='utf-8', errors='ignore') as infile, \
         open(output_file, 'w', newline='', encoding='utf-8') as outfile:

        reader = csv.reader(infile)
        writer = csv.writer(outfile)

        for row in reader:
            fixed_row = [ftfy.fix_text(cell) for cell in row]
            writer.writerow(fixed_row)

    print(f"Fixed file saved as {output_file}")

clean_csv_with_ftfy('CustomerDetails.csv', 'CustomerDetails_cleaned.csv')
