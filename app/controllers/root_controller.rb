class RootController < ApplicationController
  def index
    Counter.increment!
    @access_count = Counter.access_counter.count

    @top_links = TopLink.all.to_a
  end
end
