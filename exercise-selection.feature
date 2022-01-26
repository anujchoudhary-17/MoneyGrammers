Feature: Exercise Selection

    User selects an exercise, 
    chooses an appropriate equipment, weight and begins to perform x,
    number of sets and y, number of reps.

    Scenario: User selects a bodyweight squat exercise
        Given User is in the exercise training page
        When User enters the numbers of sets after he performs the movement
        And User enters the numbers of reps after he performs the movement
        And User presses the save button
        Then User should able to see the information that was saved
        And textbox should be emptied and cleared when User starts the session again.