#!/bin/bash

# Progress bar function
progress_bar() {

    # Get the percent value
    local percent=$1

    # Get the current column of the cursor
    IFS='[;' read -p $'\e[6n' -d R -rs _ _ COLUMN _;

    # Get number of column in the row
    local cols=$(tput cols)

    # Compute the avaiable number of column for the bar
    local bar_length=$((cols - COLUMN - 2))  # 2 characters for "[]"

    # Compute the number of characters to fill in the bar
    local filled_length=$(echo "$percent * $bar_length / 100" | bc)

    # Create the progress bar
    echo -n "["
    for ((i = 0; i < filled_length; i++)); do
        echo -n "="
    done

    for ((i = filled_length; i < bar_length; i++)); do
        echo -n "."
    done

    echo "]"
}

#
# The program starts here
#

# Print the current date and time
date +%c

# Get the current year and the number of days in the year
current_year=$(date +%Y)

# Check if the year is a leap year
if (( (current_year % 4 == 0 && current_year % 100 != 0) || (current_year % 400 == 0) )); then
    days_in_year=366
else
    days_in_year=365
fi

# Print the progress of the year
day_of_the_year=$(date +%j) # day of the year
result=$(echo "scale=2; 100 * $day_of_the_year / $days_in_year" | bc)
echo -en "Year\t$result% "
progress_bar $result

# Print the progress of the month
day_of_the_month=$(date +%d) # day of the month
days_in_month=$(date +%d -d "$(date +%Y-%m-01) +1 month -1 day") # number of days in the month
result=$(echo "scale=2; 100 * $day_of_the_month / $days_in_month" | bc)
echo -en "Month\t$result% "
progress_bar $result

# Print the progress of the week
day_of_the_week=$(date +%u) # day of the week
result=$(echo "scale=2; 100 * $day_of_the_week / 7" | bc)
echo -en "Week\t$result% "
progress_bar $result

# Print the progress of the day
current_hour=$(date +%H) # current hour
current_minute=$(date +%M) # current minute
minutes=$((24*60)) # number of minutes in a day
minute_of_day=$((10#$current_hour * 60 + 10#$current_minute)) # minute of the day
result=$(echo "scale=2; 100 * $minute_of_day / $minutes" | bc)
echo -en "Day\t$result% "
progress_bar $result