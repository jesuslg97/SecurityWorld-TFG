class ContentsController < ApplicationController

  before_action :find_content, only: %i[ edit update destroy]

  before_action :set_breadcrumbs

  def index
  end

  def show
    @attack = Attack.find(params[:id])
    @contents = Content.all

    if @attack.article_id == 3
      add_breadcrumb("Ataques específicos Empresa", article_show_admin_path(:id => 3))
    end

    if @attack.article_id == 6
      add_breadcrumb("Ataques específicos Hogar", article_show_admin_path(:id => 6))
    end

    if @attack.article_id == 9
      add_breadcrumb("Ataques específicos Móvil", article_show_admin_path(:id => 9))
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
    @article = Attack.find(params[:article_id])
    @content = Content.new
    add_breadcrumb("Añadir Contenido")
  end

  def edit
    @article = Attack.find(params[:article_id])

    # Malware
    if @content.attack_id == 1
      add_breadcrumb("Ataques específicos Empresa", article_show_admin_path(:id => 3))
      add_breadcrumb("Malware", article_attack_content_path(:id => 1))
    end

    if @content.attack_id == 17
      add_breadcrumb("Ataques específicos Hogar", article_show_admin_path(:id => 6))
      add_breadcrumb("Malware", article_attack_content_path(:id => 17))
    end

    if @content.attack_id == 28
      add_breadcrumb("Ataques específicos Móvil", article_show_admin_path(:id => 9))
      add_breadcrumb("Malware", article_attack_content_path(:id => 28))
    end
    # Malware

    # Phishing
    if @content.attack_id == 2
      add_breadcrumb("Ataques específicos Empresa", article_show_admin_path(:id => 3))
      add_breadcrumb("Phishing", article_attack_content_path(:id => 2))
    end

    if @content.attack_id == 18
      add_breadcrumb("Ataques específicos Hogar", article_show_admin_path(:id => 6))
      add_breadcrumb("Phishing", article_attack_content_path(:id => 18))
    end

    if @content.attack_id == 30
      add_breadcrumb("Ataques específicos Móvil", article_show_admin_path(:id => 9))
      add_breadcrumb("Phishing", article_attack_content_path(:id => 30))
    end
    # Phishing

    # Ransomware
    if @content.attack_id == 3
      add_breadcrumb("Ataques específicos Empresa", article_show_admin_path(:id => 3))
      add_breadcrumb("Ransomware", article_attack_content_path(:id => 3))
    end

    if @content.attack_id == 29
      add_breadcrumb("Ataques específicos Móvil", article_show_admin_path(:id => 9))
      add_breadcrumb("Ransomware", article_attack_content_path(:id => 29))
    end
    # Ransomware

    # Gusano
    if @content.attack_id == 4
      add_breadcrumb("Ataques específicos Empresa", article_show_admin_path(:id => 3))
      add_breadcrumb("Gusano", article_attack_content_path(:id => 4))
    end

    if @content.attack_id == 31
      add_breadcrumb("Ataques específicos Móvil", article_show_admin_path(:id => 9))
      add_breadcrumb("Gusano", article_attack_content_path(:id => 31))
    end
    # Gusano

    # Virus
    if @content.attack_id == 5
      add_breadcrumb("Ataques específicos Empresa", article_show_admin_path(:id => 3))
      add_breadcrumb("Virus", article_attack_content_path(:id => 5))
    end

    if @content.attack_id == 19
      add_breadcrumb("Ataques específicos Hogar", article_show_admin_path(:id => 6))
      add_breadcrumb("Virus", article_attack_content_path(:id => 19))
    end

    if @content.attack_id == 32
      add_breadcrumb("Ataques específicos Móvil", article_show_admin_path(:id => 9))
      add_breadcrumb("Virus", article_attack_content_path(:id => 32))
    end
    # Virus

    # Troyano
    if @content.attack_id == 6
      add_breadcrumb("Ataques específicos Empresa", article_show_admin_path(:id => 3))
      add_breadcrumb("Troyano", article_attack_content_path(:id => 6))
    end

    if @content.attack_id == 20
      add_breadcrumb("Ataques específicos Hogar", article_show_admin_path(:id => 6))
      add_breadcrumb("Troyano", article_attack_content_path(:id => 20))
    end

    if @content.attack_id == 33
      add_breadcrumb("Ataques específicos Móvil", article_show_admin_path(:id => 9))
      add_breadcrumb("Troyano", article_attack_content_path(:id => 33))
    end
    # Troyano

    # Denegación de Servicio
    if @content.attack_id == 7
      add_breadcrumb("Ataques específicos Empresa", article_show_admin_path(:id => 3))
      add_breadcrumb("Denegación de Servicio", article_attack_content_path(:id => 7))
    end
    # Denegación de Servicio

    # Rootkit
    if @content.attack_id == 8
      add_breadcrumb("Ataques específicos Empresa", article_show_admin_path(:id => 3))
      add_breadcrumb("Rootkit", article_attack_content_path(:id => 8))
    end
    # Rootkit

    # Spyware
    if @content.attack_id == 9
      add_breadcrumb("Ataques específicos Empresa", article_show_admin_path(:id => 3))
      add_breadcrumb("Spyware", article_attack_content_path(:id => 9))
    end

    if @content.attack_id == 21
      add_breadcrumb("Ataques específicos Hogar", article_show_admin_path(:id => 6))
      add_breadcrumb("Spyware", article_attack_content_path(:id => 21))
    end

    if @content.attack_id == 34
      add_breadcrumb("Ataques específicos Móvil", article_show_admin_path(:id => 9))
      add_breadcrumb("Spyware", article_attack_content_path(:id => 34))
    end
    # Spyware

    # Adware
    if @content.attack_id == 10
      add_breadcrumb("Ataques específicos Empresa", article_show_admin_path(:id => 3))
      add_breadcrumb("Adware", article_attack_content_path(:id => 10))
    end

    if @content.attack_id == 22
      add_breadcrumb("Ataques específicos Hogar", article_show_admin_path(:id => 6))
      add_breadcrumb("Adware", article_attack_content_path(:id => 22))
    end

    if @content.attack_id == 35
      add_breadcrumb("Ataques específicos Móvil", article_show_admin_path(:id => 9))
      add_breadcrumb("Adware", article_attack_content_path(:id => 35))
    end
    # Adware

    # Ataques de inyección SQL
    if @content.attack_id == 11
      add_breadcrumb("Ataques específicos Empresa", article_show_admin_path(:id => 3))
      add_breadcrumb("Ataques de inyección SQL", article_attack_content_path(:id => 11))
    end
    # Ataques de inyección SQL

    # Cross-Site Scripting (XSS)
    if @content.attack_id == 12
      add_breadcrumb("Ataques específicos Empresa", article_show_admin_path(:id => 3))
      add_breadcrumb("Cross-Site Scripting (XSS)", article_attack_content_path(:id => 12))
    end

    if @content.attack_id == 24
      add_breadcrumb("Ataques específicos Hogar", article_show_admin_path(:id => 6))
      add_breadcrumb("Cross-Site Scripting (XSS)", article_attack_content_path(:id => 24))
    end
    # Cross-Site Scripting (XSS)

    # Man in The Middle
    if @content.attack_id == 13
      add_breadcrumb("Ataques específicos Empresa", article_show_admin_path(:id => 3))
      add_breadcrumb("Man in The Middle", article_attack_content_path(:id => 13))
    end

    if @content.attack_id == 25
      add_breadcrumb("Ataques específicos Hogar", article_show_admin_path(:id => 6))
      add_breadcrumb("Man in The Middle", article_attack_content_path(:id => 25))
    end

    if @content.attack_id == 36
      add_breadcrumb("Ataques específicos Móvil", article_show_admin_path(:id => 9))
      add_breadcrumb("Man in The Middle", article_attack_content_path(:id => 36))
    end
    # Man in The Middle

    # Tunelización de DNS
    if @content.attack_id == 14
      add_breadcrumb("Ataques específicos Empresa", article_show_admin_path(:id => 3))
      add_breadcrumb("Tunelización de DNS", article_attack_content_path(:id => 14))
    end
    # Tunelización de DNS

    # Spear phishing
    if @content.attack_id == 15
      add_breadcrumb("Ataques específicos Empresa", article_show_admin_path(:id => 3))
      add_breadcrumb("Spear phishing", article_attack_content_path(:id => 15))
    end

    if @content.attack_id == 26
      add_breadcrumb("Ataques específicos Hogar", article_show_admin_path(:id => 6))
      add_breadcrumb("Spear phishing", article_attack_content_path(:id => 26))
    end
    # Spear phishing

    # Whaling
    if @content.attack_id == 16
      add_breadcrumb("Ataques específicos Empresa", article_show_admin_path(:id => 3))
      add_breadcrumb("Whaling", article_attack_content_path(:id => 16))
    end
    # Whaling

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
