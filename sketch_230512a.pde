int computador = int(random(1, 5));
String computadorText;
String resultado;
int estagio = -2;
int posicaoText = -50;
float transparencia = 0;
int vitoriasComputador = 0;
int vitoriasJogador = 0;
PImage photo;

void setup() {
  size(500,500);
  println(computador);
  textSize(20);
  textAlign(CENTER);
  photo = loadImage("spocke.png");
}

void draw() {
  if (estagio == -2 && posicaoText < 250) {
    background(150);
    posicaoText+=3;
    fill(0);
    text("Pedra-Papel-Tesoura-Calango-Spock", posicaoText, 150);
    text("Escolha um dos itens", posicaoText, 200);
    if (posicaoText == 250) {
      estagio = -1;
    }
  } else if (estagio == -1) {
    transparencia += 3;
    fill(255, 255, 255, transparencia);
    square(0, 400, 100);
    square(100, 400, 100);
    square(200, 400, 100);
    square(300, 400, 100);
    square(400, 400, 100);
    fill(0, 0, 0, transparencia);
    text("Tesoura", 50, 450);
    text("Papel", 150, 450);
    text("Pedra", 250, 450);
    text("Calango", 350, 450);
    text("Spock", 450, 450);
    if (transparencia == 255) {
    estagio = 0;
    }
  } else if (estagio == 0) {    
    background(150);
    image(photo, 0, 0);
    fill(0);
    text("Pedra-Papel-Tesoura-Calango-Spock", 250, 150);
    text("Escolha um dos itens", 250, 200);
    text("Jogador " + vitoriasJogador + " x " + vitoriasComputador + " Computador", 250, 300);
    if (mouseX < 100 && mouseY > 400) {
      fill(0);
      square(0, 400, 100);
      fill(255);
      text("Tesoura", 50, 450);
    } else {
      fill(255);
      square(0, 400, 100);
      fill(0);
      text("Tesoura", 50, 450);
    }
    if (mouseX > 100 && mouseX < 200 && mouseY > 400) {
      fill(0);
      square(100, 400, 100);
      fill(255);
      text("Papel", 150, 450);
    } else {
      fill(255);
      square(100, 400, 100);
      fill(0);
      text("Papel", 150, 450);
    }
    if (mouseX > 200 && mouseX < 300 && mouseY > 400) {
      fill(0);
      square(200, 400, 100);
      fill(255);
      text("Pedra", 250, 450);
    } else {
      fill(255);
      square(200, 400, 100);
      fill(0);
      text("Pedra", 250, 450);
    }
    if (mouseX > 300 && mouseX < 400 && mouseY > 400) {
      fill(0);
      square(300, 400, 100);
      fill(255);
      text("Calango", 350, 450);
    } else {
      fill(255);
      square(300, 400, 100);
      fill(0);
      text("Calango", 350, 450);
    }
    if (mouseX > 400 && mouseX < 500 && mouseY > 400) {
      fill(0);
      square(400, 400, 100);
      fill(255);
      text("Spock", 450, 450);
    } else {
      fill(255);
      square(400, 400, 100);
      fill(0);
      text("Spock", 450, 450);
    }
  } else {
    background(150);
    fill(0);
    if (computador == 1) {
      computadorText = "Tesoura";
    } else if (computador == 2) {
      computadorText = "Papel";
    } else if (computador == 3) {
      computadorText = "Pedra";
    } else if (computador == 4) {
      computadorText = "Calango";
    } else {
      computadorText = "Spock";
    }
    text("O computador escolheu " + computadorText, 250, 150); 
    text(resultado, 250, 250);
    if (mouseX > 200 && mouseX < 300 && mouseY > 300 && mouseY < 350) {
      fill(0);
      rect(200, 300, 100, 50);
      fill(255);
      text("Reiniciar", 250, 330);
    } else {
      fill(255);
      rect(200, 300, 100, 50);
      fill(0);
      text("Reiniciar", 250, 330);
    }
  }
}

void mousePressed() {
  if (estagio == 0) {
    if (mouseX < 100 && mouseY > 400) {
      estagio = 1;
      if (computador == 2 || computador == 4) {
        resultado = "Ganhou";
      } else if (computador == 1) {
        resultado = "Empatou";
      } else {
        resultado = "Perdeu tudo, morando de aluguel";
      }
    }
    if (mouseX > 100 && mouseX < 200 && mouseY > 400) {
      estagio = 1;
      if (computador == 3 || computador == 5) {
        resultado = "Ganhou";
      } else if (computador == 2) {
        resultado = "Empatou";
      } else {
        resultado = "Perdeu tudo, morando de aluguel";
      }
    }
    if (mouseX > 200 && mouseX < 300 && mouseY > 400) {
      estagio = 1;
      if (computador == 1 || computador == 4) {
        resultado = "Ganhou";
      } else if (computador == 3) {
        resultado = "Empatou";
      } else {
        resultado = "Perdeu tudo, morando de aluguel";
      }
    }
    if (mouseX > 300 && mouseX < 400 && mouseY > 400) {
      estagio = 1;
      if (computador == 2 || computador == 5) {
        resultado = "Ganhou";
      } else if (computador == 4) {
        resultado = "Empatou";
      } else {
        resultado = "Perdeu tudo, morando de aluguel";
      }
    }
    if (mouseX > 400 && mouseX < 500 && mouseY > 400) {
      estagio = 1;
      if (computador == 1 || computador == 3) {
        resultado = "Ganhou";
      } else if (computador == 5) {
        resultado = "Empatou";
      } else {
        resultado = "Perdeu tudo, morando de aluguel";
      }
    }
  } else {
  if (mouseX > 200 && mouseX < 300 && mouseY > 300 && mouseY < 350 && estagio == 1) {
      estagio = 0;
      computador = int(random(1, 5));
      if (resultado == "Ganhou") {
        vitoriasJogador++;
      } else if (resultado == "Perdeu tudo, morando de aluguel") {
        vitoriasComputador++;
      }
    }
  }
}
