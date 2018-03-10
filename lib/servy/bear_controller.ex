defmodule Servy.BearController do

  def index(conv) do
    %{ conv | status: 200, resp_body: "Teddy, Smoky, Paddington" }
  end

  def show(conv, %{"id" => id}) do
    %{ conv | status: 200, resp_body: "Bear #{id}" }
  end

end
