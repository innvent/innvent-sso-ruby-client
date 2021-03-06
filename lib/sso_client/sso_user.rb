module SsoClient
  class SsoUser
    attr_reader :id, :email, :name, :login, :applications

    def initialize(params)
      @id = params['id']
      @login = params['login']
      @email = params['email']
      @name = params['first_name'] + ' ' + params['last_name']
      @applications = params['applications']
    end

    def to_s
      @email + @name
    end
  end
end
