defmodule MdlWeb.Home.Education do
  use MdlWeb, :live_component

  @data [
    %{"year" => "2017-2020",
      "data" => %{
        school: "Beijing University of Aeronautics and Astronautics",
        major: "Electronic Information Engineering",
        title: "Master of Science",
        achievements: [
          %{type: "link", url: "https://ieeexplore.ieee.org/document/9386932", text: "Air-gap separated ground double bow-tie antenna for Ka/K and partial Ku band imaging applications"},
          %{type: "link", url: "https://ieeexplore.ieee.org/document/8992886", text: "Ultra-Wideband Terahertz Antenna with Capacitive Plates for Improved Impedance Matching"}
        ]
      }
    },
    %{"year" => "2010-2014",
      "data" => %{
        school: "Anton De Kom University",
        major: "Electrical Engineering",
        title: "Bachelor of Science",
        achievements: []
      }
    }
  ]

  def render(assigns) do
    education = @data
    ~H"""
    <section id="education" class="section">
      <div class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[90%] md:w-[70%]">
        <h1 class="text-center text-2xl md:text-6xl text-orange-600 mb-8">Education</h1>
        <%= for %{"year" => year, "data" => data} <- education do %>
          <div class="flex gap-2 md:gap-10">
            <h1 class="text-lg md:text-4xl text-orange-600 w-25 md:w-40 flex-shrink-0"><%= year %></h1>
            <div class="flex flex-col gap-1 flex-grow">
              <h1 class="text-lg md:text-2xl text-orange-600"><%= data.school %></h1>
              <h2 class="text-md md:text-xl italic"><%= "#{data.title} in #{data.major}" %></h2>
              <ul class="list-disc marker:text-orange-600">
                <%= for achievement <- data.achievements do %>
                  <li class="text-sm md:text-lg">
                    <%= if achievement.type == "link" do %>
                      <a class="text-orange-600" href={achievement.url} target="_blank"><%= achievement.text %></a>
                    <% else %>
                      <%= achievement.text %>
                    <% end %>
                  </li>
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
