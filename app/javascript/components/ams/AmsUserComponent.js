import React from 'react';
import Routes from "../../routes";

export default function AmsUserComponent({ user }) {
  const nameAndMail = () => `${user.name} ${user.email}`
  return (
    <div>
      <h5>
        <a href={Routes.amsUserPath(user.id)}>{nameAndMail()}</a>
      </h5>
      <div>
        <h3>Posts</h3>
        {user.posts.length > 0 && <PostList posts={user.posts} />}
      </div>
    </div>
  );
}

const PostList = ({ posts }) => (
  <ul style={{columns: 10}}>
    {posts.map(({ id, title }) => (
      <li key={id}>{title}</li>
    ))}
  </ul>
);