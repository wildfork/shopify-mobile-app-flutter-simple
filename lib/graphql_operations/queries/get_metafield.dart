const String getMetaFieldQuery = r'''
query($customerAccessToken : String!){
  customer(customerAccessToken: $customerAccessToken) {
    createdAt
    email
    firstName
    id
    lastName
   metafields{
     id
     key
     namespace
     value
   }
  }
}
''';
