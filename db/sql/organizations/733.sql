
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
      'North Seattle Pediatrics',
      '10330 Meridian Ave N #210
Seattle, WA 98133',
      'Seattle ',
      'WA',
      'We can meet you at the front door, UW Northwest Outpatient Center
Can call 206 368-6055 Backline
Contact person is Dr Terri Graham ( pediatrician)
',
      'Yes',
      '47.7045795',
      '-122.3325383'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Seattle Pediatrics'
        AND o.latitude = '47.7045795'
        AND o.longitude = '-122.3325383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Seattle Pediatrics'
        AND o.latitude = '47.7045795'
        AND o.longitude = '-122.3325383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Seattle Pediatrics'
        AND o.latitude = '47.7045795'
        AND o.longitude = '-122.3325383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Seattle Pediatrics'
        AND o.latitude = '47.7045795'
        AND o.longitude = '-122.3325383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Seattle Pediatrics'
        AND o.latitude = '47.7045795'
        AND o.longitude = '-122.3325383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Seattle Pediatrics'
        AND o.latitude = '47.7045795'
        AND o.longitude = '-122.3325383'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Seattle Pediatrics'
        AND o.latitude = '47.7045795'
        AND o.longitude = '-122.3325383'));

COMMIT;
