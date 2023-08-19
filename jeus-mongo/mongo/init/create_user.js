db = db.getSiblingDB("sampledb");
db.createUser({
  user: "sampleuser",
  pwd: "sampleuser",
  roles: [
    { role : "dbOwner", db : "sampledb" },
    { role : "dbAdmin", db : "sampledb" },
    { role : "readWrite", db : "sampledb" },
  ]
});