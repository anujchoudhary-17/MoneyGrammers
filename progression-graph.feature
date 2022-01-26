Feature: Feature Progression graph
    Track weekly weight increases for specific excersises
    and display the progress as a graph.

    Scenario: User want to add a new tracking feature for biceps curls
        Given User has started the exercise
        When  Beginning of the week
        Then  User started with <-> pounds
    
    # edge case
    Scenario: User is adding the Equipment weight track
        Given User is on the Adding Equipment Weight Track page
        And User enters string value in numeric field
        Then User will get a friendly message which shows to enter a digit 
    #---------
    Scenario: Week 1 Bicep Equipments Weight Track
        Given  User has added the new weight track
        When  He performs the exercise daily
        And  Records the weight of dumbbells'/equipment  used for biceps daily
        And  The week ends
        Then  The graph gives output of Time <-> Weight used by the User

Feature: Tracks user's weekly bodyweight gain and displays it in a graph
    Scenario: Week 1 Complete
        Given  User inputs bodyweight
        When  He performs the exercise daily
        And  Records his bodyweight daily
        And  The week ends
        Then  The graph gives output of Time <-> BodyWeight

