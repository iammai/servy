defmodule Servy.BearController do
  alais Servy.Wildthings

  def index(conv) do
    bears = Wildthings.list_bears()

    # transform bears to an html list
    %{ conv | status: 200, resp_body: "<ul><li>Name</li><ul>" }
  end
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
