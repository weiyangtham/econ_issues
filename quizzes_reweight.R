library(tidyverse)

carmen = read_csv("carmen_gradebook.csv") %>% 
  filter(row_number() > 1) %>% 
  select(Student:`Quiz 2 (475910)`)

write_csv(carmen, "quiz12_original.csv")

carmen = carmen %>% 
  mutate(`Quiz 1 (470773)` = (2/3) * `Quiz 1 (470773)`, 
         `Quiz 2 (475910)` = (0.5) * `Quiz 2 (475910)`)

write_csv(carmen, "carmen_gradebook_quizzes_reweighted.csv")
