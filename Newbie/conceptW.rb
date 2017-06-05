Inheritance 

Es una relacion entre 2 clases y tienen una jerarquia en donde las 
clases hijas heredan comportamientos(metodos y atributos ) de la clase padre y a su vez estas clases hijas pueden crear comportamientos propios
=begin
class Mamifero
  def respirar
    puts 'inspirar, espirar'
  end
end
 
# el símbolo < indica que
# Gato es una subclase de Mamifero
 
class Gato < Mamifero
  def maullar
    puts 'Miaaaaaaaaaaau'
  end
end
 
cribas = Gato.new
cribas.respirar
cribas.maullar
=end
Composition

omposición quiere decir que tenemos una instancia de una clase que contiene instancias de otras clases que implementan las funciones deseadas.
Es decir, estamos delegando las tareas que nos mandan a hacer a aquella pieza de código que sabe hacerlas. El código que ejecuta esa tarea 
concreta está sólo en esa pieza y todos delegan el ella para ejecutar dicha tarea. 
Por lo tanto estamos reutilizando código de nuevo.

Encapsulation

Es el proceso de almacenar en una misma sección los elementos de una abstracción que constituyen su estructura y su comportamiento; sirve para
separar el interfaz contractual de una abstracción y su implantación.

Existen tres niveles de acceso para el encapsulamiento, los cuales son:
Público (Public): Todos pueden acceder a los datos o métodos de una clase que se definen con este nivel, este es el nivel más bajo, esto es lo que tu quieres que la parte externa vea.

Protegido (Protected): Podemos decir que estás no son de acceso público, solamente son accesibles dentro de su clase y por subclases.

Privado (Private): En este nivel se puede declarar miembros accesibles sólo para la propia clase.

Voy a hacer un pequeño ejemplo, no usaré ningún lenguaje de Programación Orientado a Objetos, debido a que el Curso es Programación Orientada a Objetos en “General”.

El Ejemplo del Vehículo nuevamente, Usaremos la característica COLOR.

Duck Typing

Duck Typing se refiere a la tendencia de Ruby a centrarse menos en la clase de un objeto, y dar prioridad a su comportamiento: qué métodos se pueden usar, y qué operaciones se pueden 
hacer con él.

The Law of Demeter (ej.)

Cada unidad debe tener un limitado conocimiento sobre otras unidades y solo conocer aquellas unidades estrechamente relacionadas a la unidad actual.
Cada unidad debe hablar solo a sus amigos y no hablar con extraños.
Solo hablar con sus amigos inmediatos.


Overriding Methods (and using super)

Las clases en Ruby sólo pueden tener un método con un nombre dado.
Para tener métodos "distintos" con el mismo nombre, se puede jugar
con el número de argumentos:

Scope

El alcance es una propiedad de las variables: se refiere a su 
visibilidad (aquella región del programaa donde la variable puede utilizarse). 
Los distintos tipos de variables, tienen distintas reglas de alcance. Hablemos 
de dos tipos de variables: las globales y las locales.

Alcance global y variables globales

Empezarmos con el alcance que menos se usa, pero no por ello menos importante:
un alcance global significa que alcanza a todo el programa. Desde cualquier parte del programa,

puede usarse la variable. 
Las variables globales son las que tienen alcance global.

Las variables globales se distinguen porque están precedidas del signo dólar ($). 
Pueden ser vistas desde cualquier parte del programa, y por tanto pueden ser usadas en cualquier parte:
 nunca quedan fuera de alcance. Sin embargo, las variables globales son usadas muy poco por los programadores
  experimentados.

Variables globales por defecto

El intérprete Ruby tiene por defecto un gran número de variables globales iniciadas desde el principio. 
Son variables que almacenan información útil que puede ser usada en cualquier momento y parte del programa.

Por ejemplo, la variable global $0 contiene el nombre del fichero que Ruby está ejecutando. La variable global 
$: contiene los directorios en los que Ruby busca cuando se carga un fichero que no existe en el directorio de trabajo. 
$$ contiene el id (identidad) del proceso que Ruby está ejecutando. Y hay muchas más.


Private vs Public Methods

public - los métodos públicos (public) pueden ser usados por cualquiera; no hay un control de acceso.
protected - los métodos protegidos (protected) pueden ser usados únicamente por objetos de la misma 
clase y subclases, a las que pertenece el método; pero nunca por el propio objeto. Por así decirlo,
 el método sólo lo pueden usar los otros miembro de la familia.
private - los métodos privados (private) sólo pueden ser usado por el propio objeto. Técnicamente, 
se dice que el receptor del método siempre es el mismo: self.
El control de acceso se determina dinámicamente, a medida que el programa transcurre. Se obtiene una 
violación de acceso siempre que se intenta ejecutar un método no públi

instancia = sacar un pbjeto de la clase
metodos de clase = simples metodos que estaqn dentro de una clase y qu epueden seer accesados solo por ella 
metodos de instancia = son metodos dentro de la clase y estos pueden recibir o no argumentos
variables de instancia = son aquellas que son creadas en el metodo constructor y pueden ser utilizadas por 
los metodos que existan en la clase

variables de clase = a diferencia de las variables de objeto estas su valor va a ser constante en todos los
metodos  a menos que se haga algun cambio dentro o fuera del metodo pero dentro de la clase

Poliformismo 

se refiere a la propiedad por la que es posible enviar mensajes sintácticamente iguales a objetos de tipos 
distintos. El único requisito que deben cumplir los objetos que se utilizan de manera polimórfica es saber 
responder al mensaje que se les envía.


Separation of Concerns

Basicamente es separar codigo por responsabiliadades













