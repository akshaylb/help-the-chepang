require 'spec_helper'

describe "Static Pages" do	

	subject { page }

	shared_examples_for "all static pages" do
		it {should have_selector('h1', text: heading)}
		it {should have_title(full_title(page_title))}
	end

	describe "Home Page" do
		before { visit root_path }
		let(:heading) { 'Help The Chepang' }
		let(:page_title) { '' }
		it_should_behave_like "all static pages"
		it {should_not have_title(' | Help The Chepang')}
	end 

	describe "Help Page" do
		before { visit how_path }
		let(:heading) { 'How?' }
		let(:page_title) { 'How?' }
		it_should_behave_like "all static pages"
	end 

	describe "About Page" do
		before { visit about_path }
		let(:heading) { 'About' }
		let(:page_title) { 'About' }
		it_should_behave_like "all static pages"
	end 
	
	describe "Contact Page" do
		before { visit contact_path }
		let(:heading) { 'Contact' }
		let(:page_title) { 'Contact' }
		it_should_behave_like "all static pages"
	end 
end