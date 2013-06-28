desc "Scrape Beer Advocate"

task :beer_advocate => :environment do

  require 'mechanize'
  agent = Mechanize.new

  beer_count = 1
  agent.get('http://beeradvocate.com/beer/profile/18564/#{beer_count}')
    title: page.search('.titleBar').text.strip,
    ba_score: page.search('.BAscore_big').text.strip,


    loop for child beers
    page.search('td:nth-child(1) td').each { |b| b.children[0].attributes['href'].value g}

end