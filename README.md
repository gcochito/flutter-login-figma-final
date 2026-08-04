# Flutter Login Flow - Figma Implementation

Este projeto é uma implementação de um fluxo de login em Flutter, baseado em um design do Figma. O objetivo principal foi aplicar o conceito de **componentização** para criar uma interface organizada, reutilizável e fiel ao design original.

## 🚀 Tecnologias Utilizadas

- **Flutter**: Framework para desenvolvimento cross-platform.
- **Dart**: Linguagem de programação.
- **Figma**: Ferramenta de design utilizada como referência.

## 🏗️ Estrutura do Projeto

O projeto segue uma estrutura organizada para facilitar a manutenção e reutilização de código:

```text
lib/
├── components/      # Widgets reutilizáveis (Botões, Inputs, etc.)
├── screens/         # Telas completas do fluxo de login
├── theme/           # Definições de cores e estilos globais
└── main.dart        # Ponto de entrada do aplicativo
```

## 🧩 Componentes Reutilizáveis

Identificamos elementos comuns entre as telas e criamos os seguintes widgets:

1.  **AppButton**: Botão primário customizado (utilizado em "Continue" e "Return to Login").
2.  **AppTextField**: Campo de entrada de texto com estilo padronizado.
3.  **SocialButton**: Botão para autenticação social (Apple, Google, Facebook).
4.  **AppBackButton**: Botão circular de retorno.

## 📸 Telas Implementadas

1.  **Sign In (Email)**: Primeira tela para inserção do e-mail e opções sociais.
2.  **Sign In (Password)**: Tela de senha após o e-mail.
3.  **Create Account**: Formulário completo para novos usuários.
4.  **Forgot Password**: Recuperação de senha.
5.  **Email Sent**: Confirmação de envio de e-mail de recuperação.

## 🎨 Fidelidade ao Design

- **Cores**: Utilização exata da paleta identificada no Figma (Roxo `#8E6CEF`, Fundo `#F4F4F4`).
- **Espaçamento**: Margens e paddings aplicados conforme o layout proposto.
- **Tipografia**: Hierarquia visual respeitada com títulos em negrito e tamanhos variados.
