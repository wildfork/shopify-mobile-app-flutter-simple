const String getMetaField = r'''
query ProductMetafields($ownerId : ID!){
  product(id: $ownerId) {
    metafields(namespace: "wildfox", first: 3) {
      edges {
        node {
          id
          namespace
          key
          value
        }
      }
    }
  }
}
''';