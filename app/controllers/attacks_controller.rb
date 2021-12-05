class AttacksController < ApplicationController

  before_action :find_attack, only: %i[ show edit update destroy]

  before_action :set_breadcrumbs

  def index
    @attacks = Attack.all
  end

  def show
    @contents = Content.all

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

  def show_admin
    @article = Article.find(params[:id])
    @attacks = Attack.all

    if @article.category_id == 1
      add_breadcrumb("Ataques específicos Empresa")
    end

    if @article.category_id == 2
      add_breadcrumb("Ataques específicos Hogar")
    end

    if @article.category_id == 3
      add_breadcrumb("Ataques específicos Móvil")
    end
  end

  def new
    @attack = Attack.new
    add_breadcrumb("Añadir Ataque")
  end

  def edit
    if @attack.article_id == 3
      add_breadcrumb("Ataques específicos Empresa", show_admin_path(:id => 3))
    end

    if @attack.article_id == 6
      add_breadcrumb("Ataques específicos Hogar", show_admin_path(:id => 6))
    end

    if @attack.article_id == 9
      add_breadcrumb("Ataques específicos Móvil", show_admin_path(:id => 9))
    end

    add_breadcrumb("Editar Ataque")
  end

  def create
    @attack = Attack.new(strong_params_attack)
    if @attack.save
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def update
    if @attack.update(strong_params_attack)
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def destroy
    @attack.destroy
    redirect_to articles_path
  end

  private

  def find_attack
    @attack = Attack.find(params[:id])
  end

  def strong_params_attack
    params.require(:attack).permit(:nombre, :article_id)
  end

  def set_breadcrumbs
    add_breadcrumb("Inicio", root_path)

    if user_signed_in? == false
      if @attack.article_id == 3
        add_breadcrumb("Empresa", category_path(:id => 1))
        add_breadcrumb("Ataques específicos", article_path(:id => 3))
      end

      if @attack.article_id == 6
        add_breadcrumb("Hogar", category_path(:id => 2))
        add_breadcrumb("Ataques específicos", article_path(:id => 6))
      end

      if @attack.article_id == 9
        add_breadcrumb("Móvil", category_path(:id => 3))
        add_breadcrumb("Ataques específicos", article_path(:id => 9))
      end
    else
      add_breadcrumb("Artículos", articles_path)
    end

  end

end
