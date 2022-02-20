defmodule MdlWeb.Home.Skills do
  use MdlWeb, :live_component

  @data [
    %{name: "C#", image: "/images/c_sharp.png", description: "C# (pronounced \"See Sharp\") is a modern, object-oriented, and type-safe programming language. C# enables developers to build many types of secure and robust applications that run in .NET. C# has its roots in the C family of languages and will be immediately familiar to C, C++, Java, and JavaScript programmers"},
    %{name: "Javascript", image: "/images/javascript.jpg", description: "JavaScript is a high-level, often just-in-time compiled language that conforms to the ECMAScript standard. It has dynamic typing, prototype-based object-orientation, and first-class functions. It is multi-paradigm, supporting event-driven, functional, and imperative programming styles"},
    %{name: "MySQL", image: "/images/mysql.png", description: "MySQL is an open-source relational database management system (RDBMS). A relational database organizes data into one or more data tables in which data types may be related to each other; these relations help structure the data. SQL is a language programmers use to create, modify and extract data from the relational database, as well as control user access to the database"},
    %{name: "Postgresql", image: "/images/postgres.png", description: "PostgreSQL also known as Postgres, is a free and open-source relational database management system (RDBMS) emphasizing extensibility and SQL compliance. IT features transactions with Atomicity, Consistency, Isolation, Durability (ACID) properties, automatically updatable views, materialized views, triggers, foreign keys, and stored procedures"},
    %{name: "Elixir", image: "/images/php.png", description: "PHP is a general-purpose scripting language geared towards web development. PHP code is usually processed on a web server by a PHP interpreter implemented as a module, a daemon or as a Common Gateway Interface (CGI) executable. On a web server, the result of the interpreted and executed PHP code - which may be any type of data, such as generated HTML or binary image data - would form the whole or part of an HTTP response."},
    %{name: "PHP", image: "/images/elixir.jpg", description: "Elixir is a functional, concurrent, general-purpose programming language that runs on the BEAM virtual machine which is also used to implement the Erlang programming language. Elixir builds on top of Erlang and shares the same abstractions for building distributed, fault-tolerant applications. Elixir also provides productive tooling and an extensible design. The latter is supported by compile-time metaprogramming with macros and polymorphism via protocols"}
  ]

  def render(assigns) do
    skills = @data
    ~H"""
    <section id="skills" class="section">
      <div class="w-full h-full flex flex-col gap-2 overflow-auto mx-4">
        <h1 class="mt-4 text-center text-4xl text-orange-600">Skills</h1>
        <%= for skill <- skills do %>
          <div class="w-full flex flex-col text-center mb-4 md:gap-4 bg-neutral-800 rounded-lg lg:flex-row items-center p-4 ">
            <img src={skill.image} class="bg-white w-20 rounded-full p-2">
            <p class="w-full"><%= skill.description %></p>
          </div>
        <% end %>
      </div>
    </section>
    """
  end
end
