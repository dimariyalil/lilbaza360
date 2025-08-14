import React, { useState, useEffect } from 'react';
import './App.css';
import Login from './Login';
import { Users, TrendingUp, MessageSquare, Brain, DollarSign, Target, BookOpen, FileText, Package, Gamepad2, UserPlus, BarChart3, Megaphone, FileBarChart, Shield, Settings, Menu, X, Home, LogOut } from 'lucide-react';

const App: React.FC = () => {
  const [isAuthorized, setIsAuthorized] = useState(false);
  const [activeModule, setActiveModule] = useState('dashboard');
  const [sidebarOpen, setSidebarOpen] = useState(true);
  
  useEffect(() => {
    const auth = localStorage.getItem('authorized');
    if (auth === 'true') {
      setIsAuthorized(true);
    }
  }, []);
  
  const handleLogout = () => {
    localStorage.removeItem('authorized');
    setIsAuthorized(false);
  };
  
  if (!isAuthorized) {
    return <Login onLogin={() => setIsAuthorized(true)} />;
  }

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
          <div className="dashboard-header">
            <h1>CEO Панель управления - lilbet</h1>
            <button className="logout-btn" onClick={handleLogout}>
              <LogOut size={20} />
              <span>Выйти</span>
            </button>
          </div>
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
      </div>
      <main className="main-content">
        {renderContent()}
      </main>
    </div>
  );
};

export default App;
