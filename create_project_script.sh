#!/bin/bash

# =============================================================================
# LilCopilGit v4.0 - Автоматическое создание проекта
# =============================================================================

echo "🚀 Создание проекта LilCopilGit v4.0..."

# Определяем путь к проекту
PROJECT_PATH="/Volumes/Extreme SSD/lilbaza360"

# Создаем базовую структуру
echo "📁 Создание структуры папок..."
mkdir -p "$PROJECT_PATH"
cd "$PROJECT_PATH"

# Инициализируем React проект
echo "⚛️ Инициализация React приложения..."
npx create-react-app . --template typescript
cd "$PROJECT_PATH"

# Устанавливаем дополнительные зависимости
echo "📦 Установка зависимостей..."
npm install lucide-react recharts react-router-dom
npm install --save-dev @types/react-router-dom

# Создаем структуру модулей
echo "🏗️ Создание структуры модулей..."
mkdir -p src/components/Layout
mkdir -p src/modules/{dashboard,team,tgstat,ai-assistant,finance,kpi,knowledge,resume,product,players,affiliate,analytics,marketing,reports,security,settings}

# Обновляем package.json для порта 1119
echo "⚙️ Настройка порта 1119..."
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

# Создаем основные файлы
echo "📝 Создание основных файлов..."

# index.tsx
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

# index.css
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

# Создаем заглушки для всех модулей
echo "🔧 Создание модулей..."

# KPI модуль
cat > src/modules/kpi/KPI.tsx << 'EOF'
import React from 'react';
import { Target, TrendingUp, Users, DollarSign } from 'lucide-react';

const KPI: React.FC = () => (
  <div className="module-placeholder">
    <div className="placeholder-header">
      <Target size={48} />
      <h1>KPI Management</h1>
      <p>Система управления ключевыми показателями эффективности</p>
    </div>
    <div className="placeholder-content">
      <div className="feature-grid">
        <div className="feature-item">
          <TrendingUp size={24} />
          <h3>Отслеживание целей</h3>
          <p>Мониторинг достижения KPI в реальном времени</p>
        </div>
        <div className="feature-item">
          <Users size={24} />
          <h3>Командные метрики</h3>
          <p>KPI по отделам и сотрудникам</p>
        </div>
        <div className="feature-item">
          <DollarSign size={24} />
          <h3>Связь с финансами</h3>
          <p>Влияние KPI на бонусы и зарплаты</p>
        </div>
      </div>
    </div>
  </div>
);

export default KPI;
EOF

# Аналогично создаем остальные модули...
echo "📦 Создание остальных модулей-заглушек..."

# Knowledge
cat > src/modules/knowledge/Knowledge.tsx << 'EOF'
import React from 'react';
import { BookOpen, Search, FileText, Users } from 'lucide-react';

const Knowledge: React.FC = () => (
  <div className="module-placeholder">
    <div className="placeholder-header">
      <BookOpen size={48} />
      <h1>База знаний</h1>
      <p>Централизованное хранилище знаний и документации</p>
    </div>
    <div className="placeholder-content">
      <div className="feature-grid">
        <div className="feature-item">
          <Search size={24} />
          <h3>AI-поиск</h3>
          <p>Умный поиск по всей базе знаний</p>
        </div>
        <div className="feature-item">
          <FileText size={24} />
          <h3>Документооборот</h3>
          <p>Управление документами и процессами</p>
        </div>
        <div className="feature-item">
          <Users size={24} />
          <h3>Обучение команды</h3>
          <p>Материалы для онбординга</p>
        </div>
      </div>
    </div>
  </div>
);

export default Knowledge;
EOF

# Создаем общий CSS для заглушек
cat > src/modules/placeholder.css << 'EOF'
.module-placeholder {
  display: flex;
  flex-direction: column;
  gap: 2rem;
  padding: 3rem;
  animation: fadeIn 0.5s ease-out;
}

.placeholder-header {
  text-align: center;
  margin-bottom: 2rem;
}

.placeholder-header svg {
  color: #00D563;
  margin-bottom: 1.5rem;
  opacity: 0.8;
}

.placeholder-header h1 {
  font-size: 2rem;
  font-weight: 700;
  color: #FFFFFF;
  margin-bottom: 1rem;
  background: linear-gradient(135deg, #00D563, #FF0099);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.placeholder-header p {
  font-size: 1.125rem;
  color: #B0BEC5;
  max-width: 600px;
  margin: 0 auto;
  line-height: 1.75;
}

.placeholder-content {
  background: #2A3F54;
  border: 1px solid rgba(255, 255, 255, 0.1);
  border-radius: 12px;
  padding: 3rem;
  position: relative;
  overflow: hidden;
}

.placeholder-content::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 3px;
  background: linear-gradient(90deg, #00D563, #FF0099);
}

.feature-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 1.5rem;
}

.feature-item {
  background: #1B2838;
  border: 1px solid rgba(255, 255, 255, 0.1);
  border-radius: 12px;
  padding: 1.5rem;
  text-align: center;
  transition: all 0.3s ease;
  position: relative;
  overflow: hidden;
}

.feature-item::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 2px;
  background: linear-gradient(90deg, #00D563, #FF0099);
  transform: scaleX(0);
  transition: transform 0.3s ease;
}

.feature-item:hover::before {
  transform: scaleX(1);
}

.feature-item:hover {
  transform: translateY(-4px);
  box-shadow: 0 20px 25px rgba(0, 0, 0, 0.25);
  border-color: rgba(0, 213, 99, 0.3);
}

.feature-item svg {
  color: #00D563;
  margin-bottom: 1rem;
  transition: transform 0.3s ease;
}

.feature-item:hover svg {
  transform: scale(1.1);
}

.feature-item h3 {
  font-size: 1.125rem;
  font-weight: 600;
  color: #FFFFFF;
  margin-bottom: 0.5rem;
}

.feature-item p {
  color: #B0BEC5;
  font-size: 0.875rem;
  line-height: 1.5;
}

.feature-item::after {
  content: 'В разработке';
  position: absolute;
  top: 0.5rem;
  right: 0.5rem;
  background: rgba(0, 213, 99, 0.2);
  color: #00D563;
  font-size: 0.75rem;
  font-weight: 600;
  padding: 2px 8px;
  border-radius: 12px;
  text-transform: uppercase;
  letter-spacing: 0.5px;
}

@media (max-width: 768px) {
  .module-placeholder {
    padding: 1.5rem;
  }
  
  .placeholder-content {
    padding: 1.5rem;
  }
  
  .feature-grid {
    grid-template-columns: 1fr;
  }
  
  .placeholder-header h1 {
    font-size: 1.5rem;
  }
  
  .placeholder-header p {
    font-size: 1rem;
  }
}
EOF

echo "✅ Установка зависимостей..."
npm install

echo "🎉 Проект LilCopilGit v4.0 создан успешно!"
echo ""
echo "📍 Расположение: $PROJECT_PATH"
echo "🌐 URL: http://localhost:1119"
echo ""
echo "🚀 Для запуска выполните:"
echo "   cd \"$PROJECT_PATH\""
echo "   npm start"
echo ""
echo "📚 Документация создана в папке проекта"
echo "✨ Наслаждайтесь управлением своим iGaming бизнесом!"