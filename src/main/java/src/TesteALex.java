package src;

import java.io.IOException;
import java.io.StringReader;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

public class TesteALex extends Application{
	
	

	public static void main(String[] args) throws IOException {
		
		//launch(args);

		String expr = ";.";

		AnalisadorLexico lexical = new AnalisadorLexico(new StringReader(expr));
		lexical.yylex();
		

	}

	@Override
	public void start(Stage primaStage)  {
		try {
			BorderPane root = new BorderPane();
			Scene scene = new Scene(root, 400, 400);
			primaStage.setScene(scene);
			primaStage.show();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
