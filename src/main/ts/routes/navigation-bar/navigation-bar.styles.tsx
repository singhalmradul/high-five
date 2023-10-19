import styled from 'styled-components';

export const NavigationBarContainer = styled.div`
	width: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: #333;
	color: white;
	padding: 1rem;
	position: sticky;
	bottom: 0;
	box-sizing: border-box;
	h1 {
		margin: 0;
	}
	a {
		color: white;
		margin: 0 0.5rem;
	}
	a:hover {
		text-decoration: underline;
	}
	@media (max-width: 768px) {
		flex-direction: column;
		a {
			margin: 0.5rem 0;
		}
	}
	@media (max-width: 425px) {
		padding: 0.5rem;
	}

	@media (max-width: 375px) {
		padding: 0.25rem;
	}
`;
