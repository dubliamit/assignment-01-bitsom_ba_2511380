## Vector DB Use Case

## "A law firm wants to build a system where lawyers can search 500-page contracts by asking questions in plain English (e.g., 'What are the termination clauses?'). Would a traditional keyword-based database search suffice? Justify why or why not, and explain what role a vector database would play in this system."

Answer:

In this case, a traditional keyword-based search would not be enough for a law firm trying to search through 500-page contracts using plain English questions. Keyword search mainly looks for exact word matches. So if a lawyer searches for “termination clauses,” it will only return results where those exact words are present. But legal documents often use different wording, like “agreement may be ended under the following conditions,” which a keyword search might miss. This makes keyword search limited and not very reliable for understanding complex legal language.

A vector database solves this problem by focusing on the meaning of the text instead of just matching words. It uses embeddings to convert both the contract text and the user’s query into numerical vectors. These vectors capture the semantic meaning of the sentences. So even if the wording is different, the system can still find relevant sections because the meaning is similar.

In this system, the contracts would first be broken into smaller chunks (like paragraphs), and embeddings would be created for each chunk and stored in a vector database. When a lawyer asks a question, the system converts the query into an embedding and compares it with stored vectors to find the most relevant parts of the document.

Overall, a vector database makes the search much smarter and more useful, especially for long and complex documents like legal contracts.
