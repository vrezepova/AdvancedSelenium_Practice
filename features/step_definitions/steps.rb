

Then /^This is Array$/ do
  array_example = ['dog', 'ant', 'tree']
  puts array_example[1]
end

Then /^This is Array of Arrays$/ do
  array_arrays = [['dog', 'cat', 'horse'], ['ant', 'wasp', 'bee'], [3, 4, 5]]

  # simple call will be
  puts array_arrays[1][2]
  # given example will return 'bee'
end


Then /^Print array$/ do
  array = ['dog', 'cat', 'horse','ant', 'wasp', 'bee', 'frog', 'hippo', 'hare', 'rabbit']
  for i in array do
    puts 'I have a %s' %i
  end
# for the range of elements; prints out 5 random!!! elements
  for i in 1..5 do
    puts array.sample
  end
end

Then /^This is Hash example$/ do
  hash_example = {dog: "white", cat: "black", bird: "yellow"}

  puts hash_example[:dog]
end


Then /^Recollect data with map function$/ do
  #array == elements
  #array = array.map {|x| x.text}
  $driver.get "http://www.ebay.com/sch/Cars-Trucks-/6001/i.html"
  array = $driver.find_elements :xpath => "//a[@class = 'vip']"
  puts array.map {|x| x.text}
end

# Then /^While loop with break$/ do
#   elements = $driver.find_elements(:xpath, "//")
#   i = 0
#   while i != 9 do
#   puts elements[i].text
#   i +=1
#   break if i == 7
#   end
# end

Then /^Collect the titles$/ do
  cars = $driver.find_elements :xpath => "//a[@class = 'vip']"
  puts cars
  car_titles = []
  puts car_titles
  for i in cars do
    car_titles.push(i.text)
  end
end

Then /^Until loop$/ do
  elements = $driver.find_elements(:xpath, "//li/h3/a")
  i = 0
  until i == 10
    puts elements[i].text
    i +=1
  end
end

Then /^Reaching page 3$/ do
 page_counter = $driver.find_element(:xpath, "//td[@class = 'pages']/a[contains(@aria-label, 'Selected')]")

 while not page_counter.text == '3' do
   puts page_counter.text
   cars = $driver.find_elements(:xpath,"//h3[@class='lvtitle']/a")
        for i in cars do
          puts i.text
        end
    nextpage = $driver.find_element(:xpath, "//a[@class='gspr next']")
    nextpage.click
    page_counter = $driver.find_element(:xpath, "//td[@class = 'pages']/a[contains(@aria-label, 'Selected')]")
  end
end

Then /^Print cars if they are NEW LISTING on first 4 pages$/ do
  page_counter = $driver.find_element(:xpath, "//td[@class = 'pages']/a[contains(@aria-label, 'Selected')]")

  while not page_counter.text == '5' do
     puts page_counter.text
    listing = $driver.find_elements :xpath => "//h3[@class='lvtitle'][.//span[@class = 'newly' and text() = 'New listing']]/a"
  for i in listing
    puts i.text
  end
    nextpage = $driver.find_element(:xpath, "//a[@class='gspr next']")
    nextpage.click
    page_counter = $driver.find_element(:xpath, "//td[@class = 'pages']/a[contains(@aria-label, 'Selected')]")
  end
end



Then /^Print some amount of items on a page UNTIL$/ do
  $driver.get "http://www.ebay.com/sch/Cars-Trucks-/6001/i.html"
  elements = $driver.find_elements :xpath => "//h3[@class='lvtitle']/a"
  i = 0
  until i == 5
    puts elements[i].text
    i += 1
  end
end

Then /^Print some amount of items on a page WHILE$/ do
  $driver.get "http://www.ebay.com/sch/Cars-Trucks-/6001/i.html"
  elements = $driver.find_elements :xpath => "//h3[@class='lvtitle']/a"
  counter = 0
  while counter <= 5
    puts elements[counter].text
    counter += 1
  end
end


Then /^For loops task 1$/ do
  $driver.get "http://www.ebay.com/sch/Cars-Trucks-/6001/i.html"
  elements = $driver.find_elements :xpath => "//h3[@class='lvtitle']/a"
  for i in elements
    puts i.text
  end
end

