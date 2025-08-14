import React, { useState } from 'react';
import './App.css';
import { Users, TrendingUp, MessageSquare, Brain, DollarSign, Target, BookOpen, FileText, Package, Gamepad2, UserPlus, BarChart3, Megaphone, FileBarChart, Shield, Settings, Menu, X, Home } from 'lucide-react';

const App: React.FC = () => {
  const [activeModule, setActiveModule] = useState('dashboard');
  const [sidebarOpen, setSidebarOpen] = useState(true);

  const modules = [
    { id: 'dashboard', name: 'Главная', icon: Home, color: '#00D563' },
    { id: 'team', name: 'Команда', icon: Users, color: '#FF0099' },
    { id: 'tgstat', name: 'TGStat', icon: MessageSquare, color: '#0088CC' },
    { id: 'ai', name: 'AI Ассистент', icon: Brain, color: '#9333EA' },
    { id: 'finance', name: 'Финансы', icon: DollarSign, color: '#10B981' },
    { id: 'kpi', name: 'KPI', icon: Target, color: '#F59E0B' },
    { id: 'knowledge', name: 'База знаний', icon: BookOpen, color: '#3B82F6' },
    { id: 'resume', name: 'Резюме', icon: FileText, color: '#EC4899' },
    { id: 'product', name: 'Продукт', icon: Package, color: '#8B5CF6' },
    { id: 'players', name: 'Игроки', icon: Gamepad2, color: '#14B8A6' },
    { id: 'affiliate', name: 'Партнёры', icon: UserPlus, color: '#F97316' },
    { id: 'analytics', name: 'Аналитика', icon: BarChart3, color: '#06B6D4' },
    { id: 'marketing', name: 'Маркетинг', icon: Megaphone, color: '#EF4444' },
    { id: 'reports', name: 'Отчёты', icon: FileBarChart, color: '#84CC16' },
    { id: 'security', name: 'Безопасность', icon: Shield, color: '#DC2626' },
    { id: 'settings', name: 'Настройки', icon: Settings, color: '#6B7280' }
  ];

  const renderContent = () => {
    const module = modules.find(m => m.id === activeModule);
    const Icon = module?.icon || Home;
    
    if (activeModule === 'dashboard') {
      return (
        <div className="dashboard">
          <h1>CEO Панель управления - lilbet</h1>
          <div className="stats-grid">
            <div className="stat-card">
              <h3>Общий доход</h3>
              <p className="stat-value">$12.5M</p>
              <span className="stat-change positive">+15.3%</span>
            </div>
            <div className="stat-card">
              <h3>Активные игроки</h3>
              <p className="stat-value">48,392</p>
              <span className="stat-change positive">+8.7%</span>
            </div>
            <div className="stat-card">
              <h3>GGR (валовой игровой доход)</h3>
              <p className="stat-value">$3.2M</p>
              <span className="stat-change positive">+12.1%</span>
            </div>
            <div className="stat-card">
              <h3>Новые пользователи</h3>
              <p className="stat-value">5,847</p>
              <span className="stat-change negative">-2.3%</span>
            </div>
            <div className="stat-card">
              <h3>Конверсия в депозит</h3>
              <p className="stat-value">28.4%</p>
              <span className="stat-change positive">+3.2%</span>
            </div>
            <div className="stat-card">
              <h3>Средний чек</h3>
              <p className="stat-value">$285</p>
              <span className="stat-change positive">+7.8%</span>
            </div>
            <div className="stat-card">
              <h3>Retention (день 7)</h3>
              <p className="stat-value">42.7%</p>
              <span className="stat-change positive">+5.1%</span>
            </div>
            <div className="stat-card">
              <h3>ROI маркетинга</h3>
              <p className="stat-value">287%</p>
              <span className="stat-change positive">+18.3%</span>
            </div>
          </div>
          <div className="quick-actions">
            <h2>Быстрые действия</h2>
            <div className="action-grid">
              {modules.slice(1, 7).map((mod) => {
                const ModIcon = mod.icon;
                return (
                  <button
                    key={mod.id}
                    className="action-card"
                    onClick={() => setActiveModule(mod.id)}
                    style={{ borderColor: mod.color }}
                  >
                    <ModIcon size={32} style={{ color: mod.color }} />
                    <span>{mod.name}</span>
                  </button>
                );
              })}
            </div>
          </div>
        </div>
      );
    }

    if (activeModule === 'team') {
      return (
        <div className="module-content">
          <div className="module-header">
            <Icon size={48} style={{ color: module?.color }} />
            <h1>{module?.name}</h1>
          </div>
          <div className="team-module">
            <div className="team-stats">
              <div className="team-card">
                <h3>Всего сотрудников</h3>
                <p className="value">127</p>
              </div>
              <div className="team-card">
                <h3>Отделов</h3>
                <p className="value">12</p>
              </div>
              <div className="team-card">
                <h3>Средняя зарплата</h3>
                <p className="value">$3,450</p>
              </div>
              <div className="team-card">
                <h3>HR эффективность</h3>
                <p className="value">94%</p>
              </div>
            </div>
            <div className="departments">
              <h3>Отделы компании</h3>
              <ul>
                <li>🎮 Продуктовая команда - 28 человек</li>
                <li>💻 Разработка - 35 человек</li>
                <li>📈 Маркетинг - 18 человек</li>
                <li>💰 Финансы - 8 человек</li>
                <li>🎯 Поддержка игроков - 22 человека</li>
                <li>🔒 Безопасность - 6 человек</li>
                <li>📊 Аналитика - 10 человек</li>
              </ul>
            </div>
          </div>
        </div>
      );
    }

    if (activeModule === 'finance') {
      return (
        <div className="module-content">
          <div className="module-header">
            <Icon size={48} style={{ color: module?.color }} />
            <h1>{module?.name}</h1>
          </div>
          <div className="finance-module">
            <div className="finance-stats">
              <div className="finance-card">
                <h3>Выручка (месяц)</h3>
                <p className="value">$4.2M</p>
                <span className="change positive">+12%</span>
              </div>
              <div className="finance-card">
                <h3>EBITDA</h3>
                <p className="value">$1.8M</p>
                <span className="change positive">+8%</span>
              </div>
              <div className="finance-card">
                <h3>Чистая прибыль</h3>
                <p className="value">$980K</p>
                <span className="change positive">+15%</span>
              </div>
              <div className="finance-card">
                <h3>Расходы на маркетинг</h3>
                <p className="value">$520K</p>
                <span className="change negative">+5%</span>
              </div>
            </div>
            <div className="pl-preview">
              <h3>P&L Отчёт - Август 2025</h3>
              <table>
                <tr><td>Доход от ставок</td><td>$3,800,000</td></tr>
                <tr><td>Доход от казино</td><td>$400,000</td></tr>
                <tr><td>Операционные расходы</td><td>-$1,200,000</td></tr>
                <tr><td>Маркетинг</td><td>-$520,000</td></tr>
                <tr><td>Зарплаты</td><td>-$437,150</td></tr>
                <tr><td>Лицензии и налоги</td><td>-$662,850</td></tr>
                <tr className="total"><td>Чистая прибыль</td><td>$980,000</td></tr>
              </table>
            </div>
          </div>
        </div>
      );
    }

    if (activeModule === 'players') {
      return (
        <div className="module-content">
          <div className="module-header">
            <Icon size={48} style={{ color: module?.color }} />
            <h1>{module?.name}</h1>
          </div>
          <div className="players-module">
            <div className="player-stats">
              <div className="player-card">
                <h3>Всего игроков</h3>
                <p className="value">324,892</p>
              </div>
              <div className="player-card">
                <h3>Активных (30 дней)</h3>
                <p className="value">48,392</p>
              </div>
              <div className="player-card">
                <h3>VIP игроков</h3>
                <p className="value">1,247</p>
              </div>
              <div className="player-card">
                <h3>Средний LTV</h3>
                <p className="value">$485</p>
              </div>
            </div>
            <div className="segments">
              <h3>Сегменты игроков</h3>
              <ul>
                <li>🐳 Киты (топ 1%) - $2.8M в месяц</li>
                <li>💎 VIP (топ 5%) - $1.2M в месяц</li>
                <li>⭐ Регулярные (20%) - $800K в месяц</li>
                <li>🎮 Казуальные (45%) - $300K в месяц</li>
                <li>🆕 Новички (29%) - $100K в месяц</li>
              </ul>
            </div>
          </div>
        </div>
      );
    }

    return (
      <div className="module-content">
        <div className="module-header">
          <Icon size={48} style={{ color: module?.color }} />
          <h1>{module?.name}</h1>
        </div>
        <div className="module-placeholder">
          <p>Модуль "{module?.name}" в активной разработке</p>
          <div className="feature-preview">
            <h3>Планируемый функционал:</h3>
            <ul>
              <li>Управление и мониторинг в реальном времени</li>
              <li>Детальные отчёты и дашборды</li>
              <li>AI-powered инсайты и предсказания</li>
              <li>Интеграция с внешними системами</li>
              <li>Автоматизация рутинных процессов</li>
            </ul>
          </div>
        </div>
      </div>
    );
  };

  return (
    <div className="app">
      <div className={`sidebar ${sidebarOpen ? 'open' : 'closed'}`}>
        <div className="sidebar-header">
          <h2>{sidebarOpen && 'LilCopilGit'}</h2>
          <button className="toggle-btn" onClick={() => setSidebarOpen(!sidebarOpen)}>
            {sidebarOpen ? <X size={24} /> : <Menu size={24} />}
          </button>
        </div>
        <nav className="sidebar-nav">
          {modules.map((module) => {
            const Icon = module.icon;
            return (
              <button
                key={module.id}
                className={`nav-item ${activeModule === module.id ? 'active' : ''}`}
                onClick={() => setActiveModule(module.id)}
                style={{ '--accent-color': module.color } as React.CSSProperties}
              >
                <Icon size={20} />
                {sidebarOpen && <span>{module.name}</span>}
              </button>
            );
          })}
        </nav>
        <div className="sidebar-footer">
          {sidebarOpen && (
            <div className="version">
              <span>v4.0.0</span>
              <span className="status">● Онлайн</span>
            </div>
          )}
        </div>
      </div>
      <main className="main-content">
        {renderContent()}
      </main>
    </div>
  );
};

export default App;
