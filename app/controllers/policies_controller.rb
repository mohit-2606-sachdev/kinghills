class PoliciesController < ApplicationController
  def show
    @policy = Policy.find_by(policy_type: params[:policy_type])
  end
end
