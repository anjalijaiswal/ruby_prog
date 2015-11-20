=begin
# Read input from stdin and provide input before running code
=end
class Jiva
  def charge
    test_case = gets.chomp.to_i
    # print "Hi #{test_case}\n"
    result = []
    i=1
    while (i <= test_case) do 
      n, m = gets.split.map(&:to_i)
      # print "n = #{n} m = #{m}"
      passenger_distance = []
      j = 0
      while (j < n) do
        source , destination = gets.split.map(&:to_i)
        # print "source = #{source} destination = #{destination}"
        passenger_distance.insert(j,[source, destination])
        passenger_num = 0
        k = 0
        # statement1 = catch(:passenger_overload) do
          statement2 = passenger_distance.inject do |charge,distance|
            passenger_num = passenger_num + 1 if distance[0] >= k
            k = distance[1]
            if passenger_num == 2
              charge = charge + (distance[1] - distance[0])*10 - ((distance[1] - distance[0])*10*5.0)/100
            elsif passenger_num >= 3
              charge = charge + (distance[1] - distance[0])*10 - ((distance[1] - distance[0])*10*7.0)/100
            elsif passenger_num == m
              charge = charge + (distance[1] - distance[0])*10 - ((distance[1] - distance[0])*10*7.0)/100
              result << "#{charge} Cab was full"
            else
              charge = (distance[1] - distance[0])*10
            end
          end
        # end
        result << statement2
        j = j+1
      end
      i = i+1
    end
    p "#{result}"
  end
end

jiva = Jiva.new
jiva.charge