class WelcomeController < ApplicationController
  def hello
    first_pet = Pet.first
    @pet_name = first_pet.name
    @pet_breed = first_pet.breed
    @credentials = Rails.application.credentials.hello
  end
end