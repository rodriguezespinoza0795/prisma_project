import { ApolloServer } from 'apollo-server'

// 1. Query
const typeDefs = `
    type Query {
        info:String!
    }
`

// 2. resolvers
const resolvers = {
    Query: {
        info: () => 'Esta es la Api de GraphQL'
    }
}

// iniciar servidor
const server = new ApolloServer({
    typeDefs,
    resolvers
})

server.listen({ port: 4000 }, () =>
  console.log(`🚀 Server ready at http://localhost:4000/graphql`)
);
