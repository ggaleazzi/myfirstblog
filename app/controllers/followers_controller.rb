class FollowersController < ApplicationController
    def create
        @newfollower = Follower.new(follower_params)
        if @newfollower.save
          redirect_to articles_path
        end
    end
    private
      def follower_params
        params.require(:follower).permit(:email)
      end
end
