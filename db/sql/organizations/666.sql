
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
      'Acadian Ambulance Company',
      '300 Hopkins Street
Lafayette, LA 70501',
      'Lafayette ',
      'LA',
      'We are a receiving and distribution warehouse equipped to accept deliveries from 8-5 M-F or as needed during this time of need',
      'Yes',
      '30.2338777',
      '-92.0203553'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Acadian Ambulance Company'
        AND o.latitude = '30.2338777'
        AND o.longitude = '-92.0203553'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Acadian Ambulance Company'
        AND o.latitude = '30.2338777'
        AND o.longitude = '-92.0203553'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Acadian Ambulance Company'
        AND o.latitude = '30.2338777'
        AND o.longitude = '-92.0203553'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Acadian Ambulance Company'
        AND o.latitude = '30.2338777'
        AND o.longitude = '-92.0203553'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Acadian Ambulance Company'
        AND o.latitude = '30.2338777'
        AND o.longitude = '-92.0203553'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Acadian Ambulance Company'
        AND o.latitude = '30.2338777'
        AND o.longitude = '-92.0203553'));

COMMIT;
