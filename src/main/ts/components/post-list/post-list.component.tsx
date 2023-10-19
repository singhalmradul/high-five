import React from 'react';
import UserPost from '../user-post/user-post.component';
import { PostListContainer } from './post-list.styles';
import { Post } from '../../routes/home/home.component';
type PostListProps = {
	posts: Post[];
};
const PostList = ({ posts }: PostListProps) => {
	return (
		<PostListContainer>
			{posts.map(({ id, user, content, highfives, comments, shares }) => (
				<UserPost
					key={id}
					user={user}
					content={content}
					highfives={highfives}
					comments={comments}
					shares={shares}
				/>
			))}
		</PostListContainer>
	);
};

export default PostList;
