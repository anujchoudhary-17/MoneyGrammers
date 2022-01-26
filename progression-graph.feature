Feature: Feature Progression graph
    Track weekly weight increases for specific excersises
    and display the progress as a graph.

    Scenario: User want to add a new tracking feature for biceps curls
        Given User has started the exercise
        When  Beginning of the week
        Then  User started with <-> pounds


    Scenario: Week 1 Bicep Weight Track
    Given : User has added the feature
    And : Feature is ready to use
    When : He performs the exercise daily
    And : Adds the weight of dumbbells'/equipment used for biceps daily
    And : The week ends
    Then : The feature gives output as a graph of Time <-> Weight used by the User

Feature: Tracks user's weekly weight gain and displays it in a graph

    Scenario: Week 1 Complete
        Given : User has added the feature
        And : Feature is ready to use
        When : He performs the exercise daily
        And : Adds his weight daily
        And : The week ends
        Then : The feature gives output as a graph of Time <-> Weight

