# 📱 Calculadora Flutter (MVC)

Projeto de uma **calculadora simples desenvolvida em Flutter**, utilizando o padrão de arquitetura **MVC (Model-View-Controller)** para organizar melhor o código e separar responsabilidades.

---

## 📚 Objetivo do Projeto

Este projeto foi criado com o objetivo de **praticar Flutter e a arquitetura MVC**, separando:

* Interface do usuário
* Lógica de controle
* Regras de cálculo

Isso facilita a manutenção, organização e escalabilidade do aplicativo.

---

## 🧱 Arquitetura Utilizada

O projeto segue o padrão **MVC**:

* **Model** → Responsável pelos cálculos e **dados**
* **View** → **Interface do usuário** (tela da calculadora)
* **Controller** → Intermediário entre a interface e a **lógica**

Fluxo do funcionamento:

Usuário → View → Controller → Model → Controller → View

---

## 📂 Estrutura de Pastas

```
lib
 ┣ main.dart
 ┣ model
 ┃ ┗ calculadora_model.dart
 ┣ controller
 ┃ ┗ calculadora_controller.dart
 ┗ view
   ┗ calculadora_view.dart
```

---

## ⚙️ Funcionalidades

* ➕ Adição
* ➖ Subtração
* ✖️ Multiplicação
* ➗ Divisão
* 🧹 Limpar cálculo
* 🖥️ Display para mostrar os números e resultados

---

## 🛠️ Tecnologias Utilizadas

* **Flutter**
* **Dart**
* **Material Design**

---

## ▶️ Como Executar o Projeto

1. Clone o repositório

```
git clone https://github.com/lanaro0108/CalculadoraSimples_Flutter
```

2. Entre na pasta do projeto

```
cd calculadora-flutter
```

3. Instale as dependências

```
flutter pub get
```

4. Execute o projeto

```
flutter run
```

---

## 📸 Interface do Aplicativo

Tela simples com:

* Display para resultados
* Botões numéricos
* Operadores matemáticos

---

## 🎯 Aprendizados

Durante o desenvolvimento deste projeto foram praticados:

* Estrutura de projetos Flutter
* Uso de **StatefulWidget**
* Organização de código com **MVC**
* Manipulação de eventos de botões
* Lógica de programação em **Dart**
* Uso de **Snippets e atalhos**

---

## 👨‍💻 Autor - Pedro Lanaro

Projeto desenvolvido para fins de **estudo e aprendizado em Flutter**.
