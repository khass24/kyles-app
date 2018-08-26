Rails.application.routes.draw do
  get "/kyles_app" => "api/my_examples#fortune"
  get "/kyles_app1" => "api/my_examples#random_numbers"
end
