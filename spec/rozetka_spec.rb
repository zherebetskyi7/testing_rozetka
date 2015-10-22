require 'spec_helper'

describe "Header of rozetka web-site" do
	it "tests all elements on header" do
		@page = SamplePages::Navigation.new
		visit 'http://www.rozetka.com.ua/'
		sleep 3

		puts "verification of link 'Вопросы и ответы'"
		@page.elements_page.questions.click # Verify link "Вопросы и ответы"
		sleep 2
		expect(page).to have_content("Вопросы и ответы")
		puts "verification of link 'Вопросы и ответы' done"

		puts "verification of link 'Кредит'"
		@page.elements_page.symbol_rozetka.click # Verify basic symbol of web-site
		sleep 2
		@page.elements_page.credit.click # Verify link "кредит"
		sleep 2
		expect(page).to have_content("Покупка в кредит")
		puts "verification of link 'Кредит' done"

		puts "verification of link 'Доставка и оплата'"
		@page.elements_page.symbol_rozetka.click # Verify basic symbol of web-site
		sleep 2
		@page.elements_page.dostavka.click # Verify link "Доставка и оплата"
		sleep 2
		expect(page).to have_content("Доставка и оплата")
		puts "verification of link 'Доставка и оплата' done"

		puts "verification of link 'Гарантия'"
		@page.elements_page.symbol_rozetka.click # Verify basic symbol of web-site
		sleep 2
		@page.elements_page.garantia.click # Verify link "Гарантия"
		sleep 2
		expect(page).to have_content("Гарантия и сервисное обслуживание")
		puts "verification of link 'Гарантия' done"

		puts "verification of link 'Контакти'"
		@page.elements_page.symbol_rozetka.click # Verify basic symbol of web-site
		sleep 2
		@page.elements_page.contacts.click # Verify link "Контакти"
		sleep 2
		expect(page).to have_content("Консультации и заказ по телефонам")
		puts "verification of link 'Контакти' done"

	end
end

describe "Main menu on main page of rozetka.com.ua" do
	it "The main menu, section Notebooks => notebooks" do 
		@page = SamplePages::Navigation.new
		visit 'http://www.rozetka.com.ua/'
		sleep 3

		puts "verification of sub-menu 'Ноутбуки'"
		expect(page).to have_content("Каталог товаров")
		@page.elements_page.notebooks_computers.hover # verify main menu computers
		sleep 2
		@page.elements_page.notebooks_1.click
		sleep 2
		expect(page).to have_content("Ноутбуки")
		puts "verification of sub-menu 'Ноутбуки' done"

		puts "verification of sub-menu 'Ноутбуки' => 'Ноутбуки'"
		@page.elements_page.symbol_rozetka.click
		@page.elements_page.notebooks_computers.hover # verify main menu computers
		sleep 2
		@page.elements_page.notebooks_1.hover # verify sub-menu notebooks
		@page.elements_page.notebooks_2.click
		sleep 2
		expect(page).to have_content("Ноутбуки")
		puts "verification of sub-menu 'Ноутбуки' => 'Ноутбуки' done"

		puts "verification of sub-menu 'SSD накопичувачі'"
		@page.elements_page.symbol_rozetka.click
		@page.elements_page.notebooks_computers.hover # verify main menu computers
		sleep 2
		@page.elements_page.notebooks_1.hover
		@page.elements_page.ssd_saved.click
		sleep 2
		expect(page).to have_content("SSD")
		puts "verification of sub-menu 'SSD накопичувачі' done"	
	end
end

describe "Header choose the city" do
	it "choose the city near logotype" do
		puts "verification 'choose the city' link"
		@page = SamplePages::Navigation.new
		visit 'http://www.rozetka.com.ua/'
		sleep 2

		@page.elements_page.choose_city.hover
		expect(page).to have_content("Выберите город")
		expect(page).to have_content("Изменить регион")
		@page.elements_page.change_district.click
		expect(page).to have_content("Выберите свой город")
		sleep 2
		@page.elements_page.close_choose_city.click
		sleep 2
		@page.elements_page.choose_city.click
		expect(page).to have_content("Выберите свой город")
		puts "verification 'choose the city' link done"

	end
end

describe "verification of login and password" do
	it "input login and password in authentication menu" do
		puts "verification login and password fields"
		@page = SamplePages::Navigation.new
		visit 'http://www.rozetka.com.ua/'
		sleep 3

		@page.elements_page.own_cabinet.click
		expect(page).to have_content("Вход в интернет-магазин")
		sleep 2
		fill_in('login', :with => Faker::Internet.email)
		fill_in('password', :with => Faker::Internet.password(8))
		@page.elements_page.checkbox.click
		sleep 2
		@page.elements_page.auth_button.click
		sleep 2
		#while page.has_content?("Пользователь с логином") == true
			#fill_in('login', :with => Faker::Lorem.word + '@yandex.ru')
			#fill_in('password', :with => 'password88')
			#@page.elements_page.auth_button.click
			#if page.has_content?("Пользователь с логином") == false
			#end
		#end
		page.has_content?("Пользователь с логином")
		puts "verification login and password fields done"
	end
end


