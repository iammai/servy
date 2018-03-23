defmodule Servy.PledgeServer do

  def listen_loop do
    IO.puts"\nWaiting for a message..."

    receive do
      {:message_type, value} ->
        $cpde
    end
  end

  # def create_pledge(name, amount) do
  #   {:ok, id} = send_pledge_to_service(name, amount)
  #
  #   #Cache the pledge in memory:
  #   [ {"larry", 10} ]
  # end
  #
  # def recent_pledges do
  #   # Returns the most recent pledges (cache):
  #   [ {"larry", 10} ]
  # end

  defp send_pledge_to_service(_name, _amount) do
    #CODE HERE TO SEND PLEDGE TO EXTERNAL SERVICE
    {:ok, "pledge-#{:rand.uniform(1000)}"}
  end

end
