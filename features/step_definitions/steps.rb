# After do
#   $driver.close
#   $driver.quit
# end

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

Then /^This is Hash example$/ do
  hash_example = {dog: "white", cat: "black", bird: "yellow"}

  puts hash_example[:dog]
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
  page_counter = $driver.find_element(:xpath, "//td[@class = 'pages']/a[contains(@aria-label, 'Selected')]")
  while not page_counter.text == '6' do
    puts page_counter.text
    listing = $driver.find_elements(:xpath, "//h3/a")
    for i in listing do
      if i.text.include? 'New listing'
      puts 'OMG'
      else puts i.text
    end
    nextpage = $driver.find_element(:xpath, "//a[@class='gspr next']")
    nextpage.click
    page_counter = $driver.find_element(:xpath, "//td[@class = 'pages']/a[contains(@aria-label, 'Selected')]")
  end
  end
  end

  Then /^Print cars if they are not NEW LISTING on first 4 pages UNLESS$/ do
    page_counter = $driver.find_element(:xpath, "//td[@class = 'pages']/a[contains(@aria-label, 'Selected')]")
    while not page_counter.text == '6' do
       puts page_counter.text
       listing = $driver.find_elements(:xpath, "//h3/a")
      for i in listing do
         unless i.text.include? 'New listing'
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
      while not page_counter.text == '3' do
        # puts page_counter.text
        listing = $driver.find_elements :xpath => "//h3[@class='lvtitle']/a"
        for i in listing do
          if i.text.include? "Ford"
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

Then /^From "([^"]*)" select item and print it$/ do |dd|
  dropd = $driver.find_element(:xpath, "//select[@name = '"+dd+"']")
  item = ['Acura', 'Alfa Romeo', 'American Motors', 'Aston Martin', 'Audi']
  variable = $dropdown.new(dropd)
  variable.select_by(:text, i)
  for i in item do
    puts item
  end
  sleep 2
end

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
  items = $driver.find_element(:xpath, "//a[@draggable = 'true']")
  # over = $driver.find_element(:xpath, "//div[@class = 'over']")
  trash = $driver.find_element(:xpath, "//div[@id = 'bin']")
  for i in items do
    $driver.action.click_and_hold(items).perform
    sleep 5
    #$driver.action.move_to(over).perform
    $driver.action.move_to(trash).release.perform
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

Then /^Provide username$/ do
  username = $driver.find_element(:xpath, "//input[@name = 'userName']")
  username.send_keys("MyUserName ")
  sleep 4
end

Then /^Upload the files. Task 2$/ do
# choose_button = $driver.find_element(:xpath, "//input[@type = 'file']").click
file = '/Users/victoriarezepova/Desktop/out/File_1.doc'
final_path = File.join(Dir.pwd, file)
puts final_path
file_input = $driver.find_element(:xpath, "//input[@type='file']")
file_input.send_keys final_path

end