import React from 'react'

const AdminPage = () => {

    return (
        <>
            <div className='w-full'>
                <div className='bg-black py-4'>
                    <div className="container">
                        <div className='flex justify-between'>
                            <div className='text-white'>
                                <p>Sarbeswor Logo</p>
                            </div>
                            <div className='text-white'>
                                <p>Admin Info</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <div className="flex  bg-creamyWhite h-screen" >
                        <div className="border-r border-gray-200  bg-black w-72">
                            <nav className="flex flex-col space-y-2" aria-label="Tabs" role="tablist" data-hs-tabs-vertical="true">
                                <button type="button" className="hs-tab-active:bg-orange inline-flex items-center gap-2 border-r-[3px] border-transparent text-lg whitespace-nowrap text-white active p-4 ps-16" id="vertical-tab-with-border-item-1" data-hs-tab="#vertical-tab-with-border-1" aria-controls="vertical-tab-with-border-1" role="tab">
                                    Top Header
                                </button>
                                <button type="button" className="hs-tab-active:bg-orange  inline-flex items-center gap-2 border-r-[3px] border-transparent text-lg whitespace-nowrap text-white p-4 ps-16" id="vertical-tab-with-border-item-2" data-hs-tab="#vertical-tab-with-border-2" aria-controls="vertical-tab-with-border-2" role="tab">
                                    Nav Bar
                                </button>
                                <button type="button" className="hs-tab-active:bg-orange  inline-flex items-center gap-2 border-r-[3px] border-transparent text-lg whitespace-nowrap text-white p-4 ps-16" id="vertical-tab-with-border-item-3" data-hs-tab="#vertical-tab-with-border-3" aria-controls="vertical-tab-with-border-3" role="tab">
                                    Footer
                                </button>
                            </nav>
                        </div>
                        <div className="ml-3  w-full p-10">
                            <div id="vertical-tab-with-border-1" role="tabpanel" aria-labelledby="vertical-tab-with-border-item-1" className="flex gap-4" >
                                <div className='flex flex-col gap-5 text-lg border p-4 bg-white drop-shadow-xl'>
                                    <p>Mailing Address</p>
                                    <input type="text" className='w-60 border' placeholder='sarbewshwar@gmail.com' />
                                    <div className='flex gap-5'>
                                        <button className='bg-orange px-2 py-1 text-white'>Edit</button>
                                        <button className='bg-orange px-2 py-1 text-white'>Done</button>
                                    </div>
                                </div>
                                <div className='flex flex-col gap-5 text-lg border p-4 bg-white drop-shadow-xl'>
                                    <p>Phone Number</p>
                                    <input type="text" className='w-60 border' placeholder='+977-9801234567890' />
                                    <div className='flex gap-5'>
                                        <button className='bg-orange px-2 py-1 text-white'>Edit</button>
                                        <button className='bg-orange px-2 py-1 text-white'>Done</button>
                                    </div>
                                </div>
                                <div className='flex flex-col gap-5 text-lg border p-4 bg-white drop-shadow-xl'>
                                    <p>Social Icon Link 1</p>
                                    <input type="text" className='w-60 border' placeholder='Facebook Logo' />
                                    <div className='flex gap-5'>
                                        <button className='bg-orange px-2 py-1 text-white'>Edit</button>
                                        <button className='bg-orange px-2 py-1 text-white'>Done</button>
                                    </div>
                                </div>
                                <div className='flex flex-col gap-5 text-lg border p-4 bg-white drop-shadow-xl'>
                                    <p>Social Icon Link 2</p>
                                    <input type="text" className='w-60 border' placeholder='Youtube Logo' />
                                    <div className='flex gap-5'>
                                        <button className='bg-orange px-2 py-1 text-white'>Edit</button>
                                        <button className='bg-orange px-2 py-1 text-white'>Done</button>
                                    </div>
                                </div>
                                <div className='flex flex-col gap-5 text-lg border p-4 bg-white drop-shadow-xl'>
                                    <p>Social Icon Link 3</p>
                                    <input type="text" className='w-60 border' placeholder='Tiktok Logo' />
                                    <div className='flex gap-5'>
                                        <button className='bg-orange px-2 py-1 text-white'>Edit</button>
                                        <button className='bg-orange px-2 py-1 text-white'>Done</button>
                                    </div>
                                </div>
                            </div>
                            <div id="vertical-tab-with-border-2" className="hidden" role="tabpanel" aria-labelledby="vertical-tab-with-border-item-2" >
                                NavBAr
                            </div>
                            <div id="vertical-tab-with-border-3" className="hidden" role="tabpanel" aria-labelledby="vertical-tab-with-border-item-3">
                                Footer
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </>
    )
}

export default AdminPage