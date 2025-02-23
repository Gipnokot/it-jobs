class SeedController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [ :run ]

  def run
    Rake::Task["db:seed"].invoke

    render plain: "Seeds applied successfully!"
  rescue => e
    render plain: "Error: #{e.message}", status: :internal_server_error
  end
end
