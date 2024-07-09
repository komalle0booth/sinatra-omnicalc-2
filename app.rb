require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:add_form)
end

get("/add") do
  erb(:add_form)
end

get("/wizard_add") do
  @first_num = params.fetch("add_first_number").to_f

  @second_num = params.fetch("add_second_number").to_f

  @result = @first_num + @second_num
  erb(:add_result)
end

get("/subtract") do
  erb(:sub_form)
end

get("/wizard_subtract") do
  @first_num = params.fetch("sub_first_number").to_f

  @second_num = params.fetch("sub_second_number").to_f

  @result = @second_num - @first_num
  erb(:sub_result)
end

get("/multiply") do
  erb(:mult_form)
end

get("/wizard_multiply") do
  @first_num = params.fetch("mult_first_number").to_f

  @second_num = params.fetch("mult_second_number").to_f

  @result = (@first_num)*(@second_num)

  erb(:mult_result)
end

get("/divide") do
  erb(:div_form)
end

get("/wizard_divide") do
  @first_num = params.fetch("div_first_number").to_f

  @second_num = params.fetch("div_second_number").to_f

  @result = (@first_num)/(@second_num)

  erb(:div_result)
end
