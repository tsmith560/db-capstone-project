def fix_double_utf8_mojibake(input_file, output_file):
    with open(input_file, 'rb') as f:
        raw_data = f.read()
    # First decode as UTF-8, ignoring errors
    first_decode = raw_data.decode('utf-8', errors='ignore')
    # Encode back to bytes
    encoded_bytes = first_decode.encode('latin1', errors='ignore')
    # Decode again as UTF-8
    fixed_text = encoded_bytes.decode('utf-8', errors='ignore')
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(fixed_text)

# Replace with your actual filenames
fix_double_utf8_mojibake('CustomerDetails - Clean.csv', 'CustomerDetails_fixed.csv')
print("Double-encoded UTF-8 fix applied and saved as CustomerDetails_fixed.csv")
