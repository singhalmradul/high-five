import React from 'react';
import { Link, Outlet } from 'react-router-dom';
import { NavigationBarContainer } from './navigation-bar.styles';

const NavigationBar = () => (
	<>
		<Outlet />
		<NavigationBarContainer>
			<Link to='/home'>Home</Link>
			<Link to='/profile'>Profile</Link>
			<Link to='/notifications'>Notifications</Link>
			<Link to='/chat'>chat</Link>
		</NavigationBarContainer>
	</>
);

export default NavigationBar;
