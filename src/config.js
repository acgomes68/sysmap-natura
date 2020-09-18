require('dotenv').config({
  path: process.env.NODE_ENV === 'testing' ? '.env.testing' : '.env',
});

const { REACT_APP_GITHUB_URI, REACT_APP_GITHUB_USERNAME } = process.env;

export default {
  REACT_APP_GITHUB_URI,
  REACT_APP_GITHUB_USERNAME,
};
