import React from "react"
import AmsUserComponent from "./AmsUserComponent";

export default function AmsUserListComponent({ users }) {
  return (
    <div>
      <h2>User</h2>
      {users.map((user) => (
        <AmsUserComponent key={user.id} user={user} />
      ))}
    </div>
  );
}

