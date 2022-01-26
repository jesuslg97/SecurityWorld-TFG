# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# SEEDS CATEGORIES
category1 = Category.new(:nombre => 'Empresa',
                         :descripcion => '¡Bienvenid@s!, en esta sección podrá encontrar todo lo relacionado con los <strong>ataques que sufren las empresas</strong> de forma común. A continuación, podrán ver más información y con detalles, todo lo que tiene que ver con ataques de ciberseguridad en las empresa. ¡Espero que les sea de su agrado!')

category2 = Category.new(:nombre => 'Hogar',
                         :descripcion => '¡Bienvenid@s!, en esta sección podrá encontrar todo lo relacionado con los <strong>ataques que sufrimos en nuestros hogares</strong>. A continuación, podrán ver más información y con detalles, todo lo que tiene que ver con ataques de ciberseguridad en los hogares. ¡Espero que les sea de su agrado!')

category3 = Category.new(:nombre => 'Móvil',
                         :descripcion => '¡Bienvenid@s!, en esta sección podrá encontrar todo lo relacionado con los <strong>ataques que sufren nuestros dispositivos móviles</strong>. A continuación, podrán ver más información y con detalles, todo lo que tiene que ver con ataques de ciberseguridad en móviles. ¡Espero que les sea de su agrado!')

category1.save
category2.save
category3.save

# SEEDS HOME
home1 = Home.new(:id => '1')

home2 = Home.new(:id => '2')

home3 = Home.new(:id => '3')

home1.save
home2.save
home3.save

# SEEDS ARTICLES
article1 = Article.new(:category_id => '1',
                       :nombre => 'Medidas generales',
                       :descripcion => 'En este artículo podrán encontrar las medidas generales que deberían seguir todas las empresas para mejorar su seguridad',
                       :introduccion => '¡Buenas a tod@s!, esta página consta de la explicación de todo los <strong>pasos y consejos</strong> que deberían afrontar en las empresas.')

article2 = Article.new(:category_id => '1',
                       :nombre => 'Preguntas frecuentes',
                       :descripcion => 'En este artículo podrán encontrar las preguntas frecuentes que se hacen las empresas cuando se trata de mejorar nuestra seguridad',
                       :introduccion => '¡Buenas a tod@s!, esta página consta de las <strong>preguntas frecuentes que nos hacemos</strong> todos los empleados sobre la ciberseguridad de las empresas.')

article3 = Article.new(:category_id => '1',
                       :nombre => 'Ataques específicos',
                       :descripcion => 'En este artículo podrán encontrar todos los ataques que sufren y pueden sufrir las empresas',
                       :introduccion => '¡Buenas a tod@s!, esta página consta de todos los <strong>ataques</strong> que pueden sufrir las <strong>empresas.</strong>')

article4 = Article.new(:category_id => '2',
                       :nombre => 'Medidas generales',
                       :descripcion => 'En este artículo podrán encontrar las medidas generales que deberían realizar en los hogares para mejorar su seguridad',
                       :introduccion => '¡Buenas a tod@s!, esta página consta de la explicación de todo los <strong>pasos y consejos</strong> que deberíamos afrontar en los hogares.')

article5 = Article.new(:category_id => '2',
                       :nombre => 'Preguntas frecuentes',
                       :descripcion => 'En este artículo podrán encontrar las preguntas frecuentes que nos hacemos en casa cuando se trata de mejorar nuestra seguridad',
                       :introduccion => '¡Buenas a tod@s!, esta página consta de las <strong>preguntas frecuentes que nos hacemos</strong> todos sobre la ciberseguridad en nuestro hogar.')

article6 = Article.new(:category_id => '2',
                       :nombre => 'Ataques específicos',
                       :descripcion => 'En este artículo podrán encontrar todos los ataques que sufrimos y podemos sufrir en el hogar',
                       :introduccion => '¡Buenas a tod@s!, esta página consta de todos los <strong>ataques</strong> que podemos sufrir en el <strong>hogar.</strong>')

article7 = Article.new(:category_id => '3',
                       :nombre => 'Medidas generales',
                       :descripcion => 'En este artículo podrán encontrar las medidas generales que deberíamos realizar en nuestros móviles para mejorar su seguridad',
                       :introduccion => '¡Buenas a tod@s!, esta página consta de la explicación de todo los <strong>pasos y consejos</strong> que deberíamos afrontar en los dispositivos móviles.')

article8 = Article.new(:category_id => '3',
                       :nombre => 'Preguntas frecuentes',
                       :descripcion => 'En este artículo podrán encontrar las preguntas frecuentes que nos hacemos cuando se trata de mejorar nuestra seguridad en los móviles',
                       :introduccion => '¡Buenas a tod@s!, esta página consta de las <strong>preguntas frecuentes que nos hacemos</strong> sobre la ciberseguridad en nuestro dispositivo móvil.')

article9 = Article.new(:category_id => '3',
                       :nombre => 'Ataques específicos',
                       :descripcion => 'En este artículo podrán encontrar todos los ataques que sufren y pueden sufrir los móviles',
                       :introduccion => '¡Buenas a tod@s!, esta página consta de todos los <strong>ataques</strong> que pueden sufrir nuestros <strong>móviles.</strong>')

article1.save
article2.save
article3.save
article4.save
article5.save
article6.save
article7.save
article8.save
article9.save

