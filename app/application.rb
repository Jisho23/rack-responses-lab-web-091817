class Application

  def call(env)
    resp = Rack::Response.new
    the_time = Time.now
    resp.write "The time is #{the_time}\n"
    if the_time.hour > 11
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end

    resp.finish
  end

end
