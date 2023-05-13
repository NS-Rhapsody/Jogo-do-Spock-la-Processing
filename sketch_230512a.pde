int jogador;
int computador = int(random(1, 5));
String resultado;
int estagio = 0;

void setup() {
  size(500,500);
  text("Escolha um item", 200, 250);
  println(computador);
  textSize(20);
}

void draw() {
  if (estagio == 0) {
    background(150);
    if (mouseX < 100 && mouseY > 400) {
      fill(0);
      square(0, 400, 100);
      fill(255);
      text("Tesoura", 25, 450);
    } else {
      fill(255);
      square(0, 400, 100);
      fill(0);
      text("Tesoura", 25, 450);
    }
    if (mouseX > 100 && mouseX < 200 && mouseY > 400) {
      fill(0);
      square(100, 400, 100);
      fill(255);
      text("Papel", 135, 450);
    } else {
      fill(255);
      square(100, 400, 100);
      fill(0);
      text("Papel", 135, 450);
    }
    if (mouseX > 200 && mouseX < 300 && mouseY > 400) {
      fill(0);
      square(200, 400, 100);
      fill(255);
      text("Pedra", 235, 450);
    } else {
      fill(255);
      square(200, 400, 100);
      fill(0);
      text("Pedra", 235, 450);
    }
    if (mouseX > 300 && mouseX < 400 && mouseY > 400) {
      fill(0);
      square(300, 400, 100);
      fill(255);
      text("Calango", 330, 450);
    } else {
      fill(255);
      square(300, 400, 100);
      fill(0);
      text("Calango", 330, 450);
    }
    if (mouseX > 400 && mouseX < 500 && mouseY > 400) {
      fill(0);
      square(400, 400, 100);
      fill(255);
      text("Spock", 425, 450);
    } else {
      fill(255);
      square(400, 400, 100);
      fill(0);
      text("Spock", 425, 450);
    }
  } else {
    background(150);
    fill(0);
    text(resultado, 225, 250);
    if (mouseX > 200 && mouseX < 300 && mouseY > 100 && mouseY < 150) {
      fill(0);
      rect(200, 100, 100, 50);
      fill(255);
      text("Reiniciar", 215, 131);
    } else {
      fill(255);
      rect(200, 100, 100, 50);
      fill(0);
      text("Reiniciar", 215, 131);
    }
  }
}

void mousePressed() {
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
  if (mouseX > 200 && mouseX < 300 && mouseY > 100 && mouseY < 150 && estagio == 1) {
      estagio = 0;
      computador = int(random(1, 5));
    }
}
