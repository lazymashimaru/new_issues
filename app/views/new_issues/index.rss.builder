xml.instruct! :xml, version: "1.0"
xml.rss version: "2.0" do |variable|
  xml.channel do
    xml.title "Our issues"
    xml. description "Lates issues, come and get them!"
    xml.link new_issues_url

    @new_issues.each do |issue|
      xml.item do
        xml.title issue.title
        xml.pubDate issue.created_at.to_s(:rfc822)
        xml.description issue.description
      end
    end
  end
end