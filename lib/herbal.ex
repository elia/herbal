defmodule Herbal do
  defmodule Web do
    use Urna
    resource :home do
      get do
        "hi there!"
      end
    end
  end
end
