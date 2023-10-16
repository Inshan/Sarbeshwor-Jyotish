import React from 'react'
import ReactDOM from 'react-dom/client'
import { Provider } from 'react-redux'
import store from './redux/store/index'
import { BrowserRouter } from 'react-router-dom'
import { ChakraProvider } from '@chakra-ui/react'
import App from './App.jsx'
import './index.css'

ReactDOM.createRoot(document.getElementById('root')).render(

    <React.StrictMode>
        <Provider store={store}>
            <BrowserRouter>
                <ChakraProvider>
                    <App />
                </ChakraProvider>
            </BrowserRouter>
        </Provider>
    </React.StrictMode>
)
