Feature: Exercise Selection

    User selects an exercise, 
    chooses an appropriate equipment, weight and begins to perform x,
    number of sets and y, number of reps.
        
    Scenario: User enters a valid entry of sets and reps for the squat exercise
        Given User is in the exercise training page
        And User has selected Squat as an exercise movement
        And User enter a positive integer for the number of sets after he performs the movement
        And User enter a positive integer for the number of reps after he performs the movement
        And User presses the save button
        Then The exercise training page should refresh
        And User should able to see the information that was saved
        And Fields should be emptied and cleared

    Scenario Outline: User enters an invalid number of entry for the squat exercise
        Given User is in the exercise training page
        And User has selected Squat as an exercise movement
        When User enter <sets> for the number of sets after he performs the movement
        And User enter <reps> for the number of reps after he performs the movement
        Then An error message should pop up next to the <field> field

        Examples:
            | sets             | reps             | field |
            | 0                | 10               | sets  | 
            | negative integer | 10               | sets  |
            | decimal number   | 10               | sets  |
            | string           | 10               | sets  |
            | 3                | 0                | reps  |
            | 3                | negative integer | reps  | 
            | 3                | decimal number   | reps  |
            | 3                | string           | reps  |


    Scenario: User enters a valid entry for the dumbbell exercise
        Given User is in the exercise training page
        And User has selected the dumbbell option 
        When User enters a positive number for the weight of the dumbbell
        And User enters a positive integer for the number of sets after he performs the movement
        And User enters a positive integer for the number of reps after he performs the movement
        And User presses the save button
        Then The exercise training page should refresh
        And User should able to see the information that was saved
        And Fields should be emptied and cleared

    Scenario Outline: User enters an invalid entry for the dumbbell exercise 
        Given User is in the exercise training page
        And User has selected Dumbbell as an exercise movement
        When User enter <weight> for the weight of the dumbbell
        And User enter <sets> for the number of sets after he performs the movement
        And User enter <reps> for the number of reps after he performs the movement
        Then An error message should pop up next to the <field> field

        Examples:
            | weight          | sets               | reps               | field  |
            | 0               | 3                  | 10                 | weight |
            | negative number | 3                  | 10                 | weight |
            | string          | 3                  | 10                 | weight |            
            | 25              | 0                  | 10                 | sets  | 
            | 25              | negative integer   | 10                 | sets  |
            | 25              | non-integer number | 10                 | sets  |
            | 25              | string             | 10                 | sets  |
            | 25              | 3                  | 0                  | reps  | 
            | 25              | 3                  | negative integer   | reps  |
            | 25              | 3                  | non-integer number | reps  |
            | 25              | 3                  | string             | reps  |