Then /^For loops task 2 Print each second element$/ do
  $driver.get "http://www.ebay.com/sch/Cars-Trucks-/6001/i.html"
  array = $driver.find_elements :xpath => "//h3[@class='lvtitle']/a"
  array.each_with_index do |item,index|
    if index %2 ==0
      puts item.text
    end
  end
end


Then /^For loops task 3 Print each third element starting with last one$/ do
  $driver.get "http://www.ebay.com/sch/Cars-Trucks-/6001/i.html?_nkw=porsche&_frs="
  array = $driver.find_elements :xpath => "//h3[@class='lvtitle']/a"
  array1 = array.reverse_each
  array1.each_with_index do |item,index|
      if index %3 ==2
        puts item.text
      end
    end
end



Then /^Print cars if they are not NEW LISTING on first 4 pages$/ do
  page_counter = $driver.find_elements(:xpath, "//td[@class = 'pages']/a[contains(@aria-label, 'Selected')]")
  while not page_counter.text == '5' do
    # puts page_counter.text
    listing = $driver.find_elements(:xpath, "//a[@class = 'vip']")
    for i in listing do
      if i.text.include? 'NEW'
      puts 'OMG'
      else puts i.text
    end
    nextpage = $driver.find_element(:xpath, "//a[@class='gspr next']")
    nextpage.click
    page_counter = $driver.find_elements(:xpath, "//td[@class = 'pages']/a[contains(@aria-label, 'Selected')]")
  end
  end
  end

  Then /^Print cars if they are not NEW LISTING on first 4 pages UNLESS$/ do
    page_counter = $driver.find_element(:xpath, "//td[@class = 'pages']/a[contains(@aria-label, 'Selected')]")
    while not page_counter.text == '5' do
       puts page_counter.text
       listing = $driver.find_elements(:xpath, "//h3/a")
      for i in listing do
         unless i.text.include? 'NEW'
          puts i.text
         end
        nextpage = $driver.find_element(:xpath, "//a[@class='gspr next']")
        nextpage.click
        page_counter = $driver.find_element(:xpath, "//td[@class = 'pages']/a[contains(@aria-label, 'Selected')]")
      end
    end
     end

    Then /^Print cars if they are Ford on first 5 pages UNLESS$/ do
      page_counter = $driver.find_element(:xpath, "//td[@class = 'pages']/a[contains(@aria-label, 'Selected')]")
      while not page_counter.text == '10' do
        puts page_counter.text
        listing = $driver.find_elements :xpath => "//h3[@class='lvtitle']/a"
        for i in listing do
          if i.text.include? 'Ford'
            puts i.text
          end
          nextpage = $driver.find_element(:xpath, "//a[@class='gspr next']")
          nextpage.click
        end
        page_counter = $driver.find_element(:xpath, "//td[@class = 'pages']/a[contains(@aria-label, 'Selected')]")
      end
      end


Then /^Go to "([^"]*)"$/ do |url|
 $driver.get url
 # $driver.get "#{url}"
  sleep 5
end

Then /^Click See all in Exterior colors$/ do
button = $driver.find_element(:xpath, "//div[./span/h3[text() = 'Exterior Color']]/a")
  button.click
  sleep 3
end

Then /^Click See all in Format$/ do
  button = $driver.find_element(:xpath, "//div[./span/h3[text() = 'Format']]/a")
  button.click
  sleep 3
end

Then /^Choose some colors$/ do
colors_we_want = ['Red', 'Blue', 'Black']
for i in colors_we_want do
  $driver.find_element(:xpath, "//input[@type = 'checkbox' and @value = '"+i+"']").click
  sleep 3
end
end

Then /^Then Choose Format/ do
  format_we_want = ['Auction', 'Buy It Now', 'Classified ads', 'All Listings']
  for i in format_we_want do
    $driver.find_element(:xpath, "//div[@class = 'asf-v']//label[text() = '"+i+"']").click
    puts i
  end
end


