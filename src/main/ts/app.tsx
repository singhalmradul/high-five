import React, { useEffect } from 'react';
import { Route, Routes, useNavigate } from 'react-router-dom';
import Home from './routes/home/home.component';
import NavigationBar from './routes/navigation-bar/navigation-bar.component';

const App = () => {
	const navigate = useNavigate();
	useEffect(() => {
		navigate('/home');
	}, []);
	return (
		<Routes>
			<Route path='/home' element={<NavigationBar />}>
				<Route index element={<Home />} />
			</Route>
		</Routes>
	);
};

export default App;
