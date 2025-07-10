def fix_mojibake(input_file, output_file):
    with open(input_file, 'rb') as f:
        raw_data = f.read()
    # Decode as Latin-1 then encode as UTF-8 (fixing mojibake)
    fixed_data = raw_data.decode('latin1').encode('utf8')
    with open(output_file, 'wb') as f:
        f.write(fixed_data)

# Replace 'your_input.csv' with your actual CSV filename
fix_mojibake('LittleLemonData - CustomerDetails.csv', 'CustomerDetails - Clean.csv')
print("File fixed and saved as CustomerDetails - Clean.csv")