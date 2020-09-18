require('dotenv').config({
  path: process.env.NODE_ENV === 'development' || process.env.NODE_ENV === 'local' ? '.env' : '.env.' + process.env.NODE_ENV,
});

const { REACT_APP_GITHUB_URI, REACT_APP_GITHUB_USERNAME } = process.env;

export default {
  REACT_APP_GITHUB_URI,
  REACT_APP_GITHUB_USERNAME,
};