Then /^From "([^"]*)" select "([^"]*)"$/ do |dd, item|
  dropd = $driver.find_element(:xpath, "//select[@name = '"+dd+"']")
  variable = $dropdown.new(dropd)
  variable.select_by(:text, item)
  sleep 2
end

# Then /^From "([^"]*)" select item and print it$/ do |dd|
#   dropd = $driver.find_element(:xpath, "//select[@name = '"+dd+"']")
#   item = ['Acura', 'Alfa Romeo', 'American Motors', 'Aston Martin', 'Audi']
#   variable = $dropdown.new(dropd)
#   variable.select_by(:text, i)
#   for i in item do
#     puts item
#   end
#   sleep 2
# end

Then /^Cascade dd selection$/ do
  selects = $driver.find_elements(:xpath, "//select")
puts selects
  for i in selects do
    variable = $dropdown.new(i)
    variable.select_by(:index, 1)
    sleep 3
  end
end


Then /^Google example$/ do
  input_fld = $driver.find_element(:xpath, "//input[@title = 'Search']")
  input_fld.send_keys("What if ")

  sleep 4

  given_variants = $driver.find_elements(:xpath, "//ul[@role = 'listbox']//div[@class = 'sbqs_c']")

  puts "Google suggested folowing variants:"
  for i in given_variants
    puts i.text
  end
  random_variant = given_variants.sample
  puts "I've chose %s" %random_variant.text

  random_variant.click
end

Then /^Hybrid dd all values to first$/ do
  $driver.manage.window.maximize
 triggers = $driver.find_elements(:xpath, "//span[@class = 'k-input'][contains(text() = 'Select']")
 for i in triggers do
   i.click
   sleep 4
   $driver.find_element(:xpath, "//ul[@aria-hidden = 'false']//li[1]").click
   sleep 4
end
end

Then /^Upload file$/ do
  # file = 'C:/User/folder/file.doc'
#   set current folder = Dir.pwd
  puts Dir.pwd
# append relative path - File.join(x,y)
  file = '/folder/file.doc'
  final_path = File.join(Dir.pwd, file)
  puts final_path
  file_input = $driver.find_element(:xpath, "//input[@type='file']")
  file_input.send_keys final_path
end

Then /^Upload files "([^"]*)"$/ do |path|
  # file = 'C:/User/folder/file.doc'
  #   set current folder = Dir.pwd
  # puts Dir.pwd
# append relative path - File.join(x,y)
  #file = path
  final_path = File.join(Dir.pwd, path)
  # puts final_path
  file_input = $driver.find_element(:xpath, "//input[@type='file']")
  file_input.send_keys final_path
end

Then /^Drag and Drop$/ do
  lists = $driver.find_elements(:xpath, "//img[@class = 'document']")
  trash_bin = $driver.find_element(:xpath, "//div[@class = 'trash']")
  for i in lists do
  $driver.action.drag_and_drop(i, trash_bin).perform
end
  lists = $driver.find_elements(:xpath, "//img[@class = 'document']")
  lists.empty?
end

Then /^DD to the Bin$/ do
  items = $driver.find_elements(:xpath, "//ul/li/a[@draggable = 'true']")
  # over = $driver.find_element(:xpath, "//div[@class = 'over']")
  trash = $driver.find_element(:xpath, "//div[@id = 'bin']")
  for i in items do
    $driver.action.drag_and_drop(i, trash).perform
    sleep 5
    #$driver.action.move_to(over).perform
    # $driver.action.move_to(trash).release.perform
  end
  items = $driver.find_elements(:xpath, "//ul/li/a[@draggable = 'true']")
  if items.empty?
    puts 'All is in Trash'
    else puts 'Something went wrong..'
  end
end


Then /^DD the appropriate cards$/ do
  numeric_cards = $driver.find_elements(:xpath, "//div[@id = 'cardPile']//div[@class = 'ui-draggable']")
  puts numeric_cards
  empty_cards = $driver.find_elements(:xpath, "//div[@id = 'cardSlots']//div[@class = 'ui-droppable']")
  puts empty_cards
  numeric_cards_ary = []
    for i in numeric_cards do
      numeric_cards_ary.push(i.text)
    end
puts numeric_cards_ary

  empty_cards_ary = []

    for i in empty_cards do
      empty_cards_ary.push(i.text)
    end
 puts empty_cards_ary

  hash_list = {'1': "one", '2': "two", '3': "three", '4': "four", '5': "five", '6': "six", '7': "seven", '8': "eight", '9': "nine", '10': "ten"}

  for i in empty_cards do
    if empty_cards[i] == numeric_cards[i].text
      $driver.action.drag_and_drop(i, empty_cards).perform
      else puts "Try again"
    end
  end


