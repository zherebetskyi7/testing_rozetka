require "spec_helper"	

describe "Main page of rozetka website" do
	context "verification of login and password" do
		it "input login and password in authentication menu" do
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
			page.has_content?("Пользователь с логином")
		end
	end
end