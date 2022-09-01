import React, { useState } from "react";
import ReactDOM from "react-dom";
import ReactPuzzleConfirm from "react-puzzle-confirm";
import "react-puzzle-confirm/react-puzzle-confirm.css";
import { withComponentFeatures } from 'universal-dashboard';

const UDSliderCaptcha = props => {
  const [showModal, setShowModal] = useState(false);

  return showModal ? (
    <ReactPuzzleConfirm
      onClose={() => setShowModal(false)}
      onSuccess={() => setShowModal(false)}
      onFail={() => console.log("failed")}
      title={props.title}
      sliderTitle={props.sliderTitle}
      failMessage={props.failMessage}
      successMessage={props.successMessage}
      closeButtonLabel="Close"
      refrefButtonLabel={props.refrefButtonLabel}
      disableRefreshIdleState={false}
    />
  ) : (
    <button className="show__modal" onClick={() => setShowModal(true)}>
      Show Modal
    </button>
  );
}

export default withComponentFeatures(UDSliderCaptcha)