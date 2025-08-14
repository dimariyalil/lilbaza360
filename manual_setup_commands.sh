# =============================================================================
# РУЧНОЕ СОЗДАНИЕ ПРОЕКТА LilCopilGit v4.0
# =============================================================================

# 1. СОЗДАНИЕ БАЗОВОЙ СТРУКТУРЫ
cd /Volumes/Extreme\ SSD/
mkdir lilbaza360
cd lilbaza360

# 2. ИНИЦИАЛИЗАЦИЯ REACT ПРОЕКТА
npx create-react-app . --template typescript

# 3. УСТАНОВКА ДОПОЛНИТЕЛЬНЫХ ЗАВИСИМОСТЕЙ
npm install lucide-react recharts react-router-dom
npm install --save-dev @types/react-router-dom

# 4. СОЗДАНИЕ СТРУКТУРЫ ПАПОК
mkdir -p src/components/Layout
mkdir -p src/modules/{dashboard,team,tgstat,ai-assistant,finance,kpi,knowledge,resume,product,players,affiliate,analytics,marketing,reports,security,settings}

# 5. СОЗДАНИЕ package.json (ЗАМЕНИТЕ СОДЕРЖИМОЕ)
cat > package.json << 'EOF'
{
  "name": "lilcopilgit-v4",
  "version": "4.0.0",
  "description": "LilCopilGit v4.0 - Комплексная система управления iGaming проектом lilbet",
  "private": true,
  "dependencies": {
    "@testing-library/jest-dom": "^5.16.4",
    "@testing-library/react": "^13.3.0",
    "@testing-library/user-event": "^13.5.0",
    "@types/jest": "^27.5.2",
    "@types/node": "^16.11.56",
    "@types/react": "^18.0.17",
    "@types/react-dom": "^18.0.6",
    "lucide-react": "^0.263.1",
    "react": "^18.2.0",
    "react-dom": "^18.2.0",
    "react-router-dom": "^6.3.0",
    "react-scripts": "5.0.1",
    "recharts": "^2.7.2",
    "typescript": "^4.7.4",
    "web-vitals": "^2.1.4"
  },
  "scripts": {
    "start": "PORT=1119 react-scripts start",
    "build": "react-scripts build",
    "test": "react-scripts test",
    "eject": "react-scripts eject"
  },
  "eslintConfig": {
    "extends": [
      "react-app",
      "react-app/jest"
    ]
  },
  "browserslist": {
    "production": [
      ">0.2%",
      "not dead",
      "not op_mini all"
    ],
    "development": [
      "last 1 chrome version",
      "last 1 firefox version",
      "last 1 safari version"
    ]
  },
  "homepage": ".",
  "proxy": "http://localhost:4568"
}
EOF

# 6. СОЗДАНИЕ src/index.tsx
cat > src/index.tsx << 'EOF'
import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';

const root = ReactDOM.createRoot(
  document.getElementById('root') as HTMLElement
);

root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);
EOF

# 7. СОЗДАНИЕ src/index.css
cat > src/index.css << 'EOF'
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap');

* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

html {
  font-size: 16px;
  scroll-behavior: smooth;
}

body {
  margin: 0;
  font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen', 'Ubuntu', 'Cantarell', sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  background: #1B2838;
  color: #FFFFFF;
  overflow-x: hidden;
}

code {
  font-family: 'SF Mono', 'Monaco', 'Inconsolata', 'Roboto Mono', monospace;
}

::-webkit-scrollbar {
  width: 8px;
  height: 8px;
}

::-webkit-scrollbar-track {
  background: transparent;
}

::-webkit-scrollbar-thumb {
  background: rgba(255, 255, 255, 0.2);
  border-radius: 4px;
}

::-webkit-scrollbar-thumb:hover {
  background: rgba(255, 255, 255, 0.3);
}

::selection {
  background: rgba(0, 213, 99, 0.3);
  color: #FFFFFF;
}

