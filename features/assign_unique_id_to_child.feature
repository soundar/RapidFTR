Feature:As a user ,when I login with my credentials,my username should be used to create a unique child id

  Scenario: The unique Id of child should use the logged-in user's username

    Given I am logged in
    When I am on the new child page
    When I fill in the basic details of a child
    And I attach the file "features/resources/jeff.png" to "photo"
    And I press "Save"
    Then I should see "Child record successfully created."
    And I should see "Unique Id: mary"
