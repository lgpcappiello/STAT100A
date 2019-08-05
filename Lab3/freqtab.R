survey <- read.csv("http://lgpcappiello.github.io/teaching/stat100a/Rcode/studentsurvey.csv")
college <- ifelse(survey$major == "Anthropology" | survey$major == "Sociology" | 
                    survey$major == "Public Policy" | survey$major == "Music", "CHASS",
                  ifelse(survey$major == "Biochemistry" | survey$major == "Biology" | 
                           survey$major == "Chemistry" | survey$major == "CMDB" | 
                           survey$major == "Earth Science" | survey$major == "Geology" | 
                           survey$major == "Math" | survey$major == "Microbiology" | 
                           survey$major == "Neuroscience" | survey$major == "Statistics", "CNAS",
                         ifelse(survey$major == "Business Econ" | survey$major == "Business Economics",
                                "SOBA", "BCOE")))
mytable <- table(college,survey$year)
YearTotal <- colSums(mytable)
CollegeTotal <- c(rowSums(mytable), sum(YearTotal))
mytable <- rbind(mytable,CollegeTotal)
mytable <- cbind(mytable,YearTotal)
mytable
