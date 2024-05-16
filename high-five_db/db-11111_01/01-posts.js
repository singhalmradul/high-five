db.posts.insertOne({
    "_id": UUID("f7560a00-9a13-4f4e-97d9-9e622970649d"),
    "embed": "https://i.ibb.co/Ksfwpms/image.png",
    "text": "this is a high-five with a bear",
    "userId": UUID("1075de58-5fa4-439e-8da0-59cdc6927618"),
    "createdAt": new Date("2023-08-10T18:05:00Z")
});

db.posts.insertOne({
    "_id": UUID("611877f5-ee1b-4190-978a-53636a297bc1"),
    "embed": "https://i.ibb.co/gP4LDPn/image.png",
    "text": "this is an attempt to high-five with an elephant",
    "userId": UUID("e02acbc4-2e43-4dfe-8637-467d6b3b1074"),
    "createdAt": new Date("2023-06-28T11:40:00Z")
});

db.posts.insertOne({
    "_id": UUID("439b2837-75c6-4347-83c5-90a853fe98de"),
    "embed": "https://i.ibb.co/y6k9K57/image.png",
    "text": "this is an attempt to high-five with a fish",
    "userId": UUID("ead598f0-7a55-4266-a5d5-40e56ec19b88"),
    "createdAt": new Date("2023-04-17T16:20:00Z")
});

db.posts.insertOne({
    "_id": UUID("8fd2c3bb-4e2f-47d8-940a-9451eb9380c7"),
    "embed": "https://i.ibb.co/VTMfYzP/image.png",
    "text": "this is a high-five with a crab",
    "userId": UUID("2b147a04-64b1-4cc9-9522-596c3e459917"),
    "createdAt": new Date("2023-03-05T09:30:00Z")
});

db.posts.insertOne({
    "_id": UUID("0e027798-0a4f-43cd-bb4b-445160b43412"),
    "embed": "https://i.ibb.co/WFLHKHm/image.png",
    "text": "this is a high-five with an eagle",
    "userId": UUID("1075de58-5fa4-439e-8da0-59cdc6927618"),
    "createdAt": new Date("2023-01-22T14:55:00Z")
});

db.posts.insertOne({
    "_id": UUID("21a4e983-dd97-485e-ba6f-427b5cd81e6c"),
    "embed": "https://i.ibb.co/Z8YdR2N/image.png",
    "text": "this is a high-five with a lizard",
    "userId": UUID("e02acbc4-2e43-4dfe-8637-467d6b3b1074"),
    "createdAt": new Date("2023-12-09T17:45:00Z")
});


db.posts.insertOne({
    "_id": UUID("7346f722-3796-461f-826a-48f92119a5a4"),
    "embed": "https://i.ibb.co/pz2dWyC/image.jpg",
    "text": "this is a high-five with a cat",
    "userId": UUID("2b147a04-64b1-4cc9-9522-596c3e459917"),
    "createdAt": new Date("2023-10-18T10:10:00Z")
});

db.posts.insertOne({
    "_id": UUID("75caf9ac-f654-4aa9-b7af-d654f1585822"),
    "embed": "https://i.ibb.co/v38Zyks/image.jpg",
    "text": "this is a high-five with a robot",
    "userId": UUID("ead598f0-7a55-4266-a5d5-40e56ec19b88"),
    "createdAt": new Date("2023-09-03T15:20:00Z")
});

db.posts.insertOne({
    "_id": UUID("505fb765-0669-4b91-9706-6d50c6c0efea"),
    "embed": "https://i.ibb.co/1Rzxj4B/image.jpg",
    "text": "this is a high-five with a mechanical hand",
    "userId": UUID("1075de58-5fa4-439e-8da0-59cdc6927618"),
    "createdAt": new Date("2023-07-21T08:45:00Z")
});

db.posts.insertOne({
    "_id": UUID("b89078a8-9175-4157-9fe8-e2a916e1d31d"),
    "embed": "https://i.ibb.co/4Yr7z0J/image.png",
    "text": "this is a high-five with a cosmic hand",
    "userId": UUID("e02acbc4-2e43-4dfe-8637-467d6b3b1074"),
    "createdAt": new Date("2023-05-15T12:30:00Z")
});

db.posts.createIndex({ userId : 1 })

db.posts.createIndex({ createdAt : -1 })
