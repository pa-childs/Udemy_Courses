def authenticate_agent(rank, name, credentials)

  if (rank == "007" && name == "James Bond") || credentials == "Secret Agent"

    puts "Access is allowed"

  else

    puts "Security Violation Detected"

  end

end

rank = "Novice"
name = "James Bond"
credentials = "Spy"

authenticate_agent(rank, name, credentials)
