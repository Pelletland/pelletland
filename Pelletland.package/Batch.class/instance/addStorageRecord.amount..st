recording
addStorageRecord: aDate amount: anAmount
  ^ self addRecord: (StoreRecord new: aDate amount: anAmount)