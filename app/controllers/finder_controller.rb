class FinderController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.order(full_name: :asc)
  end

  def missing_email
    @customers = Customer.where "email_address is NULL or email_address = ''"
  end
end
