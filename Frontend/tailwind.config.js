/** @type {import('tailwindcss').Config} */
export default {
    content: [
        "./index.html",
        "./src/**/*.{js,ts,jsx,tsx}",
        'node_modules/preline/dist/*.js',
    ],
    theme: {
        container: {
            center: 'true',
            padding: {
                DEFAULT: '1rem'
            },
            screens: {
                sm: '380px',
                md: '768px',
                lg: '1024px',
                xl: '1180px',
            }
        },
        extend: {
            width: {
                '128': '32rem',
                '256': '64rem',
                'cont': '86rem'
            },
            height: {
                '128': '32rem',
                '256': '64rem'
            },
            colors: {
                red: '#FE0000',
                lightCream: '#FFEECC',
                black: '#222629',
                orange: '#FF6F01',
                secondaryBlack: '#222222',
                creamyWhite: '#F9F6F0'
            },
            backgroundImage: {
                // banner: "url(../src/assets/slider1.jpeg)",
                slider: "url(../src/assets/peakpx.jpg)"
            },
            keyframes: {
                rotate2: {
                    '0%': { transform: 'rotate(0deg)' },
                    '100%': { transform: 'rotate(360deg)' },
                },
                scale: {
                    '0%': {transform: 'scale(1)'},
                    '50%': {transform: 'scale(1.2)'},
                    '100%': {transform: 'scale(1)'}
                   
                }
            },
            animation: {
                'rotate2': 'rotate2 10s linear infinite',
                'upscale': 'scale 20s linear infinite'

            },
        },
    },
    plugins: [
        require('preline/plugin'),
    ],
}

