import React from 'react';
import { Formik, Form, Field } from 'formik';
import * as Yup from 'yup';
import { Link, useNavigate } from "react-router-dom";
import { Alert, AlertIcon } from '@chakra-ui/react'
import { setAdminDetails } from '../../redux/reducerSlice/adminSlice';
import { useDispatch, useSelector } from 'react-redux';

const SignupSchema = Yup.object().shape({
    email: Yup.string().email('Invalid email').required('Required'),
    password: Yup.string()
        .required('Required'),
});

const Login = () => {
    const navigate = useNavigate();
    const dispatch = useDispatch();
    // const [responseMsg, setResponseMsg] = useState({ msgLabel: '', msgType: '' })
    const { isAdminLoggedIn } = useSelector((state) => state.admin)
    const handleAdminLogin = async (values) => {
        try {
            const response = await fetch('http://localhost:8080/adminlogin', {
                method: 'POST',
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(values)
            })
            const result = await response.json()
            
            dispatch(setAdminDetails(result))
            if(isAdminLoggedIn) {
                navigate('/admin/home');
            }
        } catch (error) {
            console.error("Error posting data: ", error)
        }
    };
    return (
        <div className='w-full h-screen flex justify-center items-center bg-creamyWhite'>
            <div className='flex justify-center flex-col gap-5 border py-20 px-10 bg-white drop-shadow-xl rounded-xl'>
                <h1 className='text-4xl text-gray-600'>Log In for Sarbeshwor Admin</h1>
                <Formik
                    initialValues={{
                        email: '',
                        password: ''
                    }}
                    validationSchema={SignupSchema}
                    onSubmit={(values) => {
                        // same shape as initial values
                        handleAdminLogin(values)
                    }}
                >
                    {({ errors, touched }) => (
                        <Form className='flex flex-col gap-5 pt-4 '>
                            <div>
                                <Field className="border w-full h-[40px] ps-4 rounded-xl" name="email" type="email" placeholder="Email" />
                                {errors.email && touched.email ? <div className='text-red-500 text-sm'>{errors.email}</div> : null}
                            </div>
                            <div>
                                <Field className="border w-full h-[40px] ps-4 rounded-xl" name="password" type="password" placeholder="Password" />
                                {errors.password && touched.password ? <div className='text-red-500 text-sm'>{errors.password}</div> : null}
                            </div>
                            <div className='flex justify-center'>
                                <button type="submit" className='bg-orange py-2 px-6 text-white hover:bg-red-500'>Submit</button>
                            </div>
                            <div className='flex justify-center'>
                                <Link className='text-gray-400 hover:text-gray-500' to="/admin/register">Don't have an account? Register</Link>
                            </div>
                        </Form>
                    )}
                </Formik>
            </div>

        </div>
    )
}

export default Login