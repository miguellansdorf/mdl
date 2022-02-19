defmodule MdlWeb.Home.Projects do
  use MdlWeb, :live_component

  def render(assigns) do
    ~H"""
    <section id="projects" class="section">
      <div class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[90%] md:w-[70%]">
        <h1 class="text-center text-2xl md:text-6xl text-orange-600 mb-8">Projects</h1>
        <div class="flex flex-col md:flex-row gap-4 w-full h-full items-center justify-center">
          <div class="text-center text-orange-600">
            <h1 class="text-4xl">Chat</h1>
            <div class="w-80 h-40 border border-orange-600 rounded-full relative bg-cover bg-center flex justify-center items-center bg-[url('/images/chat.jpg')]"/>
          </div>
          <div class="text-center text-orange-600">
            <h1 class="text-4xl">Games</h1>
            <div class="w-80 h-40 border border-orange-600 rounded-full relative bg-cover bg-center flex justify-center items-center bg-[url('/images/games.jpg')]"/>
          </div>
        </div>
      </div>
    </section>
    """
  end
end
