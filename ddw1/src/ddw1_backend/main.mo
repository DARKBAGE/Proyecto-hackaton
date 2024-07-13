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
      case ("maiz") {
        estimacionAgua := 500 * hectarea;
      };
      case ("frijol") {
        estimacionAgua := 300 * hectarea;
      };
      
      case ("trigo") {
        estimacionAgua := 400 * hectarea;
      };
      
      case ("cebada") {
        estimacionAgua := 350  * hectarea;
      };
      
      case ("avena") {
        estimacionAgua := 400  * hectarea;
      };
      case ("tomate") {
        estimacionAgua := 700 * hectarea;
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
      case ("maiz") {
        cuidados := "Riego: Regular, manteniendo el suelo húmedo pero no encharcado.
                     Fertilización: Mensual con un fertilizante balanceado, preferentemente con nitrógeno en las primeras etapas.";
      };
      case ("frijol") {
        cuidados := "Riego: Regular, asegurando que el suelo esté húmedo, especialmente durante la floración y la formación de vainas.
                     Fertilización: Mensual, priorizando fósforo y potasio.";
      };
      case ("trigo") {
        cuidados := "Riego: Regular, manteniendo el suelo húmedo durante todo el ciclo de crecimiento.
                     Fertilización: Mensual, con un fertilizante rico en nitrógeno.";
      };
      case ("cebada") {
        cuidados := "Cuidados para la semilla2: riego abundante, suelo bien drenado.";
      };
      case ("avena") {
        cuidados := "Riego: Regular, especialmente en las etapas de germinación y crecimiento.
                     Fertilización: Mensual, con énfasis en nitrógeno para promover el crecimiento.";
      };
      case ("tomate") {
        cuidados := "Riego: Regular, asegurando una humedad constante sin encharcar.
                     Fertilización: Mensual, con un fertilizante rico en potasio para promover la fructificación.";
      };
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
    case ("maiz") {
      regulacion := "Regulación: Para el maíz, es recomendable utilizar sistemas de riego por goteo para asegurar un suministro de agua constante y eficiente. Además, se debe monitorear regularmente la humedad del suelo para ajustar el riego según las necesidades de la planta en cada etapa de crecimiento.";
    };
    case ("frijol") {
      regulacion := "Regulación: El frijol también se beneficia del riego por goteo, que ayuda a mantener un suelo uniformemente húmedo y reduce el riesgo de enfermedades relacionadas con el exceso de agua. Es importante monitorear la humedad del suelo para evitar tanto la sequía como el encharcamiento.";
    };
     case ("trigo") {
      regulacion := "Regulación: El trigo necesita un suministro regular de agua, especialmente durante las etapas de desarrollo del grano. El riego por goteo ayuda a mantener una humedad equilibrada en el suelo, promoviendo un crecimiento vigoroso y uniforme de las plantas. ";
    };
      case ("cebada") {
      regulacion := "La cebada es una planta que tolera bien el estrés hídrico, pero para obtener rendimientos óptimos se recomienda el riego moderado y regular. Los sistemas de goteo son útiles para proporcionar agua de manera precisa y controlada, ajustándose a las necesidades del cultivo. ";
    };
      case ("avena") {
      regulacion := "La avena requiere un suministro constante de agua para un crecimiento saludable. Se recomienda el uso de sistemas de riego por goteo para mantener la humedad del suelo de manera uniforme y eficiente, especialmente durante las etapas críticas de crecimiento. ";
    };
      case ("tomate") {
      regulacion := "Los tomates necesitan un riego regular y constante para el desarrollo de frutos de buena calidad. Se recomienda el uso de sistemas de riego por goteo para mantener la humedad del suelo de manera uniforme y evitar problemas relacionados con el exceso de agua. ";
    };
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
      case ("maiz") {
        maximo := 800 * hectarea;
      };
      case ("frijol") {
        maximo := 500 * hectarea;
      };
      case ("trigo") {
        maximo := 600   * hectarea;
      };
      case ("cebada") {
        maximo := 500 * hectarea;
      };
      case ("avena") {
        maximo := 600 * hectarea;
      };
      case ("tomate") {
        maximo := 1300 * hectarea;
      };
      case (_) {
        return "Máximo de riego no definido para esta semilla";
      };
    };

    return "Máximo de riego de agua para " # semilla # " en " # Nat.toText(hectarea) # " hectáreas: " # Nat.toText(maximo) # " litros.";
  };

// Función para calcular el máximo de riego según la semilla y datos climáticos
pu func _estadisticas (semilla: Text, tempp: Nat, prepcp: Nat) : async Text {
    switch (semilla) {
        case "maiz" {
            let maxRiego = 100 * tempp + 2 * prepcp;
            return "Para el maíz, el máximo de riego es " # Nat.toText(maxRiego);
        };
        case "frijol" {
            let maxRiego = 80 * tempp + 3 * prepcp;
            return "Para el frijol, el máximo de riego es " # Nat.toText(maxRiego);
        };
        case "trigo" {
            let maxRiego = 90 * tempp + 25 * prepcp;
            return "Para el trigo, el máximo de riego es " # Nat.toText(maxRiego);
        };
        case "cebada" {
            let maxRiego = 85 * tempp + 2 * prepcp;
            return "Para la cebada, el máximo de riego es " # Nat.toText(maxRiego);
        };
        case "avena" {
            let maxRiego = 80 * tempp + 3 * prepcp;
            return "Para la avena, el máximo de riego es " # Nat.toText(maxRiego);
        };
        case "tomate" {
            let maxRiego = 120 * tempp + 1 * prepcp;
            return "Para el tomate, el máximo de riego es " # Nat.toText(maxRiego);
        };
        case (_) {
        return "Máximo de riego no definido para esta semilla";
      };
    };
  };    
};
