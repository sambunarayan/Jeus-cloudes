db = db.getSiblingDB("appdb");
db.createUser({
  user: "sampleuser",
  pwd: "sampleuser",
  roles: [
    { role : "dbOwner", db : "appdb" },
    { role : "dbAdmin", db : "appdb" },
    { role : "readWrite", db : "appdb" }
  ]
});