#!/bin/bash

# --- 1. Setup: Create a sample file named index.txt ---
cat << 'EOF' > index.txt
Manoj is a Cloud Engineer.
manoj completed the Bash script.
Contact Manoj Rawat for details.
Admin user: Manoj
System status: OK
EOF

echo "=== Created index.txt with sample data ==="
cat index.txt
echo -e "\n----------------------------------------\n"

# --- 2. Basic Case-Sensitive Search ---
echo "1. Basic Search for 'Manoj' (Case-Sensitive):"
grep Manoj index.txt

echo -e "\n----------------------------------------\n"

# --- 3. Case-Insensitive Search (-i) ---
echo "2. Case-Insensitive Search for 'manoj' (-i):"
grep -i manoj index.txt

echo -e "\n----------------------------------------\n"

# --- 4. Whole Word Match (-w) ---
echo "3. Match Exact Word 'Manoj' only (-w):"
grep -w Manoj index.txt

echo -e "\n----------------------------------------\n"

# --- 5. Display Line Numbers (-n) ---
echo "4. Show Line Numbers for matches (-n):"
grep -n Manoj index.txt

echo -e "\n----------------------------------------\n"

# --- 6. Invert Match (-v) ---
echo "5. Show lines that DO NOT contain 'Manoj' (-v):"
grep -v Manoj index.txt

echo -e "\n----------------------------------------\n"

# --- 7. Count Matches (-c) ---
echo "6. Count total matching lines (-c):"
grep -c Manoj index.txt

echo -e "\n----------------------------------------\n"

# --- 8. Combine Flags (-inw) ---
echo "7. Combined Flags: Ignore case (-i), show line numbers (-n), whole word (-w):"
grep -inw manoj index.txt

echo -e "\n----------------------------------------\n"

# --- 9. Clean up ---
rm index.txt
echo "=== Cleaned up index.txt ==="