#Ethan Widen 4/30/18
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2,
  "241983978782-m77g6sf93c0rdo34b8kr06966pvrqsss.apps.googleusercontent.com",
  "cUNvkLFb_nRRlOcqyRj6wpGO"
end