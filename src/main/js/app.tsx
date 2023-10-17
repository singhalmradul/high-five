import React from 'react';
import PostList from './components/post-list/post-list.component';

export type Post = {
	id: number;
	user: string;
	content: string;
	highfives: number;
	comments: number;
	shares: number;
};

const App = () => {
	const posts: Post[] = [
		{
			id: 1,
			user: 'user1',
			content: 'content7',
			highfives: 0,
			comments: 0,
			shares: 19,
		},
		{
			id: 2,
			user: 'user6',
			content: 'content2',
			highfives: 8,
			comments: 18,
			shares: 0,
		},
		{
			id: 3,
			user: 'user',
			content: 'content5',
			highfives: 3,
			comments: 9,
			shares: 0,
		},
		{
			id: 4,
			user: 'user',
			content: 'content17',
			highfives: 0,
			comments: 4,
			shares: 10,
		},
		{
			id: 5,
			user: 'user16',
			content: 'content',
			highfives: 4,
			comments: 11,
			shares: 5,
		},
		{
			id: 6,
			user: 'user',
			content: 'content15',
			highfives: 12,
			comments: 6,
			shares: 0,
		},
		{
			id: 7,
			user: 'user',
			content: 'content13',
			highfives: 7,
			comments: 0,
			shares: 3,
		},
		{
			id: 8,
			user: 'user14',
			content: 'content8',
			highfives: 0,
			comments: 14,
			shares: 0,
		},
		{
			id: 9,
			user: 'user9',
			content: 'content15',
			highfives: 2,
			comments: 0,
			shares: 13,
		},
		{
			id: 10,
			user: 'user',
			content: 'content10',
			highfives: 16,
			comments: 12,
			shares: 0,
		},
		{
			id: 11,
			user: 'user1',
			content:
				'content: lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, voluptatum! lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, voluptatum! lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, voluptatum!',
			highfives: 11,
			comments: 17,
			shares: 0,
		},
	];
	return (
		<div>
			<PostList posts={posts} />
		</div>
	);
};
export default App;
