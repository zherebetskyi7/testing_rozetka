require 'spec_helper'	

describe "Main page of rozetka website" do
	context "Main menu on main page of rozetka.com.ua" do
		it "The main menu, section Notebooks => notebooks" do 
			@page = SamplePages::Navigation.new
			visit 'http://www.rozetka.com.ua/'
			sleep 5

			expect(page).to have_content("Каталог товаров")
			@page.elements_page.notebooks_computers.hover 
			sleep 2
			@page.elements_page.notebooks_1.click
			sleep 2
			expect(page).to have_content("Ноутбуки")
		end

		it "verification of sub-menu 'Notebooks' => 'Notebooks'" do
			@page = SamplePages::Navigation.new
			visit 'http://www.rozetka.com.ua/'
			sleep 3
			@page.elements_page.symbol_rozetka.click
			@page.elements_page.notebooks_computers.hover 
			sleep 2
			@page.elements_page.notebooks_1.hover
			@page.elements_page.notebooks_2.click
			sleep 2
			expect(page).to have_content("Ноутбуки")
		end

		it "verification of sub-menu 'SSD'" do
			@page = SamplePages::Navigation.new
			visit 'http://www.rozetka.com.ua/'
			sleep 5

			@page.elements_page.symbol_rozetka.click
			@page.elements_page.notebooks_computers.hover 
			sleep 2
			@page.elements_page.notebooks_1.hover
			@page.elements_page.ssd_saved.click
			sleep 2
			expect(page).to have_content("SSD")
		end

	end
end