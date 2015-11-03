require 'spec_helper'

describe "Main page of rozetka web-site" do
	context "tests all elements on header" do
		it "verification of link 'questions'" do
			@page = SamplePages::Navigation.new
			visit 'http://www.rozetka.com.ua/'
			sleep 3
			@page.elements_page.questions.click 
			sleep 2
			expect(page).to have_content("Вопросы и ответы")
		end

		it "verification of link 'Credit'" do
			@page = SamplePages::Navigation.new
			visit 'http://www.rozetka.com.ua/'
			sleep 3
			@page.elements_page.credit.click 
			sleep 2
			expect(page).to have_content("Покупка в кредит")
		end

		it "verification of link 'payment and delivery'" do
			@page = SamplePages::Navigation.new
			visit 'http://www.rozetka.com.ua/'
			sleep 5
			@page.elements_page.dostavka.click 
			sleep 2
			expect(page).to have_content("Доставка и оплата")
		end

		it "verification of link 'Guaranty'" do
			@page = SamplePages::Navigation.new
			visit 'http://www.rozetka.com.ua/'
			sleep 5
			@page.elements_page.garantia.click
			sleep 2
			expect(page).to have_content("Гарантия и сервисное обслуживание")
		end
		
		it "verification of link 'Contacts'" do
			@page = SamplePages::Navigation.new
			visit 'http://www.rozetka.com.ua/'
			sleep 3
			@page.elements_page.contacts.click
			sleep 2
			expect(page).to have_content("Консультации и заказ по телефонам")
		end
	end
end


