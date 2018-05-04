class PagesController < ApplicationController
  def home
    # Set first quote when your first load page.
    # Pass it as an html attribute to the corresponding view.erb
    # Then from the view pass it  as a prop to the root react component
    # Then from the root component pass it as a prop through React, Router down to QuotesDisplay component 
    @first_quote_id = Quote.first.id
  end
end
