let msg = "Dato curioso\n";
msg += "¿Sabías que las salchichas están hechas de 50% sal?\n";

opc = prompt(msg);

switch (opc.toLowerCase()) {
  case "¿y el otro 50%?":
  case "¿y el otro 50":
  case "no":
    alert("Chichaaaa 🤭");
    break;
  case "si":
  case "zi":
  case "ci":
    alert("¡Qué inteligente eres!");
    break;
  case "":
    break;
  default:
    opc = prompt("¿Eso qué?");
    switch (opc.toLowerCase()) {
      case "so":
        opc = prompt("rra");
        switch (opc.toLowerCase()) {
          case "eres":
            opc = prompt("Tú");
            switch (opc.toLowerCase()) {
              case "más":
                opc = prompt("¿Qué?");
                switch (opc.toLowerCase()) {
                  case "so":
                    opc = prompt("rra");
                    switch (opc.toLowerCase()) {
                      case "eres":
                        alert("Ya para, por favor");
                        break;
                      case "":
                        break;
                      default:
                        alert("Ok, adiós");
                        break;
                    }
                    break;
                  case "":
                    break;
                  default:
                    alert("Ok, adiós");
                    break;
                }
                break;
              case "":
                break;
              default:
                alert("Ok, adiós");
                break;
            }
            break;
          case "":
            break;
          default:
            alert("Ok, adiós");
            break;
        }
        break;
      case "":
        break;
      default:
        alert("Ok, adiós");
        break;
    }
    break;
}
