# TRADE REPUBLIC: FRONTEND CODING TEST

Hi, thanks again for your application at Trade Republic. To proceed with the
interview process we have prepared a short coding exercise for you, to prove your
basic knowledge of the language and tools we use to develop our web applications.

In case you have any questions, feel free to reach out to us at
valentina.vasilkova@traderepublic.com

## Task: Fetch and display streaming market data

Developing our app, we work with a REST API as well as real-time streaming market
data to display the latest stock prices with millisecond latency. You should feel
comfortable developing an app to address these two types of network interaction.

For the coding test, you should create a Single Page App, 
which should display the current price of a stock. The stock is identified via its ISIN. 
The ISIN number is an international standardized identifier unique to a stock or 
other financial instrument. The format is e.g. `DE000BASF111`.

Implement the following features for the sample SPA:

1. Connect to the web socket at `ws://159.89.15.214:8080/`. To receive
continuous updates for a certain instrument, subscribe by sending a message in
the the format `{"subscribe": "{isin}"}` to the websocket. You can choose
any ISIN to connect, e.g. `{"subscribe": "DE000BASF111"}` will return updates
for the BASF stock. You can unsubscribe by sending `{"unsubscribe": "{isin}"}`
Please note: You will receive only sample data, the websocket is available 24/7.

2. You will receive live quotes from the web socket for the stock. The data format is
`{"isin":"DE000BASF111","price":240.32,"bid":240.31,"ask":240.33}`. Display the
latest price of any stock in an activity.

3. Implement a function to let the user either enter an ISIN themselves or
choose from a list of predefined ISINs. When an ISIN is chosen, the application
should subscribe to the updates and display the value of the selected stock. It should be
possible to remove subscriptions from the list as well.

4. What happens in case the websocket disconnects? How would you go further to keep
the live data available or inform the user? Please discuss the challenges.

5. What happens if a user adds an instrument multiple times to his list? Please discuss
possible challenges and mitigations.

6. Please send your complete repository incl. build script to
valentina.vasilkova@traderepublic.com

## Things we care for:
- Unit tests
- Semantic HTML (avoid using component libraries)
- Responsive Design
- Documentation
- Accessibility

## Nice to have:
- Use of Reactive programming libraries like RxJS

Please note: The coding test should show that you feel comfortable working with any JavaScript framework (we use vue.js and networking libraries).

## Submit your solution

Please submit your solution in a private github repository and allow read access
for @MohitTilwani15, @phobetron and @vvslkv

