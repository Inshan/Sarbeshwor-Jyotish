import React from 'react';
import Header from './Components/Header';
import Footer from './Components/Footer';
import Whatsapp from './assets/whatsapp.png';

function App() {
    return (
        <>  
            <Header />
            <Footer />
            <div className='fixed bottom-0 right-0 bg-transparent flex justify-end items-end z-20'>
                <div className='rounded-2xl'>
                    <a href="https://wa.me/9849679838" target="_blank" rel="noopener noreferrer">
                        <img src={Whatsapp} alt="" className='w-20 h-20 xl:w-28 xl:h-28' />
                    </a>
                </div>
            </div>
        </>
    );
}

export default App;