button:focus-visible,
input:focus-visible,
select:focus-visible,
textarea:focus-visible {
  outline: 2px solid #00D563;
  outline-offset: 2px;
}

@keyframes spin {
  to { transform: rotate(360deg); }
}

.loading {
  animation: spin 1s linear infinite;
}

@keyframes fadeIn {
  from {
    opacity: 0;
    transform: translateY(20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.fade-in {
  animation: fadeIn 0.3s ease-out;
}

@media print {
  * {
    background: white !important;
    color: black !important;
  }
  
  .no-print {
    display: none !important;
  }
}
EOF

# 8. ЗАПУСК ПРОЕКТА
echo "🚀 Для запуска проекта выполните:"
echo "npm start"
echo ""
echo "📍 Проект будет доступен по адресу: http://localhost:1119"
echo ""
echo "📋 СЛЕДУЮЩИЕ ШАГИ:"
echo "1. Скопируйте остальные файлы из артефактов Claude"
echo "2. Создайте App.tsx, App.css и остальные компоненты"
echo "3. Создайте все модули в соответствующих папках"
echo "4. Запустите npm start для проверки"

# 9. ПОЛЕЗНЫЕ КОМАНДЫ ДЛЯ РАЗРАБОТКИ

echo ""
echo "💡 ПОЛЕЗНЫЕ КОМАНДЫ:"
echo ""
echo "# Найти проект на диске:"
echo "find /Volumes -name 'lilbaza360' -type d 2>/dev/null"
echo ""
echo "# Быстро перейти в проект:"
echo "cd \$(find /Volumes -name 'lilbaza360' -type d 2>/dev/null | head -1)"
echo ""
echo "# Проверить работу порта:"
echo "lsof -i :1119"
echo ""
echo "# Убить процесс на порту (если нужно):"
echo "lsof -ti:1119 | xargs kill -9"
echo ""
echo "# Очистить кэш npm (если проблемы):"
echo "rm -rf node_modules package-lock.json"
echo "npm install"
echo ""
echo "# Открыть в VS Code:"
echo "code ."
echo ""
echo "# Создать alias для быстрого доступа:"
echo "echo 'alias lilcopil=\"cd /Volumes/Extreme\ SSD/lilbaza360\"' >> ~/.zshrc"
echo "source ~/.zshrc"
echo ""

# 10. СТРУКТУРА ФИНАЛЬНОГО ПРОЕКТА
echo "📂 ФИНАЛЬНАЯ СТРУКТУРА ПРОЕКТА:"
echo ""
echo "lilbaza360/"
echo "├── package.json"
echo "├── public/"
echo "├── src/"
echo "│   ├── index.tsx"
echo "│   ├── index.css"
echo "│   ├── App.tsx"
echo "│   ├── App.css"
echo "│   ├── components/"
echo "│   │   └── Layout/"
echo "│   │       ├── Layout.tsx"
echo "│   │       └── Layout.css"
echo "│   └── modules/"
echo "│       ├── dashboard/"
echo "│       │   ├── Dashboard.tsx"
echo "│       │   └── Dashboard.css"
echo "│       ├── team/"
echo "│       │   ├── Team.tsx"
echo "│       │   └── Team.css"
echo "│       ├── tgstat/"
echo "│       │   ├── TGStat.tsx"
echo "│       │   └── TGStat.css"
echo "│       ├── ai-assistant/"
echo "│       │   ├── AIAssistant.tsx"
echo "│       │   └── AIAssistant.css"
echo "│       ├── finance/"
echo "│       │   ├── Finance.tsx"
echo "│       │   └── Finance.css"
echo "│       └── [остальные 11 модулей]"
echo "└── node_modules/"
echo ""

echo "✅ ГОТОВО! Следуйте инструкциям выше для завершения создания проекта."
echo "🎯 Результат: Полностью функциональная система управления iGaming проектом!"
echo "🎰 Порт: http://localhost:1119"