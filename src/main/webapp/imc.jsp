<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>C�lculo IMC</title>

</head>
<body>
  <h1>C�lculo IMC</h1>
  <form>
  Peso: <input type="text" name="peso" value="${param.peso}"><br>
  Altura: <input type="text" name="altura" value="${param.altura}"><br>
  Sexo: <input type="text" name="sexo" value="${param.sexo}"><br>
  <button>Calcular</button>
  </form>
<%
String pesoStr = request.getParameter("peso");
//Se o campo "peso" n�o foi informado, atribui "0", sen�o fica como est�.
pesoStr = (pesoStr == null ? "0" : pesoStr);
int peso = 0;
try {
peso = Integer.parseInt(pesoStr);
} catch(Exception e) {
System.out.println(e);
}


String alturaStr = request.getParameter("altura");
//Se o campo "altura" n�o foi informado, atribui "0", sen�o fica como est�.
alturaStr = (alturaStr == null ? "0" : alturaStr);
int altura = 0;
try {
idade = Integer.parseInt(alturaStr);
} catch(Exception e) {
System.out.println(e);
}

String sexoStr = request.getParameter("sexo");
//Se o campo "sexo" n�o foi informado, atribui "0", sen�o fica como est�.
sexoStr = (sexoStr == null ? "0" : (sexoStr == "masculino" ? sexoStr : (sexoStr == "feminino" ? sexoStr : "0")));
int sexo = 0;
try {
sexo = Integer.parseInt(sexoStr);
} catch(Exception e) {
System.out.println(e);
}
int imc = peso / (altura*altura);

if(sexoStr == "masculino"){
	if (imc == 0) {
		  %><b>Informe uma idade v�lida.</b><%
		} else if (imc > 0 && imc < 19,1) {
		  %><b>Menor de idade.</b><%
		} else if() {
		  %><b>Maior de idade.</b><%
		}else if() {
		%><b>Maior de idade.</b><%
		}else {
			
		}
		
}
%>
</body>
</html>