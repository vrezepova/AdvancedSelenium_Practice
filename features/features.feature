Feature:  Advanced Selenium

  Scenario: Array
    Then This is Array
    Then This is Array of Arrays

    Scenario: Print array
    Then Print array

 Scenario: Hash
   Then This is Hash example

 Scenario:  Recollect data from array using MAP function
   Then Recollect data with map function

 Scenario: For Loop
   Then For loops task 1
   Then For loops task 2 Print each second element
   Then For loops task 3 Print each third element starting with last one


  Scenario: Task 1: Reaching page 3
    Then Go to "http://www.ebay.com/sch/Cars-Trucks-/6001/i.html"
    Then Reaching page 3


  Scenario: Task 2: Print some amount of items on a page
    Then Print some amount of items on a page UNTIL
    Then Print some amount of items on a page WHILE

  Scenario: Collect item titles
    Then Go to "http://www.ebay.com/sch/Cars-Trucks-/6001/i.html"
    Then Collect the titles

  Scenario: Print cars if they are NEW LISTING on first 4 pages
    Then Go to "http://www.ebay.com/sch/Cars-Trucks-/6001/i.html"
    Then Print cars if they are NEW LISTING on first 4 pages

  Scenario: Print cars if they are not NEW LISTING on first 4 pages
    Then Go to "http://www.ebay.com/sch/Cars-Trucks-/6001/i.html"
    Then Print cars if they are not NEW LISTING on first 4 pages
    Then Print cars if they are not NEW LISTING on first 4 pages UNLESS


Scenario: Print car titles of a particular make
  Then Go to "http://www.ebay.com/sch/Cars-Trucks-/6001/i.html"
  Then Print cars if they are Ford on first 5 pages UNLESS

  Scenario: Checkbox
    Then Go to "http://www.ebay.com/sch/Cars-Trucks-/6001/i.html?_dcat=6001&_momoc=1&_rdc=1"
    Then Click See all in Exterior colors
    Then Choose some colors

  Scenario: Radiobuttons
    Then Go to "http://www.ebay.com/sch/Cars-Trucks-/6001/i.html?_dcat=6001&_momoc=1&_rdc=1"
    Then Click See all in Format
    Then Then Choose Format

  Scenario: Dropdown classic
    Then Go to "http://www.ebay.com/sch/Cars-Trucks-/6001/i.html?_dcat=6001&_momoc=1&_rdc=1"
    Then From "Make" select "BMW"

  Scenario: Cascade dropdown
    Then Go to "http://www.ajaxcontroltoolkit.com/CascadingDropDown/CascadingDropDown.aspx"
    Then Cascade dd selection

 Scenario: Regular task: select values from each drop-down
   Then Go to "http://www.ebay.com/sch/Cars-Trucks-/6001/i.html"
#   Then From "Make" select item and print it

  Scenario: Hybrid inputs
    Then Go to "http://www.google.com"
    Then Google example

Scenario:  Hybrid DD
  Then Go to "http://demos.telerik.com/kendo-ui/dropdownlist/cascadingdropdownlist"
  Then Hybrid dd all values to first

Scenario: File upload
  Then Go to "http://www.wicket-library.com/wicket-examples/upload/single;jsessionid=9320D3F8AE30EB70DDF268D458C7D04F?0"
  Then Upload file
  Then Upload files "/Users/victoriarezepova/Desktop/out/File_2.doc"


  Scenario: Drag and Drop
    Then Go to "http://marcojakob.github.io/dart-dnd/basic/web/"
    Then Drag and Drop

  Scenario: DD to the Bin - Practice Task
    Then Go to "http://html5demos.com/drag#"
    Then DD to the Bin


 Scenario: Task 1 The Number Cards Game
   Then Go to "http://www.elated.com/res/File/articles/development/javascript/jquery/drag-and-drop-with-jquery-your-essential-guide/card-game.html"
   Then DD the appropriate cards
#   Then Verify The Game is solved

  Scenario: Task 2. Upload the files
    Then Go to "https://angular-file-upload.appspot.com"
    Then Provide username
    Then Upload the files. Task 2

  Scenario: Task 2 - Randomize upload
    Then Go to "http://fineuploader.com/demos"
    Then Create a loop which will grab 3 random pics and upload them one by one


  Scenario: Click on Slice of a pie chart
      Then Go to "http://www.jqueryrain.com/?UZQw0Fop"
      Then Switch to frame
      Then Click the slice

  Scenario: Task 1 lesson 5 SVG tooltips
    #if running without iframe involved:
    Then Go to "http://bl.ocks.org/Caged/raw/6476579/7d0158c142ca6bdbb085132c9daa59855f3552cb/"
    Then SVG Tooltips E


  Scenario: SVG Cars by country Production chart
      Then Go to "http://www.taucharts.com/"
      Then Cars in Iran

  Scenario: HW lesson 5 Output low/mid/high percentage for each state
    Then Go to "http://bl.ocks.org/NPashaP/raw/96447623ef4d342ee09b/4aa55e294cf06411f34001b52dbfcb7d551a7726/"
    Then Output low, mid, high percentage for each state

  Scenario: HW lesson 5 Output low/mid/high percentage for one state
    Then Go to "http://bl.ocks.org/NPashaP/raw/96447623ef4d342ee09b/4aa55e294cf06411f34001b52dbfcb7d551a7726/"
    Then Output low, mid, high percentage for state DE


Scenario: Test
  Then Go to "http://syapse.com/"
  Then Find the elements of the main Nav menu Products
  Then Find all the elements of the main Nav menu

  Scenario: Test2
    Then Find all the elements of the main menu

 Scenario: Collect 5 stars items with prime option
   Then Go to "http://www.amazon.com"
   Then Put the search word Unicorn green Polka Dot plaid in the search field
   Then Collect 5 star items with prime option


  Scenario: Lesson 6 Task 1: Reading through files
    Then Lesson 6 Task 1: Reading through files
    Then Lesson 6 Task 1: Reading through files via array

  Scenario: Lesson 6 Task 2: Working with excel
    Then Lesson 6 Task 2: Working with excel


  Scenario:  Gmail login
      Then Log in

  Scenario:  Gmail print read mails
  Then Print read

  Scenario:  Gmail registration link
    Then Link from Gmail

  Scenario: Remove Spam messages from Gmail box
    Then Remove Spam messages from Gmail box

  Scenario:  Send Gmail message
    Then Then Send mail to "rezepova@gmail.com"

  Scenario: Net Imap
    Then Net Imap mail print