Feature: Discovering Rooms
  In order to interact with other people in a Workspace
  I want to be able to explore the Workspace's rooms

   @unimplemented-steps
  Scenario: Workspace Member may discover Listed Room
    Given a Workspace with a Listed Room
    When a Workspace Member is on the Workspace Dashboard
    Then they see the Room

  @unimplemented-steps
  Scenario: Workspace Member may not discover Unlisted Room
    Given a Workspace with an Unlisted Room
    When a Workspace Member is on the Workspace Dashboard
    Then they do not see the Room

  @unstarted
  Scenario: Room Creator may discover Unlisted Room
    Given a Workspace with an Unlisted Room
    When the Room Creator is on the Workspace Dashboard
    Then they see the Room

  @unstarted
  Scenario: Room Previous Attendee may discover previously visited Unlisted Room
    Given a Workspace with an Unlisted Room
    When a Previous Attendee of that Room is on the Workspace Dashboard
    Then they see the Room

  @unimplemented-steps
  Scenario: Guest may discover Listed Room
    Given a Workspace with a Listed Room
    When a Guest is on the Workspace Dashboard
    Then they see the Room

  @unimplemented-steps
  Scenario: Guest may not discover Unlisted Rooms
    Given a Workspace with an Unlisted Room
    When a Guest is on the Workspace Dashboard
    Then they do not see the Room

  @unstarted
  Scenario: Guest may not discover Listed Internal Room
    Given a Workspace with an Listed Internal Room
    When a Guest is on the Workspace Dashboard
    Then they do not see the Room