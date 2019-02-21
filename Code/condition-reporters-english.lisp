(cl:in-package #:trucler)

(defmethod acclimation:report-condition
    ((condition no-variable-description) stream (language acclimation:english))
  (let ((*package* (find-package '#:keyword)))
    (format stream "Undefined variable named ~s" (name condition))))

(defmethod acclimation:report-condition
    ((condition no-function-description) stream (language acclimation:english))
  (let ((*package* (find-package '#:keyword)))
    (format stream "Undefined function named ~s" (name condition))))

(defmethod acclimation:report-condition
    ((condition no-block-description) stream (language acclimation:english))
  (let ((*package* (find-package '#:keyword)))
    (format stream "Undefined block named ~s" (name condition))))

(defmethod acclimation:report-condition
    ((condition no-tag-description) stream (language acclimation:english))
  (let ((*package* (find-package '#:keyword)))
    (format stream "Undefined tag named ~s" (name condition))))

(defmethod acclimation:report-condition
    ((condition invalid-description-for-merging-type-information)
     stream
     (language acclimation:english))
  (let ((*package* (find-package '#:keyword)))
    (format stream "Undefined tag named ~s" (description condition))))

(defmethod acclimation:report-condition
    ((condition invalid-description-for-merging-ignore-information)
     stream
     (language acclimation:english))
  (let ((*package* (find-package '#:keyword)))
    (format stream "Undefined tag named ~s" (description condition))))

(defmethod acclimation:report-condition
    ((condition invalid-description-for-merging-dynamic-extent-information)
     stream
     (language acclimation:english))
  (let ((*package* (find-package '#:keyword)))
    (format stream "Undefined tag named ~s" (description condition))))

(defmethod acclimation:report-condition
    ((condition invalid-description-for-merging-inline-information)
     stream
     (language acclimation:english))
  (let ((*package* (find-package '#:keyword)))
    (format stream "Undefined tag named ~s" (description condition))))

(defmethod acclimation:report-condition
    ((condition invalid-description-for-merging-speed-information)
     stream
     (language acclimation:english))
  (let ((*package* (find-package '#:keyword)))
    (format stream "Undefined tag named ~s" (description condition))))

(defmethod acclimation:report-condition
    ((condition invalid-description-for-merging-compilation-speed-information)
     stream
     (language acclimation:english))
  (let ((*package* (find-package '#:keyword)))
    (format stream "Undefined tag named ~s" (description condition))))

(defmethod acclimation:report-condition
    ((condition invalid-description-for-merging-debug-information)
     stream
     (language acclimation:english))
  (let ((*package* (find-package '#:keyword)))
    (format stream "Undefined tag named ~s" (description condition))))

(defmethod acclimation:report-condition
    ((condition invalid-description-for-merging-safety-information)
     stream
     (language acclimation:english))
  (let ((*package* (find-package '#:keyword)))
    (format stream "Undefined tag named ~s" (description condition))))

(defmethod acclimation:report-condition
    ((condition invalid-description-for-merging-space-information)
     stream
     (language acclimation:english))
  (let ((*package* (find-package '#:keyword)))
    (format stream "Undefined tag named ~s" (description condition))))
