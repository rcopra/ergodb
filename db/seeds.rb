# Clear existing data
User.destroy_all
Keyboard.destroy_all
Image.destroy_all

# Seed Users
User.create(email: 'person@example.com', password: 'password', username: 'Rick')

# Seed Keyboards
chocofi = Keyboard.create!(
  name: "Chocofi",
  keyboard_type: "Custom",
  switches: "Choc",
  layout: "Column Stagger",
  hot_swappable: true,
  split: true,
  oled_compatible: true,
  wireless: true,
  rows: 3,
  columns: 5,
  thumb_keys: 3,
  github_repo_link: "https://github.com/pashutk/chocofi",
  user: User.first
)

# Seed Images
chocofi_image = Image.create!(
  url: "https://res.cloudinary.com/dglqz7zll/image/upload/v1699965207/IMG_7067_htlihr.jpg",
  description: "Chocofi Keyboard",
  keyboard: chocofi
)
