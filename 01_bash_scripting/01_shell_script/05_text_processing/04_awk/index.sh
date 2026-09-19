#!/bin/bash

# --- 1. Setup: Create a sample file named index.txt ---
cat << 'EOF' > index.txt
Manoj CloudEngineer 1500 Active
redima DevOpsEngineer 1800 Active
contact SystemAdmin 1200 Inactive
Manoj LeadArchitect 2500 Active
admin SecurityEngineer 2000 Inactive
EOF

echo "=== Created index.txt with sample data ==="
cat index.txt
echo -e "\n----------------------------------------\n"

# --- 2. Print Specific Columns ($1 and $3) ---
echo "1. Print 1st (Name) and 3rd (Salary) Columns:"
awk '{print $1, $3}' index.txt

echo -e "\n----------------------------------------\n"

# --- 3. Filter Lines by Value Comparison ($3 > 1500) ---
echo "2. Show records where Salary (\$3) is greater than 1500:"
awk '$3 > 1500 {print $1, $2, $3}' index.txt

echo -e "\n----------------------------------------\n"

# --- 4. Filter by Text Matching in a Specific Field ($4 == "Active") ---
echo "3. Show only 'Active' users (\$4 == \"Active\"):"
awk '$4 == "Active" {print $1, $2}' index.txt

echo -e "\n----------------------------------------\n"

# --- 5. Search Pattern Across the Whole Line (/Manoj/) ---
echo "4. Search for lines containing 'Manoj' and print 1st and 2nd column:"
awk '/Manoj/ {print $1, $2}' index.txt

echo -e "\n----------------------------------------\n"

# --- 6. Display Line Numbers using NR (Number of Records) ---
echo "5. Print line numbers (NR) along with the content:"
awk '{print NR, $1, $2}' index.txt

echo -e "\n----------------------------------------\n"

# --- 7. Sum / Math Operations (BEGIN, Loop, END) ---
echo "6. Calculate total salary of all Active employees:"
awk '$4 == "Active" {sum += $3} END {print "Total Active Salary:", sum}' index.txt

echo -e "\n----------------------------------------\n"

# --- 8. Formatted Output (printf) ---
echo "7. Formatted Table Output:"
awk '{printf "User: %-10s | Role: %-18s | Pay: $%s\n", $1, $2, $3}' index.txt

echo -e "\n----------------------------------------\n"

# --- 9. Custom Field Separator (-F) for CSV-like input ---
echo "8. Custom Field Separator using comma (,) as delimiter:"
awk -F',' '{print $1}' <<< "Manoj,Rawat,Cloud,India"

echo -e "\n----------------------------------------\n"

# --- 10. Clean up ---
rm index.txt
echo "=== Cleaned up index.txt ==="