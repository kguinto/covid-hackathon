import React from 'react';
import { css } from 'styled-components/macro';

const ContinueButton = ({ onContinue }) => {
  return (
    <div
      css={css`
        margin-top: 2rem;
        font-size: 1.6rem;
        color: #63abce;
        cursor: pointer;
        font-style: italic;
      `}
      onClick={onContinue}
    >
      {'> continue'}
    </div>
  );
};

export default ContinueButton;
