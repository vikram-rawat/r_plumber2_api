# plumber.R

#* Echo back the input
#* @get /
function() {
return_msg
}

#* Echo back the input
#* @serializer csv
#* @get /echo1
function() {
  return_csv
}

#* Echo back the input
#* @serializer csv
#* @get /echo2
function() {
  return_aync_csv
}
