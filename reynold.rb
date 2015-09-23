# "Reynolds number is calculated using formula (D*v*rho)/mu 
# Where D = Diameter, V= velocity, rho = density mu = viscosity 
# Write a program that will accept all values in appropriate units 
# (Don't worry about unit conversion) If number is < 2100, display Laminar flow, 
# If itâ€™s between 2100 and 4000 display 'Transient flow' and 
# if more than '4000', display 'Turbulent Flow' (If, else, then...)" 

def reynolds_num
  vars = { "d" => nil, "v" => nil, "rho" => nil, "mu" => nil }

  begin
    vars.keys.each do |var|
      print "#{var} = "
      val = gets
      vars[var] = val.chomp.to_i
    end

    reynolds = (vars["d"]*vars["v"]*vars["rho"]) / vars["mu"].to_f
    puts reynolds

    if (reynolds < 2100)
      puts "Laminar Flow"
    elsif (reynolds > 4000)
      puts "Turbulent Flow"
    else
      puts "Transient Flow"
    end

    print "Do you want to calculate again (y/n)? "
  end while gets.chomp != "n"

end