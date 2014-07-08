module UsersHelper
  
  def gravatar_for(user, attribs={})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = 'https://secure.gravatar.com/avatar/' + gravatar_id
    all_attribs = { alt: 'name', 'class'.to_sym => 'gravatar' }.merge!(attribs)
    image_tag(gravatar_url, all_attribs)
  end
  
end
