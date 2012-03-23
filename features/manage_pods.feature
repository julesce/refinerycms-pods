@pods
Feature: Pods
  In order to have pods on my website
  As an administrator
  I want to manage pods

  Background:
    Given I am a logged in refinery user
    And I have no pods

  @pods-list @list
  Scenario: Pods List
   Given I have pods titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of pods
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @pods-valid @valid
  Scenario: Create Valid Pod
    When I go to the list of pods
    And I follow "Add New Pod"
    And I fill in "Name" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 pod

  @pods-invalid @invalid
  Scenario: Create Invalid Pod (without name)
    When I go to the list of pods
    And I follow "Add New Pod"
    And I press "Save"
    Then I should see "Name can't be blank"
    And I should have 0 pods

  @pods-edit @edit
  Scenario: Edit Existing Pod
    Given I have pods titled "A name"
    When I go to the list of pods
    And I follow "Edit this pod" within ".actions"
    Then I fill in "Name" with "A different name"
    And I press "Save"
    Then I should see "'A different name' was successfully updated."
    And I should be on the list of pods
    And I should not see "A name"

  @pods-duplicate @duplicate
  Scenario: Create Duplicate Pod
    Given I only have pods titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of pods
    And I follow "Add New Pod"
    And I fill in "Name" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 pods

  @pods-delete @delete
  Scenario: Delete Pod
    Given I only have pods titled UniqueTitleOne
    When I go to the list of pods
    And I follow "Remove this pod forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 pods
 