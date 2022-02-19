defmodule MdlWeb.Home.Skills do
  use MdlWeb, :live_component

  @data [
    %{name: "C#", progress: 65},
    %{name: "Javascript", progress: 90},
    %{name: "(My/Postgres)SQL", progress: 80},
    %{name: "Elixir", progress: 80},
    %{name: "PHP", progress: 75}
  ]

  def render(assigns) do
    skills = @data
    ~H"""
    <section id="skills" class="section">
      <div class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[90%] md:w-[70%] flex flex-col gap-2">
        <h1 class="text-center text-2xl md:text-6xl text-orange-600 mb-8">Skills</h1>
        <%= for skill <- skills do %>
          <div class="w-full flex flex-col text-center gap-1 md:flex-row md:gap-4">
            <span class="shrink-0 w-full md:w-40 "> <%= skill.name %> </span> <progress max='100' value={skill.progress} class="w-full grow"/>
          </div>
        <% end %>
      </div>
    </section>
    """
  end
end
