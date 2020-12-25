# frozen_string_literal: true

10.times do |number|
  Blog.create!(
    title: "My Blog Post #{number}",
    body: 'Pedras no caminho? Guardo todas! UM dia construirei um castelo...'
  )
end

puts '10 Blogs created'

5.times do |number|
  Skill.create!(
    title: "Rails #{number}",
    percent_utilized: 15
  )
end

puts '5 Skills created'

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: 'My great service',
    body: 'Incrivel body',
    main_image: 'https://place-hold.it/600x200',
    thumb_image: 'https://place-hold.it/350x200'
  )
end

puts '9 Portfolio Items created!'
