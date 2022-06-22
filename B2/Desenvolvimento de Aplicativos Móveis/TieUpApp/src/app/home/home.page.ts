import { Component } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {

  lista = [
    {
      nome: "Érica",
      ocupacao: "Professora de inglês",
      cidade: "Cambé-PR",
      post: "Olá, Sou professora particular de Inglês. Eu tenho horários disponíveis aos sábados!",
      imagem: "../../assets/images/woman.png",
      cor: "post azul"
    },
    {
      nome: "Gabriel",
      ocupacao: "Personal Trainer",
      cidade: "Londrina-PR",
      post: "Boa Tarde! Sou formando em EF pela UniDale. Tenho 5 anos de experiência na área e possuo horário disponível as 17h e as 20h de seg a sex.",
      imagem: "../../assets/images/man.png",
      cor: "post verde"
    },
    {
      nome: "Wellingtom",
      ocupacao: "Conserto de celulares e computadores",
      cidade: "Ibiporã-PR",
      post: "Bom dia! Eu trabalho com conserto de Celulares e Computadores na minha residência, quem tiver interesse entre em contato comigo, então passarei todas as informações necessárias!",
      imagem: "../../assets/images/man.png",
      cor: "post roxo"
    },
    {
      nome: "Júlia",
      ocupacao: "Editora de vídeos",
      cidade: "Londrina-PR",
      post: "Eai! Sou editora de vídeo com mais de 3 anos de experiência em filmagem de casamento e festas. Estarei com 2 semanas livres em agosto (1° e 3°). Entre em contado comigo se precisar dos meus serviços!",
      imagem: "../../assets/images/woman.png",
      cor: "post vermelho"
    }
  ]
  constructor() {}

}
