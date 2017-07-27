class ReadsController < ApplicationController

  def index
    @reads = Read.order_reads
  end

end
