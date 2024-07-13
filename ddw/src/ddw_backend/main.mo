import Nat "mo:base/Nat";
import Text "mo:base/Text";
actor calcularsemilla {

    public func calcularAguaRequerida(semilla: Text, hectarea: Nat): async Text {
        var estimacionAgua: Nat = 0;
        // Convertir la semilla a minúsculas
        for (char in Text.toIter(semilla)) {
        };
    // Aquí se pueden definir diferentes semillas y sus necesidades de agua
    switch (semilla) {
      case ("Maíz") {
        estimacionAgua := 100 * hectarea;
      };
      case ("Frijol") {
        estimacionAgua := 100 * hectarea;
      };
      
      case ("Trigo") {
        estimacionAgua := 100 * hectarea;
      };
      
      case ("Cebada") {
        estimacionAgua := 100 * hectarea;
      };
      
      case ("Avena") {
        estimacionAgua := 100 * hectarea;
      };
      case ("semilla2") {
        estimacionAgua := 150 * hectarea;
      };
      // Agregar más casos según sea necesario para otras semillas
      case (_) {
        return "Semilla no reconocida";
      };
    };

    return "Estimación de agua requerida para " # semilla # " en " # Nat.toText(hectarea) # " hectáreas: " # Nat.toText(estimacionAgua) # " litros.";
  };

  // Función para determinar los cuidados requeridos para cada tipo de semilla
  public func determinarCuidados(semilla: Text): async Text {
    var cuidados = "";

    // Aquí se pueden definir los cuidados específicos para cada tipo de semilla
    switch (semilla) {
      case ("semilla1") {
        cuidados := "Cuidados para la semilla1: riego regular, fertilización mensual.";
      };
      case ("semilla2") {
        cuidados := "Cuidados para la semilla2: riego abundante, suelo bien drenado.";
      };
      // Agregar más casos según sea necesario para otras semillas
      case (_) {
        return "Cuidados no definidos para esta semilla";
      };
    };

    return cuidados;
  };

  // Función para regular el riego y minimizar el consumo máximo de agua
public func regularRiego(semilla: Text) : async Text {
  var regulacion = "";

  // Aquí se pueden definir estrategias para regular el riego según la semilla
  switch (semilla) {
    case ("semilla1") {
      regulacion := "Regulación del riego para semilla1: usar sistemas de goteo, monitoreo del suelo.";
    };
    case ("semilla2") {
      regulacion := "Regulación del riego para semilla2: riego por aspersión controlado, ajuste estacional.";
    };
    // Agregar más casos según sea necesario para otras semillas
    case (_) {
      regulacion := "Regulación no definida para esta semilla";
    };
  };

  return regulacion;
};


  // Función para calcular el máximo del riego del agua
  public func maximoRiego(semilla: Text, hectarea: Nat) : async Text {
    var maximo = 0;

    // Aquí se pueden definir los máximos de riego según la semilla y la hectárea
    switch (semilla) {
      case ("semilla1") {
        maximo := 200 * hectarea;
      };
      case ("semilla2") {
        maximo := 250 * hectarea;
      };
      // Agregar más casos según sea necesario para otras semillas
      case (_) {
        return "Máximo de riego no definido para esta semilla";
      };
    };

    return "Máximo de riego de agua para " # semilla # " en " # Nat.toText(hectarea) # " hectáreas: " # Nat.toText(maximo) # " litros.";
  };
}
