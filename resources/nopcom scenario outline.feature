Feature: Demo Nopcommerce Acceptance Criteria

  As a user, i would like to use book category page

  Background: I should be able to see homepage
    Given     I enter URL "https://demo.nopcommerce.com/" in browser
    And       I am on home page

    Scenario Outline: I should be able to see top menu tabs on homepage with categories
      When            I am on homepage
      Then            I should be able to see top menu tab with "<categories>"

      Examples:

      | Categories        |
      | Computers         |
      | Electronics       |
      | Apparel           |
      | Digital downloads |
      | Books             |
      | Jewellery         |
      | Gift card         |

      Scenario Outline: I should be able to see book page with filters
        When            I select book category from top menu tabs on home page
        Then            I should be navigate to book category
        And             I should be able to see "<Filters>"

        Examples:

        | Filters    |
        | Short by   |
        | Display    |
        | the Grid   |
        | List tab   |

        Scenario Outline: I should be able to see list of terms of each Filters
          Given           I am on book page
          When            I click on "<Filters>"
          Then            I should be able to see "<List>" in dropdown menu

          Examples:

          | Filters   | List                                                                            |
          | sort by   | Name: A to Z, Name: Z to A, Price: Low to High, Price: High to Low, Created on  |
          | Display   | 3, 6, 9                                                                         |

          Scenario Outline: I should be able to choose any filter option with specific result
            Given           I am on book page
            When            I click on "<Filters>"
            And             I click on any "<Option>"
            Then            I should be able to choose any filter option from the list
            And             I should be able to see "<Result>"

            Examples:
            | Filters    |  Option          | Result                                                            |
            | Sort by    | Name: A to Z     | sorted product with the product name in alphabetical order A to Z |
            | Sort by    | Name: Z to A     | sorted product with the product name in alphabetical order Z to A |
            | Sort by    | Price:Low to High| sorted product with the price in descending order                 |
            | Sort by    | Price:High to Low| sorted product with the price in ascending order                  |
            | Sort by    | Created on       | Recently added product should be show first                       |
            | Display    | 3                | 3 products in a page                                              |
            | Display    | 6                | 6 products in a page                                              |
            | Display    | 9                | 9 products in a page                                              |

            Scenario Outline: I should be able to see product display format according display format type as per given picture in SRS document
              Given           I am on book page
              When            I click on "<display format icon>"
              Then            i should be able to see product display format according display formate type as per given picture in SRS document

              Examples:
              | Display format icon |
              | Grid                |
              | List                |