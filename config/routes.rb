ConestEncuestaBackend::Application.routes.draw do
  resources :controles_consultas, except: [:new, :edit]
  resources :carreras, except: [:new, :edit]
  resources :materias, except: [:new, :edit]
  resources :periodos_academico, except: [:new, :edit]
  resources :ofertas_periodo, except: [:new, :edit]
  resources :docentes, except: [:new, :edit]
  resources :estudiantes, except: [:new, :edit]
  resources :ofertas_academica, except: [:new, :edit]
  resources :tokens, except: [:new, :edit]
  resources :consultas, except: [:new, :edit]
  resources :respuestas, except: [:new, :edit]
  resources :opciones, except: [:new, :edit]
  resources :tipos_pregunta, except: [:new, :edit]
  resources :preguntas, except: [:new, :edit]
  resources :bloques, except: [:new, :edit]
  resources :instrumentos, except: [:new, :edit]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
