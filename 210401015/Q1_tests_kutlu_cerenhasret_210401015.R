
library(testthat)

test_data <- read.csv("Travel details dataset.csv") 

test_that("Konaklama tercihleri analizi doğru çalışmalı", {
  result <- analyze_accommodation_preferences(test_data)  
  

  expected_result <- list(
    ggplot_object = ggplot_build(ggplot())$data[[1]], 
    otel_sonrasi_airbnb_orani = expected_value_1, 
    en_az_tercih_edilen_villa_sayisi = expected_value_2  
  )
  
 
  expect_identical(result$ggplot_object, expected_result$ggplot_object)
  expect_equal(result$otel_sonrasi_airbnb_orani, expected_result$otel_sonrasi_airbnb_orani)
  expect_equal(result$en_az_tercih_edilen_villa_sayisi, expected_result$en_az_tercih_edilen_villa_sayisi)
})

