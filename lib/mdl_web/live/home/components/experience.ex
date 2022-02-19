defmodule MdlWeb.Home.Experience do
  use MdlWeb, :live_component

  @data [
    %{"year" => "2020-Now",
      "data" => %{
        company: "Beijing Chaobo Interactive Network Technology Co., Ltd.",
        city: "Beijing, China",
        position: "Game Server Developer",
        details: [
          "Implementation and optimization of game features on the server using MySQL, Redis, Nodejs, and Laravel.",
          "Use of various server architectures such as REST (request/response), pubsub (for task completion, achievement tracking, statistics, etc) and protobuf (for efficient transport of data from the server to the client).",
          "Logging of events for Business Intelligence purposes."
        ]
      }
    },
    %{"year" => "2014-2017",
      "data" => %{
        company: "Alembo BV",
        city: "Paramaribo, Suriname",
        position: "Webdevelopment Specialist",
        details: [
          "Built a desktop application for the data processing department for the digitalization of plant information using C# and MySQL.",
          "Limited by unstable internet connections and the data processing department working from different geographical locations, maximum performance was achieved by using local MySQL database servers.",
          "The database servers were connected to each other using multi-master replication (available from MySQL version 5.7).",
          "Wrote a custom Nagios script for monitoring the replication status of each database server in case the databases were out of sync.",
          "Used Pentaho data integration to format and split the plant information sent by the clients into batches suitable for the application, which were then assigned to the employees in the data processing department from within the application."
        ]
      }
    }
  ]

  def render(assigns) do
    experience = @data
    ~H"""
    <section id="experience" class="section">
      <div class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[90%] md:w-[70%]">
        <h1 class="text-center text-2xl md:text-6xl text-orange-600 mb-8">Professional Experience</h1>
        <div class="w-full snap-x snap-mandatory overflow-x-auto flex items-center">
          <%= for %{"year" => year, "data" => data} <- experience do %>
            <div class="w-full h-full flex-shrink-0 snap-center">
              <div class="flex flex-col gap-2 md:flex-row md:gap-10">
                <h1 class="text-lg md:text-4xl text-orange-600 w-25 md:w-40 flex-shrink-0"><%= year %></h1>
                <div class="flex flex-col gap-1 flex-grow">
                  <h1 class="text-lg md:text-2xl text-orange-600"><%= data.company %> <%= data.city %></h1>
                  <h2 class="text-md md:text-xl italic"><%= data.position %></h2>
                  <ul class="list-disc marker:text-orange-600 w-[90%] mx-auto md:w-full">
                    <%= for detail <- data.details do %>
                      <li class="text-sm md:text-lg"><%= detail %></li>
                    <% end %>
                  </ul>
                </div>
              </div>
            </div>
          <% end %>
        </div>
      </div>
    </section>
    """
  end
end
