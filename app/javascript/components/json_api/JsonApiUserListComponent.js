import React from "react";
import JsonApiUserComponent from "./JsonApiUserComponent";

export default function JsonApiUserListComponent({ users }) {
  const { data, included } = users;
  return (
    <div>
      <h2>User</h2>
      {data.map((user) => (
        <JsonApiUserComponent key={user.id} user={{data: user, included: included}} />
      ))}
    </div>
  );
}
