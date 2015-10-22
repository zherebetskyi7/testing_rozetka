Dir[Rails.root.join("spec/pages/*_page.rb")].each{ |f| require f }

module SamplePages
 
  class Navigation
    include Capybara::DSL

    def elements_page
      ElementsPage.new
    end
  end
end
