defmodule MdlWeb.Home.Biography do
  use MdlWeb, :live_component

  @data "I'm a backend developer with a passion for technology and videogames. Whenever I'm not playing videogames, I'm coding. Whenever I'm not coding, I'm playing videogames. Life can be that simple"

  def render(assigns) do
    data = @data
    ~H"""
    <section id="biography" class="section">
      <div class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[90%] lg:w-[70%] flex flex-col justify-center items-center text-center gap-10">
        <div class="w-60 md:w-80 border border-orange-600 rounded-full overflow-hidden flex-shrink-0">
          <img src="/images/profile.jpg" class="w-full h-full"/>
        </div>
        <div class="flex-grow flex flex-col justify-center items-center word-wrap bg-neutral-800 rounded-lg">
          <h1 class="text-2xl md:text-6xl mb-2 text-orange-600">Miguel Lansdorf</h1>
          <p class="text-lg md:text-xl mb-2 text-orange-600">Backend Engineer</p>
          <quote class="italic text-md md:text-lg"><%= data %></quote>
        </div>
      </div>
    </section>
    """
  end
end
