import React from "react";
import Routes from "../../routes";

export default function JsonApiUserComponent({ user }) {
  const { data, included } = user;
  const userPosts = data.relationships.posts.data.map(({id}) => id)
  const posts = included.filter(({ id, type }) => type === "post" && userPosts.includes(id))

  const nameAndMail = () => `${data.attributes.name} ${data.attributes.email}`;
  return (
    <div>
      <h5><a href={Routes.amsUserPath(data.id)}>{nameAndMail()}</a></h5>
      <div>
        <h3>Posts</h3>
        {posts.length > 0 && <PostList posts={posts} />}
      </div>
    </div>
  );
}

const PostList = ({ posts }) => {
  return (
    <ul style={{ columns: 10 }}>
      {posts.map(({ attributes, id }) => (
        <li key={id}>{attributes.title}</li>
      ))}
    </ul>
  );
}