querying
hasCapacityFor: aBatch
  ^(capacity > (self usedCapacity + aBatch weight))