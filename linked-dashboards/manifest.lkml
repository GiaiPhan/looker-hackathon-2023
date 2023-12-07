project_name: "linked-dashboards"

application: linked-dashboards {
  label: "linked-dashboards"
  # url: "https://localhost:8080/bundle.js"
  file: "bundle.js"
  entitlements: {
    new_window: yes
    new_window_external_urls: ["https://hack.looker.com/*"] # this is used for embed toggle
    navigation: yes
    core_api_methods: ["search_folders", "search_dashboards"]
    use_embeds: yes
  }
}
