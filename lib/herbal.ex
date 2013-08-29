defmodule Herbal do
  require Cauldron
  use Application.Behaviour
  require Herbal.Web
  alias Herbal.Web

  # See http://elixir-lang.org/docs/stable/Application.Behaviour.html
  # for more information on OTP Applications
  def start(_type, _args) do
    pid = start_web
    {:ok, pid}
  end

  def start_web port // 3000 do
    # IO.inspect(unquote())
    # pid = Web.open(Web, listen: [[port: port]])
    pid = Cauldron.open Web, listen: [[port: port]]
    IO.inspect({port, pid})
    pid
  end
end


