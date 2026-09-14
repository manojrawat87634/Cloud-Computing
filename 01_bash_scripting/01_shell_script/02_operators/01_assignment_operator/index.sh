
name="Manoj"
role="DevOps Engineer"
age=25

echo "--- 1. Basic Assignment ---"
echo "Name: $name"
echo "Role: $role"
echo "Age: $age"
echo ""

# ==============================================================================
# 2. COMMAND SUBSTITUTION ASSIGNMENT (=$(...))
# Captures the output of system commands into variables
# ==============================================================================
current_user=$(whoami)
current_dir=$(pwd)
today_date=$(date +%Y-%m-%d)

echo "--- 2. Command Substitution Assignment ---"
echo "Logged in as: $current_user"
echo "Working folder: $current_dir"
echo "Date: $today_date"
echo ""

# ==============================================================================
# 3. ARITHMETIC ASSIGNMENT (( ... ))
# ==============================================================================
score=100

(( score += 50 ))   # Add 50 (score = 150)
(( score *= 2 ))    # Multiply by 2 (score = 300)
(( score -= 20 ))   # Subtract 20 (score = 280)

echo "--- 3. Arithmetic Assignment ---"
echo "Final Calculated Score: $score"
echo ""

# ==============================================================================
# 4. DEFAULT VALUE ASSIGNMENT (${var:=default})
# Assigns a default value ONLY if the variable is empty or unset
# ==============================================================================
# 'environment' is currently empty/unset
echo "--- 4. Default Value Assignment ---"
echo "Before assignment, environment is: '$environment'"

# Assign 'development' if empty
: "${environment:="development"}"

echo "After assignment, environment is: '$environment'"
echo ""
