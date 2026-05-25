# 📅 Dashboard de Férias da Equipe

Dashboard interativo para acompanhamento da programação de férias, hospedado no GitHub Pages.

## 📁 Estrutura

```
team-dashboard/
├── index.html            ← Dashboard principal
├── data/
│   └── ferias.csv        ← Dados exportados do Excel (atualizar aqui)
├── importar-ferias.bat   ← Script de atualização automática
└── README.md
```

## 🚀 Como usar

### Primeira vez

1. Clone ou baixe este repositório
2. Edite o `importar-ferias.bat` e ajuste o caminho do Excel:
   ```
   set EXCEL_ORIGEM=C:\caminho\para\seu\FÉRIAS_2025-2026.xlsx
   ```
3. Execute o `importar-ferias.bat` (duplo clique)
4. Abra o `index.html` no navegador

### Atualizar os dados

1. Salve o Excel com as novas informações
2. Execute `importar-ferias.bat` novamente
3. Faça o commit no GitHub:
   ```
   git add data/ferias.csv
   git commit -m "Atualiza férias"
   git push
   ```

## 🌐 Publicar no GitHub Pages

1. Crie um repositório no GitHub
2. Suba todos os arquivos
3. Vá em **Settings → Pages**
4. Selecione `main` branch, pasta `/root`
5. O link do dashboard será: `https://seuusuario.github.io/team-dashboard/`

## 📊 Formato do CSV

O arquivo `data/ferias.csv` deve ter estas colunas:

| Coluna | Formato | Exemplo |
|---|---|---|
| DRT | número | 9003013508 |
| NOME | texto maiúsculo | CAMILA BARBOZA |
| CARGO | texto | ANALISTA |
| FERIAS1_INICIO | YYYY-MM-DD | 2025-12-22 |
| FERIAS1_FIM | YYYY-MM-DD | 2026-01-10 |
| FERIAS2_INICIO | YYYY-MM-DD (opcional) | |
| FERIAS2_FIM | YYYY-MM-DD (opcional) | |
| OBS | texto | 20 DIAS |
| DIAS_PENDENTES | número | 0 |
| AGENDADA | texto | SIM |

## 💡 Próximas abas sugeridas

- **Equipe** — Cards com foto/avatar e status de cada colaborador
- **Análise** — Gráficos de cobertura por mês, heatmap de sobreposições
- **Feriados** — Integração com calendário de feriados nacionais

---
Gerado com ❤️ via Claude Sonnet
