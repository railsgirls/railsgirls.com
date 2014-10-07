require 'date'
require 'nokogiri'

# methods

def date_to_iso(date)
  year = date[/[0-9]{4}/]
  month = date.scan(/[A-Z][a-z]{2,}/)
  date_days = date.gsub(/[0-9]{4}/, "").gsub(/[a-z]{3,}/i, "")
  days = date_days.scan(/[0-9]{1,2}/)

  # p (days.last || "") + " " + month.last + " " + year
  Date.parse((days.last || "") + " " + month.last + " " + year).iso8601
end

# Read index.html

index_page = Nokogiri::HTML(open("index.html"))
next_index_events = index_page.css('a.upcoming')
index_events = Hash[next_index_events.map do |a|
  [
    a.attributes["href"].text.gsub("./", ""),
    {
      index_image: a.css('img').first.attributes['src'].value.gsub('./images/','')
    }
  ] if a.attributes["href"].text.include?("html")
end]

# Read events.html
events_page = Nokogiri::HTML(open("events.html"))

listed_events_nodes = events_page.css('a.event')
@listed_events = Hash[listed_events_nodes.map do |a|
  [
    a.attributes["href"].text.gsub("./", ""),
    {
      layout: "none",
      title:  Nokogiri::HTML(open(a.attributes["href"])).css('title').text,
      date:   date_to_iso(a.css('p').text),
      events_image: a.attributes['style'].value[/images\/[^)]+/].gsub("images/", ""),
      location: a.css('h3').text,
      date_description: a.css('p').text,
      permalink: a.attributes["href"].text.gsub("./", "")
    }
  ] if a.attributes["href"].text.include?("html")
end]
# order them both by the link

index_events.each { |k,v|
  @listed_events[k][:index_image] = v
}

# move the files while attaching a header
@listed_events.each{|url,event_data|
  new_file_name = "./_posts/#{event_data[:date]}-#{url}"
  header = (["---"] + event_data.map{|k,v| "#{k}: #{v}" } +  ["---"]).join("\n")

  File.open(new_file_name, 'w') do |fo|
  fo.puts header
  File.foreach(url) do |li|
      fo.puts li
    end
  end
  File.delete(url)
}


# move the rest of the files while attaching a basic header