# SEEDS GENERALS
general1 = General.new(:article_id => '1',
                       :titulo => 'Utilizar autenticación multifactor',
                       :informacion => 'Una de las formas más efectivas de prevenir un ciberataque es asegurarse de que la <strong>autenticación multifactor</strong> esté habilitada para todas las aplicaciones que acceden a Internet en su empresa.<br/>
Tener solo una contraseña de inicio de sesión para los empleados no es suficiente. Si las contraseñas de los empleados se ven comprometidas a través de un pirateo o una estafa de phishing, los ciberdelincuentes pueden acceder fácilmente a los sistemas.<br/>
En cambio, habilitar un proceso de autenticación de múltiples factores para los inicios de sesión requerirá que los empleados proporcionen varios datos en lugar de solo uno. Como resultado, la seguridad aumentará. Será mucho más difícil para cualquier persona no autorizada acceder a los sistemas.')

general2 = General.new(:article_id => '1',
                       :titulo => 'Crear controles internos sólidos',
                       :informacion => 'Para prevenir ciberataques en una empresa, también es fundamental contar con <strong>controles internos sólidos.</strong> Los controles de acceso ayudarán a garantizar que el acceso al sistema se actualice inmediatamente una vez que los empleados, contratistas y proveedores abandonen la organización.<br/>
<strong>Controlar el acceso al sistema</strong> es esencial. Cuando alguien abandona la empresa, debe revocar el acceso por razones de seguridad. Si no revoca el acceso de ex empleados, contratistas y otras partes relevantes, es posible que puedan acceder al sistema más adelante. Al <strong>monitorear</strong> quién tiene acceso a los sistemas, se garantiza una mayor seguridad y se evitarán problemas potenciales.')

general3 = General.new(:article_id => '1',
                       :titulo => 'Responsabilidades de seguridad de terceros',
                       :informacion => 'Si desea prevenir ataques cibernéticos y amenazas de seguridad, también es fundamental que tome medidas para gestionar el <strong>riesgo cibernético de terceros.</strong> Es importante comprender las responsabilidades que tiene cuando se trata de la seguridad de terceros. Si hay proveedores o terceros que necesitan acceder al sistema, es fundamental estar al tanto de los riesgos y garantizar una mayor seguridad.<br/>
La creación de estrictos controles de seguridad, la identificación de amenazas potenciales y el monitoreo de red son aspectos cruciales para garantizar que el sistema sea seguro. Hay que asegurarse de comprender plenamente las <strong>responsabilidades.</strong> Se debe evitar las vulnerabilidades de terceros si se desea que el negocio sea lo más seguro posible.')

general4 = General.new(:article_id => '1',
                       :titulo => 'Denuncia a las autoridades',
                       :informacion => 'Puede que esto no te sirva para prevenir un ciberataque, pero sí para contribuir a que se reduzcan el número de estos.<br/>
Si tienes la sospecha de que se ha producido un ciberataque o de que un usuario no tiene buenas intenciones, avisa a los usuarios de la empresa o denúncialo a las autoridades pertinentes para que investiguen el caso.<br/>
Si todo el mundo lo hiciera, sería mucho más fácil detectar a los ciberdelincuentes.')

general5 = General.new(:article_id => '1',
                       :titulo => 'Educar a los empleados en materia de seguridad',
                       :informacion => 'La <strong>educación de los empleados</strong> también es una de las claves más importantes para mejorar la seguridad empresarial. Es necesario realizar una capacitación exhaustiva de concienciación sobre ciberseguridad al incorporar nuevos empleados. También se debe proporcionar entrenamiento adicional en intervalos regulares.<br/>
La celebración de <strong>sesiones de formación anuales</strong> puede ayudar a garantizar que todo el personal sepa cómo prevenir un ciberataque. También es importante educar sobre el phishing. Hay que hacer entender a los empleados qué no se consideran solicitudes normales por correo electrónico y otros métodos de correspondencia.<br/>
Al tener un equipo bien informado, podrá crear un negocio mucho más seguro en general.')

general6 = General.new(:article_id => '1',
                       :titulo => 'Crear copias de seguridad de datos',
                       :informacion => 'También es importante realizar copias de seguridad periódicas de los datos empresariales importantes. Hacer una copia de seguridad de los datos es una parte esencial para que un negocio funcione bien.<br/>
Es una medida importante que se debe tomar para evitar el peor de los casos en el que se pierden datos empresariales cruciales.<br/>
Si bien las otras acciones que tome para prevenir las amenazas de ciberseguridad deberían ser suficientes para proteger el negocio, a veces, independientemente de las medidas que se tomen, los ciberataques siguen ocurriendo.<br/>
Como resultado, es posible encontrar que los datos se borraron o corrompieron debido a un ataque cibernético. Al crear copias de seguridad de datos periódicas, se asegurará de que, pase lo que pase, su negocio no sufrirá pérdidas totales.<br/>
Evitará que sus operaciones comerciales se detengan. Podrá volver a encarrilar más fácilmente después de que se produzca un ciberataque o una brecha de seguridad.<br/>')

general7 = General.new(:article_id => '1',
                       :titulo => 'Mantener los sistemas actualizados',
                       :informacion => '<strong>Mantener los sistemas y software empresarial actualizados</strong> también es una parte fundamental para proteger una empresa. Los sistemas siempre deben ejecutar el software más reciente si se desea que los datos estén seguros. Si bien algunos propietarios de negocios se sienten frustrados por la necesidad de actualizaciones constantes, son necesarias. De vez en cuando, surgirán nuevos problemas y vulnerabilidades en el software empresarial.<br/>
Existen actualizaciones para parchear las vulnerabilidades del software y para protegerse contra posibles amenazas a la seguridad. A veces hay gastos importantes asociados con las actualizaciones de software y hardware. Sin embargo, el resultado suele merecer la pena.<br/>
<strong>No actualizar el sistema y el software con regularidad hará que todo el sistema sea vulnerable a amenazas.</strong> Como resultado, la empresa puede experimentar reveses importantes.')

general8 = General.new(:article_id => '1',
                       :titulo => 'Instalar un antivirus y un firewall en cada equipo',
                       :informacion => 'Es necesario instalar antivirus y firewalls en todos los equipos que tenga la empresa y <strong>actualizarlo</strong> con regularidad. Tener un antivirus y un firewall por sí solo no es suficiente para proteger completamente la empresa de las amenazas de seguridad.<br/>
Sin embargo, si se usa con las otras estrategias enumeradas anteriormente, se podrá crear un enfoque integrado para la seguridad del sistema.')

general9 = General.new(:article_id => '1',
                       :titulo => 'Comprobar que navegas con certificados SSL',
                       :informacion => 'Cada vez es más extraño que una web no cuente con certificados SSL, lo que de algún modo certifica que navegamos por una página segura, ya que su propietario está identificado.<br/>
Sabrás que te encuentras en un sitio seguro si en tu navegador (Google Chrome, Firefox, Safari, Internet Explorer) vez un candado al lado de la dirección del sitio web. De lo contrario, lo normal es que observes un mensaje que indique que el sitio “No es seguro”.<br/>
Además, las webs seguras comienzan con la siguiente estructura: <strong>https://</strong> (clica sobre la dirección para que se muestre su contenido completo), cuya s es sinónimo de seguridad. Nada impide que navegues por páginas sin certificado SSL, pero salvo que el sitio sea de absoluta confianza, no compartas con ellos ningún tipo de dato, ni correo ni contraseña, ya que podrías acabar siendo víctima de un ciberataque.')

general10 = General.new(:article_id => '1',
                       :titulo => 'Descargar documentos y programas sólo desde sitios de confianza',
                       :informacion => 'Cada vez que instalamos un nuevo software, abrimos una puerta a determinadas secciones que podrían comprometer la seguridad de nuestro equipo.<br/>
Del mismo modo, cada vez que abrimos y ejecutamos un archivo, concedemos determinados permisos que podrían ser aprovechados para ejecutar un ataque.<br/>
Descargar desde fuentes de confianza, como la web o tienda oficial de descarga o desde un proveedor que ya conocemos es una importante medida para evitar ciberataques.')

general11 = General.new(:article_id => '1',
                       :titulo => 'Utilizar contraseñas seguras, también en tus dispositivos',
                       :informacion => 'Utiliza contraseñas seguras: que incluyan ocho dígitos o más, tanto mayúsculas como minúsculas y números. Si el sitio en el que te registras lo permite, agrega también un símbolo como un punto, una interrogación o una exclamación.<br/>
Si lo que quieres es proteger un dispositivo como tu ordenador o Smartphone, introduce siempre contraseña o acceso mediante huella, lector de iris o similares.')

general12 = General.new(:article_id => '1',
                       :titulo => 'Desconfiar siempre que sea posible',
                       :informacion => 'El Phishing es uno de los tipos de ciberataques más comunes y consiste en el intento de suplantación de identidad por parte de un impostor, tratando de obtener nuestra confianza e información confidencial como acceso a un documento o a nuestras contraseñas.<br/>
Para evitar este tipo de ataque, recomendamos <strong>desconfiar de cualquier mensaje,</strong> aunque sea de un emisor que consideramos de confianza como nuestro banco o una web a la que ya estamos suscritos como Amazon, Netflix o similar.<br/>
Podría ser un imitador que trata de robarnos nuestros datos. Jamás compartas datos con ellos y si necesitas tomar alguna medida, hazlo sólo por canales oficiales como su web, su app o llamada telefónica.')

general13 = General.new(:article_id => '1',
                       :titulo => 'Nunca compartas tus claves de acceso',
                       :informacion => 'Nunca es nunca. Jamás compartas el acceso a tus cuentas, ni siquiera con un conocido. <strong>La combinación de correo + contraseña es de uso exclusivo personal</strong>, por lo que ceder tus claves a un tercero, sobre todo si es desconocido, puede poner en riesgo lo que guardas tras esa cuenta, pero también lo que guardas en otras plataformas donde también usas las mismas claves de acceso.')

general14 = General.new(:article_id => '1',
                       :titulo => 'Activa la verificación en dos pasos',
                       :informacion => 'La verificación en dos pasos es un paso que obliga a aprobar el <strong>acceso mediante un segundo método</strong>, normalmente más allá del correo y contraseña. Por ejemplo, enviando un sms al número de teléfono que notificaste cuando te registraste o mediante el envío de una notificación a la app.')

general15 = General.new(:article_id => '1',
                       :titulo => 'Apóyate en reseñas y opiniones de terceros',
                       :informacion => 'Cuando vayas a comprar o a realizar algún tipo de trámite en Internet que dependa de un sitio desconocido, apóyate en la presencia de reseñas y certificados. También puedes buscar opiniones del sitio web introduciendo una sencilla búsqueda en Google incluyendo el nombre del lugar y la palabra opiniones.')

general16 = General.new(:article_id => '1',
                       :titulo => 'No aceptes a desconocidos en RRSS ni en otros medios',
                       :informacion => 'Si recibes una solicitud de amistad o contacto a través de Redes Sociales o mediante otro medio, desconfía. Especialmente en lugares como Facebook o Instagram donde la información es más personal. Se puede tratar de suplantación de identidad o de una personalidad falsa tratando de atacar.')

general17 = General.new(:article_id => '1',
                       :titulo => 'Comparte información y archivos solo con gente y por canales de confianza',
                       :informacion => 'Actualmente existen decenas de herramientas que te permiten compartir archivos con tus amigos, familiares y conocidos.<br/>
Utiliza <strong>herramientas comunes y seguras</strong> como tu correo electrónico, Google Drive o Sharepoint. Incluso puedes compartir archivos directamente con tus contactos a través de Facebook, Whatsapp, Telegram.<br/>
Evita subir archivos a webs desconocidas, sobre todo si se trata de información confidencial, que no te gustaría perder o que acabe en manos desconocidas.')

general18 = General.new(:article_id => '1',
                       :titulo => 'VPN para empleados fuera de la oficina',
                       :informacion => 'Se trata de una Conexión Privada Virtual y es un método idóneo para proteger nuestra red interna de ciberataques aun cuando necesitamos realizar conexiones desde su exterior.<br/>
Una VPN establece métodos de conexión segura con el interior, simulando y asimilando la conexión de nuestros empleados como si se encontraran en su interior. De este modo, podemos mantener las características de la prevención perimetral aun cuando parte de nuestro equipo se encuentra fuera.')

general19 = General.new(:article_id => '1',
                       :titulo => 'Control y monitorización de la Red y del empleado',
                       :informacion => 'Aplicar herramientas con las que monitorizar la red de la compañía te permitirá conocer en todo momento el movimiento de la documentación a través de los flujos naturales de la compañía. En caso de que se produzca algún movimiento extraño o alguna acción maliciosa, será fácil de detectar.<br/>
Poseer el <strong>control absoluto de tu red te permitirá tener su control</strong> y todo lo que pasa dentro de ella. Del mismo modo, evitar compartir el acceso a usuarios externos, generando redes paralelas para invitados.')

general20 = General.new(:article_id => '1',
                       :titulo => 'Uso únicamente de herramientas reconocidas por la empresa',
                       :informacion => 'Establece <strong>métodos de bloqueo</strong> de instalación de nuevas aplicaciones o programas. De este modo permitirás que los empleados realicen su actividad únicamente con las herramientas necesarias.<br/>
Si deseas evitar ciberataques, impide la instalación de herramientas extrañas, ya que como te indicamos más arriba, la instalación y uso de software desconocido por la empresa estaría poniendo en riesgo la seguridad del archivo y de sus documentos.')

general21 = General.new(:article_id => '1',
                       :titulo => 'Establecer Firewall para evitar la propagación',
                       :informacion => 'Una práctica común en ciberseguridad es segmentar la red interna para que, en caso de ataque, sea más fácil establecer barreras que impidan su propagación.<br/>
Un <strong>firewall</strong> permite aislar estos fragmentos de la red interna, <strong>protegiendo nuestra información</strong> y el control de los dispositivos en caso de ciberataque.')

general22 = General.new(:article_id => '4',
                       :titulo => 'Usar contraseñas fuertes',
                       :informacion => 'Un paso fundamental para proteger la seguridad informática en nuestros hogares es utilizar <strong>contraseñas que sean fuertes y complejas.</strong> Esto aplica a todo tipo de sistemas que utilizamos, dispositivos, claves para acceder a plataformas, etc.<br/>
Una clave fuerte debe contener letras (mayúsculas y minúsculas), números y símbolos adicionales. Todo ello de forma aleatoria y no utilizarla en ningún otro lugar para extremar así las precauciones.<br/>
Además, como punto adicional conviene habilitar la <strong>autenticación de dos factores</strong> siempre que esté disponible. De esta forma lograremos una barrera extra de seguridad para protegernos en la red.')

general23 = General.new(:article_id => '4',
                       :titulo => 'Separar lo laboral de lo personal',
                       :informacion => 'Como decimos, hoy en día muchos usuarios utilizan su red doméstica para trabajar. Esto significa que van a conectarse a sistemas de la empresa o van a utilizar determinadas herramientas del trabajo.<br/>
Nuestro consejo es <strong>separar lo laboral de lo personal</strong> a nivel de dispositivos. Es decir, contar con un equipo exclusivo para el trabajo y otro para el uso personal. De esta forma reduciremos el riesgo y protegeremos además la seguridad de nuestra red doméstica.')

general24 = General.new(:article_id => '4',
                       :titulo => 'Mantener el router en buen estado',
                       :informacion => 'Sin duda el <strong>router</strong> juega un papel fundamental en todo esto. Es el aparato que nos permite conectarnos a la red, que permite gestionar todas las solicitudes de conexiones. Debemos prestar atención a todo lo que rodea este equipo y mantenerlo en buen estado.<br/>
<strong>Actualizar el firmware</strong>, por ejemplo, es esencial. También evitar mantener la configuración que viene de fábrica, proteger los puntos de seguridad que tengamos disponibles, etc.')

general25 = General.new(:article_id => '4',
                       :titulo => 'Herramientas de seguridad',
                       :informacion => 'No pueden faltar en todos los equipos contar con herramientas de seguridad. <strong>Un buen antivirus</strong> va a evitar la entrada de malware que comprometa el buen funcionamiento. Son muchos los ataques y tipos de software malicioso que podemos recibir, pero también son muchas las opciones para protegernos.<br/>
Esto es algo que debemos aplicarlo sin importar el sistema operativo que estemos utilizando o el tipo de dispositivo. Además, también podemos contar con la posibilidad de utilizar un firewall para nuestra red doméstica.')

general26 = General.new(:article_id => '4',
                       :titulo => 'Todo actualizado correctamente',
                       :informacion => 'Son muchas las ocasiones en las que podemos sufrir vulnerabilidades. Todo tipo de programa o sistema operativo puede tener fallos de seguridad que podrían ser explotados por piratas informáticos.<br/>
Es vital que contemos con todas las <strong>actualizaciones</strong> necesarias para protegernos. Por un lado evitaremos que esos fallos sean explotados, pero también mejoraremos el rendimiento de los equipos.')

general27 = General.new(:article_id => '4',
                       :titulo => 'Asegurar los dispositivos IoT',
                       :informacion => 'El <strong>Internet de las Cosas</strong> está cada vez más presente en nuestros hogares. Hablamos de dispositivos como televisores, bombillas inteligentes, reproductores de vídeo… Si queremos proteger nuestra red, algo fundamental es que este tipo de equipos estén seguros. Son muy utilizados por los piratas informáticos para acceder a las redes domésticas.<br/>
Es esencial que los cifremos con contraseñas y que los tengamos actualizados, así como configurar diferentes aspectos de seguridad que puedan tener. Solo así estaremos protegidos y evitaremos que puedan ser la puerta de entrada de amenazas.')

general28 = General.new(:article_id => '4',
                       :titulo => 'Proteger las redes inalámbricas',
                       :informacion => 'Otro punto esencial para proteger la seguridad informática en nuestros hogares es tener seguras las <strong>redes inalámbricas.</strong> El Wi-Fi es muy utilizado por todo tipo de dispositivos. Sin embargo eso también hace que pueda ser la entrada de diferentes tipos de ataques si no lo tenemos correctamente protegido.<br/>
Es esencial que usemos una contraseña fuerte en el Wi-Fi, así como un cifrado actual, evitando aquellos obsoletos como puede ser el WEP. También cambiar el nombre que viene de fábrica.')

general29 = General.new(:article_id => '4',
                       :titulo => 'Optar por una VPN',
                       :informacion => 'Si vamos a utilizar la <strong>red doméstica</strong> para acceder a servicios del trabajo, de una empresa, una buena idea es utilizar una VPN. Son muchas las opciones que tenemos a nuestra disposición y para el trabajo en remoto puede ser necesario, además de mejorar así la seguridad.<br/>
Una <strong>VPN</strong>, entre otras cosas, cifra nuestra conexión. Los datos viajan como si fueran en un túnel, evitando así que posibles intrusos puedan interceptar la información. Pero también nos permite conectarnos de forma remota como si estuviéramos en otra ubicación física.<br/>
En definitiva, estos son algunos consejos esenciales que debemos aplicar para proteger correctamente nuestras redes domésticas y no correr ningún riesgo de seguridad.')

general30 = General.new(:article_id => '4',
                       :titulo => 'Cambia tu clave WiFi',
                       :informacion => 'Parece algo básico pero, mucha gente no considera necesario cambiar la contraseña del WiFi de casa. La clave que genera nuestro router debe ser tan invulnerable como la privacidad de nuestra casa. <br/>
Puede que quien sepa conectarse a ella de manera ilícita tenga los conocimientos suficientes como para acceder a todos los dispositivos conectados, lo que supondría un peligro y un riesgo enorme para nuestra privacidad.<br/>
<strong>Las claves que generan por defecto las operadoras pueden ser hackeadas y expuestas.</strong> Una persona solo tiene que intentar conectarse a tu WiFi y ver por el nombre qué compañía telefónica eres y mediante aplicaciones especializadas, lo único que tendrán que hacer es calcar el algoritmo matemático que utiliza tu compañía en concreto para generar claves y empezar a generar contraseñas hasta dar con la de tu hogar.<br/>
Por eso es importante también cambiar el nombre, para no proporcionar ni una pista de nuestra red, aunque, si lo que quieres es asegurarte de que nadie acceda a tu red, siempre puedes <strong>ocultar tu SSID</strong> y meterla manualmente en tus dispositivos.')

general31 = General.new(:article_id => '4',
                       :titulo => 'Si tu PC tiene webcam, tápala',
                       :informacion => 'Es posible que hayas escuchado hablar en más de una ocasión de lo importante que es <strong>tener cubierta la webcam de nuestros dispositivos para evitar hackeos</strong> y que funcionen sin nuestro permiso. Y aunque puede que suene a leyenda urbana, lo cierto es que esta práctica es posible y tiene un nombre: <strong>camfecting.</strong><br/>
Lo más aterrador es saber lo sencillo que resulta invadir nuestra intimidad. Tan solo necesitas una herramienta de administración remota (RAT) para tomar el control a distancia de la cámara. ¡Apúntate estos trucos de ciberseguridad en el hogar y conserva tu privacidad!')

general32 = General.new(:article_id => '4',
                       :titulo => 'Desactiva WPS',
                       :informacion => 'Una de las opciones que ofrece nuestro router y que la mayoría de la gente desconoce es el <strong>WPS</strong>. También conocido como WiFi Protected Setup, es el encargado de facilitar la creación de redes WLAN, ofreciendo las credenciales de acceso necesarias para conectar dispositivos a la red y ahorrarnos así el engorro que supone meter la clave kilométrica del WiFi.<br/>
Aunque puede parecer un estándar que solo ofrece ventajas, lo cierto es que cuenta con una vulnerabilidad en una de las formas de autentificación: en el método PIN.<br/>
El método PIN consiste en acordar una clave numérica entre el router y el usuario que se introduce al conectar el dispositivo. El problema es que, con las herramientas necesarias, cualquier persona podría acceder a nuestra red mediante el WPS.<br/>
Para <strong>desactivarlo</strong> solo tienes que buscar el botón <strong>WPS de tu router y comprobar si está o no activo</strong>. Si está encendido, es tan sencillo como darle al botón ¡y listo!')

general33 = General.new(:article_id => '7',
                        :titulo => 'Instalar únicamente las aplicaciones necesarias',
                        :informacion => 'Un exceso de aplicaciones ralentiza el funcionamiento del dispositivo. Además con esta medida se minimiza el riesgo de exposición. Antes de instalar una aplicación es importante <strong>leer los permisos y condiciones, así como comprobar su reputación.</strong>')

general34 = General.new(:article_id => '7',
                        :titulo => 'Jailbreak o Root',
                        :informacion => 'Este concepto permite dar privilegios de administración del dispositivo a aplicaciones para saltarse la jaula de protección que tienen por defecto todos los sistemas operativos móviles.<br/>
<strong>Permitirlo sólo cuando sea absolutamente necesario</strong> para el funcionamiento de una aplicación concreta imprescindible, ya que en caso de que alguien consiga instalar un «bicho» en tu teléfono, éste tendrá el perfil root y podrá hacer de todo por ti.')

general35 = General.new(:article_id => '7',
                        :titulo => 'Protección antivirus',
                        :informacion => 'Disponer de una <strong>protección antivirus</strong> para dispositivos móviles como medida de seguridad extra contra el malware. Existen múltiples soluciones. Con demasiadas aplicaciones móviles hay más riesgo de que alguna sea vulnerable y permita a un hacker controlar el dispositivo.')

general36 = General.new(:article_id => '7',
                        :titulo => 'Proteger el acceso al dispositivo',
                        :informacion => 'La medida que se ha de tomar en materia de seguridad en dispositivos móviles es establecer medidas de autenticación del usuario. El bloqueo de pantalla por medio de <strong>contraseña o las autenticaciones biométricas</strong> hacen que sea más difícil acceder al dispositivo y sus datos.<br/>
En caso de que no tengas esta opción, encuentra una contraseña robusta como: <strong>“micontraseñaeslamaslargayseguradelmundoporqueestoyescribiendosinsentido”.</strong><br/>
Además, también te recomiendo que si gestionas información y datos importantes, como aplicaciones gubernamentales, bancos, etc., es mejor utilizar una huella para esto y otra huella diferente para los demás servicios, recuerda que cada dedo de tu mano tiene una huella distinta.')

general37 = General.new(:article_id => '7',
                        :titulo => 'Cifrar los datos',
                        :informacion => 'Ya que nos hemos referido a los datos, su cifrado es fundamental para proteger tanto la información corporativa almacenada en el dispositivo como la que se envía, en este caso también <strong>se aconseja contar con una VPN</strong>.')

general38 = General.new(:article_id => '7',
                        :titulo => 'Actualizar el sistema operativo',
                        :informacion => 'Es muy importante disponer de la última versión del sistema operativo y de los programas y aplicaciones instalados en el dispositivo. Las actualizaciones deben llevarse a cabo regularmente.')

general39 = General.new(:article_id => '7',
                        :titulo => 'No conectarse a redes wifi públicas',
                        :informacion => 'Estas conexiones pueden suponer un riesgo para la seguridad en dispositivos móviles, ya que son fácilmente hackeadas a través de ataques Man-in-the-Middle. Una buena forma de evitarlo es apagando la función de conexión automática.')

general40 = General.new(:article_id => '7',
                        :titulo => 'Descargar aplicaciones de fuentes fiables',
                        :informacion => 'Cada vez es mayor el número de apps disponibles. Si estamos interesados en alguna, lo mejor es descargarlas de tiendas oficiales. No hacerlo puede poner en peligro la información e integridad del dispositivo.')

general41 = General.new(:article_id => '7',
                        :titulo => 'Realizar copias de seguridad',
                        :informacion => 'Los ciberdelincuentes continúan sirviéndose del ransomware para lograr sus objetivos. Por ello, conviene hacer un <strong>backup</strong> de los datos almacenados, algo que también será de ayuda en casos de robo o pérdida del dispositivo.')

general42 = General.new(:article_id => '7',
                        :titulo => 'Habilitar el acceso y el borrado de datos en remoto',
                        :informacion => 'Asimismo, en situaciones en las que se sufra el robo o la pérdida del dispositivo hay que disponer de herramientas que faciliten bloquearlo y borrar la información corporativa que contenga.')

general43 = General.new(:article_id => '7',
                        :titulo => 'Prevenir los ataques de mobile phishing',
                        :informacion => 'El phishing consiste en el envío de un correo electrónico, una llamada telefónica o un mensaje SMS con el que los emisores intentan robar los datos del receptor. Es preciso conocer los ciberataques más frecuentes para reforzar la seguridad en dispositivos móviles.')

general44 = General.new(:article_id => '7',
                        :titulo => 'Visitar páginas web seguras',
                        :informacion => 'Hay que asegurarse de que un sitio web esté protegido con un certificado de seguridad SSL. Comprobar que se ha habilitado el protocolo https antes del dominio nos dará más confianza.')

general45 = General.new(:article_id => '7',
                        :titulo => 'Realizar auditorías de seguridad',
                        :informacion => 'Por último, un chequeo periódico facilitará detectar vulnerabilidades y agujeros de seguridad en dispositivos móviles.')

general46 = General.new(:article_id => '7',
                        :titulo => 'No aceptes ninguna relación de confianza a través de USB',
                        :informacion => 'Aquí me gustaría destacar también, que tampoco es recomendable conectar el dispositivo a  puertos USB desconocidos. Y que si no eres un desarrollador de apps, deberías desactivar las opciones de desarrollador/debug.')

general1.save
general2.save
general3.save
general4.save
general5.save
general6.save
general7.save
general8.save
general9.save
general10.save
general11.save
general12.save
general13.save
general14.save
general15.save
general16.save
general17.save
general18.save
general19.save
general20.save
general21.save
general22.save
general23.save
general24.save
general25.save
general26.save
general27.save
general28.save
general29.save
general30.save
general31.save
general32.save
general33.save
general34.save
general35.save
general36.save
general37.save
general38.save
general39.save
general40.save
general41.save
general42.save
general43.save
general44.save
general45.save
general46.save

# SEEDS QUESTIONS
question1 = Question.new(:article_id => '2',
                         :pregunta => '¿Cómo actuar después de un ciberataque?',
                         :respuesta => '<strong>Poner en marcha un plan de respuesta</strong>
El plan de respuesta es un documento en el que se recogen las acciones a realizar en caso de haber sido atacado. Vamos por pasos.<br/>
El <strong>primer paso</strong> de todos será realizar una <strong>auditoría e identificación de la amenaza</strong>. Valorar si se trata de una amenaza real y el nivel de gravedad que puede representar para la organización.<br/>
La <strong>segunda acción</strong> recogida dentro del plan de respuesta es la <strong>comunicación y notificación</strong>, es decir, una vez detectado el incidente, el plan debe recoger el procedimiento para notificar el problema a todas las personas implicadas en el equipo de respuesta de manera inmediata. Para ello, es importante que dispongas de un equipo de respuesta perfectamente organizado, con responsabilidades bien definidas y disponible las 24h del día, 7 días a la semana.<br/>
El <strong>tercer factor</strong> a tener en cuenta es definir <strong>cómo será la comunicación externa y cómo se afrontará esa crisis de forma pública</strong>, tanto en los medios de comunicación como en redes sociales.<br/>
La <strong>cuarta acción</strong> a <strong>determinar será la metodología y tecnología</strong> que se emplea para eliminar la amenaza y reducir su impacto en la empresa. Para ello, deberás coordinar a todo el equipo encargado de hacer frente al ataque, para poder desactivar el “estado de alarma” lo antes posible y evitar una gran catástrofe. Toma nota de los departamentos que deberás movilizar:<br/>
<strong>1. Departamento de tecnología:</strong> Este será el equipo encargado de hacer frente al ataque o amenaza, intentando devolver el sistema informático a la normalidad lo antes posible.
<strong>2. Departamento legal:</strong> Este departamento será el encargado de notificar a la AEPD de la sustracción de datos y los usuarios afectados. También deberá evaluar las consecuencias legales y encontrar las fórmulas para resolverlas.
<strong>3. Gabinete gestión de crisis:</strong> Es el encargado de iniciar las acciones necesarias para disminuir el daño a la marca y minimizar la crisis de reputación.<br/>
Por último, el plan de respuesta debe <strong>contemplar un apartado de evaluación final y desactivación del plan.</strong> Una vez que se haya desactivado el virus, el equipo de respuesta debe evaluar de nuevo la situación y decidir si ha llegado el momento de desactivar el “estado de alarma” generado.<br/>
Además, será el momento de actualizar el plan de respuesta teniendo en cuenta las vulnerabilidades o brechas de seguridad por las cuales ha podido entrar el virus y encontrar la solución de seguridad adecuada para solventarlas y evitar nuevos ataques.')

question2 = Question.new(:article_id => '2',
                         :pregunta => '¿Quién está detrás de un ataque cibernético?',
                         :respuesta => 'Un ataque cibernético puede ser llevado a cabo tanto por distintos actores, que se mueven por las motivaciones más diversas:<br/>
<strong>- Personas</strong> – los denominados hackers – que actúan de forma independiente, generalmente motivados por un beneficio económico.
<strong>- Grupos organizados</strong>, con distintas finalidades, tanto criminales (terroristas), como ideológicas (activistas).
<strong>- Gobiernos</strong>, en ataques que se enmarcan dentro de una estrategia de ciberguerra, dirigidos tanto a sistemas informáticos de otros gobiernos o a importantes activos públicos o privados.
<strong>- Empresas privadas</strong>, en acciones de ciberespionaje.')

question3 = Question.new(:article_id => '2',
                         :pregunta => '¿Qué hacer frente a un ataque cibernético?',
                         :respuesta => 'En el caso de que seamos víctimas de un ataque cibernético, nuestra respuesta deberá ser rápida y eficaz. Las actuaciones dependen del tipo de ataque en concreto, pero en general, deberemos de asegurarnos de que:<br/>
<strong>1. Contengamos el ataque</strong>, por ejemplo, aislando los dispositivos infectados.
<strong>2. Eliminamos las posibles causas</strong>, para asegurarnos de que el ataque no se vuelva a reproducir.
<strong>3. Determinamos el alcance</strong> del ataque, teniendo en cuenta tanto los equipos y dispositivos, como la posible información que haya sido sustraída.
<strong>4. Aseguramos la continuidad del servicio</strong>, para limitar lo más posible las consecuencia sobre nuestro negocio.<br/>
En todo caso, nuestra respuesta frente a un ataque tiene que articularse a lo largo de tres niveles:<br/>
<strong>- Técnico:</strong> para restablecer el servicio desde el punto de vista operativo,
<strong>- Legal:</strong> para evaluar las posibles implicaciones legales frente a clientes, proveedores o las necesidades de notificación a las autoridades públicas.
<strong>- Gestión de crisis:</strong> para llevar a cabo una comunicación eficaz de lo ocurrido frente a clientes y medios de comunicación y reducir el impacto sobre la reputación de la empresa.')

question4 = Question.new(:article_id => '2',
                         :pregunta => '¿Qué hacer ante un ciberataque?',
                         :respuesta => 'Desde la entrada en vigor del Reglamento General de Protección de Datos (RGPD) las empresas están obligadas a notificar cualquier brecha de seguridad a la <strong>Agencia Española de Protección de Datos (AEPD)</strong> en un plazo máximo de 72 horas. En esa notificación la empresa debe informar sobre la naturaleza del incidente, sus consecuencias, las medidas correctoras propuestas y la identidad del responsable, encargado o delegado de protección de datos.<br/>
Por otro lado, también se puede interponer una denuncia ante los Cuerpos y Fuerzas de Seguridad del Estado. En concreto, habría que dirigirse al <strong>Grupo de Delitos Telemáticos de la Guardia Civil</strong> o a la <strong>Brigada de Investigación Tecnológica de la Policía.</strong>')

question5 = Question.new(:article_id => '2',
                         :pregunta => 'Estoy trabajando desde casa. ¿Cómo me protejo?',
                         :respuesta => 'Para trabajar de forma segura desde casa, los primero que deberás hacer es proteger todos los equipos con un buen endpoint (antivirus) preparado para combatir ransomware.<br/>
También recomendamos implantar un sistema antiphishing para evitar ataques de phishing a través del correo electrónico, la principal vía de entrada de este tipo de ataques en el teletrabajo.<br/>
Si puedes y tu empresa está preparada para ello, puedes usar conexiones VPN para acceder a la información de la empresa.')

question6 = Question.new(:article_id => '2',
                         :pregunta => '¿Cómo sé si una web es segura o no?',
                         :respuesta => 'Mira bien el dominio (que no haya trampas del estilo <strong>m0vistar.com/netfix.com</strong> o spotify.dominioinventado.com (spotify.musicaonline.com).<br/>
Que la web tenga un <strong>certificado HTTPS</strong> y que éste sea legítimo (todas las aplicaciones o webs deberían tenerlo, al menos las reconocidas) y sino, desconfiar o tener muy claro que se trata de una web reputada por su cliente/colaborador.<br/>
Aplicar sentido común, si salen banners diciendo que te regalan iphones o smartphones (por decir algo) desconfía.<br/>
Siguiendo con el sentido común, en caso de llegar a una web no reputada no clicar en aquellos enlaces que intenten atraer tu atención de manera muy destacada y mucho menos descargar lo que pueda haber en estos enlaces.')

question7 = Question.new(:article_id => '2',
                         :pregunta => 'Uno de mis empleados ha sido atacado por phishing ¿qué hago?',
                         :respuesta => 'En primer lugar reportarlo al personal de IT o Ciberseguridad. Como segundo paso, en caso que el equipo se haya infectado, lo primero que hay que hacer es aislarlo de la red y de Internet para que no se propague a otros equipos conectados en la misma. Además, en caso de que estuviera conectado por VPN tendría acceso a equipos de la empresa que podría infectar, y sino, en caso de trabajar con plataformas cloud, podría infectar archivos.')

question8 = Question.new(:article_id => '2',
                         :pregunta => '¿Cómo sé que un archivo no es seguro o no debo abrirlo?',
                         :respuesta => 'Tienes varias opciones:<br/>
- Analizarlo con un <strong>antivirus</strong> antes de abrirlo.
- <strong>Verificar que la fuente</strong> de donde los has recibido o descargado es legítima.
- Mirar la <strong>extensión del archivo.</strong> Desconfiar sobre todo de los .exe a no ser que seas muy consciente que quieres instalar algo en tu equipo.
- En caso de duda, abrirlo previamente en una <strong>máquina virtual</strong> (esto ya es algo más técnico). Tenemos un post explicando cómo funciona en W10 la sandbox (máquina virtual aislada de la nativa) ya que es una funcionalidad relativamente nueva incorporada dentro de Windows.')

question9 = Question.new(:article_id => '2',
                         :pregunta => '¿Es seguro que mis empleados se conecten a su red WI-FI para abrir las herramientas y plataformas de la empresa?',
                         :respuesta => 'Sí, no hay problema en conectarse a su propia red WI-FI, siempre que sea la suya y no la del vecino (Bromas a parte). Para que esta WI-FI sea segura, debería tener una contraseña compleja y bajo el estándar WPA2 (normalmente todas las compañías ya lo aplican por defecto).<br/>
Es importante también cambiar la contraseña por defecto del router. Existe un famoso ataque que aprovecha una base de datos filtrada de los fabricantes mediante la cual se puede conocer la contraseña de fábrica de muchos routers. Razón por la cual se debería personalizar esta contraseña (y que no incluya partes del nombre de la propia WI-FI).<br/>
Para mayor seguridad sería ideal usar una conexión VPN para realizar la salida a Internet y el acceso a plataformas mientras se esté trabajando. Esto ayudará a estar dentro del paraguas de seguridad de la empresa con las medidas de seguridad de red que tenga implementadas.')

question10 = Question.new(:article_id => '5',
                         :pregunta => '¿Cómo mejorar la ciberseguridad en casa?',
                         :respuesta => 'Una forma sencilla de mejorar la <strong>seguridad online</strong> del hogar es utilizando <strong>contraseñas más seguras.</strong> Además, existe una serie de <strong>medidas de ciberseguridad automatizables</strong> que podemos utilizar para que la protección sea superior:<br/>
1. Tener activado un buen <strong>cortafuegos.</strong>
2. Tener el ordenador configurado contra el <strong>spam.</strong>
3. Contar con un bloqueador de <strong>pop-ups.</strong>
4. Instalar programas <strong>antifraude.</strong>
5. Actualizar el <strong>sistema operativo</strong> periódicamente.')

question11 = Question.new(:article_id => '5',
                         :pregunta => '¿Cómo proteger el ordenador de casa contra ataques online, virus y otros riesgos de Internet?',
                         :respuesta => 'Existen muchas otras medidas que requieren algo más de tiempo por ser de aplicación manual. Estas son las llamadas <strong>medidas de ciberseguridad no automatizables</strong>. Por ejemplo:<br/>
-- Realizar <strong>particiones del disco duro.</strong>
-- Eliminar <strong>archivos temporales.</strong>
-- Hacer <strong>copias de seguridad</strong> habitualmente.
-- Reducir permisos de aplicaciones, plug-ins y add-ons.
-- Utilizar un <strong>certificado digital</strong> con firma electrónica.
-- Recurrir al <strong>D.N.I. electrónico.</strong>
-- Como ya se ha mencionado, mejorar la <strong>contraseña.</strong>')

question12 = Question.new(:article_id => '5',
                         :pregunta => '¿Por qué la gente no utiliza medidas de ciberseguridad?',
                         :respuesta => 'Las principales razones por las que los españoles no protegen sus ordenadores y dispositivos conectados a Internet son:<br/>
1. No percibe la necesidad o no le interesa.
2. Desconoce para qué sirve la medida.
3. No tiene motivación aparente.
4. Cree que entorpece el funcionamiento del ordenador.
5. No le genera confianza o seguridad.
6. Piensa que no protege lo suficiente.')

question13 = Question.new(:article_id => '5',
                         :pregunta => '¿Cómo mantener la ciberseguridad personal?',
                         :respuesta => '1. Evita en la medida de lo posible <strong>comprar dispositivos de 2º mano</strong>, ya que podrían estar modificados. Además, es importante que te dirijas siempre a tiendas oficiales o de confianza.<br/>
2. En cuanto al aparato en sí, debes <strong>modificar las credenciales</strong> y hacerlas más seguras. Cambiando la contraseña predeterminada y los nombres de acceso.<br/>
3. Realizar <strong>copias de seguridad automáticas</strong>. Cualquier ataque tendrá menos impacto en la familia si conservas copias de los datos almacenados en vuestros dispositivos.<br/>
4. Utilizar <strong>cubre webcams</strong> antiespías. Cada vez son más accesibles los malwares que te permiten espiar a través de la cámara y altavoz a otra persona. Ya no hace falta ser un hacker para conseguirlos, se pùeden compran en la deep web o ‘mercado negro’.<br/>
5. Ayudar a tus hijos a <strong>configurar la privacidad</strong> de sus <strong>perfiles en redes sociales.</strong><br/>
6. Educar a tus hijos para que no publiquen información sensible de la familia, abran correos de remitentes ‘dudosos’, compartan su ubicación en redes, instalen apps en el ordenador que solicitan acceso a los datos personales y, en definitiva, acompañar y <strong>supervisar su actividad digital</strong> es algo <strong>imprescindible</strong>, ya que cada vez más son ellos el foco de los ciberdelincuentes y depredadores sexuales en internet.<br/>
7. Si además de todo esto cuentas con ayuda como nuestro <strong>servicio Ciberseguridad Hogar Digital</strong> o nuestro <strong>Plan de Protección Total</strong> mantendrás lo más protegida posible la ciberseguridad en el entorno conectado de tu hogar con el mínimo esfuerzo y máxima efectividad.')

question14 = Question.new(:article_id => '5',
                         :pregunta => '¿Quién está detrás de un ataque cibernético?',
                         :respuesta => 'Un ataque cibernético puede ser llevado a cabo tanto por distintos actores, que se mueven por las motivaciones más diversas:<br/>
<strong>- Personas</strong> – los denominados hackers – que actúan de forma independiente, generalmente motivados por un beneficio económico.
<strong>- Grupos organizados</strong>, con distintas finalidades, tanto criminales (terroristas), como ideológicas (activistas).
<strong>- Gobiernos</strong>, en ataques que se enmarcan dentro de una estrategia de ciberguerra, dirigidos tanto a sistemas informáticos de otros gobiernos o a importantes activos públicos o privados.
<strong>- Empresas privadas</strong>, en acciones de ciberespionaje.')

question15 = Question.new(:article_id => '5',
                         :pregunta => '¿Qué hacer ante un ciberataque?',
                         :respuesta => 'Desde la entrada en vigor del Reglamento General de Protección de Datos (RGPD) las empresas están obligadas a notificar cualquier brecha de seguridad a la <strong>Agencia Española de Protección de Datos (AEPD)</strong> en un plazo máximo de 72 horas. En esa notificación la empresa debe informar sobre la naturaleza del incidente, sus consecuencias, las medidas correctoras propuestas y la identidad del responsable, encargado o delegado de protección de datos.<br/>
Por otro lado, también se puede interponer una denuncia ante los Cuerpos y Fuerzas de Seguridad del Estado. En concreto, habría que dirigirse al <strong>Grupo de Delitos Telemáticos de la Guardia Civil</strong> o a la <strong>Brigada de Investigación Tecnológica de la Policía.</strong>')

question16 = Question.new(:article_id => '5',
                         :pregunta => '¿Cómo sé si una web es segura o no?',
                         :respuesta => 'La web tenga un <strong>certificado HTTPS</strong> y que éste sea legítimo (todas las aplicaciones o webs deberían tenerlo, al menos las reconocidas) y sino, desconfiar o tener muy claro que se trata de una web reputada por su cliente/colaborador.<br/>
Aplicar sentido común, si salen banners diciendo que te regalan iphones o smartphones (por decir algo) desconfía. Siguiendo con el sentido común, en caso de llegar a una web no reputada no clicar en aquellos enlaces que intenten atraer tu atención de manera muy destacada y mucho menos descargar lo que pueda haber en estos enlaces.')

question17 = Question.new(:article_id => '8',
                         :pregunta => '¿Cómo crear una contraseña segura?',
                         :respuesta => 'Muchas veces creamos contraseñas que son las iniciales de nuestro nombre y apellidos, la fecha de nacimiento, la matrícula del coche, etc. y son cosas que <strong>se pueden adivinar fácilmente.</strong> Otro fallo es utilizar <strong>la misma contraseña para todo</strong>, ya que si alguien la descubre, probará usarla para otros sitios, como PayPal por ejemplo. <strong>Lo mejor es combinar letras, números y símbolos y cambiarla de vez en cuando.</strong> Para organizarte mejor <strong>puedes utilizar un gestor de contraseñas.</strong>')

question18 = Question.new(:article_id => '8',
                         :pregunta => '¿Cómo saber si un email es peligroso?',
                         :respuesta => 'Debes evitar abrir correos electrónicos en <strong>idiomas extraños o remitente desconocido</strong> o sus archivos y <strong>nunca des datos o dinero por correo</strong> aunque el remitente sea tu banco.')

question19 = Question.new(:article_id => '8',
                         :pregunta => '¿El spam es peligroso?',
                         :respuesta => 'La mayoría de amenazas provienen de cadenas de spam, por lo que <strong>utiliza filtros antispam</strong> y a ser posible, <strong>ten dos cuentas de correo</strong>, una personal para gente conocida y otra más general.')

question20 = Question.new(:article_id => '8',
                         :pregunta => '¿Cómo comprar con el móvil de forma segura?',
                         :respuesta => 'Lo mejor es <strong>evitar tiendas sospechosas o no conocidas.</strong> Fíjate que tenga la <strong>certificación SSL</strong> (Secure Socket Layer) que garantiza que el sitio es fiable.')

question21 = Question.new(:article_id => '8',
                         :pregunta => '¿Cómo utilizar la banca móvil de forma segura?',
                         :respuesta => 'Asegúrate de que la App que utilizas <strong>es realmente la de tu banco y mantenla actualizada.</strong>')

question22 = Question.new(:article_id => '8',
                         :pregunta => '¿Es peligroso utilizar redes WiFi públicas?',
                         :respuesta => 'Es importante que <strong>no introduzcas contraseñas cuando estés utilizando WiFi pública</strong>, por ejemplo en Facebook o menos aún en tu banco. ¡No inicies sesión en tu banco!')

question23 = Question.new(:article_id => '8',
                          :pregunta => '¿Qué aplicaciones existen de seguridad móvil?',
                          :respuesta => '<strong>Puedes utilizar antivirus</strong> como kaspersky, McAfee y otras herramientes o programas para tener un extra de protección en tu smartphone.')

question1.save
question2.save
question3.save
question4.save
question5.save
question6.save
question7.save
question8.save
question9.save
question10.save
question11.save
question12.save
question13.save
question14.save
question15.save
question16.save
question17.save
question18.save
question19.save
question20.save
question21.save
question22.save
question23.save

# SEEDS ATTACKS
attack1 = Attack.new(:article_id => '3', :nombre => 'Malware')
attack2 = Attack.new(:article_id => '3', :nombre => 'Phishing')
attack3 = Attack.new(:article_id => '3', :nombre => 'Ransomware')
attack4 = Attack.new(:article_id => '3', :nombre => 'Gusano')
attack5 = Attack.new(:article_id => '3', :nombre => 'Virus')
attack6 = Attack.new(:article_id => '3', :nombre => 'Troyano')
attack7 = Attack.new(:article_id => '3', :nombre => 'Denegación de Servicio')
attack8 = Attack.new(:article_id => '3', :nombre => 'Rootkit')
attack9 = Attack.new(:article_id => '3', :nombre => 'Spyware')
attack10 = Attack.new(:article_id => '3', :nombre => 'Adware')
attack11 = Attack.new(:article_id => '3', :nombre => 'Ataques de inyección SQL')
attack12 = Attack.new(:article_id => '3', :nombre => 'Cross-Site Scripting (XSS)')
attack13 = Attack.new(:article_id => '3', :nombre => 'Man in The Middle')
attack14 = Attack.new(:article_id => '3', :nombre => 'Tunelización de DNS')
attack15 = Attack.new(:article_id => '3', :nombre => 'Spear phishing')
attack16 = Attack.new(:article_id => '3', :nombre => 'Whaling')
attack17 = Attack.new(:article_id => '6', :nombre => 'Malware')
attack18 = Attack.new(:article_id => '6', :nombre => 'Phishing')
attack19 = Attack.new(:article_id => '6', :nombre => 'Virus')
attack20 = Attack.new(:article_id => '6', :nombre => 'Troyano')
attack21 = Attack.new(:article_id => '6', :nombre => 'Spyware')
attack22 = Attack.new(:article_id => '6', :nombre => 'Adware')
attack23 = Attack.new(:article_id => '6', :nombre => 'Cross-Site Scripting (XSS)')
attack24 = Attack.new(:article_id => '6', :nombre => 'Man in The Middle')
attack25 = Attack.new(:article_id => '6', :nombre => 'Spear phishing')
attack26 = Attack.new(:article_id => '9', :nombre => 'Malware')
attack27 = Attack.new(:article_id => '9', :nombre => 'Ransomware')
attack28 = Attack.new(:article_id => '9', :nombre => 'Phishing')
attack29 = Attack.new(:article_id => '9', :nombre => 'Gusano')
attack30 = Attack.new(:article_id => '9', :nombre => 'Virus')
attack31 = Attack.new(:article_id => '9', :nombre => 'Troyano')
attack32 = Attack.new(:article_id => '9', :nombre => 'Spyware')
attack33 = Attack.new(:article_id => '9', :nombre => 'Adware')
attack34 = Attack.new(:article_id => '9', :nombre => 'Man in The Middle')

attack1.save
attack2.save
attack3.save
attack4.save
attack5.save
attack6.save
attack7.save
attack8.save
attack9.save
attack10.save
attack11.save
attack12.save
attack13.save
attack14.save
attack15.save
attack16.save
attack17.save
attack18.save
attack19.save
attack20.save
attack21.save
attack22.save
attack23.save
attack24.save
attack25.save
attack26.save
attack27.save
attack28.save
attack29.save
attack30.save
attack31.save
attack32.save
attack33.save
attack34.save

# SEEDS CONTENTS
content1 = Content.new(:attack_id => '1', :titulo => 'Mantener los sistemas actualizados',
                       :informacion => 'Una de las claves para evitar la entrada de malware es mantener los sistemas actualizados. Es cierto que muchos usuarios tienen esto en cuenta y actualizan frecuentemente su ordenador o móvil. El problema es que en otras muchas ocasiones son otros dispositivos los que pueden no ser actualizados correctamente.<br/>
Hablamos principalmente de los dispositivos IoT. Cada vez tenemos más equipos conectados a la red en nuestros hogares y esto también hace que el campo de ataque sea mayor. Los ciberdelincuentes van a tener más opciones para robar información o comprometer nuestros sistemas.')

content2 = Content.new(:attack_id => '2', :titulo => 'Control del correo electrónico',
                       :informacion => 'Si recibe un correo electrónico que le pide información personal o financiera, no responda. Si el mensaje lo invita a acceder a un sitio web a través de un enlace incluido en su contenido, no lo haga. Debe saber que las organizaciones que trabajan seriamente ya están al tanto de este tipo de fraude y por consiguiente, no solicitan información por este medio. Tampoco contactan telefónicamente, ni a través de mensajes SMS o de fax.<br/>
Al mismo tiempo, si le preocupa el estado de la cuenta que posee en la organización que dice haber enviado el correo o que lo ha contactado, comuníquese directamente con ella, recurriendo al número telefónico conocido y provisto por la entidad a través de medios confiables.')

content3 = Content.new(:attack_id => '3', :titulo => 'Actualización del sistema y aplicaciones',
                       :informacion => 'Mantener el sistema operativo actualizado con los últimos parches de seguridad y todas las aplicaciones que tengamos instaladas es el mejor punto de partida. El mencionado WanaCryptor aprovechó una vulnerabilidad en sistemas Windows.')

content4 = Content.new(:attack_id => '4', :titulo => 'Comportamiento seguro',
                       :informacion => 'Los archivos adjuntos y enlaces solo deben abrirse si provienen de una fuente confiable conocida por el usuario. Los correos electrónicos de remitentes desconocidos no deben abrirse, ya que muchos gusanos informáticos se propagan a través del correo electrónico. Las empresas deben realizar cursos de formación de sensibilización con sus empleados para que sean conscientes de los peligros y riesgos en Internet.')

content5 = Content.new(:attack_id => '5', :titulo => 'Instala un software antivirus/malware',
                       :informacion => 'Este consejo puede ser evidente, y lo mencionamos anteriormente. Sin embargo, muchos ordenadores -especialmente los domésticos- no tienen protección anti-virus/malware. Esta protección es un primer paso indispensable para mantener su PC libre de virus.')

content6 = Content.new(:attack_id => '6', :titulo => 'Instalación de software antivirus',
                       :informacion => 'Los programas antivirus protegen los dispositivos de los programas maliciosos que suponen una amenaza para el sistema. Escanea el ordenador para encontrar y eliminar el troyano y proporciona actualizaciones automáticas para garantizar la protección contra los virus más recientes.')

content7 = Content.new(:attack_id => '7', :titulo => 'Detectar el ataque antes de que ocurra',
                       :informacion => 'Existen herramientas para tener un monitoreo continuo y poder analizar nuestro sitio web. De esta forma podremos detectar posibles ataques DDoS antes de que realmente se lleve a cabo y sea un problema. También podemos hacer uso de firewall y sistemas de detección de posibles intrusos.<br/>
Por ejemplo podemos ver los patrones de los últimos meses y ver si de repente hay una actividad inusual que pueda indicar que se está llevando a cabo un intento de ataque DDoS. La idea es que cuanto antes podamos detectar un ataque de este tipo, mejor.')

content8 = Content.new(:attack_id => '8', :titulo => 'Descargar de fuentes oficiales',
                       :informacion => 'Algo básico no solo para evitar los rootkits, sino cualquier otro tipo de amenaza es descargar únicamente desde fuentes oficiales. Es esencial que cuando bajemos software o cualquier archivo de la red lo hagamos desde sitios legítimos y fiables.
Si descargamos desde fuentes de terceros podemos estar agregando software que ha sido modificado de forma maliciosa para comprometer nuestro sistema. Esto puede ser un problema que hay que evitar a toda costa.')

content9 = Content.new(:attack_id => '9', :titulo => 'Utilizar una herramienta antispyware',
                       :informacion => 'Estas herramientas realizan un análisis del ordenador para localizar cualquier tipo de spyware. Una vez se concluye el análisis, se procede a su eliminación. Estos programas suelen ser los más efectivos para solucionar el problema, pudiéndose optar entre su opción gratuita o de pago.')

content10 = Content.new(:attack_id => '10', :titulo => 'Descarga siempre desde las webs oficiales',
                       :informacion => 'El primer consejo es siempre el de descargarte las aplicaciones siempre desde las páginas o repositorios oficiales. Cuando buscas en Google una aplicación concreta, además de su web oficial también te van a aparecer casi siempre enlaces a páginas especializadas en descargas desde donde también vas a poder bajártela.<br/>
Estas páginas suelen aparecer muy buen posicionadas en Google para que sea casi de lo primero que veas, pero no siempre son el método más seguro. Algunas de estas webs incluyen adware en sus instaladores, por lo que son una de las principales fuentes desde donde puedes acabar instalando sin quererlo aplicaciones no deseadas o incluso que dañan tu ordenador.')

content11 = Content.new(:attack_id => '11', :titulo => 'Actualización y parches',
                       :informacion => 'Las vulnerabilidades en las aplicaciones y bases de datos que los ciberatacantes pueden explotar utilizando la inyección SQL se descubren regularmente, por lo que es vital aplicar parches y actualizaciones tan pronto como sea posible. Una solución de administración de parches podría valer la pena la inversión.')

content12 = Content.new(:attack_id => '12', :titulo => 'Instalar un buen antivirus',
                       :informacion => 'Un primer paso esencial es instalar un buen antivirus. Son muchas las herramientas de seguridad que podemos agregar a nuestros equipos y de esta forma lograr que estén lo más protegidos posible. Muy importante aplicarlo en todo tipo de sistema operativo, ya que no hay ninguno que sea 100% seguro y no pueda verse comprometido por este tipo de ataque o cualquier otro similar.<br/>
Hay que tener en cuenta que un antivirus podría ayudar a evitar la entrada de malware que llegase a través de un ataque de Cross Site Scripting. Hay opciones tanto gratuitas como de pago, pero recomendamos en todo momento instalar un buen programa de seguridad. También podemos contar con otras herramientas como un firewall.')

content13 = Content.new(:attack_id => '13', :titulo => 'Evitar las redes públicas y abiertas',
                       :informacion => 'Como hemos visto, una de las técnicas más utilizadas para llevar a cabo ataques Man in the Middle es a través de redes configuradas de forma maliciosa. Por tanto hay que intentar evitar las redes públicas y aquellas que tengan un cifrado débil o que estén abiertas. De esta forma tendremos más garantías de que nuestras conexiones están aseguradas.<br/>
Debemos asegurarnos de que las redes a las que accedemos son reales, seguras y que no van a ser un problema para nuestra seguridad. Así podremos proteger la información a la hora de navegar. Hablamos por ejemplo de un Wi-Fi que nos encontremos en un aeropuerto o centro comercial. No sabemos realmente quién puede estar detrás y de qué manera podría interceptar la conexión y afectarnos.')

content14 = Content.new(:attack_id => '14', :titulo => 'Sistemas actualizados',
                       :informacion => 'Algo muy importante para evitar este tipo de ataque y cualquier otro similar es tener los sistemas correctamente actualizados. Son muchas las vulnerabilidades que pueden surgir y que son aprovechadas por los piratas informáticos para llevar a cabo sus ataques. Necesitamos tener los equipos con todos los parches y correctamente actualizados. Así evitaremos que los piratas informáticos se aprovechen de esos errores.')

content15 = Content.new(:attack_id => '15', :titulo => 'Esté atento a la información personal que comparte en Internet',
                       :informacion => 'Eche un vistazo a sus perfiles de redes sociales. ¿Qué tipo de información personal es accesible para posibles atacantes? Si no desea que un posible estafador vea algo, no lo comparta o, como mínimo, asegúrese de que su configuración de privacidad esté configurada para limitar lo que otros puedan ver.')

content16 = Content.new(:attack_id => '16', :titulo => 'Información de los empleados sobre los ejecutivos',
                       :informacion => 'Los detalles que se pueden encontrar fácilmente en línea a través de sitios como las redes sociales, desde cumpleaños y lugares de origen hasta pasatiempos o deportes favoritos, pueden ayudar a que los correos electrónicos de whaling parezcan más legítimos.')

content17 = Content.new(:attack_id => '17', :titulo => 'Cifrar cuentas o sistemas',
                       :informacion => 'Esta recomendación puede evitar la entrada de malware cuando tenemos una contraseña fuerte; contenga letras, números y símbolos especiales. También, hay que tener en cuenta este consejo en sistemas o redes Wifi.')

content18 = Content.new(:attack_id => '18', :titulo => 'Identificar claramente los correos electrónicos sospechosos',
                       :informacion => 'Existen algunos aspectos que inequívocamente, identifican este tipo de ataques a través de correo electrónico:
Utilizan nombres y adoptan la imagen de empresas reales
Llevan como remitente el nombre de la empresa o el de un empleado real de la empresa
Incluyen webs que visualmente son iguales a las de empresas reales
Como gancho utilizan regalos o la perdida de la propia cuenta existente')

content19 = Content.new(:attack_id => '19', :titulo => 'Seguridad del Navegador: ¡Utilice actualizaciones!',
                       :informacion => 'Los navegadores obsoletos son el objetivo número uno para los ataques de hackers maliciosos. También puede utilizar diferentes navegadores para diferentes servicios. Esto tiene la ventaja de que todos los plug-ins, extensiones y cookies pueden ser desactivados en un navegador, ya que son particularmente vulnerables.<br/>
Como resultado, ya no podrá realizar operaciones bancarias o compras en línea ahí, pero estará más seguro en sitios web supuestamente inseguros. Además, deberías borrar regularmente tus pistas en Internet, como por ejemplo el caché. Esto los hace más difíciles de detectar para los atacantes cibernéticos.')

content20 = Content.new(:attack_id => '20', :titulo => 'Instalar un cortafuegos',
                       :informacion => 'Un cortafuegos protege de ciberataques al impedir todo acceso no autorizado a una red informática privada o desde ella. Además de los programas antivirus, un cortafuegos proporciona una barrera adicional a los troyanos, reduciendo la probabilidad de infección.')

content21 = Content.new(:attack_id => '21', :titulo => 'Sentido común',
                       :informacion => 'Hemos visto que muchos tipos de Spyware pueden llegar al descargar software malicioso de sitios de terceros. Es importante tener esto presente y siempre que vayamos a descargar cualquier programa lo hagamos desde sitios y tiendas oficiales. No importa el tipo de dispositivo que estemos utilizando.')

content22 = Content.new(:attack_id => '22', :titulo => 'Descarga desde las tiendas de aplicaciones oficiales',
                       :informacion => 'Descarga solo aplicaciones de fuentes de confianza. Esto garantiza que las aplicaciones sean legítimas y no software infectado con adware.')

content23 = Content.new(:attack_id => '23', :titulo => 'No visitar sitios que puedan ser inseguros',
                       :informacion => 'Por supuesto también debemos evitar visitar sitios que puedan ser inseguros. Por ejemplo aquellos que accedamos a través de links de terceros y que nos muestre algo sospechoso, una página que no nos dé confianza. Puede tratarse de un sitio lleno de vulner')

content24 = Content.new(:attack_id => '24', :titulo => 'Cifrado y uso de red VPN',
                       :informacion => 'El uso de cifrado en todos los dispositivos que contienen información valiosa y el uso de redes privadas virtuales (VPN) cuando se conecta a redes públicas agrega una capa adicional de protección contra los ataques MiTM. Las VPN crean un canal seguro y encriptado para los datos que se transmiten a través de Internet desde un dispositivo o una red.')

content25 = Content.new(:attack_id => '25', :titulo => 'Formación especializada',
                       :informacion => 'Finalmente, para mitigar un ataque de spear phishing, es fundamental concienciar de su importancia a las personas del hogar. Para ello, una formación especializada sobre ciberseguridad se vuelve imprescindible.
Y es que un clic puede desencadenar graves consecuencias para toda la familia. Con el robo de datos, los hackers revelan información sensible (datos bancarios, contenidos…), lo que puede conllevar grandes pérdidas.')

content26 = Content.new(:attack_id => '26', :titulo => 'Utilizar un Wi-Fi seguro',
                       :informacion => 'Las mejores aliadas para la seguridad del dispositivo son las redes privadas protegidas con contraseña.')

content27 = Content.new(:attack_id => '27', :titulo => 'No compartas información personal',
                       :informacion => 'Piensa bien antes de compartir datos personales por correo electrónico o SMS, especialmente si has recibido un mensaje no solicitado donde te los pidan. El banco nunca te va a pedir el número de cuenta por SMS, así que, si recibes un mensaje semejante, lo más seguro es que se trate de un ataque de phishing.')

content28 = Content.new(:attack_id => '28', :titulo => 'Establece un código de acceso',
                        :informacion => 'Crea una contraseña en tu dispositivo móvil para que, si se pierde o es robada, sea más difícil acceder a tu información. Los datos se toman con mayor frecuencia de los teléfonos móviles cuando se pierden o son robados y no están protegidos por una contraseña.')

content29 = Content.new(:attack_id => '29', :titulo => 'Instala un software antivirus/malware',
                        :informacion => 'Este consejo puede ser evidente, y lo mencionamos anteriormente. Sin embargo, muchos ordenadores -especialmente los domésticos- no tienen protección anti-virus/malware. Esta protección es un primer paso indispensable para mantener su PC libre de virus.')

content30 = Content.new(:attack_id => '30', :titulo => 'Borre su caché y descargas',
                        :informacion => 'Ciertos tipos de malware de Android, como el adware, pueden ocultarse en el navegador. Si ve muchos anuncios emergentes o le redirigen a sitios web distintos del que planeaba visitar, es momento de limpiar Chrome para eliminar el malware presente.')

content31 = Content.new(:attack_id => '31', :titulo => 'Links en WhatsApp o por SMS',
                        :informacion => 'A veces recibimos mensajes ya sean por una aplicación como WhatsApp o directamente por SMS avisando de que tenemos un premio, un mensaje, una oferta o que nuestro dispositivo está en peligro. Los motivos son variados pero lo que al final buscan es que pinchemos sobre el link que tiene adjunto. Este link suele tener malas intenciones. Evita entrar en links de este tipo a toda costa suelen instalar un virus, troyano u otro tipo de malware.')

content32 = Content.new(:attack_id => '32', :titulo => 'Realizar análisis de seguridad frecuentes',
                        :informacion => 'Aparte de contar con un antivirus actualizado, se tendrán que hacer análisis frecuentes para lograr una mayor seguridad.')

content33 = Content.new(:attack_id => '33', :titulo => 'Nunca descargar archivos sin comprobar la fuente',
                        :informacion => 'No se deben descargar documentos provenientes de destinatarios desconocidos ni obtener aplicaciones fuera de la app store.')

content34 = Content.new(:attack_id => '34', :titulo => 'Sitios cifrados',
                        :informacion => 'Aquí es vital el sentido común y observar muy bien las páginas que visitamos. Cuando se trate de iniciar sesión o introducir datos personales deberemos entrar directamente introduciendo la dirección en el navegador y nunca a través de posibles links de terceros. De esta forma evitaremos acabar en una página modificada de forma maliciosa.')

content1.save
content2.save
content3.save
content4.save
content5.save
content6.save
content7.save
content8.save
content9.save
content10.save
content11.save
content12.save
content13.save
content14.save
content15.save
content16.save
content17.save
content18.save
content19.save
content20.save
content21.save
content22.save
content23.save
content24.save
content25.save
content26.save
content27.save
content28.save
content29.save
content30.save
content31.save
content32.save
content33.save
content34.save

# SEEDS COMMENTS
comment1 = Comment.new(:user_id => '2', :article_id => '1',
                       :titulo => 'Copia de seguridad',
                       :comentario => 'Esta medida me parece bastante buena ya que nunca viene mal hacer una copia de seguridad. Gracias')

comment2 = Comment.new(:user_id => '2', :article_id => '7',
                       :titulo => 'Antivirus',
                       :comentario => 'Esto me ha servido para mejorar mi dispositivo. Muchas gracias.')

comment3 = Comment.new(:user_id => '2', :article_id => '4',
                       :titulo => 'VPN',
                       :comentario => 'Usar una vpn como medida de seguridad me ha servido mucho a la hora de mejorar mi defensa. Saludos.')

comment4 = Comment.new(:user_id => '2', :article_id => '2',
                       :titulo => '¿Qué hacer ante un ciberataque?',
                       :comentario => 'Buena pregunta. Muchas gracias.')

comment5 = Comment.new(:user_id => '2', :article_id => '5',
                       :titulo => '¿Cómo mejorar la ciberseguridad en casa?',
                       :comentario => 'Muchas gracias por este consejo, me ha servido. Gracias.')

comment6 = Comment.new(:user_id => '2', :article_id => '8',
                       :titulo => '¿Es peligroso utilizar redes WiFi públicas?',
                       :comentario => 'Ahora se que no debo conectarme a wifis de fuera de casa. Saludos.')

comment7 = Comment.new(:user_id => '2', :article_id => '3',
                       :titulo => 'Malware, el sentido común',
                       :comentario => 'Parece una medida un poco inutil, pero hay que tener en cuenta esta medida. Saludos.')

comment8 = Comment.new(:user_id => '2', :article_id => '6',
                       :titulo => 'Man in the middle, usa siempre HTTPS',
                       :comentario => 'Gracias por este consejo, la verdad que nunca me había fijado en esto y me ha servido. Un saludo.')

comment9 = Comment.new(:user_id => '3', :article_id => '9',
                       :titulo => 'Phishing, descarga aplicaciones desde fuentes confiables',
                       :comentario => 'Ahora ya se que no debería descargar app de fuentes externas.')

comment10 = Comment.new(:user_id => '3', :article_id => '1',
                       :titulo => 'autenticación multifactor',
                       :comentario => 'Muy buena idea, con esto confío más en mi dispositivo. Gracias.')

comment11 = Comment.new(:user_id => '3', :article_id => '2',
                       :titulo => '¿Cómo sé si una web es segura o no?',
                       :comentario => 'Buen consejo. Saludos')

comment12 = Comment.new(:user_id => '3', :article_id => '1',
                       :titulo => 'Educar a los empleados en materia de seguridad',
                       :comentario => 'Esta es una medida que no se suele mencionar mucho y creo que es muy importante a día de hoy. Saludos.')

comment13 = Comment.new(:user_id => '2', :article_id => '9',
                       :titulo => 'Realizar análisis de seguridad frecuentes',
                       :comentario => 'Buena medida para mejora nuestra seguridad. Gracias.')

comment14 = Comment.new(:user_id => '2', :article_id => '7',
                       :titulo => 'Visitar páginas web seguras',
                       :comentario => 'Gran verdad, lo mejor es ir a lugares de confianza.')

comment1.save
comment2.save
comment3.save
comment4.save
comment5.save
comment6.save
comment7.save
comment8.save
comment9.save
comment10.save
comment11.save
comment12.save
comment13.save
comment14.save

# SEEDS EXTRAS
extra1 = Extra.new(:nombre => 'Últimas noticias',
                   :descripcion => 'En esta sección podremos ver las <strong>últimas noticias</strong> relacionadas con <strong>ataques de ciberseguridad</strong> que han ocurrido en el mundo.')

extra2 = Extra.new(:nombre => 'Conceptos',
                   :descripcion => 'En esta sección podremos ver las <strong>definiciones</strong> de todos los <strong>ataques</strong> relacionados con la ciberseguridad.')

extra3 = Extra.new(:nombre => 'Organismos',
                   :descripcion => 'En esta sección podremos ver los <strong>organismos</strong> que se encargan de la <strong>seguridad en el mundo</strong> de manera nacional e internacional.')

extra4 = Extra.new(:nombre => 'Leyes',
                   :descripcion => 'En esta sección podremos ver las <strong>leyes</strong> que tienen que ver con el entorno de la seguridad.')

extra1.save
extra2.save
extra3.save
extra4.save

# SEEDS EXTRAS_INFOS
extra_info1 = ExtraInfo.new(:extra_id => '1',
                            :nombre => 'Un ciberataque colapsa los servidores de MediaMarkt en varios países europeos',
                            :descripcion => 'Un ataque de ransomware ha afectado a los servidores de MediaMarkt en varios países del centro y el norte de Europa, según han informado fuentes de la multinacional alemana de productos electrónicos. El ataque se ha producido a primera hora de esta mañana y tiene consecuencias en tiendas de Holanda, Bélgica y Alemania, aunque aún no hay información oficial sobre el alcance de la intrusión. Los problemas informáticos provocan que en las tiendas sólo se puedan vender productos que están físicamente en los locales. Los servicios de devolución, recogida y cualquier otra gestión que se tenga que realizar online se han paralizado como medida de seguridad, aunque la compañía ha matizado a este periódico que "se han actualizado los protocolos para no dejar de dar ningún servicio" a sus clientes.<br/>
Un correo interno filtrado sobre el estado de los servidores de la cadena de distribución indica que más de 3.000 servidores de Windows podrían haber sido "secuestrados", así como numerosos servidores web. El mensaje advierte a los empleados que no "reinstalen las cajas registradoras" hasta que no se solucione el problema, lo que sugiere que el sistema de cobro podría haber quedado fuera de servicio.',
                            :enlaces => 'https://www.lavanguardia.com/tecnologia/20211108/7847465/ciberataque-mediamarkt.html')

extra_info2 = ExtraInfo.new(:extra_id => '1',
                            :nombre => 'Alertan sobre el regreso de Emotet, el peligroso virus que te roba el dinero desmantelado por Europol',
                            :descripcion => 'El pasado enero Europol asestó uno de los golpes más importantes que ha recibido el cibercrimen en los últimos años. Entonces, una acción conjunta entre las autoridades de países como Estados Unidos, Alemania y Países Bajos, entre otros, c onsiguió desarticular la red de "bots" del peligroso "malware" (virus informático) Emotet, que desde 2014, año de su nacimiento, había sido capaz de generar unas pérdidas cercanas a los 2.500 millones de dólares. Ahora, 10 meses después de su desaparición, varios analistas y empresas de ciberseguridad alertan sobre retorno de la amenaza.<br/>
«Curiosamente, todo apunta a que, en esta ocasión, los criminales están utilizando la infraestructura existente de TrickBot para reconstruir la botnet Emotet. De momento no se han detectado campañas masivas de spam, utilizadas normalmente por esta amenaza para propagarse usando ficheros adjuntos en formato Word o Excel, aunque sí se han detectado algunos emails que están siendo enviados desde los propios equipos comprometidos», explica Josep Albors, jefe de investigación y concienciación de la empresa de ciberseguridad ESET.',
                            :enlaces => 'https://www.abc.es/tecnologia/redes/abci-alertan-sobre-regreso-emotet-peligroso-virus-roba-dinero-desmantelado-europol-202111180136_noticia.html')

extra_info3 = ExtraInfo.new(:extra_id => '1',
                            :nombre => 'WhatsApp alerta sobre un fallo de seguridad que pone en peligro tu móvil',
                            :descripcion => 'Facebook, la empresa propietaria de WhatsApp, ha descubierto una "vulnerabilidad crítica" en WhatsApp que afecta tanto a dispositivos Android como iOS y que permite que los hackers puedan robar información personal de los usuarios almacenada en la "app" a través del envío a los mismos de un vídeo en formato MP4 malicioso.<br/>
La empresa propietaria de WhatsApp, Facebook, ha anunciado que existe en versiones antiguas de WhatsApp una vulnerabilidad en la aplicación de mensajería que puede ser utilizada por los ciberdelincuentes para lanzar ataques DoS (denegación del servicio) o RCE (ejecución remota del código).<br/>
"Un desbordamiento de búfer (stack-based buffer overflow) podría desencadenarse en WhatsApp enviando un archivo especialmente elaborado a un usuario de WhatsApp. Este asunto estuvo presente en el análisis de los metadatos elementales de un archivo MP4 y puede resultar en un ataque DoS o RCE", ha explicado Facebook.',
                            :enlaces => 'https://www.elmundo.es/tecnologia/2019/11/19/5dd2e43221efa0e07d8b47ae.html')

extra_info4 = ExtraInfo.new(:extra_id => '2',
                            :nombre => 'Malware',
                            :descripcion => 'Software malicioso que ha sido diseñado para infectar y dañar un equipo. Existen muchos tipos como los virus, gusanos, troyanos y el spyware. Los canales a través de los cuales un software malicioso puede infectar tu dispositivo son numerosos: Internet, correo electrónico, descarga de archivos, Apps, música, vídeos…<br/>Las consecuencias de estas infecciones pueden ser múltiples: desde el robo de información, el bloqueo del acceso al dispositivo o el espionaje.',
                            :enlaces => '')

extra_info5 = ExtraInfo.new(:extra_id => '2',
                            :nombre => 'Phishing',
                            :descripcion => 'Esta técnica fraudulenta consiste en engañar al usuario solicitando información personal, contraseñas, datos bancarios etc., a través del correo electrónico o redirigiendo a la víctima a una copia falsa de una página web donde se le solicita el ingreso de los datos que se quieren obtener.',
                            :enlaces => '')

extra_info6 = ExtraInfo.new(:extra_id => '2',
                            :nombre => 'Ransomware',
                            :descripcion => 'Software que bloquea el acceso a un equipo y solicita un pago económico por su liberación. Algunos de los ataques ransomware más dañinos de los últimos años fueron Petya y NotPetya, dos ataques globales que infectaron los dispositivos de más de 80 empresas e instituciones públicas.<br/> Según la revista CSO, a pesar de su reciente declive, el ransomware sigue siendo una amenaza grave para la seguridad de los sistemas informáticos.',
                            :enlaces => '')

extra_info7 = ExtraInfo.new(:extra_id => '2',
                            :nombre => 'Gusano',
                            :descripcion => 'Su característica principal es que tiene la capacidad de reptar por sí mismo de un terminal a otro, dentro de una misma red, y replicarse. Esto significa que no necesitan la intervención del usuario para propagarse como ocurre con los virus.',
                            :enlaces => '')

extra_info8 = ExtraInfo.new(:extra_id => '2',
                            :nombre => 'Virus',
                            :descripcion => 'Al contrario que los gusanos, estos necesitan de la intervención del usuario para propagarse. Los virus están alojados en archivos o programas que al ser ejecutados infectan el terminal.',
                            :enlaces => '')

extra_info9 = ExtraInfo.new(:extra_id => '2',
                            :nombre => 'Troyano',
                            :descripcion => 'A diferencia de los gusanos y virus, los troyanos no se propagan y se camuflan como una aplicación legítima aunque también necesitan ser ejecutados para liberarse. Su diferencia principal es que abren una puerta trasera o backdoor que permite acceder al sistema.',
                            :enlaces => '')

extra_info10 = ExtraInfo.new(:extra_id => '2',
                            :nombre => 'Denegación de Servicio (DoS)',
                            :descripcion => 'Este tipo de ataques pretenden colapsar o bloquear un sistema lanzando numerosas peticiones de conexión al mismo tiempo. Si estas se realizan desde un solo punto de conexión es un DoS mientras que si lanzan desde numerosos puntos se denomina DDoS (de la siglas en inglés negación de servicio distribuido).<br/>
Los ataques DDoS suelen ser realizados por Botnets, es decir, por redes de ordenadores zombies que tras haber sido infectados, generalmente con un troyano, son controlados de forma remota por los ciberdelincuentes siendo capaces de orquestar ataques distribuidos.',
                            :enlaces => '')

extra_info11 = ExtraInfo.new(:extra_id => '2',
                            :nombre => 'Rootkit',
                            :descripcion => 'Software que concede permisos de acceso al ciberdelincuente sobre un equipo infectado. Son difíciles de detectar puesto que tienen la capacidad de enmascarar la intrusión y aunque los antivirus pueden eliminarlos parcialmente, para su completa desaparición es necesaria una intervención manual.',
                            :enlaces => '')

extra_info12 = ExtraInfo.new(:extra_id => '2',
                            :nombre => 'Spyware',
                            :descripcion => 'Contrariamente a los virus y gusanos, los programas espía, no se propagan. Se ejecutan automáticamente cada vez que se enciende un equipo infectado y son capaces de recabar información que después enviarán a un tercero sin la autorización del usuario.',
                            :enlaces => '')

extra_info13 = ExtraInfo.new(:extra_id => '2',
                            :nombre => 'Adware',
                            :descripcion => 'Software basado en publicidad. Son aplicaciones que muestran anuncios, normalmente en forma de ventanas emergentes. El adware, aunque pueda resultar incómodo, no es malicioso por sí mismo aunque puede comportar algún tipo de spyware.',
                            :enlaces => '')

extra_info14 = ExtraInfo.new(:extra_id => '2',
                            :nombre => 'Ataques de inyección SQL',
                            :descripcion => 'El SQL es un lenguaje de programación de consulta estructurado y utilizado para comunicarse con las <strong>bases de datos</strong>. Muchos de los servidores que almacenan información crítica para sitios web y servicios lo usan.<br/>
Un <strong>ataque de inyección SQL</strong> apunta específicamente a este tipo de servidor, utilizando código malicioso para extraer su información. Esto es especialmente problemático si el almacenamiento incluye datos privados de clientes, como números de tarjetas de crédito, nombres de usuario y contraseñas.',
                            :enlaces => '')

extra_info15 = ExtraInfo.new(:extra_id => '2',
                            :nombre => 'Cross-Site Scripting (XSS)',
                            :descripcion => 'A diferencia del ataque a SQL, este tipo <strong>persigue al usuario</strong> y no al servidor. Implica la inyección de código malicioso en un sitio web, que se ejecuta en el navegador del usuario cuando este accede al mismo.<br/>
Una de las formas más comunes para implementar este tipo de ataque entre sitios es mediante la <strong>inyección de código malicioso en un comentario o un script</strong> que se puede ejecutar automáticamente.<br/>
Los <strong>ataques de secuencias de comandos</strong> en sitios cruzados pueden dañar significativamente la reputación de un sitio web al poner en riesgo la información de los usuarios sin ninguna indicación de que haya ocurrido algo malicioso.',
                            :enlaces => '')

extra_info16 = ExtraInfo.new(:extra_id => '2',
                            :nombre => 'Man in The Middle',
                            :descripcion => 'Los ataques de intermediarios (MitM), también conocidos como ataques de escucha secreta, ocurren cuando los ataques se insertan en transacciones entre dos partes. Una vez que los atacantes interrumpen el tráfico, pueden filtrar y robar datos.<br/>
Hay dos puntos en común en las entradas de ataques de MitM:<br/>
1. En Wi-Fi público inseguro, los atacantes pueden insertarse entre el dispositivo del visitante y la red. Sin saberlo, el visitante pasa toda la información al atacante.
2. Una vez que el malware vulnera un dispositivo, el atacante puede instalar software para procesar toda la información de la víctima.',
                            :enlaces => '')

extra_info17 = ExtraInfo.new(:extra_id => '2',
                            :nombre => 'Tunelización de DNS',
                            :descripcion => 'La tunelización de DNS usa el protocolo DNS para comunicar tráfico que no pertenece al DNS por el puerto 53. Envía HTTP y otro tráfico del protocolo por el DNS. Hay varias razones legítimas para usar la tunelización de DNS. Sin embargo, también existen motivos maliciosos para usar los servicios de VPN de tunelización de DNS. Pueden usarse para encubrir tráfico saliente del DNS y ocultar datos que típicamente se comparten mediante una conexión a Internet.<br/>
Para el uso malicioso, se manipulan las solicitudes del DNS a fin de exfiltrar los datos de un sistema comprometido a la infraestructura del atacante. También puede usarse para las retrollamadas de comando y control de la infraestructura del atacante al sistema comprometido.',
                            :enlaces => '')

extra_info18 = ExtraInfo.new(:extra_id => '2',
                            :nombre => 'Spear phishing',
                            :descripcion => 'Los spear phishing son ataques informáticos que tienen como objetivo una persona o empleado específico de una compañía en concreto. Para llevar a cabo este tipo de ataques los criminales recopilan meticulosamente información sobre la víctima para ganarse su confianza.<br/>
Caer en estos ataques suele ser muy usual, ya que un correo bien elaborado, ya sea con enlace o documento adjunto malicioso, es muy difícil de distinguir de uno legítimo.Esta técnica se utiliza mucho para atacar empresas, bancos o personas influyentes.',
                            :enlaces => '')

extra_info19 = ExtraInfo.new(:extra_id => '2',
                            :nombre => 'Whaling',
                            :descripcion => 'Estos ataques se centran en un perfil de alto directivo, como CEOs o CFOs. El objetivo es robar información vital, ya que aquellos que ocupan puestos altos en una empresa suelen tener acceso ilimitado a información confidencial. En la mayoría de estas estafas llamadas «caza de ballenas» el delincuente manipula a la víctima para permitir transferencias electrónicas de alto valor.<br/>
La frase «caza de ballenas» hace referencia al tamaño del ataque, ya que las ballenas son atacadas dependiendo de su posición dentro de la organización. Este tipo de ataques son más fáciles de detectar en comparación con los phishing estándar. Los responsables de seguridad informática de una empresa pueden disminuir la efectividad de este pirateo.',
                            :enlaces => '')

extra_info20 = ExtraInfo.new(:extra_id => '3',
                            :nombre => 'ENS',
                            :descripcion => 'El <strong>Esquema Nacional de Seguridad (ENS)</strong> proporciona al Sector Público en España un planteamiento común de seguridad para la protección de la información que maneja y los servicios que presta; impulsa la gestión continuada de la seguridad, imprescindible para la transformación digital en un contexto de ciberamenazas; a la vez que facilita la cooperación y proporciona un conjunto de requisitos uniforme a la Industria, constituyendo también un referente de buenas prácticas.<br/>
El <strong>principal objetivo</strong> del ENS es crear las condiciones necesarias de seguridad en el uso de los medios electrónicos, a través de medidas para garantizar la seguridad de los sistemas, los datos, las comunicaciones, y los servicios electrónicos, que permitan el ejercicio de derechos y el cumplimiento de deberes a través de estos medios.',
                            :enlaces => 'https://boe.es/boe/dias/2010/01/29/pdfs/BOE-A-2010-1330.pdf')

extra_info21 = ExtraInfo.new(:extra_id => '3',
                            :nombre => 'INCIBE',
                            :descripcion => 'INCIBE trabaja para afianzar la confianza digital, elevar la ciberseguridad y la resiliencia y contribuir al mercado digital de manera que se impulse el uso seguro del ciberespacio en España.<br/>
El Instituto Nacional de Ciberseguridad de España (INCIBE), anteriormente Instituto Nacional de Tecnologías de la Comunicación, es una sociedad dependiente del Ministerio de Asuntos Económicos y Transformación Digital a través de la Secretaría de Estado de Digitalización e Inteligencia Artificial y consolidada como entidad de referencia para el desarrollo de la ciberseguridad y de la confianza digital de ciudadanos, red académica y de investigación, profesionales, empresas y especialmente para sectores estratégicos.',
                            :enlaces => 'https://www.incibe.es/que-es-incibe')

extra_info22 = ExtraInfo.new(:extra_id => '3',
                            :nombre => 'AEPD',
                            :descripcion => 'La <strong>Agencia Española de Protección de Datos (AEPD)</strong>, es el organismo público encargado de velar por el cumplimiento de la Ley Orgánica de Protección de Datos de Carácter Personal en España.<br/>
Es un ente de derecho público con personalidad jurídica propia y plena capacidad pública y privada que actúa con independencia de la Administración pública en el ejercicio de sus funciones. Su principal misión es velar por el cumplimiento de la legislación de protección de datos por parte de los responsables de los ficheros (entidades públicas, empresas privadas, asociaciones, etc.) y controlar su aplicación a fin de garantizar el derecho fundamental a la protección de datos personales de los ciudadanos.<br/>
La AEPD lleva a cabo sus potestades de investigación fundamentalmente a instancias de los ciudadanos, aunque también está facultada para actuar de oficio. La Agencia es estatutaria y jerárquicamente independiente y se relaciona con el Gobierno a través del Ministerio de Justicia.',
                            :enlaces => 'https://www.aepd.es/es')

extra_info23 = ExtraInfo.new(:extra_id => '3',
                            :nombre => 'CCN',
                            :descripcion => 'El Centro Criptológico Nacional (CCN) es el Organismo responsable de garantizar la seguridad de las Tecnologías de la Información y la Comunicación (TIC) en las diferentes entidades del Sector Público, así como la seguridad de los sistemas que procesan, almacenan o transmiten información clasificada.',
                            :enlaces => 'https://www.ccn-cert.cni.es/')

extra_info24 = ExtraInfo.new(:extra_id => '3',
                            :nombre => 'CNPIC',
                            :descripcion => 'Es un organismo público adscrito a la Secretaría de Estado de Seguridad para ejecutar las tareas atribuidas a ese Órgano Superior en materia de seguridad. Este Centro custodiará y actualizará el Plan de Seguridad de Infraestructuras Críticas y el Catálogo Nacional de Infraestructuras Críticas.<br/>
Es el órgano responsable de la dirección, coordinación y supervisión de la protección de infraestructuras críticas nacionales. Por ello, es el encargado de dirigir la aplicación del Plan Nacional de Protección de Infraestructuras Críticas y se convierte en el punto nacional de contacto con la Comisión Europea y con otros Estados propietarios o gestores de infraestructuras críticas.<br/>
Dentro de la estructura orgánica del CNPIC se encuentra la OCC (Oficina de Coordinación Cibernética) que desempeña la coordinación técnica y la comunicación con los CSIRT nacionales de referencia: CERTSI y CCN-CERT. Estos se ocupan de la resolución técnica de incidentes de ciberseguridad que puedan afectar a operadores privados de infraestructuras críticas (CERTSI) y operadores públicos (CCN-CERT).',
                            :enlaces => 'http://www.cnpic.es/')

extra_info25 = ExtraInfo.new(:extra_id => '3',
                            :nombre => 'DNS',
                            :descripcion => 'El Sistema de Seguridad Nacional es el conjunto de órganos, organismos, recursos y procedimientos que permite a los órganos competentes en materia de Seguridad Nacional ejercer sus funciones. En el Sistema se integran los componentes fundamentales siguiendo los mecanismos de enlace y coordinación que determine el Consejo de Seguridad Nacional, actuando bajo sus propias estructuras y procedimientos. En función de las necesidades, podrán asignarse cometidos a otros organismos y entidades, de titularidad pública o privada.<br/>
Al Sistema de Seguridad Nacional le corresponde evaluar los factores y situaciones que puedan afectar a la Seguridad Nacional, recabar y analizar la información que permita tomar las decisiones necesarias para dirigir y coordinar la respuesta ante las situaciones de crisis contempladas en la Ley de Seguridad Nacional, detectar las necesidades y proponer las medidas sobre planificación y coordinación con el conjunto de las Administraciones Públicas, con el fin de garantizar la disponibilidad y el correcto funcionamiento de los recursos del Sistema.',
                            :enlaces => 'https://www.boe.es/boe/dias/2015/09/29/pdfs/BOE-A-2015-10389.pdf')

extra_info26 = ExtraInfo.new(:extra_id => '3',
                            :nombre => 'OCC',
                            :descripcion => 'La Oficina de Coordinación de Ciberseguridad (OCC) creada en 2014 es el órgano técnico de coordinación de la Secretaría de Estado de Seguridad en materia de ciberseguridad, hasta 2020 se denominaba Oficina de Coordinación Cibernética.<br/>
La OCC proporciona las capacidades de coordinación técnica entre el CERTSI y los órganos subordinados de la Secretaría de Estado de Seguridad y las Fuerzas y Cuerpos de Seguridad del Estado en lo que respecta a las competencias propias del Ministerio del Interior en el campo de la ciberseguridad. La OCC mantiene personal técnico permanentemente integrado en la estructura del CERTSI.<br/>
<strong>Funciones:</strong></br>
1. Asesorar al Secretario de Estado de Seguridad en materia de ciberseguridad, aportando la información estratégica y técnica necesaria para facilitar la toma de decisiones.</br>
2. Proporcionar un canal de alerta temprana permanente en lo relativo a vulnerabilidades, ciberamenazas y ciberataques.</br>
3. Establecer cauces de intercambio de información entre otros actores, públicos y privados, nacionales e internacionales.</br>
4. Desarrollar mecanismos de respuesta ante un ciber incidente que recaiga en los ámbitos competenciales del Ministerio del Interior.',
                            :enlaces => '')

extra_info27 = ExtraInfo.new(:extra_id => '3',
                            :nombre => 'MCCD',
                            :descripcion => 'El Mando Conjunto de Ciberdefensa es el órgano de la estructura operativa, subordinado al Jefe de Estado Mayor de la Defensa (JEMAD), responsable del planeamiento y la ejecución de las acciones relativas a la ciberdefensa en las redes y sistemas de información y telecomunicaciones del Ministerio de Defensa u otras que pudiera tener encomendadas. Asimismo, tiene la misión de contribuir a la respuesta adecuada en el ciberespacio ante amenazas o agresiones que puedan afectar a la Defensa Nacional.',
                            :enlaces => '')

extra_info28 = ExtraInfo.new(:extra_id => '3',
                            :nombre => 'ENISA',
                            :descripcion => 'A nivel europeo, se encuentra la <strong>Agencia Europea de Seguridad de las Redes y de la Información (ENISA)</strong>, es un centro que ayuda a la Unión Europea y a sus Estados miembros a estar mejor preparados para prevenir, detectar y dar respuesta a incidentes de seguridad de la información mediante la sinergia y la cooperación entre Estados.<br/>
La labor cotidiana de la ENISA se establece en el programa de trabajo anual, que se elabora cada año previas consultas al Consejo de Administración y al Comité Ejecutivo.<br/>
La ENISA ha formado también una sólida red de interesados tanto del sector público como del privado con objeto de lograr:<br/>
<strong>Experiencia:</strong> anticipar la aparición de problemas de seguridad de la información y de las redes y ayudar a Europa a hacerles frente teniendo en cuenta la evolución de lo digital.
<strong>Política:</strong> asistir a los Estados miembros y a las instituciones de la UE en la elaboración y aplicación de las políticas necesarias para cumplir los requisitos legales y reglamentarios de la Seguridad de la Información Nacional.
<strong>Capacidad:</strong> ayudar a Europa a dotarse de los medios más avanzados de seguridad de las redes y la información.
<strong>Comunidad:</strong> potenciar la cooperación tanto entre Estados miembros como entre las comunidades de Seguridad de la Información Nacional.',
                            :enlaces => 'https://www.enisa.europa.eu/about-enisa/about/es')

extra_info29 = ExtraInfo.new(:extra_id => '3',
                            :nombre => 'CCDCOE',
                            :descripcion => 'A nivel internacional, destaca el <strong>Centro de Excelencia de la OTAN para la Ciberdefensa (CCDCOE)</strong>, con sede en Tallin, Estonia. Es una organización militar internacional cuya misión es aumentar la capacidad, cooperación y transmisión de información entre los Estados miembros de la OTAN y sus aliados en el ámbito de la ciberdefensa a través de la educación, la investigación, las lecciones aprendidas y el diálogo.',
                            :enlaces => 'https://ccdcoe.org/')

extra_info30 = ExtraInfo.new(:extra_id => '4',
                            :nombre => 'LOPDGDD',
                            :descripcion => 'Aunque muchos se siguen refiriendo a la ley española de protección de datos como LOPD, lo cierto es que el nombre completo de la normativa actual es <strong>Ley Orgánica de Protección de Datos y Garantía de Derechos Digitales (LOPDGDD).</strong><br/>
La finalidad de la LOPDGDD es proteger la <strong>intimidad, privacidad e integridad del individuo</strong>, en cumplimiento con el artículo 18.4 de la Constitución Española. Del mismo modo, regula las obligaciones del individuo en todo proceso de <strong>transferencia de datos</strong> para garantizar la seguridad del intercambio.<br/>
Se consideran <strong>datos personales</strong> aquella información en texto, imagen o audio que permita la identificación de una persona. Existen datos que se consideran de poco riesgo, como el nombre o el correo electrónico, mientras que otros son considerados de riesgo más elevado, por ejemplo datos sensibles relacionados con la religión o la salud personal.',
                            :enlaces => 'https://www.boe.es/buscar/pdf/2018/BOE-A-2018-16673-consolidado.pdf')

extra_info31 = ExtraInfo.new(:extra_id => '4',
                            :nombre => 'LSSI',
                            :descripcion => 'La LSSI o Ley 34/2002 de <strong>Servicios de la Sociedad de la Información y del Comercio Electrónico</strong>, es una normativa que regula las actividades económicas a través de internet, entendiendo éstas como aquellos productos o servicios ofertados a través de páginas webs, tiendas online y correo electrónico. Quedan excluidos de esta definición los productos o contenidos audiovisuales emitidos por internet.',
                            :enlaces => 'https://www.boe.es/buscar/act.php?id=BOE-A-2002-13758')

extra_info1.save
extra_info2.save
extra_info3.save
extra_info4.save
extra_info5.save
extra_info6.save
extra_info7.save
extra_info8.save
extra_info9.save
extra_info10.save
extra_info11.save
extra_info12.save
extra_info13.save
extra_info14.save
extra_info15.save
extra_info16.save
extra_info17.save
extra_info18.save
extra_info19.save
extra_info20.save
extra_info21.save
extra_info22.save
extra_info23.save
extra_info24.save
extra_info25.save
extra_info26.save
extra_info27.save
extra_info28.save
extra_info29.save
extra_info30.save
extra_info31.save