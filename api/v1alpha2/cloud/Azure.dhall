{ Type =
    { subscriptionId : Optional Text
    , tenantId : Text
    , resourceGroupName : Optional Text
    , routeTableName : Optional Text
    , adminUser : Optional Text
    }
, default =
  { subscriptionId = None Text
  , resourceGroupName = None Text
  , routeTableName = None Text
  , adminUser = None Text
  }
}
