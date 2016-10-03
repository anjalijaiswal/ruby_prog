# Write a ruby script that visits a particular url. 
# It then finds all the hyperlinks on that page, visits them 
# and checks whether those hyperlinks are alive or dead.
# After doing this, it churns out a detailed report.
#  Keep the report in a format that you think is best.

require 'nokogiri'
require 'open-uri'
require 'net/http'

class UrlVisitor
  def initialize
    puts "Please Enter an URL"
    @url = gets.chomp
    create_report
  end

  def visit
    # Fetch and parse HTML document
    doc = Nokogiri::HTML(open(@url))

    result = []
    # Search for nodes by css
    doc.css('a').each do |link|
      status = visit_hyperlink link['href']
      generate_report(link['href'], status)
    end
  end 

  private
  
  def visit_hyperlink(link)
    uri = URI.parse link
    
    if uri.kind_of?(URI::HTTP)
      response = Net::HTTP.get_response(uri)
      return response.code
    else 
      return 'Invalid URI'
    end
  end

  def generate_report(link, status)
    file = open(@report_name, 'a')
    file.write "link : #{link},  status : #{status} \n"
    file.close  
  end

  def create_report
    @report_name = 'report.txt'
    file = open(@report_name, 'w')
    file.write "The report will contain link present in given the URL followed by its HTTP code.\n"
    file.close
  end

end

UrlVisitor.new.visit