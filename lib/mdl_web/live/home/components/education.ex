defmodule MdlWeb.Home.Education do
  use MdlWeb, :live_component

  @data [
    %{"year" => "2017-2020",
      "data" => %{
        school: "Beijing University of Aeronautics and Astronautics",
        city: "Beijing, China",
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
        city: "Paramaribo, Suriname",
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
      <div class="w-full h-full flex flex-col gap-2 overflow-auto mx-4">
        <h1 class="mt-4 text-center text-4xl text-orange-600">Education</h1>
        <%= for %{"year" => year, "data" => data} <- education do %>
          <div class="w-full lg:w-4/5 mx-auto bg-neutral-800 rounded-lg flex flex-col">
            <div class="flex flex-col justify-between bg-neutral-700 text-orange-600 rounded-t-lg text-xl px-2">
              <h1 class=""><%= year %></h1>
              <h1 class="self-end"><%= data.school %> <%= data.city %></h1>
            </div>
            <div class="flex flex-col gap-4">
              <h2 class="text-xl italic text-orange-600"><%= "#{data.title} in #{data.major}" %></h2>
              <ul class="list-disc list-inside marker:text-orange-600">
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
