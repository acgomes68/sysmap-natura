require('dotenv').config({
    path: process.env.NODE_ENV === 'testing' ? '.env.testing' : '.env',
});

const { API_GITHUB_URI, API_GITHUB_USERNAME } = process.env;

export default {
    API_GITHUB_URI,
    API_GITHUB_USERNAME,
};
