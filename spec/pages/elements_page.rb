class ElementsPage < SitePrism::Page
  set_url 'http://www.rozetka.com.ua/'
  	# header 
  element :questions,			:xpath, '//a[@href="http://rozetka.com.ua/faq/"][@class="m-top-link novisited"]'
  element :credit,				:xpath, '//a[@href="http://rozetka.com.ua/credit/"][@class="m-top-link novisited"]'
  element :dostavka,			:xpath, '//a[@href="http://rozetka.com.ua/payments-and-deliveries/"][@class="m-top-link novisited"]'
  element :symbol_rozetka,		:xpath, '//img[@src="http://i1.rozetka.ua/logos/0/67.png"][@width="201"][@height="51"]'
  element :garantia,			:xpath, '//a[@href="http://rozetka.com.ua/warranty/"][@class="m-top-link novisited"]'
  element :contacts,			:xpath, '//a[@href="http://rozetka.com.ua/contacts/"][@class="m-top-link novisited"]'
  	# main menu notebooks and computers
  element :notebooks_computers,	:xpath, '//a[@href="http://rozetka.com.ua/computers-notebooks/c80253/"]'
  element :notebooks_1,			:xpath, '//a[@href="http://rozetka.com.ua/notebooks/c80004/"][@name="fat_menu_link"][@class="novisited sprite-side m-main-link m-main-link-arrow"]'
  element :notebooks_2,			:xpath, '//a[@href="http://rozetka.com.ua/notebooks/c80004/filter/filter/"][@name="fat_menu_link"][@class="m-menu-third-i-link sprite-side"][@level="level3"][@is_new=""]'
  element :ssd_saved,			:xpath, '//a[@href="http://hard.rozetka.com.ua/ssd/c80109/"][@name="fat_menu_link"][@class="m-menu-third-i-link sprite-side"]'
  	# choose the sity element
  element :choose_city,			:xpath, '//a[@href="#"][@class="novisited sprite-side header-city-select-link"][@name="city"]'
  element :change_district,		:xpath, '//a[@href="#"][@class="xhr sprite-side header-city-location-change-link"]'
  element :close_choose_city,	:xpath, '//img[@width="28"][@height="28"][@src="http://i.rozetka.ua/design/_.gif"][@alt="×"][@class="popup-close-small-icon sprite"]'
  	# Login and password
  element :own_cabinet,			:xpath, '//a[@href="https://my.rozetka.com.ua/signin/"][@name="signin"][@class="header-user-link sprite-side novisited xhr"]'
  element :checkbox,			:xpath, '//span[@class="checkbox-label sprite-side auth-f-i-remember-text"]'
  element :auth_button,			:xpath, '//button[@type="submit"][@class="btn-link-i"][@name="auth_submit"]'


end

