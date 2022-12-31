using HTTP

module StudyDungeon
export Server

module Server
using HTTP

export problem_one
export p1



function p1()
    url = "http://localhost:8000/hello"
    println(
        "Server.p1, Create a server and at the endpoint $url have the response body consist of the string \"Hello World\".",
    )
    println("----------------")
    println("Testing Server.1")
    r = HTTP.request("GET", url)

    response_body = String(r.body)
    if response_body == "Hello World"
        println("You pass p1.")
    else
        println("You fail! The body of the response is $response_body")
    end
end


end
greet() = print("Hello World!")

end # module StudyDungeon
