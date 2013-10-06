require '../lib/triangle'

def main_menu
    puts 'Please type "t" to start a new triangle or type "x" to exit.'
    option = gets.chomp
    if option == 't'
      puts 'Please enter the first side of your triangle'
      side1 = gets.chomp
      puts 'Please enter the second side of your triangle'
      side2 = gets.chomp
      puts 'Please enter the third side of your triangle'
      side3 = gets.chomp
      user_triangle = Triangle.new(side1,side2,side3)
      if !user_triangle.valid_triangle?
        puts 'not a valid triangle'   
      elsif user_triangle.equilateral?
        puts 'equilateral'
      elsif user_triangle.isosceles?
        puts 'isosceles'
      else
       puts 'scalene'
      end
    elsif option == 'x'
    puts 'Thanks for passing though, goodbye!'
    else puts 'Sorry, that was an invalid input option.'
    main_menu
    end
end
main_menu