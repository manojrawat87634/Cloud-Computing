name="manoj"
echo "Good morning $name"


age=25
quantity=4

((next_year_age = age + 1))
((total_cost = quantity * 10))

echo "Next year age: $next_year_age" # Output: 26
echo "Total cost: $$total_cost"

is_admin=true
skills=("Linux" "Bash" "Python" "Cloud")
echo "First skill: ${skills[0]}" # Output: Linux
echo "Second skill: ${skills[1]}" # Output: Bash
echo "All skills: ${skills[@]}"