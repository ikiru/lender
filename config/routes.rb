Rails.application.routes.draw do
  #########    Users    #############

root '#index'

post get 'borrower' => 'borrowers#create'
get 'borrower/:id' => 'borrowers#show'

post 'bank' => 'banks#create'
get 'bank/:id' => 'banks#show'

end
