
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Lake Miriam Clinic ( Lakeland Regional Health System )',
      '4710 Florida Ave S
Lakeland, FL 33813',
      'Lakeland',
      'FL',
      'Attn: Dr. Melantha Aye',
      'Yes',
      '27.9799157',
      '-81.9566765'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lake Miriam Clinic ( Lakeland Regional Health System )'
        AND o.latitude = '27.9799157'
        AND o.longitude = '-81.9566765'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lake Miriam Clinic ( Lakeland Regional Health System )'
        AND o.latitude = '27.9799157'
        AND o.longitude = '-81.9566765'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lake Miriam Clinic ( Lakeland Regional Health System )'
        AND o.latitude = '27.9799157'
        AND o.longitude = '-81.9566765'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lake Miriam Clinic ( Lakeland Regional Health System )'
        AND o.latitude = '27.9799157'
        AND o.longitude = '-81.9566765'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lake Miriam Clinic ( Lakeland Regional Health System )'
        AND o.latitude = '27.9799157'
        AND o.longitude = '-81.9566765'));

COMMIT;
