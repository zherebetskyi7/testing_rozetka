require "spec_helper"

describe "Main page of rozetka website" do
	context "Header choose the city" do
		it "choose the city near logotype" do
			@page = SamplePages::Navigation.new
			visit 'http://www.rozetka.com.ua/'
			sleep 5

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
		end
	end
end