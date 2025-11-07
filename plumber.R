# plumber.R
# section: ----------------------------------
source("api/global.R")
# section: ----------------------------------
main_file <- "api/routes/main_routes.R"

api(main_file) |>
  api_on(
    "end",
    function() {
      message("Plumber app shutting down. Stopping mirai daemons...")
      # This function terminates all currently running daemons
      daemons(0)
      message("mirai daemons stopped.")
    }
  ) |>
  api_run()
