Swagger::Docs::Config.register_apis({
  '1.0' => {
    # The directory where the documentation files will be generated
    api_file_path: 'public/doc/api/',
    # Specify the base path for the API
    base_path: 'http://localhost:3000',
    # Specify the format of the generated files
    format: :json,
    # Specify the model and controller documentation
    api_controllers: '*'
  }
})
