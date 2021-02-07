defmodule MyServer do   
    # alias Chess.CowboyHandler                                                                                                            
                                                                                                                                    
    def start(_type, _args) do                                                                                                                    
      dispatch_config = build_dispatch_config()                                                                                       
      { :ok, _ } = :cowboy.start_clear(:http,                                                                                         
        [{:port, 8080}],                                                                                                              
        %{ env: %{dispatch: dispatch_config}}                                                                                         
      )                                                                                                                               
    end                                                                                                                               
                                                                                                                                      
    def build_dispatch_config do                                                                                                      
      :cowboy_router.compile([                                                                                                        
        {:_,                                                                                                                         
          [                                                                                                                           
            {"/", :cowboy_static, {:file, "lib/web/index.html"}},
          ]}                                                                                                                          
      ])                                                                                                                              
    end                                                                                                                               
                                                                                                                                      
end