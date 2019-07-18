# Email does not seem to work (swirl::email function does not exist?)

notify <- function() {
  good <- FALSE
  while(!good) {
    # Get info
    name <- readline_clean("What is your full name? ")
    sid <- readline_clean("What is your student ID number?")
    address <- "lperr003@ucr.edu"
    
    # Repeat back to them
    message("\nDoes everything look good?\n")
    message("Your name: ", name, "\n", "Your SID: ", sid, "\n", "Send to: lauren.cappiello@email.ucr.edu")
    
    yn <- select.list(c("Yes", "No"), graphics = FALSE)
    if(yn == "Yes") good <- TRUE
  }
  
  # Get course and lesson names
  #course_name <- attr(e$les, "course_name")
  #lesson_name <- attr(e$les, "lesson_name")
  
  subject <- paste(name, " (", sid, ") completed today's lab.")
  body = ""
  
  # Send email
  swirl:::email(address, subject, body)
  
  hrule()
  message("I just tried to create a new email with the following info:\n")
  message("To: ", address)
  message("Subject: ", subject)
  message("Body: <empty>")
  
  message("\nIf it didn't work, you can send the same email manually.")
  hrule()
  
  # Return TRUE to satisfy swirl and return to course menu
  TRUE
}

readline_clean <- function(prompt = "") {
  wrapped <- strwrap(prompt, width = getOption("width") - 2)
  mes <- stringr::str_c("| ", wrapped, collapse = "\n")
  message(mes)
  readline()
}

hrule <- function() {
  message("\n", paste0(rep("#", getOption("width") - 2), collapse = ""), "\n")
}
