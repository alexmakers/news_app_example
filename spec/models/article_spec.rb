require 'spec_helper'

describe Article do
  
  context 'creating articles' do
    
    context 'success' do
      
      it 'should be created when we provide a title and body' do
        @article = Article.new(title: 'My title', body: 'Some body text')
        
        expect(@article).to be_valid
      end
      
    end
    
    context 'failure' do
      
      it 'should not be created without a title' do
        @article = Article.new(body: 'Some body text')
        
        expect(@article).to_not be_valid
      end
      
      it 'should not be created without a body' do
        @article = Article.new(title: 'My title')
        
        expect(@article).to_not be_valid
      end
      
    end
    
  end
  
end