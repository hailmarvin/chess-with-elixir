defmodule ChessPlug do
    import Plug.Conn
  
    def init(options), do: options
  
    def call(conn, _opts) do
      conn
      |> put_resp_content_type("text/html")
      |> send_file(200, "lib/web/index.html")
    end
end