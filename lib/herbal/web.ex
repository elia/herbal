defmodule Herbal.Web do
  use Urna
  resource :home do
    get do
      "hi there!"
    end
  end
end
