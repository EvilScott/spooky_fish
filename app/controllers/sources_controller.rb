class SourcesController < ApplicationController
  def index
    @source_types = SourceType.all
  end
end
