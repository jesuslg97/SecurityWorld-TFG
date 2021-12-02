class ContentsController < ApplicationController

  before_action :find_content, only: %i[ edit update destroy]

  before_action :set_breadcrumbs

  def index
  end

  def show
    @attack = Attack.find(params[:id])
    @contents = Content.all

    if @attack.article_id == 3
      add_breadcrumb("Ataques Empresa", show_admin_path(:id => 3))
    end

    if @attack.article_id == 6
      add_breadcrumb("Ataques Hogar", show_admin_path(:id => 6))
    end

    if @attack.article_id == 9
      add_breadcrumb("Ataques Móvil", show_admin_path(:id => 9))
    end

    if @attack.id == 1 || @attack.id == 17 || @attack.id == 28
      add_breadcrumb("Malware")
    end

    if @attack.id == 2 || @attack.id == 18 || @attack.id == 30
      add_breadcrumb("Phishing")
    end

    if @attack.id == 3 || @attack.id == 29
      add_breadcrumb("Ransomware")
    end

    if @attack.id == 4 || @attack.id == 31
      add_breadcrumb("Gusano")
    end

    if @attack.id == 5 || @attack.id == 19 || @attack.id == 32
      add_breadcrumb("Virus")
    end

    if @attack.id == 6 || @attack.id == 20 || @attack.id == 33
      add_breadcrumb("Troyano")
    end

    if @attack.id == 7
      add_breadcrumb("Denegación de Servicio")
    end

    if @attack.id == 8
      add_breadcrumb("Rootkit")
    end

    if @attack.id == 9 || @attack.id == 21 || @attack.id == 34
      add_breadcrumb("Spyware")
    end

    if @attack.id == 10 || @attack.id == 22 || @attack.id == 35
      add_breadcrumb("Adware")
    end

    if @attack.id == 11
      add_breadcrumb("Ataques de inyección SQL")
    end

    if @attack.id == 12 || @attack.id == 24
      add_breadcrumb("Cross-Site Scripting (XSS)")
    end

    if @attack.id == 13 || @attack.id == 25 || @attack.id == 36
      add_breadcrumb("Man in The Middle")
    end

    if @attack.id == 14
      add_breadcrumb("Tunelización de DNS")
    end

    if @attack.id == 15 || @attack.id == 26
      add_breadcrumb("Spear phishing")
    end

    if @attack.id == 16
      add_breadcrumb("Whaling")
    end

  end

  def new
    @content = Content.new
    add_breadcrumb("Añadir Contenido")
  end

  def edit

    # if @attack.article_id == 3
    #   add_breadcrumb("Ataques Empresa", show_admin_path(:id => 3))
    # end
    #
    # if @attack.article_id == 6
    #   add_breadcrumb("Ataques Hogar", show_admin_path(:id => 6))
    # end
    #
    # if @attack.article_id == 9
    #   add_breadcrumb("Ataques Móvil", show_admin_path(:id => 9))
    # end

    if @content.attack_id == 1 || @content.attack_id == 17 || @content.attack_id == 28
      add_breadcrumb("Malware")
    end

    if @content.attack_id == 2 || @content.attack_id == 18 || @content.attack_id == 30
      add_breadcrumb("Phishing")
    end

    if @content.attack_id == 3 || @content.attack_id == 29
      add_breadcrumb("Ransomware")
    end

    if @content.attack_id == 4 || @content.attack_id == 31
      add_breadcrumb("Gusano")
    end

    if @content.attack_id == 5 || @content.attack_id == 19 || @content.attack_id == 32
      add_breadcrumb("Virus")
    end

    if @content.attack_id == 6 || @content.attack_id == 20 || @content.attack_id == 33
      add_breadcrumb("Troyano")
    end

    if @content.attack_id == 7
      add_breadcrumb("Denegación de Servicio")
    end

    if @content.attack_id == 8
      add_breadcrumb("Rootkit")
    end

    if @content.attack_id == 9 || @content.attack_id == 21 || @content.attack_id == 34
      add_breadcrumb("Spyware")
    end

    if @content.attack_id == 10 || @content.attack_id == 22 || @content.attack_id == 35
      add_breadcrumb("Adware")
    end

    if @content.attack_id == 11
      add_breadcrumb("Ataques de inyección SQL")
    end

    if @content.attack_id == 12 || @content.attack_id == 24
      add_breadcrumb("Cross-Site Scripting (XSS)")
    end

    if @content.attack_id == 13 || @content.attack_id == 25 || @content.attack_id == 36
      add_breadcrumb("Man in The Middle")
    end

    if @content.attack_id == 14
      add_breadcrumb("Tunelización de DNS")
    end

    if @content.attack_id == 15 || @content.attack_id == 26
      add_breadcrumb("Spear phishing")
    end

    if @content.attack_id == 16
      add_breadcrumb("Whaling")
    end

    add_breadcrumb("Editar Contenido")
  end

  def create
    @content = Content.new(strong_params_content)
    if @content.save
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def update
    if @content.update(strong_params_content)
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def destroy
    @content.destroy
    redirect_to articles_path
  end

  private

  def find_content
    @content = Content.find(params[:id])
  end

  def strong_params_content
    params.require(:content).permit(:titulo, :informacion, :attack_id)
  end

  def set_breadcrumbs
    add_breadcrumb("Inicio", root_path)
    add_breadcrumb("Artículos", articles_path)

  end

end
