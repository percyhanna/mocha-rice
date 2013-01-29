module MochaRice
  class SpecController < MochaRice::ApplicationController
    layout false

    def index
      @specsuite = params[:suite].try(:concat, "_spec") || "spec"
      @asset_options = %w(true false).include?(params[:debug]) ? { debug: params[:debug] == 'true' } : {}
    end
  end
end
