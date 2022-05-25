const String getMetaFieldQuery = r'''
query($customerAccessToken : String!){
  customer(customerAccessToken: $customerAccessToken) {
    createdAt
    email
    firstName
    id
    lastName
   metafields(first:250) {
  edges {
  node {
    id
    key
    namespace
    value
    }
  }
}
  }
}
''';
