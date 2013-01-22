require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the content 'Escola'" do
    	visit '/static_pages/home'
    	page.should have_content('Escola')
    end

    it "should have the title 'Escola'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Agrupamento de escolas | Escola")
    end
  end

  describe "Contactos page" do

    it "should have the content 'Contactos'" do
      visit '/static_pages/contactos'
      page.should have_content('Contactos')
    end

    it "should have the title 'Contactos'" do
      visit '/static_pages/contactos'
      page.should have_selector('title',
                        :text => "Agrupamento de escolas | Contactos")
    end
  end

  describe "Sobre page" do

    it "should have the content 'Sobre'" do
      visit '/static_pages/sobre'
      page.should have_content('Sobre')
    end

    it "should have the title 'Sobre'" do
      visit '/static_pages/sobre'
      page.should have_selector('title',
                        :text => "Agrupamento de escolas | Sobre")
    end
  end
end
