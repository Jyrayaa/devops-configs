// Simple DB initialization
db = connect("mongodb://devops:StrongPass123@localhost:27017/admin")
db = db.getSiblingDB("devops_demo")
db.createCollection("users")
db.users.insertOne({name: "Nahid", role: "DevOps"})
