Feature: Demo Nopcommerce's top menu acceptance criteria

  As a user, I would like to check acceptance criteria of Nopcommerce top menu

  Background: User is on given URL
    When      User type URL "https://demo.nopcommerce.com"
    And       User click on Enter button
    Then      User is on given URL

    Scenario: Verify that user can navigate to Books category
      When    User is on given URL
      And     Click on Books tab on top menu
      Then    User is navigate to book category page

    Scenario: Verify that user can see the Books category page with filters and list of products
      When    User is on given URL
      And     Click on Books tab on top menu
      And     Check filters and list tab
      Then    Books category page is displayed with filters and list tabs

    Scenario: Verify that user can see 'Sort by' filter on book category page
      Given   User is on Books Category page
      When    User is on Books Category page
      And     Check 'Sort by' filter is present
      Then    'Sort by' filter is available on Book category page

    Scenario: Verify that user can see 'Display' filter on book category page
      Given   User is on Books category page
      When    User is on Books category page
      And     Check 'Display' filter is present
      Then    'Display' filter is available on Books category page

    Scenario: Verify that user can see 'Grid' tab on book category page
      Given   User is on Books category page
      When    User is on Books category page
      And     Check 'Grid' tab is present
      Then    'Grid' tab is available on Books category page

    Scenario: Verify that user can see 'List' tab on Book category page
      Given   User is on Books category page
      When    User is on Books category page
      And     Check 'List' tab is present
      Then    'List' tab is available on Books category page

    Scenario: Verify that user can see 'Name: A to Z' selection is present in 'Sort by' filter
      Given   User is on Books category page
      When    User is on Books category page
      And     Click on 'Sort by' filter
      And     Check the name 'Name: A to Z' selection is present
      Then    'Name: A to Z' selection is present in 'Sort by' filter

    Scenario: Verify that user can see 'Name: A to Z' is first option in 'Sort by' filter
      Given   User is on Books category page
      When    User is on Books category page
      And     Click on 'Sort by' filter
      And     Check that 'Name: A to Z' is first in order
      Then    'Name: A to Z' is first option in order

    Scenario: Verify that user can see 'Nmae: A to Z' filter is functioning as expected(Note: Products are filtered in alphabetical order)
      Given   User is on Books category page
      When    User is on Books category page
      And     Click on 'Sort by' filter
      And     Select 'Name: A to Z' filter
      Then    All products are displayed in alphabetical order



