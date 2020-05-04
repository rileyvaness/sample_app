module UsersHelper
   # Returns the Gravatar for the given user.
    def gravatar_for(user, size: 180)
    gravatar_id  = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/471c6acd54d2b08d1576d153b40102c4?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
