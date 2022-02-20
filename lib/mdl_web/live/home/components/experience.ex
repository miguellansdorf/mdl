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
      <div class="w-full h-full flex flex-col gap-2 overflow-auto mx-4">
        <h1 class="mt-4 text-center text-4xl text-orange-600">Professional Experience</h1>
        <%= for %{"year" => year, "data" => data} <- experience do %>
          <div class="w-full lg:w-4/5 mx-auto bg-neutral-800 rounded-lg flex flex-col">
            <div class="flex flex-col justify-between bg-neutral-700 text-orange-600 rounded-t-lg text-xl px-2">
              <h1 class=""><%= year %></h1>
              <h1 class="self-end"><%= data.company %> <%= data.city %></h1>
            </div>
            <div class="flex flex-col gap-4">
              <h2 class="text-xl italic text-orange-600"><%= data.position %></h2>
              <ul class="list-disc list-inside marker:text-orange-600">
                <%= for detail <- data.details do %>
                  <li class="text-lg"><%= detail %></li>
                <% end %>
              </ul>
            </div>
          </div>
        <% end %>
      </div>
    </section>
    """
  end
end
