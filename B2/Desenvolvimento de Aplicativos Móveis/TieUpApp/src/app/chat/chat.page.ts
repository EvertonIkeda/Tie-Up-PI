import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-chat',
  templateUrl: './chat.page.html',
  styleUrls: ['./chat.page.scss'],
})
export class ChatPage implements OnInit {

  lista_mensagens = [
    {
      imagem: "../../assets/images/woman.png",
      nome: "Márcia",
      quantidade: 3,
      tempo: "3 min"
    },
    {
      imagem: "../../assets/images/man.png",
      nome: "Henrique",
      quantidade: 2,
      tempo: "1 d"
    },
    {
      imagem: "../../assets/images/man.png",
      nome: "Lucas",
      quantidade: 5,
      tempo: "1 d"
    },
    {
      imagem: "../../assets/images/woman.png",
      nome: "Ana",
      quantidade: 1,
      tempo: "2 d"
    },
    {
      imagem: "../../assets/images/woman.png",
      nome: "Roberta",
      quantidade: 2,
      tempo: "3 d"
    },
  ]

  constructor() { }

  ngOnInit() {
  }

}
