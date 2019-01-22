# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Paper.Repo.insert!(%Paper.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
Paper.Repo.insert!(Ecto.Changeset.change(%Paper.Content.Model{},  [title: "Batman", author: "Bob Kane, Bill Finger", summary: "Batman is a fictional superhero", content: "Batman is a fictional superhero appearing in American comic books published by DC Comics. The character was created by artist Bob Kane and writer Bill Finger, and first appeared in Detective Comics #27, in 1939", status: "published", published_date: Timex.now()]))
Paper.Repo.insert!(Ecto.Changeset.change(%Paper.Content.Model{},  [title: "Flash", author: "Robert Kanigher", summary: "Berry Alan is flash ;)",content: "Barry Allen, a forensic scientist with the Central City police force, is struck by lightning in a freak accident. When he wakes up after nine months, he discovers that he can achieve great speeds.", status: "draft", published_date: Timex.Ecto.DateTime.cast!("2019-02-12 00:00:00")]))
Paper.Repo.insert!(Ecto.Changeset.change(%Paper.Content.Model{},  [title: "Superman", author: "Jerry Siegel, Joe Shuster", summary: "superman is powerful",content: "Superman is a fictional superhero created by writer Jerry Siegel and artist Joe Shuster. He first appeared in Action Comics#1, a comic book published on April 18, 1938", status: "published", published_date: Timex.now()]))
Paper.Repo.insert!(Ecto.Changeset.change(%Paper.Content.Model{},  [title: "Iron Man", author: "Stan Lee", summary: "everyone know Iron Man is :D",content: "Iron Man is a 2008 American superhero film based on the Marvel Comics character of the same name, produced by Marvel Studios", status: "published", published_date: Timex.now()]) )
