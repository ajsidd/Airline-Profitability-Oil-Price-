import os
import csv

# Path to collect data from the Resources folder
graduation_csv = os.path.join('..', 'Resources', 'graduation_data.csv')


# Define the function and have it accept the 'state_data' as its sole parameter
def print_percentages(state_data):
    # For readability, it can help to assign your values to variables with descriptive names
    # CSV headers: State or jurisdiction, Adjusted cohort (Public), Completers (Public),
    # Adjusted cohort (Nonprofit Private), Completers (Nonprofit Private), 
    # Adjusted cohort (For-profit Private), Completers (For-profit Private)
    state = str(state_data[0])
    public_students = int(state_data[1])
    public_graduates = int(state_data[2])
    nonprofit_students = int(state_data[3])
    nonprofit_graduates = int(state_data[4])
    forprofit_students = int(state_data[5])
    forprofit_graduates = int(state_data[6])

    # Total students can be found by adding students of each category together
    total_students = public_students + nonprofit_students + forprofit_students
    # Total graduates can be found by adding graduates of each category together
    total_graduates = public_graduates + nonprofit_graduates + forprofit_graduates

    # Public grad rate can be found by dividing the total public graduates by the total public 
    # students and multiplying by 100
    public_grad_rate = (public_graduates / public_students) * 100

    # Note that some states do not have nonprofit or forprofit private schools, so data must be checked 
    # for zeros

    # Nonprofit grad rate can be found by dividing the total nonprofit graduates by the total nonprofit 
    # students and multiplying by 100
    if nonprofit_students == 0:
        nonprofit_grad_rate = 0
    else:
        nonprofit_grad_rate = (nonprofit_graduates / nonprofit_students) * 100

    # Forprofit grad rate can be found by dividing the total forprofit graduates by the total forprofit 
    # students and multiplying by 100
    if forprofit_students == 0:
        forprofit_grad_rate = 0
    else:
        forprofit_grad_rate = (forprofit_graduates / forprofit_students) * 100

    # Calculate the overall graduation rate
    overall_grad_rate = (total_graduates / total_students) * 100

    # If the overall graduation rate is over 50, message is "Graduation success". 
    # Otherwise it is "State needs improvement".
    if overall_grad_rate > 50:
        message = "Graduation success"
    else:
        message = "State needs improvement"

    # Print out the state's name and their graduation rates
    print(f"Stats for {state}")
    print(f"Public School Graduation Rate: {str(public_grad_rate)}")
    print(f"Private Non-Profit School Graduation Rate: {str(nonprofit_grad_rate)}")
    print(f"Private For-Profit School Graduation Rate: {str(forprofit_grad_rate)}")
    print(f"Overall Graduation Rate: {str(overall_grad_rate)}")
    print(f"{message}")


# Read in the CSV file
with open(graduation_csv, 'r') as csvfile:

    # Split the data on commas
    csvreader = csv.reader(csvfile, delimiter=',')

    header = next(csvreader)

    # Prompt the user for what state they would like to search for
    state_to_check = input("What state do you want to look for? ")

    # Loop through the data
    for row in csvreader:

        # If the state's name in a row is equal to that which the user input, run the 'print_percentages()' function
        if state_to_check == row[0]:
            print_percentages(row)
