<h1 align="center" id="title">Find Roots</h1>

<p id="description">Este programa consiste en crear una aplicación que calcule las raíces (reales) de un polinomio de la forma: 𝑎𝑥^3+𝑏𝑥^2+𝑐𝑥+𝑑.</p>

<h2>🤔 Como funciona</h1>
<p>Este programa se encarga de buscar las raíces reales de los polinomios de tercer grado, para ello es necesario brindar los valores de a,b,c, y d. Posteriormente el programa se encargara de obtener las raíces y darnos un resultado</p>
</br>
<p>Para calcular las raíces utiliza el método de Newton-Raphson el cual consiste en iniciar en x0 e ir avanzando dividiendo f(x) entre f'(x) como se puede ver en la siguiente imagen:</p>
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnnlesWC6ztugf4-Dh41XplRRq9T4BUR2kPg&usqp=CAU" align="center"></img>
 <p>Es por ello que en el programa lo primero que se realizo fueron dos funciones, una correspondiente a f(x) lo cual lo que se hace es básicamente obtener el valor de f(x) para posteriormente utilizarlo en la formula. Es por ello que la siguiente función se encarga justamente de calcular f'(x), puesto que después nos sera útil para iterar sobre la función y encontrar las raíces de dichos polinomios. Dichas funciones se pueden ver a continuación:</p>

<p>Una vez definidas estas funciones tenemos nuestro Método de Newton-Raphson el cual se encarga buscar según una x inicial la raíz mas cercana, lo primero es obtener f(x) y f'(x), esto usando las funciones previamente definidas, una vez tenemos dichos valores, se checa que f'(x) no sea cero o este muy aproximada a cero, esto se checa usando una constante definida previamente llamada epsilon la cual corresponde a un numero muy pequeño decimal el cual nos ayudara a ver que tan cercano a cero esta, si esta lo demasiado cercano, retornamos null, o en este caso NAN dado que si posteriormente intentamos dividir f(x) entre dicho numero no sera posible, pues es intentar dividir entre 0.</p>
</br>
<p>Después de esto calculamos el delta, el cual después sustituiremos en nuestra formula, restando a nuestra x actual el valor de delta, de esa manera obtendremos xn, se checa si delta es muy cercana a 0 o es básicamente 0 usando nuevamente el epsilon definido, en caso de ser así, se ha encontrado una raíz y es posible retornar dicho valor. Si una vez llegado al máximo de iteraciones definido no hemos encontrado una raíz, eso quiere decir que no hay, por lo que retornamos simplemente null. La función descrita anteriormente se puede ver a continuación:</p>

<p>Ya con el método de Newton-Raphson definido en nuestra función main unicamente es necesario iterar desde -10 hasta 10, donde tomaremos el valor de nuestra iteracion como x0, para posteriormente obtener las raíces usando nuestra función definida anteriormente, al finalizar la función de Newton-Raphson se checa si la raíz obtenida es valida y utilizando una función definida como Already In se checa que la raíz encontrada no se haya encontrado anteriormente, esto se hace iterando dentro del vector donde se están guardando las raíces, dado que las raíces no pueden ser mayor a 3 pues es el grado de los polinomios, el máximo de iteraciones que haríamos en dicha función seria 3, en dichas iteraciones se busca que la diferencia entre la nueva raíz y la raíz encontrada anteriormente sea lo mas pequeña posible, si no hay tan poca diferencia, entonces son diferentes, por lo que si se agrega como raíz. Después de esto unicamente se imprimen las raíces usando el formato dado</p>

<h2>💻 Built with</h2>

Technologies used in the project:

*   c++