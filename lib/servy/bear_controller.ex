defmodule Servy.BearController do

  def index(conv) do
    %{ conv | status: 200, resp_body: "Teddy, Smoky, Paddington" }
  end

  def show(conv, %{"id" => id}) do
    %{ conv | status: 200, resp_body: "Bear #{id}" }
  end

  def create(conv, %{"name" => name, "type" => type}) do
    %{ conv | status: 201,
              resp_body: "Created a #{type} bear named #{name}!" }
  end

end
