Rails.application.routes.draw do

  resources :estado_plans
  resources :paquetes_plan_to_fechas
  get 'paquetes/plan'
  resources :paquete_plan_to_procedimientos
  get 'paquetes/asignar'
  resources :paquete_plans
  get 'password_resets/new'
  get 'password_resets/edit'
  resources :users
  get 'sessions/new'
  resources :riesgos
  resources :procedimientos
  resources :procesos
  resources :tipo_objetivos
  resources :estados
  resources :centros
  resources :tipo_procesos
  get 'main/menu'
  get 'getEstados' => 'estados#getEstados'
  post 'getEstados' => 'estados#getEstados'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
  	get '/get_tprocedimientos' ,  to: 'tipo_procedimientos#get_Tipo'
    get 'getpaquetes' => 'tipo_procedimientos#get_paquetes'
    get 'getproceso' => 'tipo_procedimientos#get_procesos'
    get 'getprocedimientos' => 'tipo_procedimientos#get_procedimientos'
    get 'getprocedimientos_x_proceso' => 'tipo_procedimientos#get_procedimiento_x_procesos'
    get 'setpaquetes_x_procedimiento' => 'tipo_procedimientos#set_paquetes_x_procedimientos'
    get 'getprocedimiento_x_paquete' => 'tipo_procedimientos#get_procedimiento_x_paquete'
    get 'delprocedimiento_paquete' => 'tipo_procedimientos#eliminar_procedimiento_x_paquete'
    get 'plan' => 'tipo_procedimientos#get_plan_auditoria'
  end 


  # usuario para logearme 
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get    'signup'  => 'users#new'

  # activacion por correo electronico
  resources :account_activations, only: [:edit]
  # reset de la clave a traves del correo electronico
  resources :password_resets,     only: [:new, :create, :edit, :update]

end
