class SubscribersController < ApplicationController

    def create
        @user = Subscriber.new(email: params[:email])
        if @user.save
            NewsletterMailer.welcome_subscriber(@user).deliver_now
            flash[:success] = "Subscribed Successfully"
        else
            flash[:error] = "Something went wrong please try again later"
        end
    end

    def destroy
        @user = Subscriber.find(params[:id])
        if @user.delete
            NewsletterMailer.unsubscribe(@user).deliver_now
            flash[:success] = "Unsubscribed Successfully"
        else
            flash[:error] = "Something went wrong please try again later"
        end
    end

end
