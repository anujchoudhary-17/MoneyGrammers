Feature: Exercise Selection

    User selects an exercise, 
    chooses an appropriate equipment, weight and begins to perform x,
    number of sets and y, number of reps.
        
    Scenario: User enters a valid number of sets and reps for the squat exercise
        Given User is in the exercise training page
        And User has selected Squat as an exercise movement
        And User enter a positive integer for the number of sets after he performs the movement
        And User enter a positive integer for the number of reps after he performs the movement
        And User presses the save button
        Then The exercise training page should refresh
        And User should able to see the information that was saved
        And Fields should be emptied and cleared

    Scenario: User enters an invalid number of sets for the squat exercise
        Given User is in the exercise training page
        And User has selected Squat as an exercise movement
        When User enter a <sets> for the number of sets after he performs the movement
        And User enter a postive integer for the number of reps after he performs the movement
        Then An error should pop up next to the sets field

        Examples:
            | sets               |
            | 0                  |
            | negative integer   |
            | string             |


    Scenario: User selects the dumbbell exercise
        Given User is in the exercise training page
        When User selects the dumbbell option 
        And User enters the weight of the dumbbell
        And User enters the numbers of sets after he performs the movement
        And User enters the numbers of reps after he performs the movement
        And User presses the save button
        Then The exercise training page should refresh
        And User should able to see the information that was saved
        And Fields should be emptied and cleared