# match = $driver.find_elements(:xpath, "//div[@id = 'cardPile']/div[contains(@aria-disabled,'true')]")
#   for i in numeric_cards do
#     if numeric_cards.text == empty_cards_ary.index(i)
#   $driver.action.drag_and_drop(i, empty_cards).perform
#     else
#
#    end
#   end
  end



Then /^Create a loop which will grab 3 random pics and upload them one by one$/ do
  images = [File.join( Dir.pwd, '/AdvancedSelenium/TestFiles/1.png'), File.join(Dir.pwd, '/AdvancedSelenium/TestFiles/5.png'), File.join(Dir.pwd, '/AdvancedSelenium/TestFiles/2.png'), File.join(Dir.pwd, '/AdvancedSelenium/TestFiles/4.png'), File.join(Dir.pwd, '/AdvancedSelenium/TestFiles/3.png')]
  for i in 1..3 do
    upload_input = $driver.find_element(:xpath, "(//div[@class = 'qq-upload-button-selector qq-upload-button']/input[@type= 'file'])[2]")
    upload_input.send_keys images.sample
  end
end


Then /^Provide username$/ do
  username = $driver.find_element(:xpath, "//input[@name = 'userName']")
  username.send_keys("MyUserName ")
  sleep 4
end

Then /^Upload the files. Task 2$/ do
# choose_button = $driver.find_element(:xpath, "//input[@type = 'file']").click
file = '/AdvancedSelenium/TestFiles/File_1.doc'
final_path = File.join(Dir.pwd, file)
puts final_path
file_input = $driver.find_element(:xpath, "//input[@type='file']")
file_input.send_keys final_path

end

#SVG = Scalable Vector Graphics
# regular xpath: "//canvas[@class = '']//..."
# SVG special xpath requires this syntax with name() funcrion: "*[name() = 'canvas'][@class = '']//"


#iframe - the 'window"" for new url inside the HTML page
#$driver.switch_to.frame()
# ():
# 1. index (frame1, frame2 -> like in array)
# 2. ID
# 3. Xpath to frame:  define a variable with xpath  frame = $friver.find_element*(:xpath: "//")
#  also we can find the source link so to skip switching frames

Then /^Switch to frame$/ do
$driver.switch_to.frame(0)
sleep 2
#$driver.switch_to.default_content
end

Then /^Click the slice/ do
slice = $driver.find_element(:xpath, "//div[@class = 'chart pie']//*[name() = 'path'][@id = 'path2']")
slice.click
end

# Scenario: SVG Car Production chart
# How many cars produced in Finland?
# 1. Find the xpath to the Country using var
# 2. Click or Mouse move to it
# 3. Read tooltip
# We have two elements which have nothing in common
# Skipping the frame..
#  1. Find the xpath to the element Country
#  2. Find relation in a position in arrays
#  3. By knowing the relation - define the Xpath to the value

