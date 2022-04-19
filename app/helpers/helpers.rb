class Helpers
    def self.current_user(session)
        acct = User.find(session[:user_id])
        acct
    end

    def self.is_logged_in?(session)
        Helpers.current_user(session) ? true : false
    end
end