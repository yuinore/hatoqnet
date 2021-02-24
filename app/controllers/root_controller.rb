class RootController < ApplicationController
  def index
    @top_links = TopLink.all.to_a
  end
end
