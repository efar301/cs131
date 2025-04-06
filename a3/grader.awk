function is_passing(grade) {
	if (grade >= 70)
		return "Passed"
	else
		return "Failed"
}

function avg(total) {
	return total / 3
}

BEGIN {
	FS = ","
}

{
	if ($2 != "Name") {
		grade_sum[$2] = ($3 + $4 + $5)
		grade_avg[$2] = avg(grade_sum[$2])
	}
}

END {
	for (student in grade_sum) 
		print student " has " is_passing(grade_avg[student]) ". Their average grade was " grade_avg[student] " and their total grade was " grade_sum[student] "."

	print ""

	max = 0
	max_name = ""

	min = 999
	min_name = ""
	for (student in grade_avg) {
		if (grade_avg[student] > max) {
			max = grade_avg[student]
			max_name = student
		}
		if (grade_avg[student] < min) {
			min = grade_avg[student]
			min_name = student
		}
	}
	print max_name " has the highest average grade with " max
	print min_name " has the lowest average grade with " min
}
