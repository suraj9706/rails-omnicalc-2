class MultiplicationController < ApplicationController
  def show_multiplication_form
    render({ :template => "multiply_templates/multiplication_form" })
  end

  def multiply_these
    @first_number = params.fetch("first_number").to_f
    @second_number = params.fetch("second_number").to_f

    @result = @first_number * @second_number

    render({ :template => "multiply_templates/multiply_results" })
  end
end
