import React, { useState } from 'react';
import './Login.css';
import { Lock } from 'lucide-react';

interface LoginProps {
  onLogin: () => void;
}

const Login: React.FC<LoginProps> = ({ onLogin }) => {
  const [password, setPassword] = useState('');
  const [error, setError] = useState(false);
  
  const SECURE_HASH = '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'; // 123456
  
  const hashPassword = async (pass: string) => {
    const encoder = new TextEncoder();
    const data = encoder.encode(pass);
    const hash = await crypto.subtle.digest('SHA-256', data);
    return Array.from(new Uint8Array(hash))
      .map(b => b.toString(16).padStart(2, '0'))
      .join('');
  };
  
  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    const hash = await hashPassword(password);
    if (hash === SECURE_HASH) {
      localStorage.setItem('authorized', 'true');
      onLogin();
    } else {
      setError(true);
      setTimeout(() => setError(false), 3000);
    }
  };
  
  return (
    <div className="login-container">
      <form className="login-form" onSubmit={handleSubmit}>
        <Lock size={48} className="login-icon" />
        <h1>LilCopilGit v4.0</h1>
        <p>Доступ ограничен</p>
        <input
          type="password"
          placeholder="Введите пароль"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
          className={error ? 'error' : ''}
          autoFocus
        />
        <button type="submit">Войти</button>
        {error && <p className="error-msg">Неверный пароль</p>}
      </form>
    </div>
  );
};

export default Login;
