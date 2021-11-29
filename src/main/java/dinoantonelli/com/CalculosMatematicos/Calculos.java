package dinoantonelli.com.CalculosMatematicos;

public class Calculos {

	
	private static int resultado;

	public static int metodoSuma(int num1, int num2){ //lo declaro estatico para que sea mas facil llamarlo desde el jsp, no necesito instaciarlo

	resultado=num1+num2;

	return resultado;

	}

	public static int metodoResta(int num1, int num2){

	resultado=num1-num2;

	return resultado;
	}

	public static int metodoMultiplica(int num1, int num2){

	resultado=num1*num2;

	return resultado;
	}
}
