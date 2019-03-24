image_animate = function(x,sleep_t =.1){
  for(i in 1:length(x)){
    image(x[[i]],asp = 1)
    Sys.sleep(sleep_t)
  }
}