Then /^Cars in ([^"]*)/ do |target|
 #1 Find the Country
  country = $driver.find_elements(:xpath, "//div[@id = 'c4']//*[name() = 'svg']//*[name() = 'g' and @class = 'y axis axis_rooty']//*[name() = 'text']")
  country = country.map {|x| x.text}
  puts country
 #2 Find the position inside the array
  #two ways:
  #  not cool one:
    counter = 0
    for i in country do
    if i == target
    break
      else
      counter +=1
    end
      #puts counter

  # # better one:
  #     #array.index(target)
  #   country.index(target)
  #
  #  # hash method:
  # hash = Hash[country.map.with_index.to_a]
  # hash[target]
    end
  link_to_the_chart_by_country = $driver.find_element(:xpath, "//div[@id = 'c4']//*[name() = 'svg']//*[name() = 'g' and @class = 'layer_root']//*[name() = 'rect']["+(counter+1).to_s+"]")

  link_to_the_chart_by_country.click

  amount_cars = $driver.find_element(:xpath, "(//div[@class = 'graphical-report__tooltip__list__elem'])[8]").text
  puts target+' produced ' +amount_cars+ ' cars last year '

  end

# Then /^Switch to SVG frame$/ do
#   frame = $driver.find_element(:xpath, "//iframe[@scrolling = 'no']")
#   $driver.switch_to.frame(0)
#   sleep 2
# end


Then /^SVG Tooltips ([^"]*)$/ do |legend|
  # $driver.get "http://bl.ocks.org/Caged/6476579"
  # frame = $driver.find_element(:xpath, "//iframe[@scrolling = 'no']")
  # $driver.switch_to.frame(frame)
  # sleep 2

axis = $driver.find_elements(:xpath, "//*[name() = 'svg']/*[name() = 'g' and @transform]//*[name() = 'g' and @class = 'x axis']//*[name() = 'g' and @class = 'tick']//*[name() = 'text']")
axis = axis.map {|x| x.text}
  #puts axis
 counter = 0
  for i in axis do
    if i == legend
      break
    else
      counter +=1
    end
    #puts counter
  end

  chart = $driver.find_element(:xpath, "//*[name() = 'svg']//*[name() = 'g' and @transform]//*[name() = 'rect']["+(counter+1).to_s+"]")
  chart.click

tooltip = $driver.find_element(:xpath, "//div[@class = 'd3-tip n']//span")

  puts legend + ' equals '+ tooltip.text
  end


Then /^Output low, mid, high percentage for each state$/ do

  states = $driver.find_elements(:xpath, "//*[name() = 'svg']/*[name() = 'g' and @transform]//*[name() = 'g' and @class = 'x axis']//*[name() = 'g' and @class = 'tick']//*[name() = 'text']")
  # states = states.map {|x| x.text}
  counter = 0
  #hash = Hash[states.map.with_index.to_a]
  states.each_with_index do |item,index|

  for i in states do
      puts 'State: '+ i

      chart = $driver.find_element(:xpath, "//*[name() = 'svg']//*[name() = 'g' and @transform]//*[name() = 'g' and @class = 'bar']//*[name() = 'rect']")
      chart.click

      low_per = $driver.find_element(:xpath, "//table[@class = 'legend']//tr[1]//td[@class = 'legendPerc']")
      mid_per = $driver.find_element(:xpath, "//table[@class = 'legend']//tr[2]//td[@class = 'legendPerc']")
      high_per = $driver.find_element(:xpath, "//table[@class = 'legend']//tr[3]//td[@class = 'legendPerc']")

      puts 'Low % : ' + low_per.text
      puts 'Mid % : ' + mid_per.text
      puts 'High % : ' + high_per.text

  end
  counter += 1
  end
  end

# "//*[name() = 'svg']//*[name() = 'g' and @transform]//*[name() = 'g' and @class = 'bar'][1]"
# ["+(counter+1).to_s+"]

Then /^Output low, mid, high percentage for state ([^"]*)$/ do |st|

  states = $driver.find_elements(:xpath, "//*[name() = 'svg']/*[name() = 'g' and @transform]//*[name() = 'g' and @class = 'x axis']//*[name() = 'g' and @class = 'tick']//*[name() = 'text']")
  states = states.map {|x| x.text}

  counter = 0
  for i in states
    if i == st
    puts 'State: '+ i

    chart = $driver.find_element(:xpath, "//*[name() = 'svg']//*[name() = 'g' and @transform]//*[name() = 'g' and @class = 'bar']//*[name() = 'rect']["+(counter+1).to_s+"]")
    chart.click

    low_per = $driver.find_element(:xpath, "//table[@class = 'legend']//tr[1]//td[@class = 'legendPerc']")
    mid_per = $driver.find_element(:xpath, "//table[@class = 'legend']//tr[2]//td[@class = 'legendPerc']")
    high_per = $driver.find_element(:xpath, "//table[@class = 'legend']//tr[3]//td[@class = 'legendPerc']")

    puts 'Low % : ' + low_per.text
    puts 'Mid % : ' + mid_per.text
    puts 'High % : ' + high_per.text
      break
    else puts 'Searching..'
    end

    end
    counter += 1
  end

  Then /^Find the elements of the main Nav menu ([^"]*)$/ do |x|
    element = $driver.find_elements(:xpath, "//div[@class = 'container']//li[@class = 'dropdown']//a[contains(text(), '#{x}')]")
    for i in element do
      puts i.attribute("innerHTML")
    end
  end

Then /^Find all the elements of the main Nav menu$/ do
  element = $driver.find_elements(:xpath, "//div[@class = 'container']//li[@class = 'dropdown']//a")
  for i in element do
    puts i.attribute("innerHTML")
  end
end

Then /^Find all the elements of the main menu$/ do
  $driver.get "https://petsmart.com"
  element = $driver.find_elements(:xpath, "//ul[@class = 'ws-common-list pet-main-nav']//li[contains(@class, 'ws-common-list-item pet-main-nav-item-level1')]//a")
  for i in element do
    puts i.text
  end
  menu = []

  for i in element do
   y =  i.text.to_s
    if y.length >= 1
      menu.push(y)
  end
  puts menu
  end
  end

Then /^Put the search word ([^"]*)in the search field/ do |word|
search_field = $driver.find_element(:xpath, "//input[@id = 'twotabsearchtextbox']")
  sleep 4
search_field.send_keys "#{word}"
  submit = $driver.find_element(:xpath, "//input[@value = 'Go']")
  submit.click
end


Then /^Collect 5 star items with prime option$/ do
  sleep 6
  next_page = $driver.find_element :id => "pagnNextString"
  while next_page.enabled? do
    items = $driver.find_elements :xpath => "//div[@class = 's-item-container'][.//span[text() = 'Prime']][.//span[contains(text(), '5 out')]]//h2"
    if items.count == 0
      puts "No products with 5 stars found"
      # raise "No products with 5 stars found"
    else
      puts items
      puts items.map {|n| n.text}
    end
    next_page.click
    sleep 10
    next_page = $driver.find_element :id => "pagnNextString"
  end
end

#Cucumber variables

Then /^Click Blue button$/ do #red, green, etc.
  btn = $driver.find_element :xpath => "//button[text() = 'Blue']"
  btn.click
end

Then /^Click ([^"]*) button$/ do |colour|
  btn = $driver.find_element :xpath => "//button[text() = '#{colour}']"
  btn.click
end



Then /^Array sorting$/ do
  prices = $driver.find_elements :xpath => "//path to prices"
  array_sort_verification(prices)
end


#File Import


Then /^Import txt or rtf file$/ do
  file = '/TestFilesFolder/example.txt'

  File.open((File.join(File.expand_path("..", Dir.pwd), file)), "r").each_line do |line|
    puts 'Got it' if (line[/that one I was looking for/])
  end

end


Then /^Import xls file$/ do
  book = Spreadsheet.open 'Spreadsheet.xls'
  ws = book.worksheet('Sheet1') # can use an index or worksheet name

  ws.each do |row|
    value1 = row[0]
    value2 = row[1]
  end
  ws.each 5 do |row|
    value1 = row[0]
    value2 = row[1]
  end

     # Each row becomes an array, so each value could be called by array index. That means, in following example:
     # Screen Shot 2015-08-20 at 4.45.14 PM

    ws.each do |row|
    login = row[0]
    password = row[1]

    #  you could avoid loops if you know the row with your information:

    row_with_info = sheet1.row(4)
    login = row_with_info[0]
    password = row_with_info[1]
    end

  end
# '/Users/victoriarezepova/RubymineProjects/AdvancedSelenium/TestFiles/Creds.xls'

  Then /^Lesson 6 Task 2: Working with excel$/ do
    $driver.get "https://www.facebook.com"
    file_xls = File.join(Dir.pwd,'/TestFiles/Creds.xls' )
    book = Spreadsheet.open(file_xls)

    ws = book.worksheet('Sheet1')
    login_field = $driver.find_element(:id, "email")
    password_field = $driver.find_element(:id, "pass")

    ws.each do |row|
      login = row[0]
      password = row[1]
        puts login, password


      login_field.send_keys login
    sleep 5
      password_field.send_keys password
    sleep 5
      submit = $driver.find_element(:id, "loginbutton")
      submit.click
      sleep 5

     #   login_fail= $driver.find_element(:xpath, "//div[@class = 'fsl fwb fcb']")
     #   if login_fail.displayed?
     #     puts "Try again"
     #     $driver.get "https://www.facebook.com"
     #   else puts "Login is successful"
     # end
     end
  end





Then /^Lesson 6 Task 1: Reading through files$/ do
  file1 = '/AdvancedSelenium/TestFiles/Sample_text1.txt'
  file2 = '/AdvancedSelenium/TestFiles/Sample_text2.txt'
  file3 = '/AdvancedSelenium/TestFiles/Sample_text3.txt'

  File.open((File.join(File.expand_path("..", Dir.pwd), file1)), "r").each_line do |line|
    puts file1, 'Got it' if (line[/This is the line of text I was looking for/])
  end
  File.open((File.join(File.expand_path("..", Dir.pwd), file2)), "r").each_line do |line|
    puts file2, 'Got it' if (line[/This is the line of text I was looking for/])
  end
  File.open((File.join(File.expand_path("..", Dir.pwd), file3)), "r").each_line do |line|
    puts file3, 'Got it' if (line[/This is the line of text I was looking for/])
  end
end

Then /^Lesson 6 Task 1: Reading through files via array$/ do
  file1 = '/AdvancedSelenium/TestFiles/Sample_text1.txt'
  file2 = '/AdvancedSelenium/TestFiles/Sample_text2.txt'
  file3 = '/AdvancedSelenium/TestFiles/Sample_text3.txt'
  file4 = '/AdvancedSelenium/TestFiles/Sample_text4.txt'
  file5 = '/AdvancedSelenium/TestFiles/Sample_text5.txt'

  file = [file1, file2, file3]
for i in file do
  File.open((File.join(File.expand_path("..", Dir.pwd), i)), "r").each_line do |line|
    if line[/This is the line of text I was looking for/]
    puts i, "The file is allright!"
     else raise 'The ' +i+' does not contain required information'
  end
end
end
  end

Then /^Log in$/ do
  login = 'rezepova@gmail.com'
  password = '***'
  gmail = Gmail.connect(login, password)
   puts gmail.logged_in?
  puts gmail.inbox.count(:unread)
  puts gmail.inbox.count(:read)

  gmail.logout
end

Then /^Print read$/ do
  login = 'rezepova@gmail.com'
  password = '***'
  gmail = Gmail.connect(login, password)
  puts gmail.logged_in?

  gmail.inbox.find(:unread).each do |mail|
    text = mail.body.decoded
    puts text
  end
  gmail.logout

end

Then /^Link from Gmail$/ do
  login = 'rezepova@gmail.com'
  password = '***'
  gmail = Gmail.connect(login, password)
  puts gmail.logged_in?

  gmail.inbox.find(:read, :from => 'customercare@gotowebinar.com').each do |mail|
    text = mail.body.decoded

    registration_link = /<a>global.gotowebinar/m.match(text)[].gsub(/\s/, '')
    puts text
  end
  gmail.logout

end
#[1]
Then /^Remove Spam messages from Gmail box$/ do
  login = 'rezepova@gmail.com'
  password = '***'
  gmail = Gmail.connect(login, password)
  puts gmail.logged_in?

  blacklist = ['spam@spam.com']
  for i in blacklist
  gmail.inbox.find(:unread, :from => i).each do |mail|
    text = mail.delete!
end
  end
  gmail.logout
end

Then /^Then Send mail to "([^"]*)"$/ do |address|
  login = 'rezepova@gmail.com'
  password = '***'
  gmail = Gmail.connect(login, password)
  puts gmail.logged_in?

  gmail.deliver do
    to address
    subject 'wow, automated mail'
    body 'some information'
    # add_file file

  end
  gmail.logout
end

Then /^Net Imap mail print$/ do
  login = 'rezepova@gmail.com'
  password = '***'
  imap = Net::IMAP.new('imap.gmail.com', 993, true)
  imap.login(login, password)

  imap.select('INBOX')
  imap.search(['FROM', 'rezepova@gmail.com']).each do |mail|
    text = imap.fetch(mail, 'RCF822')
    puts text
  end
  imap.logout
end






# mouse move:
# el = driver.find_element(:id, "some_id")
# driver.action.move_to(el).perform
