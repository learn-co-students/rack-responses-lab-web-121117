class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now
    time = t.strftime("%k:%M").to_i
      if time >= 12
        resp.write "Good Afternoon!"
      else
        resp.write "Good Morning!"
      end
    resp.finish
  end

end
