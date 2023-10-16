import React, { useState, useEffect, useRef } from 'react';
import axios from 'axios'
import { FormControl, FormLabel } from '@chakra-ui/react'
// import ProfileBg from '../../assets/slider1.jpeg'
// import { SingleDatepicker } from "chakra-dayzed-datepicker";
// import { Textarea } from '@chakra-ui/react'
// import QRSample from '../../assets/sampleqr.webp'

const Appointment = () => {

  // const [input, setInput] = useState('')

  // const handleInputChange = (e) => setInput(e.target.value)

  // const isError = input === ''

  // const [date, setDate] = useState(new Date());


  const [data, setData] = useState([]);
  const [data1, setData1] = useState([]);
  const fileInputRef = useRef(null);
  const [errorMessage, setErrorMessage] = useState('');
  const [isSuccessMessageVisible, setIsSuccessMessageVisible] = useState(false);

  const [formData, setFormData] = useState({
    name: '',
    email: '',
    mobileno: '',
    gender: '',
    timeofday: '',
    waytoreach: '',
    preferreddate: '',
    wvno: '',
    address: '',
    message: '',
    receipt: null
  });

  const [isErrorMessageVisible, setIsErrorMessageVisible] = useState(false); // State for displaying the error message

  const showSuccessMessage = () => {
    setIsSuccessMessageVisible(true);
    // Set a timeout to hide the success message after 5 seconds (adjust as needed)
    setTimeout(() => {
      setIsSuccessMessageVisible(false);
    }, 5000);
  };

  const showErrorMessage = () => {
    setIsErrorMessageVisible(true);
    // Set a timeout to hide the error message after 5 seconds (adjust as needed)
    setTimeout(() => {
      setIsErrorMessageVisible(false);
    }, 5000);
  };

  const AboutData = async () => {
    try {
      const response = await axios.get(
        'http://127.0.0.1:8000/api/navigations/'
      );
      if (response.data) {
        const DocumentData = response.data.filter(
          (item) =>
            item.status === 'Publish' && item.page_type === 'Appointment'
        );
        setData(DocumentData[0]);
      }
      if (response.data) {
        const DocumentData = response.data.filter(
          (item) =>
            item.status === 'Publish' && item.page_type === 'Appointment1'
        );
        setData1(DocumentData[0]);
      }
    } catch (error) {
      console.error('Error fetching data:', error);
    }
  };

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setFormData((prevData) => ({
      ...prevData,
      [name]: value,
    }));
  };

  const handleFileUpload = (e) => {
    const file = e.target.files[0];
    setFormData((prevData) => ({
      ...prevData,
      receipt: file,
    }));
  };

  const handleDateChange = (e) => {
    setFormData({ ...formData, preferreddate: e.target.value });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();

    // Check for empty required fields (excluding receipt)
    const requiredFields = ['name', 'email', 'mobileno', 'gender', 'timeofday', 'waytoreach', 'preferreddate', 'wvno', 'address', 'message'];

    const hasEmptyFields = requiredFields.some((field) => !formData[field]);

    if (hasEmptyFields) {
      setErrorMessage('All the fields must be filled other than Receipt.'); // Display the error message
      showErrorMessage()
      return; // Do not submit the form
    }

    // Clear any previous error messages
    setErrorMessage('');

    const formDataToSend = new FormData();

    for (const key in formData) {
      if (key === 'receipt' && formData[key] !== null) {
        formDataToSend.append(key, formData[key]);
      } else if (key !== 'receipt') {
        formDataToSend.append(key, formData[key]);
      }
    }

    try {
      const response = await axios.post("http://127.0.0.1:8000/api/bhetghats/", formDataToSend, {
        headers: {
          'Content-Type': 'multipart/form-data',
        },
      });

      if (response.status >= 100 && response.status < 300) {
        // Success
        showSuccessMessage();
        setFormData({
          name: '',
          email: '',
          mobileno: '',
          wvno: '',
          gender: '',
          timeofday: '',
          waytoreach: '',
          preferreddate: '',
          preferredtime: '',
          address: '',
          message: '',
          receipt: null,
        });
        fileInputRef.current.value = '';
      } else {
        console.error('Form submission failed with status:', response.status);
      }
    } catch (error) {
      console.error('Error submitting form:', error);

      if (error.response && error.response.status === 400) {
        console.log('Validation errors:', error.response.data);
      } else {
        console.log('Error');
      }
    }
  };

  useEffect(() => {
    // Axios GET request to fetch data
    AboutData();
  }, []);

  return (

    <>
      <div className='relative w-full h-40 xl:h-80 overflow-hidden'>
        <img src={data.slider_image} alt="" className='absolute w-full h-full object-cover' />
        <div className='absolute w-full h-40 xl:h-80 z-10 bg-black opacity-90 flex flex-col justify-center items-center'>
          <h3 className='text-4xl xl:text-6xl text-white tracking-wider'>{data.meta_title}</h3>
          <ol className="flex items-center whitespace-nowrap min-w-0 pt-4" aria-label="Breadcrumb">
            <li className="text-sm">
              <a className="flex items-center text-gray-500" href="/">
                {data.caption}
                <svg className="flex-shrink-0 mx-3 overflow-visible h-2.5 w-2.5 text-gray-400" width={16} height={16} viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M5 1L10.6869 7.16086C10.8637 7.35239 10.8637 7.64761 10.6869 7.83914L5 14" stroke="currentColor" strokeWidth={2} strokeLinecap="round" />
                </svg>
              </a>
            </li>
            <li className="text-sm font-semibold text-orange truncate" aria-current="page">
              {data.meta_title}
            </li>
          </ol>
        </div>
      </div>
      <div className='container py-16'>
        <div className='text-base text-gray-600 md:text-xl'>
          <p dangerouslySetInnerHTML={{ __html: data.short_desc }}></p>
        </div>
        <div className='w-full flex pt-8'>
          <h3 className='text-2xl font-semibold'>{data.title}</h3>
        </div>

        {/* ----Form----- */}
        <form className='flex flex-col w-full bg-white p-4 md:p-8 drop-shadow-xl border mt-8' onSubmit={handleSubmit}>

          <div className=' flex flex-col gap-4 md:gap-20 md:flex-row'>
            <div className='md:w-1/2'>
              <FormControl isRequired>
                <FormLabel>Name</FormLabel>
                <input
                  type="text"
                  id="name"
                  name="name"
                  placeholder="Your Full Name"
                  className="h-10 border w-full rounded-md"
                  value={formData.name}
                  onChange={handleInputChange}
                />
              </FormControl>
            </div>
            <div className='md:w-1/2'>
              <FormControl isRequired>
                <FormLabel>Email</FormLabel>
                <input
                  type="text"
                  id="email"
                  name="email"
                  placeholder="Your Email"
                  className='h-10 border w-full rounded-md'
                  value={formData.email}
                  onChange={handleInputChange}
                />
              </FormControl>
            </div>
          </div>

          <div className=' flex flex-col gap-4 md:gap-20 pt-4 md:flex-row'>
            <div className='md:w-1/2'>
              <FormControl isRequired>
                <FormLabel>Mobile No.:</FormLabel>
                <input
                  type="text"
                  name="mobileno"
                  placeholder="Your Mobile Number"
                  className='h-10 border w-full rounded-md'
                  value={formData.mobileno}
                  onChange={handleInputChange}
                />
              </FormControl>
            </div>
            <div className='md:w-1/2'>
              <FormControl isRequired>
                <FormLabel>WhatsApp / Viber  No.</FormLabel>
                <input
                  className='h-10 border w-full rounded-md'
                  type='text'
                  name='wvno'
                  value={formData.wvno}
                  onChange={handleInputChange}
                />
              </FormControl>
            </div>
          </div>

          <div className=' flex flex-col gap-4 md:gap-20 pt-4 md:flex-row'>
            <div className='md:w-1/2'>

              <FormControl isRequired>
                <FormLabel>WhatsApp / Viber  No.</FormLabel>
                <select
                  name="timeofday"
                  className="h-10 border w-full rounded-md"
                  value={formData.timeofday}
                  onChange={handleInputChange}
                >
                  <option value="">Select Time of Day</option>
                  <option value="Morning">Morning</option>
                  <option value="Afternoon">Afternoon</option>
                  <option value="Evening">Evening</option>
                </select>
              </FormControl>
            </div>
            <div className='md:w-1/2'>
              <FormControl isRequired>
                <FormLabel>Way to Reach</FormLabel>
                <select
                  name="waytoreach"
                  className="h-10 border w-full rounded-md"
                  value={formData.waytoreach}
                  onChange={handleInputChange}
                >
                  <option value="">Select Way to Reach</option>
                  <option value="Phone">Phone</option>
                  <option value="Email">Email</option>
                </select>
              </FormControl>
            </div>
          </div>

          <div className=' flex flex-col gap-4 md:gap-20 pt-4 md:flex-row'>
            <div className='md:w-1/2'>
              <FormControl isRequired>
                <FormLabel>Preferred Date</FormLabel>
                <input
                  type="date"
                  name="preferreddate"
                  placeholder="Your Preferred Date"
                  className="h-10 border w-full rounded-md"
                  value={formData.preferreddate}
                  onChange={handleDateChange}
                />
              </FormControl>
            </div>
            <div className='md:w-1/2'>
              <FormControl isRequired>
                <FormLabel>Gender</FormLabel>
                <select
                  name="gender"
                  className="h-10 border w-full rounded-md"
                  value={formData.gender}
                  onChange={handleInputChange}
                >
                  <option value="">Select Gender</option>
                  <option value="Male">Male</option>
                  <option value="Female">Female</option>
                  <option value="Other">Other</option>
                </select>
              </FormControl>
            </div>
          </div>

          <div className=' flex flex-col gap-4 md:gap-20 pt-4 md:flex-row'>
            <div className='md:w-1/2'>
              <FormControl isRequired>
                <FormLabel>Address</FormLabel>
                <textarea
                  type="text"
                  rows="5"
                  name="address"
                  placeholder="Your Address"
                  className="h-10 border w-full rounded-md"
                  value={formData.address}
                  onChange={handleInputChange}
                />
              </FormControl>
            </div>
            <div className='md:w-1/2'>
              <FormControl isRequired>
                <FormLabel>Message</FormLabel>
                <textarea
                  type="text"
                  rows="5"
                  name="message"
                  placeholder="Your Message"
                  className="h-10 border w-full rounded-md"
                  value={formData.message}
                  onChange={handleInputChange}
                />
              </FormControl>
            </div>
          </div>

          <div className=' flex flex-col md:gap-20 pt-4 md:flex-row'>
            <div className='md:w-1/2 order-2'>
              <p dangerouslySetInnerHTML={{ __html: data1.short_desc }}></p>

              <p dangerouslySetInnerHTML={{ __html: data1.desc }}></p>

              <div className="pt-8">
                <label htmlFor="receipt">Upload Receipt</label>
                <input
                  type="file"
                  id="receipt"
                  name="receipt"
                  ref={fileInputRef} // Attach the ref here
                  className="h-8 w-full border rounded-md"
                  onChange={handleFileUpload}
                />
              </div>
              <div className='mt-10'>
                <button type="submit" className='bg-red px-6 py-2 rounded-xl text-white text-xl'>Submit</button>
              </div>

            </div>
            <div className='md:w-1/2 order-1'>
              <h3 className='font-semibold text-lg md:text-xl'>{data1.title}</h3>
              <div className='relative w-72 h-72 md:w-96 md:h-96'>
                <img src={data1.slider_image} alt="" className='absolute w-full h-full object-contain' />
              </div>
            </div>
          </div>

          {/* Display the error message if isErrorMessageVisible is true */}
          {isErrorMessageVisible && (
            <div className="text-red mt-4 text-center">
              All the fields must be filled. Receipt is optional.
            </div>
          )}

          {/* Display the success message */}
          {isSuccessMessageVisible && (
            <div className="text-green-600 mt-4 text-center">
              Submitted successfully! {/* Display your success message here */}
            </div>
          )}
        </form>
      </div>
    </>

  )
}

export default Appointment