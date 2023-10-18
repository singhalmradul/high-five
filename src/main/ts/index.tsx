import ReactDOM from 'react-dom/client';
import App from './app';
import React from 'react';

const react = document.getElementById('react');
if (react) {
	const root = ReactDOM.createRoot(react);
	root.render(
		<React.StrictMode>
			<App />
		</React.StrictMode>
	);
}
