
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
      'Riverside Regional Medical Center',
      '500 J Clyde Morris Blvd
Newport News, VA 23601',
      'Newport News',
      'VA',
      'Riverside welcomes donations of certain medical supplies that are difficult to obtain. These items must be new and in unopened boxes and clearly labeled. They should be dropped off at any Riverside hospital location on Wednesdays between 10 a.m. and 2 p.m. 
Note:
They have the main hospital in NN, but also have 3 others: Doctors Hospital Williamsburg, Shore Memorial Hospital, and Riverside Tappahanock Hospital. ',
      'No',
      '37.0634596',
      '-76.4833383'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Regional Medical Center'
        AND o.latitude = '37.0634596'
        AND o.longitude = '-76.4833383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Regional Medical Center'
        AND o.latitude = '37.0634596'
        AND o.longitude = '-76.4833383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Regional Medical Center'
        AND o.latitude = '37.0634596'
        AND o.longitude = '-76.4833383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Regional Medical Center'
        AND o.latitude = '37.0634596'
        AND o.longitude = '-76.4833383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Regional Medical Center'
        AND o.latitude = '37.0634596'
        AND o.longitude = '-76.4833383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Regional Medical Center'
        AND o.latitude = '37.0634596'
        AND o.longitude = '-76.4833383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Regional Medical Center'
        AND o.latitude = '37.0634596'
        AND o.longitude = '-76.4833383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Regional Medical Center'
        AND o.latitude = '37.0634596'
        AND o.longitude = '-76.4833383'));

COMMIT;
