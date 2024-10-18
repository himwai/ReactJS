// src/App.tsx
import React from 'react';
import './app.css';
import HelloWorld from './app';

const App: React.FC = () => {
    return (
        <div className="App">
            <HelloWorld />
        </div>
    );
};

export default App;