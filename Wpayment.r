set.seed(123)  # Set seed for reproducibility

# Generate a list of 400 workers dynamically
workers <- data.frame(
  name = paste0("Worker_", 1:400),
  gender = sample(c("Male", "Female"), 400, replace = TRUE),
  salary = sample(5000:30000, 400, replace = TRUE),
  stringsAsFactors = FALSE
)

# Function to generate payment slips and assign employee levels
generate_payment_slips <- function(workers) {
  for (i in 1:nrow(workers)) {
    tryCatch({
      # Assign Employee level based on salary and gender
      if (workers$salary[i] > 10000 & workers$salary[i] < 20000) {
        workers$level[i] <- "A1"
      } else if (workers$salary[i] > 7500 & workers$salary[i] < 30000 & workers$gender[i] == "Female") {
        workers$level[i] <- "A5-F"
      } else {
        workers$level[i] <- "None"
      }

      # Generate payment slip
      cat(paste0("Payment Slip for ", workers$name[i], ":\n"))
      cat(paste0("  Gender: ", workers$gender[i], "\n"))
      cat(paste0("  Salary: $", workers$salary[i], "\n"))
      cat(paste0("  Employee Level: ", workers$level[i], "\n"))
      cat(paste0(strrep("-", 40), "\n"))
      
    }, error = function(e) {
      cat(paste0("Error processing payment slip for ", workers$name[i], ": ", e$message, "\n"))
    })
  }
}

# Call the function to generate payment slips for all workers
generate_payment_slips(workers)
