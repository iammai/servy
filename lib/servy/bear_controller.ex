defmodule Servy.BearController do

  def index(conv) do
    %{ conv | status: 200, resp_body: "Teddy, Smoky, Paddington" }
  end
end
