require 'httparty'

module PlaygroundClient
  class API
    include HTTParty
    base_uri 'http://localhost:3000/api/v1'


    def user_register(fields)

      user = { :user => fields }


      p post('/users/register', user)
    end

  private

    def post(url, obj)
      self.class.post(url, :body => obj.to_json, :headers => {
                                            'Content-Type'  => 'application/json',
                                            'Accept'        => 'application/json'
                                          })
    end


  end
end
