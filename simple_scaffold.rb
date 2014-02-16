def generate_controller(update_method, params, include_white_list_code=false)
  strong_params_method=white_list_code if include_white_list_code
  controller_code = <<-CODE
<% if namespaced? -%>
require_dependency "<%= namespaced_file_path %>/application_controller"

<% end -%>
<% module_namespacing do -%>
class <%= controller_class_name %>Controller < ApplicationController

  def index
    @<%= plural_table_name %> = <%= orm_class.all(class_name) %>
    render 'index'
  end

  def show
    @<%= singular_table_name %> = <%= orm_class.find(class_name, "params[:id]") %>
    render 'show'
  end

  def new
    @<%= singular_table_name %> = <%= orm_class.build(class_name) %>
    render 'new'
  end

  def edit
    @<%= singular_table_name %> = <%= orm_class.find(class_name, "params[:id]") %>
    render 'edit'
  end

  def create
    @<%= singular_table_name %> = <%= orm_class.build(class_name, "#{params}") %>

    if @<%= orm_instance.save %>
      redirect_to @<%= singular_table_name %>, notice: <%= "'\#{human_name} was successfully created.'" %>
    else
      render action: 'new'
    end
  end

  def update
    @<%= singular_table_name %> = <%= orm_class.find(class_name, "params[:id]") %>
    if @<%= orm_instance.#{update_method}("#{params}") %>
      redirect_to @<%= singular_table_name %>, notice: <%= "'\#{human_name} was successfully updated.'" %>
    else
      render action: 'edit'
    end
  end

  def destroy
    @<%= singular_table_name %> = <%= orm_class.find(class_name, "params[:id]") %>
    @<%= orm_instance.destroy %>
    redirect_to <%= index_helper %>_url, notice: <%= "'\#{human_name} was successfully destroyed.'" %>
  end
#{strong_params_method}
end
<% end -%>
  CODE
  file 'lib/templates/rails/scaffold_controller/controller.rb', controller_code
end

def white_list_code
  <<-CODE

  private
  # Only allow a trusted parameter "white list" through.
  def <%= "\#{singular_table_name}_params" %>
    <%- if attributes_names.empty? -%>
    params[<%= ":\#{singular_table_name}" %>]
    <%- else -%>
    params.require(<%= ":\#{singular_table_name}" %>).permit(<%= attributes_names.map { |name| ":\#{name}" }.join(', ') %>)
    <%- end -%>
  end
  CODE
end

environment 'config.generators.assets = false'
environment 'config.generators.helper = false'
environment 'config.generators.test_framework = false'
environment 'config.generators.stylesheets = false'

if Rails::VERSION::MAJOR>3
  environment 'config.generators.jbuilder = false'
  generate_controller("update", "\#{singular_table_name}_params", true)
else
  generate_controller("update_attributes", "params[:\#{singular_table_name}]")
end

# What is this?

# A Rails template which makes Rails scaffolds easier for beginners to understand. From https://github.com/Ben-M/simple_scaffold

# Why?
# Many tutorials aimed at beginners (for example the Rails Girls App tutorial) rely on Rails scaffolds.
# With recent releases of Rails the scaffolds have become better for experienced developers but less accessible to beginners;
# files unnecessary for entry level tutorials are generated and the code in the controllers can be confusing.

# The simple scaffold template generates scaffolds which are easier for beginners to understand.

# How do I use it?
# Create a Rails app as you usually would, but add -m to tell Rails to download and use the simple_scaffold template:

# rails new myapp -m https://raw.github.com/Ben-M/simplescaffold/master/simple_scaffold.rb

# Generate a scaffold the way you usually would:

# rails generate scaffold idea name:string description:text picture:string

# What is different?

# Settings

# Generators will no longer create:

# Tests
# Helpers
# Javascript/CoffeeScript files
# JBuilder files
# Note: You can turn generation of these files back on by editing the config.generators lines in application.rb

# Controller

# Records are loaded inline in the controller instead of using a before_action.
# Controllers no longer include respond_to blocks.
# Controller actions now explicitly call render.
# Note: If you'd like to revert to the default scaffold generator remove the file lib/templates/rails/scaffold_controller/controller.rb
