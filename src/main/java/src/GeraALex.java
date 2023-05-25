package src;

import java.nio.file.Paths;

public class GeraALex {

	public static void main(String[] args) {
		
		String rootPath = Paths.get("").toAbsolutePath().toString();
		String subPath = "/src/main/java/src/";

		String file[] = { rootPath + subPath + "lex.flex" };

		jflex.Main.main(file); //Gera o Scanner
	}

}
