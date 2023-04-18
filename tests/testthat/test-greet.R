test_that("greet works without a name", {
  expect_message(greet(), "Hello User!")
})

test_that("greet works with a name", {
  expect_message(greet("Sophie"), "Hello Sophie!")
})
