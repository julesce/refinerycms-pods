if defined?(User)
  User.all.each do |user|
    if user.plugins.where(:name => 'pods').blank?
      user.plugins.create(:name => 'pods',
                          :position => (user.plugins.maximum(:position) || -1) +1)
    end
  end
end

if defined?(Page)
  page = Page.create(
    :title => 'Pods',
    :link_url => '/pods',
    :deletable => false,
    :position => ((Page.maximum(:position, :conditions => {:parent_id => nil}) || -1)+1),
    :menu_match => '^/pods(\/|\/.+?|)$'
  )
  Page.default_parts.each do |default_page_part|
    page.parts.create(:title => default_page_part, :body => nil)
  end
end