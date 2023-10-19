import ReactDOM from 'react-dom/client';
import App from './app';
import React from 'react';
import { BrowserRouter } from 'react-router-dom';

const react = document.getElementById('react');
if (react) {
	const root = ReactDOM.createRoot(react);
	root.render(
		<React.StrictMode>
			<BrowserRouter>
				<App />
			</BrowserRouter>
		</React.StrictMode>
	);
}
