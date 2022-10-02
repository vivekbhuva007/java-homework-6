Feature: bookcategory

  Background: I should be able to see homepage
    Given I enter https://demo.nopcommerce.com/ in browser
    And   I am on home page

    Scenario Outline: I should be able to see top menu tabs on homepage with categories
      When i am on home page
      Then I should be able to see top menu tabs with "<categories>"

      Examples:
        |catagories        |
        |computer          |
        |Electronic        |
        |Apparel           |
        |Digital downloads |
        |books             |
        |jewellery         |
        |Gift card         |

Scenario Outline: I should be able to see book page with filters
  When I select book category from top menu tabs on home page
  Then I should be nevigated to book category
  And  I should be able to see "<filters>"

  Examples:
  |Filters   |
  |Short by  |
  |Display   |
  |The grid  |
  |List tab  |

  Scenario Outline: I should be able to see list of terms of each filters
    Given I am on book page
    When  I click on "<Filters>"
    Then  I should be able to see "<List>" in dropdown menu

    Examples:
      |Filters   |list                                                                    |
      |Sort by  | Name: A to Z, Z to A, Price low to high, Price: high to low, Creted on |
      |Display   |                                                                        |

    Scenario Outline: I should be able to choose any filter options with specific result
      Given I am on book page
      When  I click on "<Filters>"
      And   I click on "<options>"
      Then  I should be able to see list of terms of each filters
      And  I should be able to see "<result>"

      Examples:
        |Filters   | options                 |Result                                                          |
        |Sort by   |Name: A to Z             |sorted product with the product name in alphabetic order A to z |
        |Sort by   |Name: Z to A             |sorted product with the product name in alphabetic order Z to A |
        |Sort by   |Price: low to high       |sorted product with the product price in decending order        |
        |Sort by   |Price: high to low       |sorted product with the product price in ascending order        |
        |Sort by   | created on              |Recently added product should be shown first                    |
        |Display   | 3                       |3 products in a page                                            |
        |Display   |6                        |6 products in a page                                            |
        |Display   |9                        |9 products in a page                                            |

   Scenario Outline: I should be able to see product display format accordingly display formet type as per given 
                     picture in srs document
     Given  I am on book page
     When   I click on "<display formet icon>"
     Then I should be able to see product display format accordingly display formet type as per given
          picture in srs document
     
     Examples: 
     |Display formet icon |
     |Grid                |
     |List                |