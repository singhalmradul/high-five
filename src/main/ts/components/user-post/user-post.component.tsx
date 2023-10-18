import React from 'react';
import { UserPostContainer } from './user-post.styles';

export type PostProps = {
	user: string;
	content: string;
	highfives: number;
	comments: number;
	shares: number;
};

const UserPost = ({
	user,
	content,
	highfives,
	comments,
	shares,
}: PostProps) => {
	return (
		<UserPostContainer>
			<h6 className='user'>{user}</h6>
			<p className='content'>{content}</p>
			<button className='high-five'>high-five {highfives}</button>
			<button className='comment'>comment {comments}</button>
			<button className='share'>share {shares}</button>
		</UserPostContainer>
	);
};
export default UserPost;
