require 'spec_helper'

def create_article(title, body)
  Article.create(title: title, body: body)
end

describe 'seeing an article on the articles page' do

  it 'should display a newly created article on /articles' do
    create_article 'My title', 'Some body text'
    
    visit '/articles'
    expect(page).to have_css 'h2', text: 'My title'
    expect(page).to have_content 'Some body text'
  end
  
end

describe 'creating a new article' do
  
  it 'should be created with a form on /articles/new' do
    visit '/articles/new'
    
    within '#new_article' do
      fill_in 'Title', with: 'Some title'
      fill_in 'Body', with: 'Lorem ipsum dolor sit amet'
      click_on 'Create'
    end
    
    expect(page).to have_content 'Successfully created'
  end

end