class CalculatorController < ApplicationController

  def homepage
    render({:template => "calculator_templates/square"})
  end

  def square
    render({:template => "calculator_templates/square"})
  end

  def square_results
    @the_num = params.fetch("input_number").to_f
    @the_result = params.fetch("input_number").to_f * params.fetch("input_number").to_f

    render({:template => "calculator_templates/square_results"})
  end

  def square_root_results
    @the_num = params.fetch("input_number").to_f
    @the_result = Math.sqrt(@the_num).to_f

    render({:template => "calculator_templates/square_rppt_results"})
  end

  
  def square_root
    render({:template => "calculator_templates/square_root"})
  end

  
  def payment
    render({:template => "calculator_templates/payment"})
  end
  
  
  def payment_results
    @apr = (params.fetch("apr").to_f / 100) / 12
    @years = (params.fetch("years").to_i) * 12
    @principal = params.fetch("principal").to_f
  
    denominator = 1 - (1 + @apr) ** (-@years)
    numerator = (@apr * @principal) / denominator
  
    @payment = numerator.to_fs(:currency)

    render({:template => "calculator_templates/payment_results"})
  end

  def random
    render({:template => "calculator_templates/random"})
  end
    
  def random_results
    render({:template => "calculator_templates/random_results"})
  end

  