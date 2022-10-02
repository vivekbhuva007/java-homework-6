Feature: Demo Nopcommerce's topmenu acceptance criteria
  I would like to check acceptance criteria of Nopcommerce topmenu
  Background: User is on given URL
    When User type URI https://demp.nopcommerce.com
    And User click on Enter button
    Then User is on given URI

    Scenario: Verify that user can nevigate to book category
      When  User is on URL
      And   Click on book tabs on top menu
      Then  User is nevigated to book category page

  Scenario: Verify that user can see the book category page with filters and list of products
    When  User is on URL
    And   Click on book tabs on top menu
    And   Check filters and list tab
    Then  Books category page is displayed with filters with list tabs

  Scenario: Verify that user can see Sort by filter on book category page
    Given  User is on books category page
    When   User is on books category page
    And   Check Sort by  filter is present
    Then  'Sort by'filter is available on book category page

  Scenario: Verify that user can see 'Display' filter on book category page
    Given  User is on books category page
    When   User is on books category page
    And   Check 'Display' filter is present
    Then  'Display' is available on book category page

  Scenario: Verify that user can see 'Grid' filter on book category page
    Given  User is on books category page
    When   User is on books category page
    And   Check 'Grid' filter is present
    Then  'Grid' is available on book category page

  Scenario: Verify that user can see 'List' filter on book category page
    Given  User is on books category page
    When   User is on books category page
    And   Check 'List' filter is present
    Then  'List' is available on book category page

  Scenario: Verify that user can see Name: A to Z selection is present Sort by filter
    Given  User is on books category page
    When   User is on books category page
    And    Click on 'Sort by' filter
    And   Check that 'Name: A to Z' selection is present
    Then  'Name:A to Z' selection is present in 'Sort by'filter

  Scenario: Verify that user can see Name: A to Z is first option in Sort by filter
    Given  User is on books category page
    When   User is on books category page
    And    Click on 'Sort by' filter
    And   Check that 'Name: A to Z'is first in order
    Then  'Name:A to Z'is first option in order

  Scenario: Verify that user can see Name: A to Z filter is functioning as expected
  (Note: Product are filtered alphabetical order)
    Given  User is on books category page
    When   User is on books category page
    And    Click on 'Sort by' filter
    And   Check that 'Name: A to Z'is filter
    Then  All Products are displayed in alphabetical order









